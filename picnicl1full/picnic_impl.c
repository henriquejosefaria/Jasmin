/*! @file picnic_impl.c
 *  @brief This is the main file of the signature scheme. All of the LowMC MPC
 *  code is here as well as lower-level versions of sign and verify that are
 *  called by the signature API.
 *
 *  This file is part of the reference implementation of the Picnic signature scheme.
 *  See the accompanying documentation for complete details.
 *
 *  The code is provided under the MIT license, see LICENSE for
 *  more details.
 *  SPDX-License-Identifier: MIT
 */

#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#if defined(__WINDOWS__)
        #include <Windows.h>
        #include <bcrypt.h>
#endif

#include "picnic_impl.h"
#include "picnic3_impl.h"
#include "picnic.h"
#include "platform.h"
#include "lowmc_constants.h"
#include "picnic_types.h"
#include "hash.h"

#include <time.h>


#define MAX(a, b) ((a) > (b)) ? (a) : (b)

#define VIEW_OUTPUTS(i, j) viewOutputs[(i) * 3 + (j)]


int debug = 0;

/* Jasmin imported functions */

extern void xor_three(uint64_t* player2, uint64_t* privateKey, uint64_t* player0, uint64_t* player1, uint64_t* bytes);
extern void xor_array(uint64_t* out, uint64_t* in1, uint64_t* in2, uint64_t* bytes);
extern void jazz_getBit(uint64_t* array, uint64_t* bitNumber, uint64_t* aux);
extern void jazz_setBit(uint64_t* array, uint64_t* bitNumber, uint64_t* val);
extern void getBitFromWordArray(uint64_t* array, uint64_t* bitNumber, uint64_t* aux);

/*Low MC functions */

extern void jazz_matrix_mul(uint64_t* output, uint64_t* state, uint64_t* matrix, uint64_t* stateSizeBits, uint64_t* stateSizeWords, uint64_t* wholeWords);
extern void jazz_substitution(uint64_t* state, uint64_t* boxes);


/* MPC Low MC functions */

extern void jazz_mpc_AND(uint64_t* in1, uint64_t* in2, uint64_t* out, uint64_t* r);
extern void jazz_and_getBit(uint64_t* randTape0, uint64_t* randTape1, uint64_t* randTape2, uint64_t* randPos, uint64_t* r);
extern void jazz_and_setBit(uint64_t* view0, uint64_t* view1, uint64_t* view2, uint64_t* randPos, uint64_t* r);

extern void jazz_mpc_getBit(uint64_t* array0, uint64_t* array1, uint64_t* array2, uint64_t* bitNumber, uint64_t* out);
extern void jazz_mpc_setBit_precompute(uint64_t* in0, uint64_t* in1, uint64_t* out);
extern void jazz_mpc_setBit(uint64_t* array0, uint64_t* array1, uint64_t* array2, uint64_t* bitNumber, uint64_t* out);


/* MPC Low MC verify functions */

extern void jazz_and_getBit_verify(uint64_t* randTape0, uint64_t* randTape1, uint64_t* randPos, uint64_t* r);
extern void jazz_mpc_AND_verify(uint64_t* in1, uint64_t* in2, uint64_t* out, uint64_t* r);
extern void jazz_and_setBit_verify(uint64_t* randTape0, uint64_t* randTape1, uint64_t* randPos, uint64_t* r);

extern void jazz_mpc_getBit_verify(uint64_t* array0, uint64_t* array1, uint64_t* bitNumber, uint64_t* out);
extern void jazz_mpc_setBit_precompute_verify(uint64_t* in0, uint64_t* in1, uint64_t* out);
extern void jazz_mpc_setBit_verify(uint64_t* array0, uint64_t* array1, uint64_t* bitNumber, uint64_t* out);






/* Helper functions */

void printHex(const char* s, const uint8_t* data, size_t len)
{
    printf("%s: ", s);
    for (size_t i = 0; i < len; i++) {
        printf("%02X", data[i]);
    }
    printf("\n");
}

/* Get one bit from a byte array */
uint8_t getBit(const uint8_t* array, uint32_t bitNumber)
{
    return (array[bitNumber / 8] >> (7 - (bitNumber % 8))) & 0x01;
}

/* Get one bit from a 32-bit int array */
/*
void getBitFromWordArray(const uint64_t* array, uint64_t* bitNumber, uint64_t* aux)
{
    jazz_getBit((uint64_t*) array, bitNumber, (uint64_t*) aux);
}
*/

/* Set a specific bit in a byte array to a given value */
void setBit(uint8_t* bytes, uint32_t bitNumber, uint8_t val)
{

    //jazz_setBit((uint64_t*) bytes, (uint64_t*) &bitNumber, (uint64_t*) &val);

    bytes[bitNumber / 8] = ((bytes[bitNumber >> 3] & ~(1 << (7 - (bitNumber % 8))))  | (val << (7 - (bitNumber % 8))));
}

/* Set a specific bit in a byte array to a given value */
void setBitInWordArray(uint64_t* array, uint64_t bitNumber, uint64_t val)
{

    jazz_setBit(array, &bitNumber, &val);
}

void zeroTrailingBits(uint8_t* data, size_t bitLength)
{   
    uint64_t aux;
    size_t byteLength = numBytes(bitLength);
    for (size_t i = bitLength; i < byteLength * 8; i++) {
        aux = (uint64_t) i;
        setBit(data, aux, 0);
    }
}

uint8_t parity(uint32_t* data, size_t len)
{
    uint32_t x = data[0];

    for (size_t i = 1; i < len; i++) {
        x ^= data[i];
    }

    /* Compute parity of x using code from Section 5-2 of
     * H.S. Warren, *Hacker's Delight*, Pearson Education, 2003.
     * http://www.hackersdelight.org/hdcodetxt/parity.c.txt
     */
    uint32_t y = x ^ (x >> 1);
    y ^= (y >> 2);
    y ^= (y >> 4);
    y ^= (y >> 8);
    y ^= (y >> 16);
    return y & 1;
}

uint32_t numBytes(uint32_t numBits)
{
    return (numBits == 0) ? 0 : ((numBits - 1) / 8 + 1);
}



#if 0
/* Matrix multiplication that works bitwise. Simpler, but much slower than the
 * word-wise implementation below. */
