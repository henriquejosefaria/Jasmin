

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
extern void commit(uint64_t *as, uint64_t *shares, uint64_t *randomness, uint64_t *rs, uint64_t *localViews);
extern void H(uint64_t *keys, uint64_t *localViews, uint64_t *rs, uint64_t *as_p);
extern void H3 (uint64_t *finalHash, uint64_t *as, uint64_t *es);
extern void prove(uint64_t *zs, uint64_t *es, uint64_t *keys, uint64_t *rs, uint64_t *localViews);
		


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


int main(void) {
	setbuf(stdout, NULL);
	srand((unsigned) time(NULL));
	init_EVP();
	openmp_thread_setup();

	int average_total_time = 0;

	unsigned char garbage[4];
	if(RAND_bytes(garbage, 4) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	
	printf("Enter the string to be hashed (Max 55 characters): ");
	char userInput[55]; //55 is max length as we only support 447 bits = 55.875 bytes
	//fgets(userInput, sizeof(userInput), stdin);
	
	int i = 16; strlen(userInput)-1; 
	printf("String length: %d\n", i);
	
	printf("Iterations of SHA: %d\n", NUM_ROUNDS);



	unsigned char input[i];
	for(int j = 0; j<i; j++) {
		input[j] = 1;
	}
	
	clock_t begin = clock(), delta, deltaA;
	unsigned char rs[NUM_ROUNDS][3][4];
	unsigned char keys[NUM_ROUNDS][3][16];
	a as[NUM_ROUNDS];
	View localViews[NUM_ROUNDS][3];
	int totalCrypto = 0;
	uint64_t es[NUM_ROUNDS];
	uint32_t finalHash[8];
	z* zs = malloc(sizeof(z)*NUM_ROUNDS);
	
	//Generating keys
	clock_t beginCrypto = clock(), deltaCrypto;
	if(RAND_bytes(keys, NUM_ROUNDS*3*16) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	if(RAND_bytes(rs, NUM_ROUNDS*3*4) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	deltaCrypto = clock() - beginCrypto;
	int inMilliCrypto = deltaCrypto * 1000 / CLOCKS_PER_SEC;
	totalCrypto = inMilliCrypto;
	

	
	clock_t beginS, beginC, beginH, beginH3, beginZ;
	clock_t deltaS, deltaC, deltaH, deltaH3, deltaZ;

	int totalC = 0, totalH = 0, totalH3 = 0, totalZ = 0;
	//Sharing secrets
	unsigned char shares[NUM_ROUNDS][3][i];
	if(RAND_bytes(shares, NUM_ROUNDS*3*i) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}

	beginS = clock();
	#pragma omp parallel for
	for(int k=0; k<NUM_ROUNDS; k++) {

		shares_xor((uint64_t *)&shares[k][2][0], (uint64_t *)&input[0], (uint64_t *)&shares[k][0][0], (uint64_t *)&shares[k][1][0]);
	}
	deltaS = clock() - beginS;

	FILE *file2;

	file2 = fopen("values.bin", "rb");

	if (!file2) {
		printf("Unable to open file!");
	}

	fread(input, sizeof(unsigned char), i, file2);
	fread(keys, sizeof(unsigned char), NUM_ROUNDS*3*16, file2);
	fread(rs, sizeof(unsigned char), NUM_ROUNDS*3*4, file2);
	fread(shares, sizeof(unsigned char), NUM_ROUNDS*3*i, file2);
	
	uint64_t *as_u64, *views_u64, rs_u64, keys_u64, es_u64, finalHash_u64, zs_u64;
	uint8_t *views_u8, *as_aux;

	clock_t beginSha;
	int totalZRounds = 100;

	for(int k=0; k<NUM_ROUNDS; k++) {
		for(int i=0;i<192;i++){
			views_u8 = &as[k];
			views_u8[i] = 0;
		}
	}

	for(int z=0;z<totalZRounds;z++){

		//Generating randomness
		unsigned char randomness[NUM_ROUNDS][3][1472];
		#pragma omp parallel for
		for(int k=0; k<NUM_ROUNDS; k++) {
			for(int j = 0; j<3; j++) {
				getAllRandomness(keys[k][j], randomness[k][j]);
			}
		}

		//Running MPC-SHA1
		beginC = clock();
		#pragma omp parallel for
		for(int k=0; k<NUM_ROUNDS; k++) {

			commit((uint64_t *) &as[k], (uint64_t *) &shares[k][0][0], (uint64_t *) randomness[k][0], (uint64_t *) rs[k][0], (uint64_t *) &localViews[k][0].x[0]);
		}

		deltaC = clock() - beginC;
		totalC += deltaC;
		

		//Committing
		beginH = clock();
		#pragma omp parallel for
		for(int k=0; k<NUM_ROUNDS; k++) {

			H((uint64_t *)&keys[k][0][0], (uint64_t *)&localViews[k][0], (uint64_t *)rs[k][0], (uint64_t *)&as[k].h[0][0]);
			H((uint64_t *)&keys[k][1][0], (uint64_t *)&localViews[k][1], (uint64_t *)rs[k][1], (uint64_t *)&as[k].h[1][0]);
			H((uint64_t *)&keys[k][2][0], (uint64_t *)&localViews[k][2], (uint64_t *)rs[k][2], (uint64_t *)&as[k].h[2][0]);
		}
		deltaH = clock() - beginH;
		totalH += deltaH;

		//Generating E
		for (int j = 0; j < 8; j++) {

			finalHash[j] = as[0].yp[0][j]^as[0].yp[1][j]^as[0].yp[2][j];
		}

		beginH3 = clock();
		H3((uint64_t *)&finalHash[0], (uint64_t *)&as[0], (uint64_t *)es);
		deltaH3 = clock() - beginH3;
		totalH3 += deltaH3;

		//Packing Z
		beginZ = clock();
		#pragma omp parallel for
		for(int i = 0; i<NUM_ROUNDS; i++) {

			prove((uint64_t *)&zs[i], (uint64_t *)&es[i], (uint64_t *)&keys[i][0][0], (uint64_t *)&rs[i][0][0], (uint64_t *)&localViews[i][0]);
		}

		deltaZ = clock() - beginZ;
		totalZ += deltaZ;
	}

	printf("\n\nAverage Total Time: \n\n - Shares_xor(): %ju\n - commit():     %ju\n  - H():         %ju\n  - H3():        %ju\n  - prove():     %ju\n\n", deltaS, totalC/totalZRounds, totalH/totalZRounds, totalH3/totalZRounds, totalZ/totalZRounds);


	printf("Total Time: %ju\n\n", deltaS + (totalC + totalH + totalH3 + totalZ)/totalZRounds);


	//Writing to file
	clock_t beginWrite = clock();
	FILE *file;

	char outputFile[3*sizeof(int) + 8];
	sprintf(outputFile, "out%i.bin", NUM_ROUNDS);
	file = fopen(outputFile, "wb");
	if (!file) {
		printf("Unable to open file!");
		return 1;
	}
	fwrite(as, sizeof(a), NUM_ROUNDS, file);
	fwrite(zs, sizeof(z), NUM_ROUNDS, file);

	fclose(file);

	free(zs);

	int sumOfParts = 0;

	openmp_thread_cleanup();
	cleanup_EVP();
	return EXIT_SUCCESS;
}