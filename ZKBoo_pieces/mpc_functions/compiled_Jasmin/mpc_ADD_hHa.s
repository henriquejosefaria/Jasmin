	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r11
	leaq	-116(%rsp), %rsp
	andq	$-8, %rsp
	movq	$128, (%rsp)
	movq	$0, %rcx
	movq	$0, %rsi
	movq	$0, %rax
	movq	$0, %rdx
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movq	$0, %r8
	jmp 	Ltest$19
Ltest$20:
	movq	%r8, %r9
	imulq	$4, %r9, %r9
	imulq	(%rsp), %r9
	addq	%rsi, %r9
	movl	(%rcx,%r9), %r9d
	movl	%r9d, 20(%rsp,%r8,4)
	incq	%r8
Ltest$19:
	cmpq	$3, %r8
	jb  	Ltest$20
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	movq	$0, %rsi
	jmp 	Ltest$17
Ltest$18:
	movl	56(%rsp,%rdx,4), %r8d
	movl	8(%rsp,%rsi,4), %r9d
	xorl	%r9d, %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	%r8d, 44(%rsp,%rsi,4)
	movl	%r8d, 32(%rsp,%rsi,4)
	incq	%rsi
Ltest$17:
	cmpq	$3, %rsi
	jb  	Ltest$18
	movq	$1, %rsi
	movq	$0, %r8
	movl	20(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	8(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	20(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	44(%rsp), %r10d
	andl	36(%rsp), %r10d
	xorl	%esi, %r10d
	movl	48(%rsp), %esi
	andl	32(%rsp), %esi
	xorl	%esi, %r10d
	movl	44(%rsp), %esi
	andl	32(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$0, %rsi
	movq	%rcx, %r8
	incq	%r8
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
	andl	%r10d, 8(%rsp,%rsi,4)
	jmp 	Ltest$14
Ltest$13:
	orl 	%r10d, 8(%rsp,%rsi,4)
Ltest$14:
	movq	$2, %rsi
	movq	$1, %r8
	movl	20(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	8(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	20(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	48(%rsp), %r10d
	andl	40(%rsp), %r10d
	xorl	%esi, %r10d
	movl	52(%rsp), %esi
	andl	36(%rsp), %esi
	xorl	%esi, %r10d
	movl	48(%rsp), %esi
	andl	36(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$1, %rsi
	movq	%rcx, %r8
	incq	%r8
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
	andl	%r10d, 8(%rsp,%rsi,4)
	jmp 	Ltest$10
Ltest$9:
	orl 	%r10d, 8(%rsp,%rsi,4)
Ltest$10:
	movq	$0, %rsi
	movq	$2, %r8
	movl	20(%rsp,%rsi,4), %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	8(%rsp,%r8,4), %r9d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	20(%rsp,%r8,4), %r8d
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	52(%rsp), %r10d
	andl	32(%rsp), %r10d
	xorl	%esi, %r10d
	movl	44(%rsp), %esi
	andl	40(%rsp), %esi
	xorl	%esi, %r10d
	movl	52(%rsp), %esi
	andl	40(%rsp), %esi
	xorl	%esi, %r10d
	xorl	%r9d, %r10d
	xorl	%r8d, %r10d
	movq	$2, %rsi
	movq	%rcx, %r8
	incq	%r8
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$7
Ltest$8:
	shll	$1, %r10d
	addq	$-1, %r8
Ltest$7:
	cmpq	$0, %r8
	jnbe	Ltest$8
	cmpl	$1, %r9d
	je  	Ltest$5
	xorl	$-1, %r10d
	andl	%r10d, 8(%rsp,%rsi,4)
	jmp 	Ltest$6
Ltest$5:
	orl 	%r10d, 8(%rsp,%rsi,4)
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
	imulq	(%rsp), %rdx
	addq	$768, %rdx
	addq	%rax, %rdx
	movl	8(%rsp,%rcx,4), %esi
	movl	%esi, (%rdi,%rdx)
	incq	%rcx
Ltest$1:
	cmpq	$3, %rcx
	jb  	Ltest$2
	movq	%r11, %rsp
	ret 
