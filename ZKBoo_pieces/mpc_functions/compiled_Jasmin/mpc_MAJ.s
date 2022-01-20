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
	movq	$0, %rdx
	movq	$0, %rsi
	movq	$0, %r8
	movl	$0, (%rsp)
	movl	$0, 4(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 52(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	movl	$0, 64(%rsp)
	movl	$0, 68(%rsp)
	movl	(%rsp), %r9d
	xorl	12(%rsp), %r9d
	movl	4(%rsp), %r10d
	xorl	16(%rsp), %r10d
	movl	8(%rsp), %r11d
	xorl	20(%rsp), %r11d
	movl	%r9d, 48(%rsp)
	movl	%r10d, 52(%rsp)
	movl	%r11d, 56(%rsp)
	movl	(%rsp), %r9d
	xorl	24(%rsp), %r9d
	movl	4(%rsp), %r10d
	xorl	28(%rsp), %r10d
	movl	8(%rsp), %r11d
	xorl	32(%rsp), %r11d
	movl	%r9d, 60(%rsp)
	movl	%r10d, 64(%rsp)
	movl	%r11d, 68(%rsp)
	movq	$0, %r9
	jmp 	Ltest$3
Ltest$4:
	imulq	$4, %r9, %r10
	imulq	%rax, %r10
	addq	%rdx, %r10
	movq	%r9, %r11
	movl	(%rcx,%r10), %r10d
	movl	%r10d, 24(%rsp,%r11,4)
	incq	%r9
Ltest$3:
	cmpq	$3, %r9
	jb  	Ltest$4
	movl	48(%rsp), %ecx
	andl	64(%rsp), %ecx
	movl	52(%rsp), %edx
	andl	60(%rsp), %edx
	movl	48(%rsp), %r9d
	andl	60(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	24(%rsp), %edx
	movl	28(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 36(%rsp)
	movl	52(%rsp), %ecx
	andl	68(%rsp), %ecx
	movl	56(%rsp), %edx
	andl	64(%rsp), %edx
	movl	52(%rsp), %r9d
	andl	64(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	28(%rsp), %edx
	movl	32(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 40(%rsp)
	movl	56(%rsp), %ecx
	andl	60(%rsp), %ecx
	movl	48(%rsp), %edx
	andl	68(%rsp), %edx
	movl	56(%rsp), %r9d
	andl	68(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	32(%rsp), %edx
	movl	24(%rsp), %r9d
	xorl	%edx, %ecx
	xorl	%r9d, %ecx
	movl	%ecx, 44(%rsp)
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
	movl	36(%rsp,%rcx,4), %r9d
	movl	%r9d, (%rdi,%r8)
	incq	%rcx
Ltest$1:
	cmpq	$3, %rcx
	jb  	Ltest$2
	movq	72(%rsp), %rsp
	ret 
