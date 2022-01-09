	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rsi
	subq	$4, %rsp
	andq	$-32, %rsp
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incl	(%rsp)
	cmpl	$64, (%rsp)
	jne 	Ltest$3
	movl	$0, (%rsp)
Ltest$3:
	incq	%rax
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%rsi, %rsp
	ret 
