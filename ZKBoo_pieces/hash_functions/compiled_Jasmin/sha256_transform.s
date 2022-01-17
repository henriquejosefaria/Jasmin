	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	$0, %rax
	jmp 	Ltest$9
Ltest$10:
	addq	$4, %rax
Ltest$9:
	cmpq	$64, %rax
	jb  	Ltest$10
	jmp 	Ltest$7
Ltest$8:
	incq	%rcx
Ltest$7:
	cmpq	$64, %rcx
	jb  	Ltest$8
	movq	$0, %rax
	jmp 	Ltest$5
Ltest$6:
	incq	%rax
Ltest$5:
	cmpq	$4, %rax
	jb  	Ltest$6
	movq	$0, %rax
	jmp 	Ltest$3
Ltest$4:
	incq	%rax
Ltest$3:
	cmpq	$64, %rax
	jb  	Ltest$4
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incq	%rax
Ltest$1:
	cmpq	$4, %rax
	jb  	Ltest$2
	ret 
