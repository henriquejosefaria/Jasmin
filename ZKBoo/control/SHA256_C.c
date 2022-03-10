 /*****Please include following header files*****/
// stdio.h
// stdlib.h
// string.h
/***********************************************/

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define uchar unsigned char
#define uint unsigned int

#define DBL_INT_ADD(a,b,c) if (a > 0xffffffff - (c)) ++b; a += c;
#define ROTLEFT(a,b) (((a) << (b)) | ((a) >> (32-(b))))
#define ROTRIGHT(a,b) (((a) >> (b)) | ((a) << (32-(b))))

#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

typedef struct {
	unsigned char x[64];
	uint32_t y[370];
} View;

typedef struct {
	uchar data[64];
	uint datalen;
	uint bitlen[2];
	uint state[8];
} SHA256_CTX;

uint k[64] = {
	0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
	0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
	0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
	0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
	0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
	0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
	0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
	0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
};

void SHA256Transform(SHA256_CTX *ctx, uchar data[])
{

	uint a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];
	uint32_t m32;
	uint8_t *m_aux = m;

	printf("\n\n received data = ");
	for(int j=0; j<64;j++){
		printf("%u, ",data[j]);
	}

	//printf("data = { ");
	for (i = 0, j = 0; i < 16; ++i, j += 4){
		m[i] = (data[j] << 24) | (data[j + 1] << 16) | (data[j + 2] << 8) | (data[j + 3]);
		//printf("%u, %u, %u, %u\n", *(m_aux + i * 4), *(m_aux + i * 4 + 1), *(m_aux + i * 4 + 2), *(m_aux + i * 4 + 3));
	}
	//printf("}\n\n");
	
	//printf("data = { ");
	m_aux = &m32;
	for (; i < 64; ++i){

		m[i] = SIG1(m[i - 2]) + m[i - 7] + SIG0(m[i - 15]) + m[i - 16];
		
		if(i < 32){
			m_aux = &m[i];
			//printf("\n2º %u, %u, %u, %u", *(m_aux), *(m_aux + 1), *(m_aux + 2), *(m_aux + 3));
		}
		
	}
	//printf("}\n\n");

	
	i = 0;
	/*
	printf("\n\ndata = {");
    while(i < 64){
        printf("%u, ",data[i]);
        i += 1;
    }
    printf("\n\n");
	*/
	a = ctx->state[0];
	b = ctx->state[1];
	c = ctx->state[2];
	d = ctx->state[3];
	e = ctx->state[4];
	f = ctx->state[5];
	g = ctx->state[6];
	h = ctx->state[7];

	uint8_t *t1_s = &t1;
	//printf("\n\nt1's = { " );
	for (i = 0; i < 64; ++i) {
		
		t1 = h + EP1(e) + CH(e, f, g) + k[i] + m[i];
		t2 = EP0(a) + MAJ(a, b, c);

		/*
		if(i < 16){
			printf("%u, %u, %u, %u, ", *(t1_s), *(t1_s + 1), *(t1_s + 2), *(t1_s + 3));
		}
		*/

		h = g;
		g = f;
		f = e;
		e = d + t1;
		d = c;
		c = b;
		b = a;
		a = t1 + t2;

	}
	//printf("}\n");

	uint8_t *x_s = &a;
	/*
	printf("\n{A,..,H}\n\n%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &b;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &c;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &d;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &e;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &f;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &g;
	printf("%u,%u,%u,%u, ", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	x_s = &h;
	printf("%u,%u,%u,%u", *(x_s), *(x_s + 1), *(x_s + 2), *(x_s + 3));
	*/

	ctx->state[0] += a;
	ctx->state[1] += b;
	ctx->state[2] += c;
	ctx->state[3] += d;
	ctx->state[4] += e;
	ctx->state[5] += f;
	ctx->state[6] += g;
	ctx->state[7] += h;
	/*
	uint8_t *state_s = &ctx->state[0];
	printf("\n\n\nState = ");
	for(int i=0; i < 28; i++){
		printf("%u, ", *(state_s + i));
	}
	*/
	

}

