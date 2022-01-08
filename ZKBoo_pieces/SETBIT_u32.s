	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rsi
	subq	$1, %rsp
	andq	$-32, %rsp
	movb	$1, %al
	andb	%al, (%rsp)
	cmpb	$1, (%rsp)
	je  	Ltest$1
Ltest$1:
	movq	%rsi, %rsp
	ret 
