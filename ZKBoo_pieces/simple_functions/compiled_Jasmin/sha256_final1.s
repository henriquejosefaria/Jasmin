	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r10
	subq	$8, %rsp
	andq	$-32, %rsp
	movq	(%rsp), %rax
	cmpq	$56, (%rsp)
	jb  	Ltest$13
	incq	%rax
	jmp 	Ltest$29
Ltest$30:
	incq	%rax
Ltest$29:
	cmpq	$64, %rax
	jb  	Ltest$30
	movq	$0, %rax
	jmp 	Ltest$27
Ltest$28:
	addq	$4, %rax
Ltest$27:
	cmpq	$64, %rax
	jb  	Ltest$28
	jmp 	Ltest$25
Ltest$26:
	incq	%rcx
Ltest$25:
	cmpq	$64, %rcx
	jb  	Ltest$26
	movq	$0, %rax
	jmp 	Ltest$23
Ltest$24:
	incq	%rax
Ltest$23:
	cmpq	$4, %rax
	jb  	Ltest$24
	movq	$0, %rax
	jmp 	Ltest$21
Ltest$22:
	incq	%rax
Ltest$21:
	cmpq	$64, %rax
	jb  	Ltest$22
	movq	$0, %rax
	jmp 	Ltest$19
Ltest$20:
	incq	%rax
Ltest$19:
	cmpq	$4, %rax
	jb  	Ltest$20
	movq	$0, %rax
	jmp 	Ltest$17
Ltest$18:
	incq	%rax
Ltest$17:
	cmpq	$56, %rax
	jb  	Ltest$18
	jmp 	Ltest$14
Ltest$13:
	incq	%rax
	jmp 	Ltest$15
Ltest$16:
	incq	%rax
Ltest$15:
	cmpq	$56, %rax
	jb  	Ltest$16
Ltest$14:
	movq	$0, %rax
	jmp 	Ltest$11
Ltest$12:
	addq	$4, %rax
Ltest$11:
	cmpq	$64, %rax
	jb  	Ltest$12
	jmp 	Ltest$9
Ltest$10:
	incq	%rdx
Ltest$9:
	cmpq	$64, %rdx
	jb  	Ltest$10
	movq	$0, %rax
	jmp 	Ltest$7
Ltest$8:
	incq	%rax
Ltest$7:
	cmpq	$4, %rax
	jb  	Ltest$8
	movq	$0, %rax
	jmp 	Ltest$5
Ltest$6:
	incq	%rax
Ltest$5:
	cmpq	$64, %rax
	jb  	Ltest$6
	movq	$0, %rax
	jmp 	Ltest$3
Ltest$4:
	incq	%rax
Ltest$3:
	cmpq	$4, %rax
	jb  	Ltest$4
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incq	%rax
Ltest$1:
	cmpq	$4, %rax
	jb  	Ltest$2
	movq	%r10, %rsp
	ret 
