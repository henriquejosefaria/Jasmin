	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	$0, %rax
	jmp 	Ltest$3
Ltest$4:
	incq	%rax
Ltest$3:
	cmpq	$3, %rax
	jb  	Ltest$4
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incq	%rax
Ltest$1:
	cmpq	$3, %rax
	jb  	Ltest$2
	ret 
