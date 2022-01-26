	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rax
	leaq	-80(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 72(%rsp)
	movq	$128, %rax
	movq	$0, %rcx
	movq	$0, %r8
	movq	$0, %rdx
	movq	$0, %rsi
	movl	$0, (%rsp)
	movl	$0, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$0, 32(%rsp)
	movq	$0, %r9
	jmp 	Ltest$19
Ltest$20:
	movq	%r9, %r10
	imulq	$368, %r10, %r10
	imulq	%rax, %r10
	addq	%r8, %r10
	movl	(%rcx,%r10), %r10d
	movl	%r10d, 36(%rsp,%r9,4)
	incq	%r9
Ltest$19:
	cmpq	$3, %r9
	jb  	Ltest$20
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	movq	$0, %r8
	jmp 	Ltest$17
Ltest$18:
	movl	(%rsp,%r8,4), %r9d
	movl	12(%rsp,%r8,4), %r10d
	movl	24(%rsp,%r8,4), %r11d
	xorl	%r11d, %r9d
	xorl	%r11d, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r9d, 60(%rsp,%r8,4)
	movl	%r10d, 48(%rsp,%r8,4)
	incq	%r8
Ltest$17:
	cmpq	$3, %r8
	jb  	Ltest$18
	movq	$1, %r8
	movq	$0, %r9
	movl	36(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	24(%rsp,%r9,4), %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	36(%rsp,%r9,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	60(%rsp), %r11d
	andl	52(%rsp), %r11d
	xorl	%r8d, %r11d
	movl	64(%rsp), %r8d
	andl	48(%rsp), %r8d
	xorl	%r8d, %r11d
	movl	60(%rsp), %r8d
	andl	48(%rsp), %r8d
	xorl	%r8d, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$0, %r8
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$15
Ltest$16:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$15:
	cmpq	$0, %r9
	jnbe	Ltest$16
	cmpl	$1, %r10d
	je  	Ltest$13
	xorl	$-1, %r11d
	andl	%r11d, 24(%rsp,%r8,4)
	jmp 	Ltest$14
Ltest$13:
	orl 	%r11d, 24(%rsp,%r8,4)
Ltest$14:
	movq	$2, %r8
	movq	$1, %r9
	movl	36(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	24(%rsp,%r9,4), %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	36(%rsp,%r9,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	64(%rsp), %r11d
	andl	56(%rsp), %r11d
	xorl	%r8d, %r11d
	movl	68(%rsp), %r8d
	andl	52(%rsp), %r8d
	xorl	%r8d, %r11d
	movl	64(%rsp), %r8d
	andl	52(%rsp), %r8d
	xorl	%r8d, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$1, %r8
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$11
Ltest$12:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$11:
	cmpq	$0, %r9
	jnbe	Ltest$12
	cmpl	$1, %r10d
	je  	Ltest$9
	xorl	$-1, %r11d
	andl	%r11d, 24(%rsp,%r8,4)
	jmp 	Ltest$10
Ltest$9:
	orl 	%r11d, 24(%rsp,%r8,4)
Ltest$10:
	movq	$0, %r8
	movq	$2, %r9
	movl	36(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	24(%rsp,%r9,4), %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	36(%rsp,%r9,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	68(%rsp), %r11d
	andl	48(%rsp), %r11d
	xorl	%r8d, %r11d
	movl	60(%rsp), %r8d
	andl	56(%rsp), %r8d
	xorl	%r8d, %r11d
	movl	68(%rsp), %r8d
	andl	56(%rsp), %r8d
	xorl	%r8d, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$2, %r8
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$7
Ltest$8:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$7:
	cmpq	$0, %r9
	jnbe	Ltest$8
	cmpl	$1, %r10d
	je  	Ltest$5
	xorl	$-1, %r11d
	andl	%r11d, 24(%rsp,%r8,4)
	jmp 	Ltest$6
Ltest$5:
	orl 	%r11d, 24(%rsp,%r8,4)
Ltest$6:
	incq	%rcx
Ltest$3:
	cmpq	$31, %rcx
	jb  	Ltest$4
	movq	$0, %rcx
	imulq	$370, %rsi, %rsi
	jmp 	Ltest$1
Ltest$2:
	movq	%rcx, %r8
	imulq	$370, %r8, %r8
	imulq	%rax, %r8
	addq	%rsi, %r8
	addq	$6144, %r8
	addq	%rdx, %r8
	movl	24(%rsp,%rcx,4), %r9d
	movl	%r9d, (%rdi,%r8)
	incq	%rcx
Ltest$1:
	cmpq	$3, %rcx
	jb  	Ltest$2
	movq	72(%rsp), %rsp
	ret 
