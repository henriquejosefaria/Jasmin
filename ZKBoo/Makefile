CFLAGS = -I/usr/local/opt/openssl@1.1/include -L/usr/local/opt/openssl@1.1/lib -lcrypto

COMPILED = compiled_Jasmin

all: full


full:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_encrypt.s  ZKBoo_encrypt.jazz
	./../../jasminc -o $(COMPILED)/ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
	cp $(COMPILED)/ZKBoo_encrypt.s .
	cp $(COMPILED)/ZKBoo_decrypt.s .
	gcc $(CFLAGS) ZKBoo.c

c:
	clear
	gcc $(CFLAGS) ZKBoo.c

encrypt:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_encrypt.s  ZKBoo_encrypt.jazz

decrypt:
	clear
	./../../jasminc -o $(COMPILED)/ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