void matrix_mul(
    uint32_t* output,
    const uint32_t* state,
    const uint32_t* matrix,
    const paramset_t* params)
{
    // Use temp to correctly handle the case when state = output
    uint8_t prod;
    uint32_t temp[LOWMC_MAX_WORDS]; 
    temp[params->stateSizeWords-1] = 0;

    for (uint32_t i = 0; i < params->stateSizeBits; i++) {
        prod = 0;
        for (uint32_t j = 0; j < params->stateSizeBits; j++) {
            size_t index = i * params->stateSizeWords*WORD_SIZE_BITS + j;            
            prod ^= (getBitFromWordArray(state,j) & getBitFromWordArray(matrix, index));
        }
        setBit((uint8_t*)temp, i, prod);
    }
    memcpy((uint8_t*)output, (uint8_t*)temp, params->stateSizeWords * sizeof(uint32_t));
}
#else
/*
static uint8_t parity32(uint32_t x)
{
*/
    /* Compute parity of x using code from Section 5-2 of
     * H.S. Warren, *Hacker's Delight*, Pearson Education, 2003.
     * http://www.hackersdelight.org/hdcodetxt/parity.c.txt
     */
/*
    uint32_t y = x ^ (x >> 1);
    y ^= (y >> 2);
    y ^= (y >> 4);
    y ^= (y >> 8);
    y ^= (y >> 16);
    return y & 1;
}
*/ 

void matrix_mul(
    uint64_t* output,
    const uint64_t* state,
    const uint64_t* matrix,
    uint64_t stateSizeBits,
    uint64_t stateSizeWords,
    uint64_t wholeWords)
{
    
    //uint64_t* output2 = malloc(stateSizeWords * sizeof(uint32_t));
    
    jazz_matrix_mul((uint64_t*) output,(uint64_t*) state,(uint64_t*) matrix, &stateSizeBits, &stateSizeWords, &wholeWords);
    
    //memcpy((uint8_t*)output, (uint8_t*)output2, stateSizeWords * sizeof(uint32_t));
}
#endif

static void substitution(uint32_t* state, paramset_t* params)
{   
    uint64_t sBoxes = (uint64_t)params->numSboxes;
    jazz_substitution((uint64_t*)state, &sBoxes);  
}

void LowMCEnc(const uint32_t* plaintext, uint32_t* output, uint32_t* key, paramset_t* params)
{
    uint32_t roundKey[LOWMC_MAX_WORDS];

    uint64_t stateSizeBits, stateSizeWords, wholeWords;
    stateSizeBits = (uint64_t)params->stateSizeBits;
    stateSizeWords = (uint64_t)params->stateSizeWords;
    wholeWords = stateSizeBits/WORD_SIZE_BITS;

    if (plaintext != output) {
        /* output will hold the intermediate state */
        memcpy(output, plaintext, params->stateSizeWords*(sizeof(uint32_t)));
    }

    matrix_mul((uint64_t*)roundKey, (uint64_t*)key, (uint64_t*)KMatrix(0, params), stateSizeBits, stateSizeWords, wholeWords);
    xor_array((uint64_t*)output, (uint64_t*)output, (uint64_t*)roundKey, (uint64_t*)&params->stateSizeWords);

    for (uint32_t r = 1; r <= params->numRounds; r++) {
        matrix_mul((uint64_t*)roundKey,(uint64_t*) key, (uint64_t*)KMatrix(r, params), stateSizeBits, stateSizeWords, wholeWords);
        substitution(output, params);
        matrix_mul((uint64_t*)output,(uint64_t*) output,(uint64_t*) LMatrix(r - 1, params), stateSizeBits, stateSizeWords, wholeWords);
        xor_array((uint64_t*)output, (uint64_t*)output, (uint64_t*)RConstant(r - 1, params), (uint64_t*)&params->stateSizeWords);
        xor_array((uint64_t*)output, (uint64_t*)output, (uint64_t*)roundKey, (uint64_t*)&params->stateSizeWords);
    }
}


bool createRandomTape(const uint8_t* seed, const uint8_t* salt, uint16_t roundNumber, uint16_t playerNumber,
                      uint8_t* tape, uint32_t tapeLengthBytes, paramset_t* params)
{
    HashInstance ctx;

    if (tapeLengthBytes < params->digestSizeBytes) {
        return false;
    }

    /* Hash the seed and a constant, store the result in tape. */
    HashInit(&ctx, params, HASH_PREFIX_2);
    HashUpdate(&ctx, seed, params->seedSizeBytes);
    HashFinal(&ctx);
    HashSqueeze(&ctx, tape, params->digestSizeBytes);

    /* Expand the hashed seed, salt, round and player indices, and output
     * length to create the tape. */
    HashInit(&ctx, params, HASH_PREFIX_NONE);
    HashUpdate(&ctx, tape, params->digestSizeBytes);        // Hash the hashed seed
    HashUpdate(&ctx, salt, params->saltSizeBytes);
    HashUpdateIntLE(&ctx, roundNumber);
    HashUpdateIntLE(&ctx, playerNumber);
    HashUpdateIntLE(&ctx, tapeLengthBytes);
    HashFinal(&ctx);
    HashSqueeze(&ctx, tape, tapeLengthBytes);

    return true;
}

void mpc_xor(uint32_t* state[3], uint32_t* in[3], uint32_t len, int players)
{
    for (uint8_t i = 0; i < players; i++) {
        xor_array((uint64_t*)state[i], (uint64_t*)state[i], (uint64_t*)in[i], (uint64_t*)&len);
    }
}

/* Compute the XOR of in with the first state vectors. */
void mpc_xor_constant(uint32_t* state[3], const uint32_t* in, uint32_t len)
{
    xor_array((uint64_t*)state[0],(uint64_t*) state[0],(uint64_t*) in,(uint64_t*) &len);
}

void mpc_xor_constant_verify(uint32_t* state[2], const uint32_t* in, uint32_t len, uint8_t challenge)
{
    /* During verify, where the first share is stored in state depends on the challenge */
    if (challenge == 0) {
        xor_array((uint64_t*)state[0], (uint64_t*)state[0], (uint64_t*)in, (uint64_t*)&len);
    }
    else if (challenge == 2) {
        xor_array((uint64_t*)state[1], (uint64_t*)state[1], (uint64_t*)in, (uint64_t*)&len);
    }
}


void Commit(const uint8_t* seed, const view_t view,
            uint8_t* hash, paramset_t* params)
{
    HashInstance ctx;

    /* Hash the seed, store result in `hash` */
    HashInit(&ctx, params, HASH_PREFIX_4);
    HashUpdate(&ctx, seed, params->seedSizeBytes);
    HashFinal(&ctx);
    HashSqueeze(&ctx, hash, params->digestSizeBytes);

    /* Compute H_0(H_4(seed), view) */
    HashInit(&ctx, params, HASH_PREFIX_0);
    HashUpdate(&ctx, hash, params->digestSizeBytes);
    HashUpdate(&ctx, (uint8_t*)view.inputShare, params->stateSizeBytes);
    HashUpdate(&ctx, (uint8_t*)view.communicatedBits, params->andSizeBytes);
    HashUpdate(&ctx, (uint8_t*)view.outputShare, params->stateSizeBytes);
    HashFinal(&ctx);
    HashSqueeze(&ctx, hash, params->digestSizeBytes);
}

