

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include "shared.h"
#include "omp.h"




extern void shares_xor(uint64_t *player2, uint64_t *input, uint64_t *player0, uint64_t *player1);
extern void commit(uint64_t *as, uint64_t *shares, uint64_t *randomness, uint64_t *rs, uint64_t *localViews);
extern void H(uint64_t *keys, uint64_t *localViews, uint64_t *rs, uint64_t *as_p);
extern void H3 (uint64_t *finalHash, uint64_t *as, uint64_t *es);
extern void prove(uint64_t *zs, uint64_t *es, uint64_t *keys, uint64_t *rs, uint64_t *localViews);
		












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
	

	//Sharing secrets
	clock_t beginS, beginC, beginH, beginH3, beginZ;
	clock_t deltaS, deltaC, deltaH, deltaH3, deltaZ;

	int totalC = 0, totalH = 0, totalH3 = 0, totalZ = 0;
	
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

			/*
			if(z == 0 & k == 0){

				views_u8 = &shares[k][0];
				printf("\n\nshares[0][0][0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3]);
				printf("\n\nshares[0][1][0-4] = {%u, %u, %u, %u}\n",views_u8[16], views_u8[17], views_u8[18], views_u8[19]);
				printf("\n\nshares[0][2][0-4] = {%u, %u, %u, %u}\n",views_u8[32], views_u8[33], views_u8[34], views_u8[35]);
				
				
				views_u8 = &randomness[k][0][0];
				printf("\n\nrandomness[0][0][0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3] );
				printf("\n\nrandomness[0][1][0-4] = {%u, %u, %u, %u}\n",views_u8[1472], views_u8[1473], views_u8[1474], views_u8[1475]);
				printf("\n\nrandomness[0][2][0-4] = {%u, %u, %u, %u}\n",views_u8[2944], views_u8[2945], views_u8[2946], views_u8[2947]);
				
				views_u8 = &localViews[k][0].x[0];
				printf("\n\nlocalViews[0][0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3] );
				views_u8 = &localViews[k][1].x[0];
				printf("\n\nlocalViews[0][0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3] );
				views_u8 = &localViews[k][2].x[0];
				printf("\n\nlocalViews[0][0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3] );
				
				views_u8 = &localViews[k][0].y[365];
				printf("\n\nlocalViews[0][0].y[0-4] = {%u, %u, %u, %u,%u, %u, %u, %u,%u, %u, %u, %u,%u, %u, %u, %u,%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3],views_u8[4], views_u8[5], views_u8[6], views_u8[7],views_u8[8], views_u8[9], views_u8[10], views_u8[11],views_u8[12], views_u8[13], views_u8[14], views_u8[15],views_u8[16], views_u8[17], views_u8[18], views_u8[19]);

				as_aux = &as[k].yp[0][0];
				printf("\n\na[0].yp[0-4] = {%u, %u, %u, %u}\n",as_aux[0], as_aux[1], as_aux[2], as_aux[3] );
				
			}
			*/
			
			/*
			for(int j=0; j<3; j++) {
				free(randomness[k][j]);
			}
			*/
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
			
			/*
			if(z == 0 &  k == 105){
				
				//printf("\n\nrs[0][0][0-4] = {%u, %u, %u, %u}\n",rs[0][0][0], rs[0][0][1], rs[0][0][2], rs[0][0][3]);
				printf("\n\nrs[0][1][0-4] = {%u, %u, %u, %u}\n",rs[0][1][0], rs[0][1][1], rs[0][1][2], rs[0][1][3]);
				//printf("\n\nrs[0][2][0-4] = {%u, %u, %u, %u}\n",rs[0][2][0], rs[0][2][1], rs[0][2][2], rs[0][2][3]);
				
				//printf("\n\nKeys[0][0][0-4] = {%u, %u, %u, %u}\n",keys[0][0][0], keys[0][0][1], keys[0][0][2], keys[0][0][3]);
				printf("\n\nKeys[0][1][0-4] = {%u, %u, %u, %u}\n",keys[0][1][0], keys[0][1][1], keys[0][1][2], keys[0][1][3]);
				//printf("\n\nKeys[0][2][0-4] = {%u, %u, %u, %u}\n",keys[0][2][0], keys[0][2][1], keys[0][2][2], keys[0][2][3]);
				
				views_u8 = &localViews[k][0];
				printf("\n\n\n");
				printf("\n\n\n");
				for(int i=0; i< 64; i++){
					printf("%u, ", views_u8[i]);
				}
				
				printf("\n\n");
				views_u8 = &localViews[k][1];
				for(int i=0; i< 64; i++){
					printf("%u, ", views_u8[i]);
				}
				printf("\n\n");
				
				views_u8 = &localViews[k][2];
				printf("\n\n\n");
				for(int i=0; i< 64; i++){
					printf("%u, ", views_u8[i]);
				}
				printf("\n\n\n");
				printf("\n\n\n");
				
				//printf("\n\nview[0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3]);
				views_u8 = &localViews[k][1];
				printf("\n\nview[0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3]);
				//views_u8 = &localViews[k][2];
				//printf("\n\nview[0].x[0-4] = {%u, %u, %u, %u}\n",views_u8[0], views_u8[1], views_u8[2], views_u8[3]);

				//views_u8 = &localViews[k][0];
				//printf("\n\nview[0].y = {%u, %u, %u, %u}\n",views_u8[1466], views_u8[1467], views_u8[1468], views_u8[1469]);
				
				printf("\n\n");
				views_u8 = &localViews[k][1];
				for(int i=64; i< 1544; i++){
					printf("%u, ", views_u8[i]);
				}
				printf("\n\n");
				//views_u8 = &localViews[k][1];
				//printf("\n\nview[1].y = {%u, %u, %u, %u}\n",views_u8[1466], views_u8[1467], views_u8[1468], views_u8[1469]);
				//views_u8 = &localViews[k][2];
				//printf("\n\nview[2].y = {%u, %u, %u, %u}\n",views_u8[1466], views_u8[1467], views_u8[1468], views_u8[1469]);
				

				
				as_aux = &as[k].yp[0][0];
				printf("\n\n{");
				for(int i=0;i<32;i++){
					printf("%u, ",as_aux[i] );
				}
				//as_aux = &as[k].h[1][0];
				printf("\n\n{");
				for(int i=32;i<64;i++){
					printf("%u, ",as_aux[i] );
				}
				//as_aux = &as[k].h[2][0];
				printf("\n\n{");
				for(int i=64;i<96;i++){
					printf("%u, ",as_aux[i] );
				}
				printf("}\n\n");
			}
			*/
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