void SHA256Init(SHA256_CTX *ctx)
{
	ctx->datalen = 0;
	ctx->bitlen[0] = 0;
	ctx->bitlen[1] = 0;
	ctx->state[0] = 0x6a09e667;
	ctx->state[1] = 0xbb67ae85;
	ctx->state[2] = 0x3c6ef372;
	ctx->state[3] = 0xa54ff53a;
	ctx->state[4] = 0x510e527f;
	ctx->state[5] = 0x9b05688c;
	ctx->state[6] = 0x1f83d9ab;
	ctx->state[7] = 0x5be0cd19;
}

void SHA256Update(SHA256_CTX *ctx, uchar data[], uint len)
{
	for (uint i = 0; i < len; ++i) {
		ctx->data[ctx->datalen] = data[i];
		ctx->datalen++;
		if (ctx->datalen == 64) {
			SHA256Transform(ctx, ctx->data);
			DBL_INT_ADD(ctx->bitlen[0], ctx->bitlen[1], 512);
			ctx->datalen = 0;
		}
	}
}

void SHA256Final(SHA256_CTX *ctx, uchar hash[])
{
	
	uint i = ctx->datalen;
	
	if (ctx->datalen < 56) {
		ctx->data[i++] = 0x80;
		while (i < 56)
			ctx->data[i++] = 0x00;
	}
	else {
		ctx->data[i++] = 0x80;
		while (i < 64)
			ctx->data[i++] = 0x00;
		SHA256Transform(ctx, ctx->data);
		memset(ctx->data, 0, 56);
	}
	
	/*
	printf("\n\ndata = {");
	for(int i=0;i<64;i++){
		printf("%u, ",ctx->data[i]);
	}
	printf("}\n\n");
	*/
	
	DBL_INT_ADD(ctx->bitlen[0], ctx->bitlen[1], ctx->datalen * 8);
	
	ctx->data[63] = ctx->bitlen[0];
	ctx->data[62] = ctx->bitlen[0] >> 8;
	ctx->data[61] = ctx->bitlen[0] >> 16;
	ctx->data[60] = ctx->bitlen[0] >> 24;

	ctx->data[59] = ctx->bitlen[1];
	ctx->data[58] = ctx->bitlen[1] >> 8;
	ctx->data[57] = ctx->bitlen[1] >> 16;
	ctx->data[56] = ctx->bitlen[1] >> 24;
	
	SHA256Transform(ctx, ctx->data);
	
	//uint8_t *aux = &ctx->state[0];

	//printf("\nctx->state[0] = %u, %u, %u, %u\n", *(aux), *(aux + 1), *(aux + 2), *(aux + 3));
	
	for (i = 0; i < 4; ++i) {
		hash[i] = (ctx->state[0] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 4] = (ctx->state[1] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 8] = (ctx->state[2] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 12] = (ctx->state[3] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 16] = (ctx->state[4] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 20] = (ctx->state[5] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 24] = (ctx->state[6] >> (24 - i * 8)) & 0x000000ff;
		hash[i + 28] = (ctx->state[7] >> (24 - i * 8)) & 0x000000ff;
	}
	
}

char* SHA256(char* data, unsigned char k[16], unsigned char rs[4], View v) {

	SHA256_CTX ctx;
	unsigned char hash[32];

	SHA256Init(&ctx);
	int z = 0;
	while(z < 64){
		ctx.data[z] = 0;
		z += 1;
	}
	//SHA256Update(&ctx, k, 16);
	//SHA256Update(&ctx, rs, 4);
	SHA256Update(&ctx, &v, sizeof(v));
	//SHA256Update(&ctx, view_y, 1480);
	SHA256Final(&ctx, hash);

	
	printf("\n\nas[0].h[0] = { %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u}\n\n", hash[0],hash[1],hash[2],hash[3],hash[4],hash[5],hash[6],hash[7],hash[8],hash[9],hash[10],hash[11],hash[12],hash[13],hash[14], hash[15]);
	
	char s[3];
	/*
	printf("\n\n hash => ");
	for (int i = 0; i < 16; i++) {
		printf("%u, ", hash[i]);
		//strcat(hashStr, s);
	}
	printf("\n\n");
	*/
	return hash;
}


int main(void)
{
	char data[] = "";


	int NUM_ROUNDS = 1;
	int i = 16;

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

	uint8_t* keys = &keys_aux[0][0];
	View view = localViews[0][0];

	char* sha256 = SHA256(data, keys_aux[0][0], rs_aux[0][0], view);
	
}