/* This is the random "permuatation" function G for Unruh's transform */
void G(uint8_t viewNumber, const uint8_t* seed, view_t* view, uint8_t* output, paramset_t* params)
{
    HashInstance ctx;
    uint16_t outputBytes = params->seedSizeBytes + params->andSizeBytes;

    /* Hash the seed with H_5, store digest in output */
    HashInit(&ctx, params, HASH_PREFIX_5);
    HashUpdate(&ctx, seed, params->seedSizeBytes);
    HashFinal(&ctx);
    HashSqueeze(&ctx, output, params->digestSizeBytes);

    /* Hash H_5(seed), the view, and the length */
    HashInit(&ctx, params, HASH_PREFIX_NONE);
    HashUpdate(&ctx, output, params->digestSizeBytes);
    if (viewNumber == 2) {
        HashUpdate(&ctx, (uint8_t*)view->inputShare, params->stateSizeBytes);
        outputBytes += (uint16_t)params->stateSizeBytes;
    }
    HashUpdate(&ctx, view->communicatedBits, params->andSizeBytes);

    uint16_t outputBytesLE = toLittleEndian(outputBytes);
    HashUpdate(&ctx, (uint8_t*)&outputBytesLE, sizeof(uint16_t));
    HashFinal(&ctx);
    HashSqueeze(&ctx, output, outputBytes);
}

void setChallenge(uint8_t* challenge, size_t round, uint8_t trit)
{
    /* challenge must have length numBytes(numMPCRounds*2)
     * 0 <= index < numMPCRounds
     * trit must be in {0,1,2} */
    uint32_t roundU32 = (uint32_t)round;
    uint64_t bitNumber, val;
    uint8_t aux;
    bitNumber = (uint64_t)roundU32;
    bitNumber *= 2;
    aux = trit & 1;
    val = (uint64_t) aux;
    jazz_setBit((uint64_t*) challenge, &bitNumber, &val);
    bitNumber += 1;
    aux = (trit >> 1) & 1;
    val = (uint64_t) aux;
    jazz_setBit((uint64_t*) challenge, &bitNumber, &val);
}

uint8_t getChallenge(const uint8_t* challenge, size_t round)
{
    uint32_t roundU32 = (uint32_t)round;

    return (getBit(challenge, 2 * roundU32 + 1) << 1) | getBit(challenge, 2 * roundU32);
}

void H3(const uint32_t* circuitOutput, const uint32_t* plaintext, uint32_t** viewOutputs,
        commitments_t* as, uint8_t* challengeBits, const uint8_t* salt,
        const uint8_t* message, size_t messageByteLength,
        g_commitments_t* gs, paramset_t* params)
{
    uint8_t* hash = malloc(params->digestSizeBytes);
    HashInstance ctx;

    /* Depending on the number of rounds, we might not set part of the last
     * byte, make sure it's always zero. */
    challengeBits[numBytes(params->numMPCRounds * 2) - 1] = 0;

    HashInit(&ctx, params, HASH_PREFIX_1);

    /* Hash the output share from each view */
    for (uint32_t i = 0; i < params->numMPCRounds; i++) {
        for (int j = 0; j < 3; j++) {
            HashUpdate(&ctx, (uint8_t*)VIEW_OUTPUTS(i, j), params->stateSizeBytes);
        }
    }

    /* Hash all the commitments C */
    for (uint32_t i = 0; i < params->numMPCRounds; i++) {
        for (int j = 0; j < 3; j++) {
            HashUpdate(&ctx, as[i].hashes[j], params->digestSizeBytes);
        }
    }

    /* Hash all the commitments G */
    if (params->transform == TRANSFORM_UR) {
        for (uint32_t i = 0; i < params->numMPCRounds; i++) {
            for (int j = 0; j < 3; j++) {
                size_t view3UnruhLength = (j == 2) ? params->UnruhGWithInputBytes : params->UnruhGWithoutInputBytes;
                HashUpdate(&ctx, gs[i].G[j], view3UnruhLength);
            }
        }
    }

    /* Hash the public key */
    HashUpdate(&ctx, (uint8_t*)circuitOutput, params->stateSizeBytes);
    HashUpdate(&ctx, (uint8_t*)plaintext, params->stateSizeBytes);

    /* Hash the salt & message */
    HashUpdate(&ctx, salt, params->saltSizeBytes);
    HashUpdate(&ctx, message, messageByteLength);

    HashFinal(&ctx);
    HashSqueeze(&ctx, hash, params->digestSizeBytes);

    /* Convert hash to a packed string of values in {0,1,2} */
    size_t round = 0;
    while (1) {
        for (size_t i = 0; i < params->digestSizeBytes; i++) {
            uint8_t byte = hash[i];
            /* iterate over each pair of bits in the byte */
            for (int j = 0; j < 8; j += 2) {
                uint8_t bitPair = ((byte >> (6 - j)) & 0x03);
                if (bitPair < 3) {
                    setChallenge(challengeBits, round, bitPair);
                    round++;
                    if (round == params->numMPCRounds) {
                        goto done;
                    }
                }
            }
        }

        /* We need more bits; hash set hash = H_1(hash) */
        HashInit(&ctx, params, HASH_PREFIX_1);
        HashUpdate(&ctx, hash, params->digestSizeBytes);
        HashFinal(&ctx);
        HashSqueeze(&ctx, hash, params->digestSizeBytes);
    }

done:

    free(hash);
    return;
}

/* Caller must allocate the first parameter */
void prove(proof_t* proof, uint8_t challenge, seeds_t* seeds,
           view_t views[3], commitments_t* commitments, g_commitments_t* gs, paramset_t* params)
{
    if (challenge == 0) {
        //compact_seeds((uint64_t*) proof->seed1, (uint64_t*) proof->seed2, (uint64_t*) seeds->seed[0], (uint64_t*) seeds->seed[0], );
        memcpy(proof->seed1, seeds->seed[0], params->seedSizeBytes);
        memcpy(proof->seed2, seeds->seed[1], params->seedSizeBytes);
    }
    else if (challenge == 1) {
        memcpy(proof->seed1, seeds->seed[1], params->seedSizeBytes);
        memcpy(proof->seed2, seeds->seed[2], params->seedSizeBytes);
    }
    else if (challenge == 2) {
        memcpy(proof->seed1, seeds->seed[2], params->seedSizeBytes);
        memcpy(proof->seed2, seeds->seed[0], params->seedSizeBytes);
    }
    else {
        assert(!"Invalid challenge");
    }

    if (challenge == 1 || challenge == 2) {
        memcpy(proof->inputShare, views[2].inputShare, params->stateSizeBytes);
    }
    memcpy(proof->communicatedBits, views[(challenge + 1) % 3].communicatedBits, params->andSizeBytes);

    memcpy(proof->view3Commitment, commitments->hashes[(challenge + 2) % 3], params->digestSizeBytes);
    if (params->transform == TRANSFORM_UR) {
        size_t view3UnruhLength = (challenge == 0) ? params->UnruhGWithInputBytes : params->UnruhGWithoutInputBytes;
        memcpy(proof->view3UnruhG, gs->G[(challenge + 2) % 3], view3UnruhLength);
    }
}
 
