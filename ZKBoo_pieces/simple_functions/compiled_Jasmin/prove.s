	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	pushq	%rbx
	pushq	%rbp
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %rbp
	subq	$1032, %rsp
	andq	$-32, %rsp
	movq	%rbp, (%rsp)
	movq	$0, %rax
	movq	$0, %r8
	movq	$1, %r9
	movq	$0, %r10
	jmp 	Ltest$1
Ltest$2:
	movq	8(%rsp,%r10,8), %r11
	movq	8(%rsp,%r10,8), %rbp
	incq	%rbp
	cmpq	$3, %rbp
	jne 	Ltest$23
	movq	$0, %rbp
Ltest$23:
	imulq	$2, %r10, %rbx
	movq	$0, %r12
	jmp 	Ltest$21
Ltest$22:
	imulq	$391, %r10, %r13
	addq	%r12, %r13
	imulq	$2, %r11, %r14
	imulq	%rax, %r14
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	(%rdi,%r14), %r14
	movq	%r14, (%rcx,%r13)
	addq	$2, %r13
	imulq	$2, %rbp, %r14
	imulq	%rax, %r14
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	(%rdi,%r14), %r14
	movq	%r14, (%rcx,%r13)
	incq	%r12
Ltest$21:
	cmpq	$2, %r12
	jb  	Ltest$22
	imulq	$8, %rax, %rbx
	imulq	%r11, %rbx
	movq	$23680, %r12
	imulq	%r11, %r12
	movq	$3072, %r13
	addq	%r12, %r13
	movq	$0, %r12
	jmp 	Ltest$19
Ltest$20:
	imulq	$391, %r10, %r14
	addq	$4, %r14
	addq	%r12, %r14
	imulq	$8, %r10, %r15
	addq	%rbx, %r15
	addq	%r12, %r15
	movq	(%rdx,%r15), %r15
	movq	%r15, (%rcx,%r14)
	incq	%r12
Ltest$19:
	cmpq	$8, %r12
	jb  	Ltest$20
	movq	$0, %rbx
	jmp 	Ltest$17
Ltest$18:
	imulq	$391, %r10, %r12
	addq	$12, %r12
	addq	%rbx, %r12
	imulq	$185, %r10, %r14
	addq	%r13, %r14
	addq	%rbx, %r14
	movq	(%rdx,%r14), %r14
	movq	%r14, (%rcx,%r12)
	incq	%rbx
Ltest$17:
	cmpq	$185, %rbx
	jb  	Ltest$18
	imulq	$8, %rax, %rbx
	imulq	%rbp, %rbx
	movq	$23680, %r12
	imulq	%rbp, %r12
	movq	$3072, %r13
	addq	%r12, %r13
	movq	$0, %r12
	jmp 	Ltest$15
Ltest$16:
	imulq	$391, %r10, %r14
	addq	$197, %r14
	addq	%r12, %r14
	imulq	$8, %r10, %r15
	addq	%rbx, %r15
	addq	%r12, %r15
	movq	(%rdx,%r15), %r15
	movq	%r15, (%rcx,%r14)
	incq	%r12
Ltest$15:
	cmpq	$8, %r12
	jb  	Ltest$16
	movq	$0, %rbx
	jmp 	Ltest$13
Ltest$14:
	imulq	$391, %r10, %r12
	addq	$205, %r12
	addq	%rbx, %r12
	imulq	$185, %r10, %r14
	addq	%r13, %r14
	addq	%rbx, %r14
	movq	(%rdx,%r14), %r14
	movq	%r14, (%rcx,%r12)
	incq	%rbx
Ltest$13:
	cmpq	$185, %rbx
	jb  	Ltest$14
	movq	$0, %rbx
	addq	%r10, %rbx
	andq	%r9, %rbx
	cmpq	$0, %rbx
	je  	Ltest$3
	imulq	%rax, %r11
	addq	%r10, %r11
	shrq	$1, %r11
	cmpq	$0, %r9
	je  	Ltest$11
	movq	(%rsi,%r11), %r11
	shlq	$32, %r11
	jmp 	Ltest$12
Ltest$11:
	movq	(%rsi,%r11), %r11
	movq	$-4294967296, %rbx
	andq	%rbx, %r11
Ltest$12:
	imulq	%rax, %rbp
	addq	%r10, %rbp
	shrq	$1, %rbp
	cmpq	$0, %r9
	je  	Ltest$9
	movq	(%rsi,%rbp), %rbp
	movq	$4294967295, %rbx
	andq	%rbx, %rbp
	jmp 	Ltest$10
Ltest$9:
	movq	(%rsi,%rbp), %rbp
	shrq	$32, %rbp
Ltest$10:
	addq	%rbp, %r11
	imulq	$391, %r10, %rbp
	addq	$390, %rbp
	movq	%r11, (%rcx,%rbp)
	jmp 	Ltest$4
Ltest$3:
	imulq	%rax, %r11
	addq	%r10, %r11
	shrq	$1, %r11
	cmpq	$0, %r8
	je  	Ltest$7
	movq	(%rsi,%r11), %r11
	shlq	$32, %r11
	jmp 	Ltest$8
Ltest$7:
	movq	(%rsi,%r11), %r11
	movq	$-4294967296, %rbx
	andq	%rbx, %r11
Ltest$8:
	imulq	%rax, %rbp
	addq	%r10, %rbp
	shrq	$1, %rbp
	cmpq	$0, %r8
	je  	Ltest$5
	movq	(%rsi,%rbp), %rbp
	movq	$4294967295, %rbx
	andq	%rbx, %rbp
	jmp 	Ltest$6
Ltest$5:
	movq	(%rsi,%rbp), %rbp
	shrq	$32, %rbp
Ltest$6:
	addq	%rbp, %r11
	imulq	$391, %r10, %rbp
	addq	$390, %rbp
	movq	%r11, (%rcx,%rbp)
Ltest$4:
	incq	%r10
Ltest$1:
	cmpq	%rax, %r10
	jb  	Ltest$2
	movq	(%rsp), %rsp
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbp
	popq	%rbx
	ret 
