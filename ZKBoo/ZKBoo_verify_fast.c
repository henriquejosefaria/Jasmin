 #include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <openssl/sha.h>
#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#ifdef _WIN32
#include <openssl/applink.c>
#endif
#include <openssl/rand.h>
#include "omp.h"
//#include "shared.h"

#define NUM_ROUNDS 136
#define ySize 370

typedef struct {
	unsigned char x[64];
	uint32_t y[ySize];
} View;

typedef struct {
	uint32_t yp[3][8];
	unsigned char h[3][32];
} a;

typedef struct {
	unsigned char ke[16];
	unsigned char ke1[16];
	View ve;
	View ve1;
	unsigned char re[4];
	unsigned char re1[4];
} z;

extern void shares_xor(uint64_t *player2, uint64_t *input, uint64_t *player0, uint64_t *player1);
extern void verify(uint64_t *as, uint64_t *zs, uint64_t *es, uint64_t *r1, uint64_t *r2, uint64_t *success);
extern void H(uint64_t *keys, uint64_t *localViews, uint64_t *rs, uint64_t *as_p);
extern void H3 (uint64_t *finalHash, uint64_t *as, uint64_t *es);
		


void handleErrors(void)
{
	ERR_print_errors_fp(stderr);
	abort();
}


EVP_CIPHER_CTX* setupAES(unsigned char key[16]) {

	EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
	EVP_CIPHER_CTX_init(ctx);

	///* A 128 bit key */
	//unsigned char *key = (unsigned char *)"01234567890123456";

	/* A 128 bit IV */
	unsigned char *iv = (unsigned char *)"01234567890123456";

	/* Create and initialise the context */
	//if(!(ctx = EVP_CIPHER_CTX_new())) handleErrors();

	/* Initialise the encryption operation. IMPORTANT - ensure you use a key
	 * and IV size appropriate for your cipher
	 * In this example we are using 256 bit AES (i.e. a 256 bit key). The
	 * IV size for *most* modes is the same as the block size. For AES this
	 * is 128 bits */
	if(1 != EVP_EncryptInit_ex(ctx, EVP_aes_128_ctr(), NULL, key, iv))
		handleErrors();

	return ctx;
}


void getAllRandomness(unsigned char key[16], unsigned char randomness[1472]) {
	//Generate randomness: We use 365*32 bit of randomness per key.
	//Since AES block size is 128 bit, we need to run 365*32/128 = 91.25 iterations. Let's just round up.

	EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();

	ctx = setupAES(key);
	unsigned char *plaintext =
			(unsigned char *)"0000000000000000";
	int len;
	for(int j=0;j<92;j++) {
		if(1 != EVP_EncryptUpdate(ctx, &randomness[j*16], &len, plaintext, strlen ((char *)plaintext)))
			handleErrors();

	}
	EVP_CIPHER_CTX_cleanup(ctx);
}

void init_EVP() {
	/* Initialise the library */
	ERR_load_crypto_strings();
	OpenSSL_add_all_algorithms();
	OPENSSL_config(NULL);
}

void cleanup_EVP() {
	/* Clean up */
	EVP_cleanup();
	ERR_free_strings();
}

omp_lock_t *locks;

// Locking callback
void openmp_locking_callback(int mode, int type, char *file, int line)
{
  if (mode & CRYPTO_LOCK)
  {
    omp_set_lock(&locks[type]);
  }
  else
  {
    omp_unset_lock(&locks[type]);
  }
}

// Thread ID callback
unsigned long openmp_thread_id(void)
{
  return (unsigned long)omp_get_thread_num();
}

void openmp_thread_setup(void)
{
  int i;

  locks = OPENSSL_malloc(CRYPTO_num_locks() * sizeof(omp_lock_t));
  for (i=0; i<CRYPTO_num_locks(); i++)
  {
    omp_init_lock(&locks[i]);
  }

  CRYPTO_set_id_callback((unsigned long (*)())openmp_thread_id);
  CRYPTO_set_locking_callback((void (*)())openmp_locking_callback);
}

void openmp_thread_cleanup(void)
{
  int i;

  CRYPTO_set_id_callback(NULL);
  CRYPTO_set_locking_callback(NULL);
  for (i=0; i<CRYPTO_num_locks(); i++)
    omp_destroy_lock(&locks[i]);
  OPENSSL_free(locks);
}