void mpc_AND_verify(uint8_t in1[2], uint8_t in2[2], uint8_t out[2],
                    randomTape_t* rand, view_t* view1, view_t* view2)
{
 
    uint8_t r[2];
    uint64_t bitNumber = (uint64_t)rand->pos;
    
    jazz_and_getBit_verify((uint64_t*) rand->tape[0], (uint64_t*) rand->tape[1], &bitNumber, (uint64_t*) r);

    jazz_mpc_AND_verify((uint64_t*)in1, (uint64_t*) in2, (uint64_t*) out, (uint64_t*) r);
    
    jazz_and_setBit_verify((uint64_t*)view1->communicatedBits, (uint64_t*)view2->communicatedBits, &bitNumber, (uint64_t*) out);
     
    rand->pos = bitNumber;
    //(rand->pos)++;
} 

void mpc_substitution_verify(uint32_t* state[2], randomTape_t* rand, view_t* view1,
                             view_t* view2, paramset_t* params)
{

    uint64_t bitNumber;

    uint8_t total[6];

    uint8_t *a = total;
    uint8_t *b = &total[2];
    uint8_t *c = &total[4];

    uint8_t merged[6];
    
    uint8_t *bc = merged;
    uint8_t *ca = &merged[2];
    uint8_t *ab = &merged[4];

    uint8_t out[6];

    for (uint32_t i = 0; i < params->numSboxes * 3; i += 3) {

        //printf("\n\n%u/%u\n\n", i/3, params->numSboxes);
        bitNumber = (uint64_t) i;
        bitNumber += 2;
        //printf("getBit verify");
        //fflush(stdout);
        jazz_mpc_getBit_verify((uint64_t*) state[0], (uint64_t*) state[1], &bitNumber, (uint64_t*) total);
        
        
        //printf("AND VERIFY\n");
        //fflush(stdout);
        mpc_AND_verify(a, b, ab, rand, view1, view2);
        mpc_AND_verify(b, c, bc, rand, view1, view2);
        mpc_AND_verify(c, a, ca, rand, view1, view2);

        //printf("SETBIT precompute\n");
        //fflush(stdout);
        jazz_mpc_setBit_precompute_verify((uint64_t*)total, (uint64_t*) merged, (uint64_t*) out);

        //printf("setBit verify");
        //fflush(stdout);
        jazz_mpc_setBit_verify((uint64_t*) state[0], (uint64_t*) state[1], &bitNumber, (uint64_t*) out);
        
    }
}

void mpc_matrix_mul(uint32_t* output[3], uint32_t* state[3], const uint32_t* matrix,
                    paramset_t* params, size_t players)
{
    (void) players;
    uint64_t stateSizeBits, stateSizeWords, wholeWords;

    stateSizeBits = (uint64_t)params->stateSizeBits;
    stateSizeWords = (uint64_t)params->stateSizeWords;
    wholeWords = stateSizeBits/WORD_SIZE_BITS;

    for (uint32_t player = 0; player < players; player++) {
        jazz_matrix_mul((uint64_t*)output[player], (uint64_t*)state[player], (uint64_t*)matrix, &stateSizeBits, &stateSizeWords, &wholeWords);
    }
    
}

void mpc_LowMC_verify(view_t* view1, view_t* view2,
                      randomTape_t* tapes, uint32_t* tmp,
                      const uint32_t* plaintext, paramset_t* params, uint8_t challenge)
{
    uint32_t* state[2];
    uint32_t* keyShares[2];
    uint32_t* roundKey[2];

    memset(tmp, 0, 4 * params->stateSizeWords * sizeof(uint32_t));
    roundKey[0] = tmp;
    roundKey[1] = roundKey[0] + params->stateSizeWords;
    state[0] = roundKey[1] + params->stateSizeWords;
    state[1] = state[0] + params->stateSizeWords;

    mpc_xor_constant_verify(state, plaintext, params->stateSizeWords, challenge);

    keyShares[0] = view1->inputShare;
    keyShares[1] = view2->inputShare;
    
    mpc_matrix_mul(roundKey, keyShares, KMatrix(0, params), params, 2);
    mpc_xor(state, roundKey, params->stateSizeWords, 2);


    for (uint32_t r = 1; r <= params->numRounds; ++r) {
        //printf("\n%u/%u\n",r, params->numRounds);
        //printf("\nmatrix mul\n");
        //fflush(stdout);
        mpc_matrix_mul(roundKey, keyShares, KMatrix(r, params), params, 2);
        //printf("\nsubstitution verify\n");
        //fflush(stdout);
        mpc_substitution_verify(state, tapes, view1, view2, params);
        //printf("\nmatrix mul\n");
        //fflush(stdout);
        mpc_matrix_mul(state, state, LMatrix(r - 1, params), params, 2);
        //printf("\nxor constant\n");
        //fflush(stdout);
        mpc_xor_constant_verify(state, RConstant(r - 1, params), params->stateSizeWords, challenge);
        //printf("\nxor\n");
        //fflush(stdout);
        mpc_xor(state, roundKey, params->stateSizeWords, 2);
    }

    memcpy(view1->outputShare, state[0], params->stateSizeBytes);
    memcpy(view2->outputShare, state[1], params->stateSizeBytes);

}

