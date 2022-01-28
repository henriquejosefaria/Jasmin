CFLAGS = -I/usr/local/opt/openssl@1.1/include -L/usr/local/opt/openssl@1.1/lib

COMPILED = compiled_Jasmin

all: full


full:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_encrypt.s  ZKBoo_encrypt.jazz
	./../../jasminc -o $(COMPILED)/ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
	gcc $(CFLAGS) ZKBoo.c


encrypt:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_encrypt.s  ZKBoo_encrypt.jazz

decrypt:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_decrypt.s  ZKBoo_decrypt.jazz