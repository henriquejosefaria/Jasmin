	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rsi
	leaq	-8(%rsp), %rsp
	andq	$-8, %rsp
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$3
	movq	$0, (%rsp)
Ltest$3:
	incq	%rax
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%rsi, %rsp
	ret 
