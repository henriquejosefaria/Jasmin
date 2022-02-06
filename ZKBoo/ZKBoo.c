
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

#include <openssl/rand.h>

#define NUM_ROUNDS 128


extern void zkboo_encrypt(uint64_t *rs, uint64_t *randomness, uint64_t *keys_shares, uint64_t *proofs, uint64_t *iews, uint64_t *a);

extern void zkboo_decrypt(uint64_t *proofs, uint64_t *a, uint64_t *randomness_p1, uint64_t *randomness_p2);


void handleErrors(void)
{
	ERR_print_errors_fp(stderr);
	abort();
}

EVP_CIPHER_CTX* setupAES(unsigned char *key) {
	
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

void getAllRandomness(unsigned char *key, unsigned char *randomness) {
	//Generate randomness: We use 365*32 bit of randomness per key.
	//Since AES block size is 128 bit, we need to run 365*32/128 = 91.25 iterations. Let's just round up.

	EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
	ctx = setupAES(key);
	unsigned char *plaintext =
			(unsigned char *)"0000000000000000";
	int len;
	for(int j=0;j<92;j++) {
		if(1 != EVP_EncryptUpdate(ctx, randomness + j*16, &len, plaintext, strlen ((char *)plaintext)))
			handleErrors();

	}
	EVP_CIPHER_CTX_cleanup(ctx);
}

uint32_t getRandom32(unsigned char randomness[2912], int randCount) {
	uint32_t ret;
	memcpy(&ret, &randomness[randCount], 4);
	return ret;
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



int RAND_bytes(unsigned char* array, int size){
	size_t i;

  	for (i = 0; i < size; i++)
 	{
    	array[i] = rand ();
  	}
  	return 1;
}


int main(void)
{

	// Start random values!!
	srand ((unsigned int) time (NULL));

	uint64_t input[4];									// 16

	uint64_t rs[192];									// NUM_ROUNDS * 3 * 4
	
	uint64_t keys_shares[1536];
	uint64_t *keys = keys_shares;						// NUM_ROUNDS * 3 * 16
	uint64_t *shares = &keys_shares[768];				// NUM_ROUNDS * 3 * 16
	
	uint64_t randomness[70656];							// NUM_ROUNDS * 3 * 1472

	uint64_t randomness_p1[23552];
	uint64_t randomness_p2[23552];

	//a as[NUM_ROUNDS];
	uint64_t a[3072]; 	 							
	//uint64_t a_yp[1536];								// 128 * u32 * 3 * 8 
	//uint64_t a_h[1536];									// 128 * u8  * 3 * 32

	//View localViews[NUM_ROUNDS][3];
	uint64_t views[74112];
	//uint64_t views_x[3072];								// 128 * 3 * u8  * 64
	//uint64_t views_y[71040]; 							// 128 * 3 * u32 * 370


	uint64_t proofs[50048];								// 128 * ( 2 * (u8 * 16) + 
														// 		   2 * (u8 * 64 + u32 * 370) +
														//         2 * (u8 * 4) )

	//Generating input
	if(RAND_bytes((unsigned char*) &input, 16) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	// Generating keys
	if(RAND_bytes((unsigned char*) &keys, NUM_ROUNDS*3*16) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	if(RAND_bytes((unsigned char*) &rs, NUM_ROUNDS*3*4) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	// Creating Sharing Secrets
	if(RAND_bytes((unsigned char*) &shares, NUM_ROUNDS*3*16) != 1) {
		printf("RAND_bytes failed crypto, aborting\n");
		return 0;
	}
	#pragma omp parallel for
	for(int k=0; k<NUM_ROUNDS; k++) {
		for (int j = 0; j < 4; j++) {
			shares[k * 3 * 4 + 8 + j] = input[j] ^ shares[k * 3 * 4 + j] ^ shares[k * 3 * 4 + 4 + j];
		}
	}

	// Generating randomness
	#pragma omp parallel for
	for(int k=0; k<NUM_ROUNDS; k++) {
		for(int j = 0; j<3; j++) {
			getAllRandomness((unsigned char*)  keys + k * 3 * 16 + j * 16, (unsigned char*) randomness + k * 3 * 1472 + j * 1472);
		}
	}


	zkboo_encrypt(rs, randomness, keys_shares, proofs, views, a);


	uint64_t key[4];
	int temp_zs;

	// Generating randomness
	#pragma omp parallel for
	for(int k=0; k<NUM_ROUNDS; k++) {

		temp_zs = k * 391;

		key[0] = proofs[temp_zs];
		temp_zs += 1;

		key[1] = proofs[temp_zs];
		temp_zs += 1;

		key[2] = proofs[temp_zs];
		temp_zs += 1;

		key[3] = proofs[temp_zs];

		getAllRandomness((unsigned char*)  keys, (unsigned char*) randomness_p1 + k * 1472);
		getAllRandomness((unsigned char*)  keys + 16, (unsigned char*) randomness_p2 + k * 1472);

	}


	zkboo_decrypt(proofs, a, randomness_p1, randomness_p2);



	return 0;
}