	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	pushq	%r12
	movq	%rsp, %r12
	subq	$48, %rsp
	andq	$-32, %rsp
	movq	$128, %rax
	movq	$0, %rcx
	movq	$0, %rdx
	movq	$0, %rsi
	movq	$0, %r8
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movq	$0, %r9
	jmp 	Ltest$3
Ltest$4:
	imulq	$4, %r9, %r10
	imulq	%rax, %r10
	addq	%rdx, %r10
	movq	%r9, %r11
	movl	(%rcx,%r10), %r10d
	movl	%r10d, (%rsp,%r11,4)
	incq	%r9
Ltest$3:
	cmpq	$3, %r9
	jb  	Ltest$4
	movl	36(%rsp), %ecx
	andl	28(%rsp), %ecx
	movl	40(%rsp), %edx
	andl	24(%rsp), %edx
	movl	36(%rsp), %r9d
	andl	24(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	(%rsp), %edx
	movl	4(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 12(%rsp)
	movl	40(%rsp), %ecx
	andl	32(%rsp), %ecx
	movl	44(%rsp), %edx
	andl	28(%rsp), %edx
	movl	40(%rsp), %r9d
	andl	28(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	4(%rsp), %edx
	movl	8(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 16(%rsp)
	movl	44(%rsp), %ecx
	andl	24(%rsp), %ecx
	movl	36(%rsp), %edx
	andl	32(%rsp), %edx
	movl	44(%rsp), %r9d
	andl	32(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	8(%rsp), %edx
	movl	(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 20(%rsp)
	movq	$0, %rcx
	imulq	$370, %r8, %rdx
	jmp 	Ltest$1
Ltest$2:
	movq	%rcx, %r8
	imulq	%rax, %r8
	imulq	$370, %r8, %r8
	addq	$6144, %r8
	addq	%rdx, %r8
	addq	%rsi, %r8
	movl	12(%rsp,%rcx,4), %r9d
	movl	%r9d, (%rdi,%r8)
	incq	%rcx
Ltest$1:
	cmpq	$3, %rcx
	jb  	Ltest$2
	movq	%r12, %rsp
	popq	%r12
	ret 
