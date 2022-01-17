	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	$0, %rcx
	movq	$2, %rsi
	movq	$0, %rax
	jmp 	Ltest$10
Ltest$11:
	movq	$0, %rdx
	jmp 	Ltest$12
Ltest$13:
	incq	%rdx
Ltest$12:
	cmpq	$4, %rdx
	jb  	Ltest$13
	incq	%rax
Ltest$10:
	cmpq	$3, %rax
	jb  	Ltest$11
	movq	$0, %rax
	jmp 	Ltest$8
Ltest$9:
	incq	%rax
Ltest$8:
	cmpq	$3, %rax
	jb  	Ltest$9
	movq	$0, %rax
	jmp 	Ltest$4
Ltest$5:
	movq	$0, %rdx
	jmp 	Ltest$6
Ltest$7:
	incq	%rdx
Ltest$6:
	cmpq	$3, %rdx
	jb  	Ltest$7
	incq	%rax
Ltest$4:
	cmpq	$31, %rax
	jb  	Ltest$5
	movq	$0, %rdi
	jmp 	Ltest$1
Ltest$2:
	movq	%rcx, %rax
	movq	$0, %rdx
	divq	%rsi
	cmpq	$0, %rdx
	je  	Ltest$3
Ltest$3:
	incq	%rdi
Ltest$1:
	cmpq	$3, %rdi
	jb  	Ltest$2
	ret 