void verifyProof(const proof_t* proof, view_t* view1, view_t* view2,
                 uint8_t challenge, uint8_t* salt, uint16_t roundNumber, uint8_t* tmp,
                 const uint32_t* plaintext, randomTape_t* tape, paramset_t* params)
{
    memcpy(view2->communicatedBits, proof->communicatedBits, params->andSizeBytes);
    tape->pos = 0;

    bool status = false;
    switch (challenge) {
    case 0:
        // in this case, both views' inputs are derivable from the input share
        status = createRandomTape(proof->seed1, salt, roundNumber, 0, tmp, params->stateSizeBytes + params->andSizeBytes, params);
        memcpy(view1->inputShare, tmp, params->stateSizeBytes);
        memcpy(tape->tape[0], tmp + params->stateSizeBytes, params->andSizeBytes);
        status = status && createRandomTape(proof->seed2, salt, roundNumber, 1, tmp, params->stateSizeBytes + params->andSizeBytes, params);
        if (!status) {
            break;
        }
        memcpy(view2->inputShare, tmp, params->stateSizeBytes);

        memcpy(tape->tape[1], tmp + params->stateSizeBytes, params->andSizeBytes);
        break;

    case 1:
        // in this case view2's input share was already given to us explicitly as
        // it is not computable from the seed. We just need to compute view1's input from
        // its seed
        status = createRandomTape(proof->seed1, salt, roundNumber, 1, tmp, params->stateSizeBytes + params->andSizeBytes, params);
        memcpy(view1->inputShare, tmp, params->stateSizeBytes);
        memcpy(tape->tape[0], tmp + params->stateSizeBytes, params->andSizeBytes);
        status = status && createRandomTape(proof->seed2, salt, roundNumber, 2, tape->tape[1], params->andSizeBytes, params);
        if (!status) {
            break;
        }
        memcpy(view2->inputShare, proof->inputShare, params->stateSizeBytes);
        break;

    case 2:
        // in this case view1's input share was already given to us explicitly as
        // it is not computable from the seed. We just need to compute view2's input from
        // its seed
        status = createRandomTape(proof->seed1, salt, roundNumber, 2, tape->tape[0], params->andSizeBytes, params);
        memcpy(view1->inputShare, proof->inputShare, params->stateSizeBytes);
        status = status && createRandomTape(proof->seed2, salt, roundNumber, 0, tmp, params->stateSizeBytes + params->andSizeBytes, params);
        if (!status) {
            break;
        }
        memcpy(view2->inputShare, tmp, params->stateSizeBytes);
        memcpy(tape->tape[1], tmp + params->stateSizeBytes, params->andSizeBytes);
        break;

    default:
        PRINT_DEBUG(("Invalid Challenge"));
        break;
    }

    if (!status) {
        PRINT_DEBUG(("Failed to generate random tapes, signature verification will fail (but signature may actually be valid)\n"));
    }

    /* When input shares are read from the tapes, and the length is not a whole number of bytes, the trailing bits must be zero */
    zeroTrailingBits((uint8_t*)view1->inputShare, params->stateSizeBits);
    zeroTrailingBits((uint8_t*)view2->inputShare, params->stateSizeBits);

    mpc_LowMC_verify(view1, view2, tape, (uint32_t*)tmp, plaintext, params, challenge);
}

int verify(signature_t* sig, const uint32_t* pubKey, const uint32_t* plaintext,
           const uint8_t* message, size_t messageByteLength, paramset_t* params)
{
    commitments_t* as = allocateCommitments(params, 0);
    g_commitments_t* gs = allocateGCommitments(params);

    uint32_t** viewOutputs = malloc(params->numMPCRounds * 3 * sizeof(uint32_t*));
    const proof_t* proofs = sig->proofs;

    const uint8_t* received_challengebits = sig->challengeBits;
    int status = EXIT_SUCCESS;
    uint8_t* computed_challengebits = NULL;
    uint32_t* view3Slab = NULL;

    uint8_t* tmp = malloc(MAX(6 * params->stateSizeBytes, params->stateSizeBytes + params->andSizeBytes));

    randomTape_t* tape = (randomTape_t*)malloc(sizeof(randomTape_t));

    allocateRandomTape(tape, params);

    view_t* view1s = malloc(params->numMPCRounds * sizeof(view_t));
    view_t* view2s = malloc(params->numMPCRounds * sizeof(view_t));

    /* Allocate a slab of memory for the 3rd view's output in each round */
    view3Slab = calloc(params->stateSizeBytes, params->numMPCRounds);
    uint32_t* view3Output = view3Slab;     /* pointer into the slab to the current 3rd view */

    for (size_t i = 0; i < params->numMPCRounds; i++) {
        allocateView(&view1s[i], params);
        allocateView(&view2s[i], params);

        verifyProof(&proofs[i], &view1s[i], &view2s[i],
                    getChallenge(received_challengebits, i), sig->salt, i,
                    tmp, plaintext, tape, params);

        // create ordered array of commitments with order computed based on the challenge
        // check commitments of the two opened views
        uint8_t challenge = getChallenge(received_challengebits, i);
        Commit(proofs[i].seed1, view1s[i], as[i].hashes[challenge], params);
        Commit(proofs[i].seed2, view2s[i], as[i].hashes[(challenge + 1) % 3], params);
        memcpy(as[i].hashes[(challenge + 2) % 3], proofs[i].view3Commitment, params->digestSizeBytes);

        if (params->transform == TRANSFORM_UR) {
            G(challenge, proofs[i].seed1, &view1s[i], gs[i].G[challenge], params);
            G((challenge + 1) % 3, proofs[i].seed2, &view2s[i], gs[i].G[(challenge + 1) % 3], params);
            size_t view3UnruhLength = (challenge == 0) ? params->UnruhGWithInputBytes : params->UnruhGWithoutInputBytes;
            memcpy(gs[i].G[(challenge + 2) % 3], proofs[i].view3UnruhG, view3UnruhLength);
        }

        VIEW_OUTPUTS(i, challenge) = view1s[i].outputShare;
        VIEW_OUTPUTS(i, (challenge + 1) % 3) = view2s[i].outputShare;
        xor_three((uint64_t*)view3Output, (uint64_t*)view1s[i].outputShare,  (uint64_t*)view2s[i].outputShare, (uint64_t*)pubKey, (uint64_t*)&params->stateSizeBytes); 
        VIEW_OUTPUTS(i, (challenge + 2) % 3) = view3Output;
        view3Output = (uint32_t*) ((uint8_t*)view3Output + params->stateSizeBytes);
    }

    computed_challengebits = malloc(numBytes(2 * params->numMPCRounds));

    H3(pubKey, plaintext, viewOutputs, as,
       computed_challengebits, sig->salt, message, messageByteLength, gs, params);

    if (computed_challengebits != NULL &&
        memcmp(received_challengebits, computed_challengebits, numBytes(2 * params->numMPCRounds)) != 0) {
        PRINT_DEBUG(("Invalid signature. Did not verify\n"));
        status = EXIT_FAILURE;
    }

    free(computed_challengebits);
    free(view3Slab);

    freeCommitments(as);
    for (size_t i = 0; i < params->numMPCRounds; i++) {
        freeView(&view1s[i]);
        freeView(&view2s[i]);
    }
    free(view1s);
    free(view2s);
    free(tmp);
    freeRandomTape(tape);
    free(tape);
    freeGCommitments(gs);
    free(viewOutputs);

    return status;
}

