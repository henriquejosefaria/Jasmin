CFLAGS = -I/usr/local/opt/openssl@1.1/include -L/usr/local/opt/openssl@1.1/lib -lcrypto -L/usr/local/Cellar/libomp -lomp

COMPILED = compiled_Jasmin

CONTROL_FILES = control/shared.h
ASSEMBLEY_FILES = ZKBoo_encrypt.s ZKBoo_decrypt.s 
FAST_ASSEMBLEY = ZKBoo_encrypt_functions.s
ASSEMBLEY_DEBUG_FILES = SHA256.s


all: full


full:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_encrypt.s  ZKBoo_encrypt.jazz
	./../../jasminc -o $(COMPILED)/ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
	cp $(COMPILED)/ZKBoo_encrypt.s .
	cp $(COMPILED)/ZKBoo_decrypt.s .
	gcc $(CFLAGS) $(ASSEMBLEY_FILES) ZKBoo.c
	clear
	time ./a.out


test:
	clear
	gcc -w $(CFLAGS) $(CONTROL_FILES) control/ZKBoo.c
	./a.out
	#gcc -w $(CFLAGS) $(CONTROL_FILES) control/mpc_sha1_verify.c
	#./a.out
	gcc -w $(CFLAGS) $(FAST_ASSEMBLEY) ZKBoo_fast.c
	./a.out

SHA256:
	clear
	gcc -w $(CFLAGS) $(CONTROL_FILES) control/SHA256_C.c
	./a.out
	gcc -w $(CFLAGS) $(FAST_ASSEMBLEY) ZKBoo_fast.c
	./a.out


H:
	clear
	./../../jasminc -o SHA256.s  control/SHA256.jazz



c:
	clear
	gcc $(CFLAGS) $(ASSEMBLEY_FILES) ZKBoo.c
	./a.out

encrypt_functions:
	clear
	./../../jasminc -o ZKBoo_encrypt_functions.s  ZKBoo_encrypt_functions.jazz


encrypt:
	clear
	./../../jasminc -o ZKBoo_encrypt.s  ZKBoo_encrypt.jazz


decrypt:
	clear
	./../../jasminc -o ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