int round_verify(a a, int e, z zs, int *totalH, int *totalV) {

	clock_t beginH, beginV;
	clock_t deltaH, deltaV;

	unsigned char* hash = malloc(SHA256_DIGEST_LENGTH);

	beginH = clock();
	H((uint64_t*)&zs.ke[0],(uint64_t*) &zs.ve.x[0],(uint64_t*) &zs.re[0], &hash[0]);
	deltaH = clock() - beginH;
	(*totalH) += deltaH;
	
	if (memcmp(a.h[e], hash, 32) != 0) {
#if VERBOSE
		printf("Failing at %d", __LINE__);
#endif
		return 1;
	}

	beginH = clock();
	H((uint64_t*)&zs.ke1[0],(uint64_t*) &zs.ve1.x[0],(uint64_t*) &zs.re1[0], &hash[0]);
	deltaH = clock() - beginH;
	(*totalH) += deltaH;

	if (memcmp(a.h[(e + 1) % 3], hash, 32) != 0) {
#if VERBOSE
		printf("Failing at %d", __LINE__);
#endif
		return 1;
	}
	free(hash);


	uint64_t success = 0;

	unsigned char *randomness[2];
	randomness[0] = malloc(1472*sizeof(unsigned char));
	randomness[1] = malloc(1472*sizeof(unsigned char));
	getAllRandomness(zs.ke, randomness[0]);
	getAllRandomness(zs.ke1, randomness[1]);
	
	beginV = clock();
	verify((uint64_t*) &a,(uint64_t*) &zs, (uint64_t*) &e, (uint64_t*) randomness[0], (uint64_t*) randomness[1], (uint64_t*) &success);
	deltaV = clock() - beginV;
	(*totalV) += deltaV;

	if(success == 1) return 1;
	return 0;
}

int main(void) {
	setbuf(stdout, NULL);
	init_EVP();
	openmp_thread_setup();
	
	printf("Iterations of SHA: %d\n", NUM_ROUNDS);

	int average_total_time = 0;
	clock_t begin;
	
	a as[NUM_ROUNDS];
	z zs[NUM_ROUNDS];
	FILE *file;

	char outputFile[3*sizeof(int) + 8];
	sprintf(outputFile, "out%i.bin", NUM_ROUNDS);
	file = fopen(outputFile, "rb");
	if (!file) {
		printf("Unable to open file!");
	}
	fread(&as, sizeof(a), NUM_ROUNDS, file);
	fread(&zs, sizeof(z), NUM_ROUNDS, file);
	fclose(file);

	clock_t beginS, beginH3;
	clock_t deltaS, deltaH3;

	int totalV = 0, totalH, totalH3 = 0;
	int totalZRounds = 100;

	uint32_t y[8];
	beginS = clock();
	reconstruct((uint64_t*)&as[0].yp[0][0],(uint64_t*)&as[0].yp[1][0],(uint64_t*)&as[0].yp[2][0],(uint64_t*)&y);
	deltaS += clock() - beginS;
	
	for(int z=0;z<totalZRounds;z++){

		uint64_t es[NUM_ROUNDS];

		beginH3 = clock();
		H3((uint64_t*)y,(uint64_t*) as,(uint64_t*) es);
		deltaH3 = clock() - beginH3;
		totalH3 += deltaH3;
		
		#pragma omp parallel for
		for(int i = 0; i<NUM_ROUNDS; i++) {
			//printf("-*- round %d -*-\n",i );

			//printf("\ne[%d] = %d\n",i,es[i]);

			int verifyResult = round_verify(as[i], es[i], zs[i], &totalH, &totalV);

			if (verifyResult != 0) {
				printf("Not Verified %d\n", z);
			}
		}

		
	}


	printf("\n\nAverage Total Time: \n\n - Shares_xor(): %ju\n - verify():     %ju\n  - H():         %ju\n  - H3():        %ju\n\n", deltaS, totalV/totalZRounds, totalH/totalZRounds, totalH3/totalZRounds);


	printf("Total Time: %ju\n\n", deltaS + (totalV + totalH + totalH3)/totalZRounds);

	openmp_thread_cleanup();
	cleanup_EVP();
	return EXIT_SUCCESS;
}