	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rsi
	leaq	-1(%rsp), %rsp
	andq	$-1, %rsp
	movb	$1, %al
	andb	%al, (%rsp)
	cmpb	$1, (%rsp)
	je  	Ltest$1
Ltest$1:
	movq	%rsi, %rsp
	ret 
