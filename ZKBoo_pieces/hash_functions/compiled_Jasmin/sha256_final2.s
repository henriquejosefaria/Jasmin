	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rsi
	leaq	-8(%rsp), %rsp
	andq	$-8, %rsp
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Ltest$8
	incq	%rax
	jmp 	Ltest$20
Ltest$21:
	incq	%rax
Ltest$20:
	cmpq	$16, %rax
	jb  	Ltest$21
	movq	$0, %rax
	jmp 	Ltest$18
Ltest$19:
	incq	%rax
Ltest$18:
	cmpq	$16, %rax
	jb  	Ltest$19
	jmp 	Ltest$16
Ltest$17:
	incq	%rax
Ltest$16:
	cmpq	$64, %rax
	jb  	Ltest$17
	movq	$0, %rax
	jmp 	Ltest$14
Ltest$15:
	incq	%rax
Ltest$14:
	cmpq	$64, %rax
	jb  	Ltest$15
	movq	$0, %rax
	jmp 	Ltest$12
Ltest$13:
	incq	%rax
Ltest$12:
	cmpq	$14, %rax
	jb  	Ltest$13
	jmp 	Ltest$9
Ltest$8:
	incq	%rax
	jmp 	Ltest$10
Ltest$11:
	incq	%rax
Ltest$10:
	cmpq	$14, %rax
	jb  	Ltest$11
Ltest$9:
	movq	$0, %rax
	jmp 	Ltest$6
Ltest$7:
	incq	%rax
Ltest$6:
	cmpq	$16, %rax
	jb  	Ltest$7
	jmp 	Ltest$4
Ltest$5:
	incq	%rax
Ltest$4:
	cmpq	$64, %rax
	jb  	Ltest$5
	movq	$0, %rax
	jmp 	Ltest$2
Ltest$3:
	incq	%rax
Ltest$2:
	cmpq	$64, %rax
	jb  	Ltest$3
	movq	$0, %rax
Ltest$1:
	cmpq	$8, %rax
	jb  	Ltest$1
	movq	%rsi, %rsp
	ret 