/*** Functions implementing Sign ***/

void mpc_AND(uint8_t in1[3], uint8_t in2[3], uint8_t out[3], randomTape_t* rand,
             view_t views[3])
{

    uint8_t r[3];
    uint64_t *randPos = (uint64_t*)&rand->pos;
    
    jazz_and_getBit((uint64_t*) rand->tape[0], (uint64_t*) rand->tape[1], (uint64_t*) rand->tape[2], randPos, (uint64_t*) r);
    
    jazz_mpc_AND((uint64_t*)in1, (uint64_t*) in2, (uint64_t*) out, (uint64_t*) r);

    jazz_and_setBit((uint64_t*) views[0].communicatedBits, (uint64_t*) views[1].communicatedBits, (uint64_t*) views[2].communicatedBits, randPos, (uint64_t*) out);
    //printf("%d", rand->pos);
    //(rand->pos)++;
}

void mpc_substitution(uint32_t* state[3], randomTape_t* rand, view_t views[3],
                      paramset_t* params)
{
    uint8_t total[9];
    uint8_t *a = total;
    uint8_t *b = &total[3];
    uint8_t *c = &total[6];

    uint8_t merged[9];

    uint8_t *bc = merged;
    uint8_t *ca = &merged[3];
    uint8_t *ab = &merged[6];

    uint8_t out[9];

    uint64_t bitNumber;

    //clock_t var1, var2, var3, var4, var5, var6;
    //int delta1, delta2, delta3;

    //delta1 = delta2 = delta3 = 0;

    //for(int z=0;z<5000;z++){
        for (uint32_t i = 0; i < params->numSboxes * 3; i += 3) {

            bitNumber = (uint64_t) i;
            bitNumber += 2;
            
        //    var1 = clock();
            jazz_mpc_getBit((uint64_t*) state[0], (uint64_t*) state[1], (uint64_t*) state[2], &bitNumber, (uint64_t*) total);
        //    var2 = clock();
        //    delta1 += var2 - var1;
  
        //    var3 = clock();
            mpc_AND(a, b, ab, rand, views);
            mpc_AND(b, c, bc, rand, views);
            mpc_AND(c, a, ca, rand, views);
        //    var4 = clock();
        //    delta2 += var4 - var3;

        //    var5 = clock();
            jazz_mpc_setBit_precompute((uint64_t*)total, (uint64_t*) merged, (uint64_t*) out);
            jazz_mpc_setBit((uint64_t*) state[0], (uint64_t*) state[1], (uint64_t*) state[2], &bitNumber, (uint64_t*) out);
        //    var6 = clock();
        ///    delta3 += var6 - var5;
        } 
   // }
}


#if 0   /* Debugging helper: reconstruct a secret shared value and print it */
void print_reconstruct(const char* label, uint32_t* s[3], size_t lengthBytes)
{
    uint32_t temp[LOWMC_MAX_WORDS] = {0};
    xor_three(temp, s[0], s[1], s[2], lengthBytes);
#if 0
    printf("\n");
    printHex("s0", (uint8_t*)s[0], lengthBytes); 
    printHex("s1", (uint8_t*)s[1], lengthBytes); 
    printHex("s2", (uint8_t*)s[2], lengthBytes); 
#endif
    printHex(label, (uint8_t*)temp, lengthBytes);
}
#endif

void mpc_LowMC(randomTape_t* tapes, view_t views[3],
               const uint32_t* plaintext, uint32_t* slab, paramset_t* params)
{
    uint32_t* keyShares[3];
    uint32_t* state[3];
    uint32_t* roundKey[3];

    memset(slab, 0x00, 6 * params->stateSizeWords * sizeof(uint32_t));
    roundKey[0] = slab;
    roundKey[1] = slab + params->stateSizeWords;
    roundKey[2] = roundKey[1] + params->stateSizeWords;
    state[0] = roundKey[2] + params->stateSizeWords;
    state[1] = state[0] + params->stateSizeWords;
    state[2] = state[1] + params->stateSizeWords;
 
    for (int i = 0; i < 3; i++) {
        keyShares[i] = views[i].inputShare;
    }
    //clock_t a,b;
    //int total = 0;
   
    //for(int i =0; i<10000;i++){

        mpc_xor_constant(state, plaintext, params->stateSizeWords);                     // on jasmin
        //a = clock();
        mpc_matrix_mul(roundKey, keyShares, KMatrix(0, params), params, 3);             // on jasmin
        //b = clock() - a;
        //total += b;
        mpc_xor(state, roundKey, params->stateSizeWords, 3);                            // on jasmin

    //}
    
    //printf("\n\n\nFirst  : %d\n",total/10000 );

    //total = 0;
    //for(int i =0; i<1000;i++){
        //printf("\ni = % d",i );
        for (uint32_t r = 1; r <= params->numRounds; r++) {
            //a = clock();
            mpc_matrix_mul(roundKey, keyShares, KMatrix(r, params), params, 3);         // on jasmin
            mpc_substitution(state, tapes, views, params);                              // on jasmin
            mpc_matrix_mul(state, state, LMatrix(r - 1, params), params, 3);            // on jasmin
            //b = clock() - a;
            //total += b;
            mpc_xor_constant(state, RConstant(r - 1, params), params->stateSizeWords);  // on jasmin
            mpc_xor(state, roundKey, params->stateSizeWords, 3);                        // on jasmin
        }
    //}
    //printf("\nSecond : %d\n\n\n",total/1000 );
    //exit(1);


    for (int i = 0; i < 3; i++) {
        memcpy(views[i].outputShare, state[i], params->stateSizeBytes);
    }
}

#ifdef PICNIC_BUILD_DEFAULT_RNG
int random_bytes_default(uint8_t* buf, size_t len)
{

#if defined(__LINUX__)
    FILE* urandom = fopen("/dev/urandom", "r");
    if (urandom == NULL) {
        return -1;
    }

    if (fread(buf, sizeof(uint8_t), len, urandom) != len) {
        return -2;
    }
    fclose(urandom);

    return 0;

#elif defined(__WINDOWS__)
#ifndef ULONG_MAX
#define ULONG_MAX 0xFFFFFFFFULL
#endif
    if (len > ULONG_MAX) {
        return -3;
    }

    if (!BCRYPT_SUCCESS(BCryptGenRandom(NULL, buf, (ULONG)len, BCRYPT_USE_SYSTEM_PREFERRED_RNG))) {
        return -4;
    }
    return 0;
#else
    #error "If neither __LINUX__ or __WINDOWS__ are defined, you'll have to implement the random number generator"
#endif

}
#endif /* PICNIC_BUILD_DEFAULT_RNG */

