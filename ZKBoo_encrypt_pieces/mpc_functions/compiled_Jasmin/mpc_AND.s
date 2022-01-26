	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 48(%rsp)
	movq	$128, %rax
	movq	$0, %rsi
	movq	$0, %r8
	movq	$0, %rcx
	movq	$0, %rdx
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
	jmp 	Ltest$3
Ltest$4:
	imulq	$4, %r9, %r10
	imulq	%rax, %r10
	addq	%r8, %r10
	movq	%r9, %r11
	movl	(%rsi,%r10), %r10d
	movl	%r10d, 36(%rsp,%r11,4)
	incq	%r9
Ltest$3:
	cmpq	$3, %r9
	jb  	Ltest$4
	movl	(%rsp), %esi
	andl	16(%rsp), %esi
	movl	4(%rsp), %r8d
	andl	12(%rsp), %r8d
	movl	(%rsp), %r9d
	andl	12(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	36(%rsp), %r8d
	movl	40(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	%esi, 24(%rsp)
	movl	4(%rsp), %esi
	andl	20(%rsp), %esi
	movl	8(%rsp), %r8d
	andl	16(%rsp), %r8d
	movl	4(%rsp), %r9d
	andl	16(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	40(%rsp), %r8d
	movl	44(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	%esi, 28(%rsp)
	movl	8(%rsp), %esi
	andl	12(%rsp), %esi
	movl	(%rsp), %r8d
	andl	20(%rsp), %r8d
	movl	8(%rsp), %r9d
	andl	20(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	44(%rsp), %r8d
	movl	36(%rsp), %r9d
	xorl	%r8d, %esi
	xorl	%r9d, %esi
	movl	%esi, 32(%rsp)
	movq	$0, %rsi
	imulq	$370, %rdx, %rdx
	jmp 	Ltest$1
Ltest$2:
	movq	%rsi, %r8
	imulq	%rax, %r8
	imulq	$370, %r8, %r8
	addq	$6144, %r8
	addq	%rdx, %r8
	addq	%rcx, %r8
	movl	24(%rsp,%rsi,4), %r9d
	movl	%r9d, (%rdi,%r8)
	incq	%rsi
Ltest$1:
	cmpq	$3, %rsi
	jb  	Ltest$2
	movq	48(%rsp), %rsp
	ret 
