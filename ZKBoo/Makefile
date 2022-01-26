CFLAGS = -I/usr/local/opt/openssl@1.1/include -L/usr/local/opt/openssl@1.1/lib



all: full




full:
	clear
	./../../jasminc -o ZKBoo_encrypt.s  ZKBoo_encrypt.jazz
	./../../jasminc -o ZKBoo_decrypt.s  ZKBoo_decrypt.jazz
	gcc $(CFLAGS) ZKBoo.c


encrypt:
	clear
	./../../jasminc -o ZKBoo_encrypt.s  ZKBoo_encrypt.jazz
	gcc $(CFLAGS) ZKBoo.c

decrypt:
	clear
	./../../jasminc -o ZKBoo_decrypt.s  ZKBoo_decrypt.jazz