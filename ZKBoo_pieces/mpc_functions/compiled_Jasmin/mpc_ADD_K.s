	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-4, %rsp
	movq	$0, %rcx
	movq	$0, %rdx
	movq	$0, %rax
	movl	$0, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movq	$0, %rsi
	jmp 	Ltest$19
Ltest$20:
	movq	%rsi, %r8
	imulq	$4, %r8, %r8
	imulq	$128, %r8, %r8
	addq	%rdx, %r8
	movl	(%rcx,%r8), %r8d
	movl	%r8d, 28(%rsp,%rsi,4)
	incq	%rsi
Ltest$19:
	cmpq	$3, %rsi
	jb  	Ltest$20
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	movq	%rcx, %rdx
	incq	%rdx
	movq	$0, %rsi
	jmp 	Ltest$17
Ltest$18:
	movl	4(%rsp,%rsi,4), %r8d
	movl	16(%rsp,%rsi,4), %r9d
	movl	(%rsp), %r10d
	xorl	%r9d, %r8d
	xorl	%r9d, %r10d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	%r8d, 52(%rsp,%rsi,4)
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 40(%rsp,%rsi,4)
	incq	%rsi
Ltest$17:
	cmpq	$3, %rsi
	jb  	Ltest$18
	movq	$1, %rsi
	movq	$0, %r8
	movl	28(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	16(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	28(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	52(%rsp), %r10d
	andl	44(%rsp), %r10d
	xorl	%esi, %r10d
	movl	56(%rsp), %esi
	andl	40(%rsp), %esi
	xorl	%esi, %r10d
	movl	52(%rsp), %esi
	andl	40(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$0, %rsi
	movq	%rdx, %r8
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$15
Ltest$16:
	shll	$1, %r10d
	addq	$-1, %r8
Ltest$15:
	cmpq	$0, %r8
	jnbe	Ltest$16
	cmpl	$1, %r9d
	je  	Ltest$13
	xorl	$-1, %r10d
	andl	%r10d, 16(%rsp,%rsi,4)
	jmp 	Ltest$14
Ltest$13:
	orl 	%r10d, 16(%rsp,%rsi,4)
Ltest$14:
	movq	$2, %rsi
	movq	$1, %r8
	movl	28(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	16(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	28(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	56(%rsp), %r10d
	andl	48(%rsp), %r10d
	xorl	%esi, %r10d
	movl	60(%rsp), %esi
	andl	44(%rsp), %esi
	xorl	%esi, %r10d
	movl	56(%rsp), %esi
	andl	44(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$1, %rsi
	movq	%rdx, %r8
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$11
Ltest$12:
	shll	$1, %r10d
	addq	$-1, %r8
Ltest$11:
	cmpq	$0, %r8
	jnbe	Ltest$12
	cmpl	$1, %r9d
	je  	Ltest$9
	xorl	$-1, %r10d
	andl	%r10d, 16(%rsp,%rsi,4)
	jmp 	Ltest$10
Ltest$9:
	orl 	%r10d, 16(%rsp,%rsi,4)
Ltest$10:
	movq	$0, %rsi
	movq	$2, %r8
	movl	28(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	16(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	28(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	60(%rsp), %r10d
	andl	40(%rsp), %r10d
	xorl	%esi, %r10d
	movl	52(%rsp), %esi
	andl	48(%rsp), %esi
	xorl	%esi, %r10d
	movl	60(%rsp), %esi
	andl	48(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$2, %rsi
	movl	$1, %r8d
	andl	%r10d, %r8d
	movl	$1, %r9d
	jmp 	Ltest$7
Ltest$8:
	shll	$1, %r9d
	addq	$-1, %rdx
Ltest$7:
	cmpq	$0, %rdx
	jnbe	Ltest$8
	cmpl	$1, %r8d
	je  	Ltest$5
	xorl	$-1, %r9d
	andl	%r9d, 16(%rsp,%rsi,4)
	jmp 	Ltest$6
Ltest$5:
	orl 	%r9d, 16(%rsp,%rsi,4)
Ltest$6:
	incq	%rcx
Ltest$3:
	cmpq	$31, %rcx
	jb  	Ltest$4
	movq	$0, %rcx
	jmp 	Ltest$1
Ltest$2:
	movq	%rcx, %rdx
	imulq	$365, %rdx, %rdx
	imulq	$128, %rdx, %rdx
	addq	$768, %rdx
	addq	%rax, %rdx
	movl	16(%rsp,%rcx,4), %esi
	movl	%esi, (%rdi,%rdx)
	incq	%rcx
Ltest$1:
	cmpq	$3, %rcx
	jb  	Ltest$2
	movq	%r11, %rsp
	ret 