#ifdef SUPERCOP
#include "randombytes.h"
int random_bytes_supercop(uint8_t* buf, size_t len)
{
    randombytes(buf, len); /* returns void */
    return 0;
}
#endif /* SUPERCOP */

seeds_t* computeSeeds(uint32_t* privateKey, uint32_t*
                      publicKey, uint32_t* plaintext, const uint8_t* message, size_t messageByteLength, paramset_t* params)
{
    HashInstance ctx;
    seeds_t* allSeeds = allocateSeeds(params);


    HashInit(&ctx, params, HASH_PREFIX_NONE);
    HashUpdate(&ctx, (uint8_t*)privateKey, params->stateSizeBytes);
    HashUpdate(&ctx, message, messageByteLength);
    HashUpdate(&ctx, (uint8_t*)publicKey, params->stateSizeBytes);
    HashUpdate(&ctx, (uint8_t*)plaintext, params->stateSizeBytes);
    HashUpdateIntLE(&ctx, params->stateSizeBits);
    HashFinal(&ctx);

    // Derive the N*T seeds + 1 salt
    HashSqueeze(&ctx, allSeeds[0].seed[0], params->seedSizeBytes * (params->numMPCParties * params->numMPCRounds) + params->saltSizeBytes);

    return allSeeds;
}


int sign_picnic1(uint32_t* privateKey, uint32_t* pubKey, uint32_t* plaintext, const uint8_t* message,
                 size_t messageByteLength, signature_t* sig, paramset_t* params)
{
    bool status;
    //clock_t mpc_start;
    //clock_t mpc_delta;

    /* Allocate views and commitments for all parallel iterations */
    view_t** views = allocateViews(params);
    commitments_t* as = allocateCommitments(params, 0);
    g_commitments_t* gs = allocateGCommitments(params);

    /* Compute seeds for all parallel iterations */
    seeds_t* seeds = computeSeeds(privateKey, pubKey, plaintext, message, messageByteLength, params);

    memcpy(sig->salt, seeds[params->numMPCRounds].iSeed, params->saltSizeBytes);

    //Allocate a random tape (re-used per parallel iteration), and a temporary buffer
    randomTape_t tape;

    allocateRandomTape(&tape, params);
    uint8_t* tmp = malloc( MAX(9 * params->stateSizeBytes, params->stateSizeBytes + params->andSizeBytes));

    for (uint32_t k = 0; k < params->numMPCRounds; k++) {
        // for first two players get all tape INCLUDING INPUT SHARE from seed
        for (int j = 0; j < 2; j++) {
            status = createRandomTape(seeds[k].seed[j], sig->salt, k, j, tmp, params->stateSizeBytes + params->andSizeBytes, params);
            if (!status) {
                PRINT_DEBUG(("createRandomTape failed \n"));
                return EXIT_FAILURE;
            }
            memcpy(views[k][j].inputShare, tmp, params->stateSizeBytes);
            zeroTrailingBits((uint8_t*)views[k][j].inputShare, params->stateSizeBits);
            memcpy(tape.tape[j], tmp + params->stateSizeBytes, params->andSizeBytes);
        }

        // Now set third party's wires. The random bits are from the seed, the input is
        // the XOR of other two inputs and the private key
        status = createRandomTape(seeds[k].seed[2], sig->salt, k, 2, tape.tape[2], params->andSizeBytes, params);
        if (!status) {
            PRINT_DEBUG(("createRandomTape failed \n"));
            return EXIT_FAILURE;
        }

        xor_three((uint64_t*)views[k][2].inputShare,(uint64_t*) privateKey, (uint64_t*)views[k][0].inputShare, (uint64_t*)views[k][1].inputShare, (uint64_t*)&params->stateSizeBytes);
        tape.pos = 0;
        

        //mpc_start = clock();

        mpc_LowMC(&tape, views[k], plaintext, (uint32_t*)tmp, params);

        //mpc_delta = clock() - mpc_start;

        uint32_t temp[LOWMC_MAX_WORDS] = {0};
        xor_three((uint64_t*)temp, (uint64_t*)views[k][0].outputShare, (uint64_t*)views[k][1].outputShare, (uint64_t*)views[k][2].outputShare, (uint64_t*)&params->stateSizeBytes);
        if(memcmp(temp, pubKey, params->stateSizeBytes) != 0) {
            PRINT_DEBUG(("Simulation failed; output does not match public key (round = %u)\n", k));
            return EXIT_FAILURE;
        }

        //Committing
        Commit(seeds[k].seed[0], views[k][0], as[k].hashes[0], params);
        Commit(seeds[k].seed[1], views[k][1], as[k].hashes[1], params);
        Commit(seeds[k].seed[2], views[k][2], as[k].hashes[2], params);

        if (params->transform == TRANSFORM_UR) {
            G(0, seeds[k].seed[0], &views[k][0], gs[k].G[0], params);
            G(1, seeds[k].seed[1], &views[k][1], gs[k].G[1], params);
            G(2, seeds[k].seed[2], &views[k][2], gs[k].G[2], params);
        }
    }

    //Generating challenges
    uint32_t** viewOutputs = malloc(params->numMPCRounds * 3 * sizeof(uint32_t*));
    for (size_t i = 0; i < params->numMPCRounds; i++) {
        for (size_t j = 0; j < 3; j++) {
            VIEW_OUTPUTS(i, j) = views[i][j].outputShare;
        } 
    }

    H3(pubKey, plaintext, viewOutputs, as,
       sig->challengeBits, sig->salt, message, messageByteLength, gs, params);

    //Packing Z
    for (size_t i = 0; i < params->numMPCRounds; i++) {
        proof_t* proof = &sig->proofs[i];
        prove(proof, getChallenge(sig->challengeBits, i), &seeds[i],
              views[i], &as[i], (gs == NULL) ? NULL : &gs[i], params);
    }

    //printf("\n\n\nTimes: \n\n     - mpc_LowMC: %ju\n\n", mpc_delta);//, prove_delta);


#if 0   /* Self-test, verify the signature we just created */
    printf("\n-----------\n"); 
    int ret = verify(sig, pubKey, plaintext, message, messageByteLength, params);
    if(ret != EXIT_SUCCESS) {
        printf("Self-test of signature verification failed\n");
        exit(-1);
    }
    else {
        printf("Self-test succeeded\n");
    }
    printf("\n-----------\n"); 
#endif


    free(tmp);

    freeViews(views, params);
    freeCommitments(as);
    freeRandomTape(&tape);
    freeGCommitments(gs);
    free(viewOutputs);
    freeSeeds(seeds);

    return EXIT_SUCCESS;
}

