
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

#define NUM_ROUNDS 136
#define debug 0

typedef struct {
	unsigned char x[64];
	uint32_t y[370];
} View;

extern void zkboo_encrypt(uint64_t *rs, uint64_t *randomness, uint64_t *keys_shares, uint64_t *proofs, uint64_t *views, uint64_t *a);

extern void zkboo_decrypt(uint64_t *proofs, uint64_t *a, uint64_t *randomness_p1, uint64_t *randomness_p2, uint64_t *success);

//extern void my_H(uint64_t *keys_shares, uint64_t *views, uint64_t *rs, uint64_t *a, uint64_t *state);


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



int main(void)
{

	// Start random values!!
	srand ((unsigned int) time (NULL));

	//uint64_t *mpcRounds = &mpcRounds;


	uint64_t rs[204];							// NUM_ROUNDS * 3 * 4
	uint8_t *r;
	
	uint8_t *s;
	uint64_t keys_shares[NUM_ROUNDS * 3 * 2 + NUM_ROUNDS * 3 * 2];	
	// keys   - NUM_ROUNDS * 3 * 16
	// shares - NUM_ROUNDS * 3 * 16
	
	uint8_t *rand;
	uint64_t *randomness;
	randomness = malloc(NUM_ROUNDS * 3 * 1472 * sizeof(uint8_t));	// NUM_ROUNDS * 3 * 1472

	uint8_t randomness_p1[NUM_ROUNDS * 1472];
	uint8_t randomness_p2[NUM_ROUNDS * 1472];

	uint64_t a[NUM_ROUNDS * 3 * 4 + NUM_ROUNDS * 3 * 4];	 							
	//uint64_t a_yp[1536];									// 128 * 3 * 32
	//uint64_t a_h[1536];									// 128 * 3 * 32

	uint8_t *views_u8;
	uint64_t views[NUM_ROUNDS * 3 * 8 +
				   NUM_ROUNDS * 3 * 185];					// NUM_ROUNDS * 3 * 64 +
															// NUM_ROUNDS * 3 * 4 * 370

	uint64_t proofs[NUM_ROUNDS * (2 * 2 + 2 * (8 + 185) + 1)];
															//NUM_ROUNDS * ( 2 * 16 + 
															// 		         2 * (64 + 4 * 370) +
															//               2 * 4 )

	uint8_t *proofs_p = proofs;

	//printf("Enter the string to be hashed (Max 55 characters): ");
	//char userInput[55]; //55 is max length as we only support 447 bits = 55.875 bytes
	//fgets(userInput, sizeof(userInput), stdin);
	int i = 16;
	//int i = strlen(userInput)-1; 
	//printf("String length: %d\n", i);
	
	printf("Iterations of SHA: %d\n", NUM_ROUNDS);


	// Retrieve input, keys, rs, and shares 

	FILE *file;

	file = fopen("values.bin", "rb");

	if (!file) {
		printf("Unable to open file!");
	}

	unsigned char input[i];
	unsigned char rs_aux[NUM_ROUNDS][3][4];
	unsigned char keys_aux[NUM_ROUNDS][3][i];
	unsigned char shares_aux[NUM_ROUNDS][3][i];
	unsigned char *randomness_aux[NUM_ROUNDS][3];
	View localViews[NUM_ROUNDS][3];

	fread(input, sizeof(unsigned char), i, file);
	fread(keys_aux, sizeof(unsigned char), NUM_ROUNDS*3*16, file);
	fread(rs_aux, sizeof(unsigned char), NUM_ROUNDS*3*4, file);
	fread(shares_aux, sizeof(unsigned char), NUM_ROUNDS*3*i, file);
	fread(localViews, sizeof(View), NUM_ROUNDS * 3, file);


	fclose(file);

	for(int k=0; k<NUM_ROUNDS; k++) {
		for(int j = 0; j<3; j++) {
			randomness_aux[k][j] = malloc(1472*sizeof(unsigned char));
			getAllRandomness(keys_aux[k][j], randomness_aux[k][j]);
		}
	}

	if(debug){
		
		printf("input 0: %d\n", input[0]);
		printf("input 15: %d\n", input[15]);

		printf("rs_aux 0: %u\n",rs_aux[0][0][0]);
		printf("rs_aux 12: %u\n",rs_aux[0][0][1]);

		printf("keys_aux 0: %u\n",keys_aux[0][0][0]);
		printf("keys_aux 48: %u\n",keys_aux[0][0][1]);
		
		printf("shares P0 = %d\n",shares_aux[0][0][0]);
		printf("shares P0 = %d\n",shares_aux[0][0][1]);
		printf("shares P1 = %d\n",shares_aux[0][1][0]);
		printf("shares P1 = %d\n",shares_aux[0][1][1]);
		printf("shares P2 = %d\n",shares_aux[0][2][0]);
		printf("shares P2 = %d\n",shares_aux[0][2][1]);
		
		printf("randomness[0][0] = %u\n",randomness_aux[0][0][0]);
		printf("randomness[0][2] = %u\n\n\n",randomness_aux[0][0][1]);
		
	}	


	uint64_t storage_u64;
	int pos = 0;
	int pos2 = 0;
	views_u8 = views;
	for(int aux = 0; aux < NUM_ROUNDS; aux++){
		pos2 = 0;
		for(int j = 0; j < 3; j++){

			/* Store keys in array */
			
			s = keys_shares;
			memcpy(s + NUM_ROUNDS * j * 16 + aux * 16, &keys_aux[aux][j][0], 16);
			

			/* Store shares in array */

			memcpy(s + NUM_ROUNDS * 3 * 16 + NUM_ROUNDS * j * 16 + aux * 16, &shares_aux[aux][j][0], 16);


			/* store rs in array */
			r = rs;
			for(int i=0; i < 4; i++){
				*(r + NUM_ROUNDS * j * 4 + aux * 4 + i) = rs_aux[aux][j][i];
			}


			/* Get randomness */
			rand = randomness;
			memcpy(rand + NUM_ROUNDS * j * 1472 + aux * 1472, randomness_aux[aux][j], 1472);


			/* Initialize/Store views.x */
			
			for(int i=0; i < 64; i++){
				*(views_u8 + NUM_ROUNDS * j * 64 + aux * 64 + i) = 0;
			}
			

			/* Initialize/Store views.y */
			
			for(int i=0; i < 1480; i++){
				*(views_u8 + NUM_ROUNDS * 3 * 64 + NUM_ROUNDS * 1480 * j + aux * 1480 + i) = 0;
			}
			
			a[NUM_ROUNDS * 3 * 4 + NUM_ROUNDS * 3 * 4];
			for(int i=0; i < 4; i++){
				//a.yp
				a[NUM_ROUNDS * 4 * j + aux * 4 + i] = 0;
				//a.h
				a[NUM_ROUNDS * 4 * 3 + NUM_ROUNDS * 4 * j + aux * 4 + i] = 0;

			}

		}

		if((aux % 2) != 0){
			pos ++;
		} 
	}



	for(int i=0;i < NUM_ROUNDS * 3 * 4 + NUM_ROUNDS * 3 * 4; i++){
		a[i] = 0;
	}



	zkboo_encrypt(rs, randomness, keys_shares, proofs, views, a);	

	
	uint8_t key[32];
	int temp_zs;
	proofs_p = proofs;
	uint64_t success = 0;

	// Generating randomness
	#pragma omp parallel for
	for(int k=0; k<NUM_ROUNDS; k++) {
		
		temp_zs = k * 3128;

		for(int i = 0; i < 32; i++, temp_zs++){
			key[i] = proofs_p[temp_zs];
		}

		getAllRandomness((unsigned char*)  key, (unsigned char*) &randomness_p1[k * 1472]);
		getAllRandomness((unsigned char*)  key + 16, (unsigned char*) &randomness_p2[k * 1472]);
	}

	printf("\n\n!!!!\n\n");
	zkboo_decrypt(proofs, a, randomness_p1, randomness_p2, &success);

	if(success == 1) printf("Success(%d) != 0 => Failed!!\n", success);
	else printf("Success(%d) != 0 => Succeded\n",success);


	
	return 0;
}