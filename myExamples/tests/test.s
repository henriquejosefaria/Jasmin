	.text
	.p2align	5
	.globl	_mymax
	.globl	mymax
_mymax:
mymax:
	movq	$0, %rcx
	movq	$-1, %rax
	jmp 	Lmymax$1
Lmymax$2:
	cmpq	(%rdi), %rax
	cmovb	(%rdi), %rax
	addq	$64, %rdi
	incq	%rcx
Lmymax$1:
	cmpq	%rsi, %rcx
	jb  	Lmymax$2
	ret 
