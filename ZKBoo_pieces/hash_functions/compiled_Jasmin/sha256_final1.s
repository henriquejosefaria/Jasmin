	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r10
	leaq	-40(%rsp), %rsp
	andq	$-8, %rsp
	movq	$0, %rax
	movq	$0, %rcx
	movq	$0, %rdx
	movq	(%rsp), %rsi
	cmpq	$14, (%rsp)
	jb  	Ltest$9
	incq	%rsi
	jmp 	Ltest$21
Ltest$22:
	incq	%rsi
Ltest$21:
	cmpq	$16, %rsi
	jb  	Ltest$22
	movq	$0, %rsi
	jmp 	Ltest$19
Ltest$20:
	incq	%rsi
Ltest$19:
	cmpq	$16, %rsi
	jb  	Ltest$20
	jmp 	Ltest$17
Ltest$18:
	incq	%rsi
Ltest$17:
	cmpq	$64, %rsi
	jb  	Ltest$18
	movq	$0, %rsi
	jmp 	Ltest$15
Ltest$16:
	incq	%rsi
Ltest$15:
	cmpq	$64, %rsi
	jb  	Ltest$16
	movq	$0, %rsi
	jmp 	Ltest$13
Ltest$14:
	incq	%rsi
Ltest$13:
	cmpq	$14, %rsi
	jb  	Ltest$14
	jmp 	Ltest$10
Ltest$9:
	incq	%rsi
	jmp 	Ltest$11
Ltest$12:
	incq	%rsi
Ltest$11:
	cmpq	$15, %rsi
	jb  	Ltest$12
Ltest$10:
	movq	$0, %rsi
	jmp 	Ltest$7
Ltest$8:
	incq	%rsi
Ltest$7:
	cmpq	$16, %rsi
	jb  	Ltest$8
	jmp 	Ltest$5
Ltest$6:
	incq	%rsi
Ltest$5:
	cmpq	$64, %rsi
	jb  	Ltest$6
	movq	$0, %rsi
	jmp 	Ltest$3
Ltest$4:
	incq	%rsi
Ltest$3:
	cmpq	$64, %rsi
	jb  	Ltest$4
	movq	$0, %rsi
	imulq	$8, %rcx, %rcx
	imulq	%rdx, %rcx
	jmp 	Ltest$1
Ltest$2:
	movq	%rax, %rdx
	imulq	$8, %rdx, %rdx
	addq	$384, %rdx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	movl	8(%rsp,%rsi,4), %r8d
	movl	%r8d, (%rdi,%rdx)
	incq	%rsi
Ltest$1:
	cmpq	$8, %rsi
	jb  	Ltest$2
	movq	%r10, %rsp
	ret 
