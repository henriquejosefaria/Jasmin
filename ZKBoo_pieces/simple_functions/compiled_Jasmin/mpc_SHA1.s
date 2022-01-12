	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	$0, %rax
	jmp 	Ltest$25
Ltest$26:
	incq	%rax
Ltest$25:
	cmpq	$5, %rax
	jb  	Ltest$26
	movq	$0, %rax
	jmp 	Ltest$17
Ltest$18:
	movq	$0, %rcx
	jmp 	Ltest$23
Ltest$24:
	incq	%rcx
Ltest$23:
	cmpq	$2, %rcx
	jb  	Ltest$24
	movq	$0, %rcx
	jmp 	Ltest$21
Ltest$22:
	incq	%rcx
Ltest$21:
	cmpq	$8, %rcx
	jb  	Ltest$22
	movq	$0, %rcx
	jmp 	Ltest$19
Ltest$20:
	incq	%rcx
Ltest$19:
	cmpq	$16, %rcx
	jb  	Ltest$20
	incq	%rax
Ltest$17:
	cmpq	$3, %rax
	jb  	Ltest$18
	movq	$16, %rax
	jmp 	Ltest$13
Ltest$14:
	movq	$0, %rcx
	jmp 	Ltest$15
Ltest$16:
	incq	%rcx
Ltest$15:
	cmpq	$3, %rcx
	jb  	Ltest$16
	incq	%rax
Ltest$13:
	cmpq	$80, %rax
	jb  	Ltest$14
	movq	$0, %rax
	jmp 	Ltest$11
Ltest$12:
	incq	%rax
Ltest$11:
	cmpq	$3, %rax
	jb  	Ltest$12
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	movq	$0, %rcx
	jmp 	Ltest$9
Ltest$10:
	incq	%rcx
Ltest$9:
	cmpq	$3, %rcx
	jb  	Ltest$10
	movq	$0, %rcx
	jmp 	Ltest$7
Ltest$8:
	incq	%rcx
Ltest$7:
	cmpq	$3, %rcx
	jb  	Ltest$8
	movq	$0, %rcx
	jmp 	Ltest$5
Ltest$6:
	incq	%rcx
Ltest$5:
	cmpq	$3, %rcx
	jb  	Ltest$6
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	incq	%rcx
Ltest$3:
	cmpq	$3, %rcx
	jb  	Ltest$4
	incq	%rax
Ltest$1:
	cmpq	$5, %rax
	jb  	Ltest$2
	ret 