/*** Serialization functions ***/

int serializeSignature(const signature_t* sig, uint8_t* sigBytes, size_t sigBytesLen, paramset_t* params)
{
    const proof_t* proofs = sig->proofs;
    const uint8_t* challengeBits = sig->challengeBits;

    /* Validate input buffer is large enough */
    size_t bytesRequired = numBytes(2 * params->numMPCRounds) + params->saltSizeBytes +
                           params->numMPCRounds * (2 * params->seedSizeBytes + params->stateSizeBytes + params->andSizeBytes + params->digestSizeBytes);

    if (params->transform == TRANSFORM_UR) {
        bytesRequired += params->UnruhGWithoutInputBytes * params->numMPCRounds;
    }

    if (sigBytesLen < bytesRequired) {
        return -1;
    }

    uint8_t* sigBytesBase = sigBytes;

    memcpy(sigBytes, challengeBits, numBytes(2 * params->numMPCRounds));
    sigBytes += numBytes(2 * params->numMPCRounds);

    memcpy(sigBytes, sig->salt, params->saltSizeBytes);
    sigBytes += params->saltSizeBytes;

    for (size_t i = 0; i < params->numMPCRounds; i++) {

        uint8_t challenge = getChallenge(challengeBits, i);

        memcpy(sigBytes, proofs[i].view3Commitment, params->digestSizeBytes);
        sigBytes += params->digestSizeBytes;

        if (params->transform == TRANSFORM_UR) {
            size_t view3UnruhLength = (challenge == 0) ? params->UnruhGWithInputBytes : params->UnruhGWithoutInputBytes;
            memcpy(sigBytes, proofs[i].view3UnruhG, view3UnruhLength);
            sigBytes += view3UnruhLength;
        }

        memcpy(sigBytes, proofs[i].communicatedBits, params->andSizeBytes);
        sigBytes += params->andSizeBytes;

        memcpy(sigBytes, proofs[i].seed1, params->seedSizeBytes);
        sigBytes += params->seedSizeBytes;

        memcpy(sigBytes, proofs[i].seed2, params->seedSizeBytes);
        sigBytes += params->seedSizeBytes;

        if (challenge == 1 || challenge == 2) {
            memcpy(sigBytes, proofs[i].inputShare, params->stateSizeBytes);
            sigBytes += params->stateSizeBytes;
        }


    }

    return (int)(sigBytes - sigBytesBase);
}


static size_t computeInputShareSize(const uint8_t* challengeBits, size_t stateSizeBytes, paramset_t* params)
{
    /* When the FS transform is used, the input share is included in the proof
     * only when the challenge is 1 or 2.  When dersializing, to compute the
     * number of bytes expected, we must check how many challenge values are 1
     * or 2. The parameter stateSizeBytes is the size of an input share. */
    size_t inputShareSize = 0;

    for (size_t i = 0; i < params->numMPCRounds; i++) {
        uint8_t challenge = getChallenge(challengeBits, i);
        if (challenge == 1 || challenge == 2) {
            inputShareSize += stateSizeBytes;
        }
    }
    return inputShareSize;
}

static int isChallengeValid(uint8_t* challengeBits, paramset_t* params)
{
    for (size_t i = 0; i < params->numMPCRounds; i++) {
        uint8_t challenge = getChallenge(challengeBits, i);
        if (challenge > 2) {
            return 0;
        }
    }
    return 1;
}

int arePaddingBitsZero(uint8_t* data, size_t bitLength)
{
    size_t byteLength = numBytes(bitLength); 
    for (size_t i = bitLength; i < byteLength * 8; i++) {
        uint8_t bit_i = getBit(data, i);
        if (bit_i != 0) {
            return 0;
        }
    }
    return 1;
}

int deserializeSignature(signature_t* sig, const uint8_t* sigBytes,
                         size_t sigBytesLen, paramset_t* params)
{
    proof_t* proofs = sig->proofs;
    uint8_t* challengeBits = sig->challengeBits;

    /* Validate input buffer is large enough */
    if (sigBytesLen < numBytes(2 * params->numMPCRounds)) {     /* ensure the input has at least the challenge */
        return EXIT_FAILURE;
    }

    size_t inputShareSize = computeInputShareSize(sigBytes, params->stateSizeBytes, params);
    size_t bytesExpected = numBytes(2 * params->numMPCRounds) + params->saltSizeBytes +
                           params->numMPCRounds * (2 * params->seedSizeBytes + params->andSizeBytes + params->digestSizeBytes) + inputShareSize;

    if (params->transform == TRANSFORM_UR) {
        bytesExpected += params->UnruhGWithoutInputBytes * params->numMPCRounds;
    }
    if (sigBytesLen < bytesExpected) {
        return EXIT_FAILURE;
    }

    memcpy(challengeBits, sigBytes, numBytes(2 * params->numMPCRounds));
    sigBytes += numBytes(2 * params->numMPCRounds);

    if (!isChallengeValid(challengeBits, params)) {
        return EXIT_FAILURE;
    }

    memcpy(sig->salt, sigBytes, params->saltSizeBytes);
    sigBytes += params->saltSizeBytes;

    for (size_t i = 0; i < params->numMPCRounds; i++) {

        uint8_t challenge = getChallenge(challengeBits, i);

        memcpy(proofs[i].view3Commitment, sigBytes, params->digestSizeBytes);
        sigBytes += params->digestSizeBytes;

        if (params->transform == TRANSFORM_UR) {
            size_t view3UnruhLength = (challenge == 0) ? params->UnruhGWithInputBytes : params->UnruhGWithoutInputBytes;
            memcpy(proofs[i].view3UnruhG, sigBytes, view3UnruhLength);
            sigBytes += view3UnruhLength;
        }
 
        memcpy(proofs[i].communicatedBits, sigBytes, params->andSizeBytes);
        sigBytes += params->andSizeBytes;

        memcpy(proofs[i].seed1, sigBytes, params->seedSizeBytes);
        sigBytes += params->seedSizeBytes;

        memcpy(proofs[i].seed2, sigBytes, params->seedSizeBytes);
        sigBytes += params->seedSizeBytes;

        if (challenge == 1 || challenge == 2) {
            memcpy(proofs[i].inputShare, sigBytes, params->stateSizeBytes);
            sigBytes += params->stateSizeBytes;
            if(!arePaddingBitsZero((uint8_t*)proofs[i].inputShare, params->stateSizeBits)) {
                return EXIT_FAILURE;
            }
        }

    }

    return EXIT_SUCCESS;
}




