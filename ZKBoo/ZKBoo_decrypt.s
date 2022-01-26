	.text
	.p2align	5
	.globl	_zkboo_decrypt
	.globl	zkboo_decrypt
_zkboo_decrypt:
zkboo_decrypt:
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$1
Lzkboo_decrypt$2:
	incq	%rax
Lzkboo_decrypt$1:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$2
	ret 
