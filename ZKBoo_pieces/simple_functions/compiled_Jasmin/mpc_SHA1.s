	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	pushq	%rbp
	pushq	%r12
	movq	%rsp, %r12
	subq	$192, %rsp
	andq	$-32, %rsp
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ltest$38
Ltest$39:
	incq	%rcx
Ltest$38:
	cmpq	$5, %rcx
	jb  	Ltest$39
	movq	$0, %rcx
	jmp 	Ltest$32
Ltest$33:
	imulq	$8, %rcx, %rsi
	movq	%rcx, %r8
	imulq	%r9, %r8
	imulq	$2, %r8, %r8
	imulq	$2, %r11, %r10
	addq	$768, %r10
	addq	%r8, %r10
	movq	(%rdi,%r10), %r8
	movq	%r8, (%rsp,%rsi,8)
	incq	%rsi
	incq	%r10
	movq	(%rdi,%r10), %r8
	movq	%r8, (%rsp,%rsi,8)
	movq	$16, %rsi
	movb	$-128, (%rsp,%rsi)
	imulq	$64, %rcx, %rsi
	addq	$62, %rsi
	movb	%al, (%rsp,%rsi)
	shrb	$8, (%rsp,%rsi)
	incq	%rsi
	movb	%al, (%rsp,%rsi)
	imulq	$8, %rcx, %rsi
	movq	%rcx, %r8
	imulq	%r9, %r8
	imulq	$8, %r8, %r8
	imulq	$8, %r11, %r10
	addq	%r8, %r10
	movq	$0, %r8
	jmp 	Ltest$36
Ltest$37:
	movq	(%rsp,%rsi,8), %rbp
	movq	%rbp, (%rdx,%r10)
	incq	%rsi
	incq	%r10
	incq	%r8
Ltest$36:
	cmpq	$8, %r8
	jb  	Ltest$37
	movq	$0, %rsi
	jmp 	Ltest$34
Ltest$35:
	incq	%rsi
Ltest$34:
	cmpq	$16, %rsi
	jb  	Ltest$35
	incq	%rcx
Ltest$32:
	cmpq	$3, %rcx
	jb  	Ltest$33
	movq	$16, %rax
	jmp 	Ltest$28
Ltest$29:
	movq	$0, %rcx
	jmp 	Ltest$30
Ltest$31:
	incq	%rcx
Ltest$30:
	cmpq	$3, %rcx
	jb  	Ltest$31
	incq	%rax
Ltest$28:
	cmpq	$80, %rax
	jb  	Ltest$29
	movq	$0, %rax
	jmp 	Ltest$26
Ltest$27:
	incq	%rax
Ltest$26:
	cmpq	$3, %rax
	jb  	Ltest$27
	movq	$0, %rax
	jmp 	Ltest$11
Ltest$12:
	cmpq	$19, %rax
	jnbe	Ltest$21
	movq	$0, %rcx
	jmp 	Ltest$24
Ltest$25:
	incq	%rcx
Ltest$24:
	cmpq	$3, %rcx
	jb  	Ltest$25
	movq	$0, %rcx
	jmp 	Ltest$22
Ltest$23:
	incq	%rcx
Ltest$22:
	cmpq	$3, %rcx
	jb  	Ltest$23
Ltest$21:
	cmpq	$39, %rax
	jnbe	Ltest$18
	movq	$0, %rcx
	jmp 	Ltest$19
Ltest$20:
	incq	%rcx
Ltest$19:
	cmpq	$3, %rcx
	jb  	Ltest$20
Ltest$18:
	cmpq	$59, %rax
	jbe 	Ltest$15
	movq	$0, %rcx
	jmp 	Ltest$16
Ltest$17:
	incq	%rcx
Ltest$16:
	cmpq	$3, %rcx
	jb  	Ltest$17
Ltest$15:
	movq	$0, %rcx
	jmp 	Ltest$13
Ltest$14:
	incq	%rcx
Ltest$13:
	cmpq	$3, %rcx
	jb  	Ltest$14
	incq	%rax
Ltest$11:
	cmpq	$80, %rax
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
	movq	%r12, %rsp
	popq	%r12
	popq	%rbp
	ret 
