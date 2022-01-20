	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r10
	leaq	-1060(%rsp), %rsp
	andq	$-8, %rsp
	movq	$128, (%rsp)
	movq	$0, 8(%rsp)
	movq	$0, %rax
	movq	$0, 16(%rsp)
	movq	$0, 24(%rsp)
	movq	$0, 32(%rsp)
	movl	$0, 52(%rsp)
	movl	$0, 56(%rsp)
	movl	$0, 60(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$19
Ltest$20:
	movq	%rcx, %rdx
	imulq	$368, %rdx, %rdx
	imulq	(%rsp), %rdx
	addq	16(%rsp), %rdx
	movl	(%rax,%rdx), %edx
	movl	%edx, 64(%rsp,%rcx,4)
	incq	%rcx
Ltest$19:
	cmpq	$3, %rcx
	jb  	Ltest$20
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	movq	$0, %rax
	jmp 	Ltest$17
Ltest$18:
	imulq	$80, %rax, %rdx
	addq	32(%rsp), %rdx
	movl	100(%rsp,%rdx,4), %edx
	movl	52(%rsp,%rax,4), %esi
	movl	40(%rsp,%rax,4), %r8d
	xorl	%esi, %edx
	xorl	%esi, %r8d
	shrl	%cl, %edx
	andl	$1, %edx
	movl	%edx, 88(%rsp,%rax,4)
	shrl	%cl, %r8d
	andl	$1, %r8d
	movl	%r8d, 76(%rsp,%rax,4)
	incq	%rax
Ltest$17:
	cmpq	$3, %rax
	jb  	Ltest$18
	movq	$1, %rax
	movq	$0, %rdx
	movl	64(%rsp,%rax,4), %eax
	movl	52(%rsp,%rdx,4), %esi
	movl	64(%rsp,%rdx,4), %edx
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %esi
	andl	$1, %esi
	shrl	%cl, %edx
	andl	$1, %edx
	movl	88(%rsp), %r8d
	andl	80(%rsp), %r8d
	andl	%eax, %r8d
	movl	92(%rsp), %eax
	andl	76(%rsp), %eax
	xorl	%eax, %r8d
	movl	88(%rsp), %eax
	andl	76(%rsp), %eax
	xorl	%eax, %r8d
	xorl	%esi, %r8d
	xorl	%edx, %r8d
	movq	$0, %rax
	movq	%rcx, %rdx
	incq	%rdx
	movl	$1, %esi
	andl	%r8d, %esi
	movl	$1, %r8d
	jmp 	Ltest$15
Ltest$16:
	shll	$1, %r8d
	addq	$-1, %rdx
Ltest$15:
	cmpq	$0, %rdx
	jnbe	Ltest$16
	cmpl	$1, %esi
	je  	Ltest$13
	xorl	$-1, %r8d
	andl	%r8d, 52(%rsp,%rax,4)
	jmp 	Ltest$14
Ltest$13:
	orl 	%r8d, 52(%rsp,%rax,4)
Ltest$14:
	movq	$2, %rax
	movq	$1, %rdx
	movl	64(%rsp,%rax,4), %eax
	movl	52(%rsp,%rdx,4), %esi
	movl	64(%rsp,%rdx,4), %edx
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %esi
	andl	$1, %esi
	shrl	%cl, %edx
	andl	$1, %edx
	movl	92(%rsp), %r8d
	andl	84(%rsp), %r8d
	andl	%eax, %r8d
	movl	96(%rsp), %eax
	andl	80(%rsp), %eax
	xorl	%eax, %r8d
	movl	92(%rsp), %eax
	andl	80(%rsp), %eax
	xorl	%eax, %r8d
	xorl	%esi, %r8d
	xorl	%edx, %r8d
	movq	$1, %rax
	movq	%rcx, %rdx
	incq	%rdx
	movl	$1, %esi
	andl	%r8d, %esi
	movl	$1, %r8d
	jmp 	Ltest$11
Ltest$12:
	shll	$1, %r8d
	addq	$-1, %rdx
Ltest$11:
	cmpq	$0, %rdx
	jnbe	Ltest$12
	cmpl	$1, %esi
	je  	Ltest$9
	xorl	$-1, %r8d
	andl	%r8d, 52(%rsp,%rax,4)
	jmp 	Ltest$10
Ltest$9:
	orl 	%r8d, 52(%rsp,%rax,4)
Ltest$10:
	movq	$0, %rax
	movq	$2, %rdx
	movl	64(%rsp,%rax,4), %eax
	movl	52(%rsp,%rdx,4), %esi
	movl	64(%rsp,%rdx,4), %edx
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %esi
	andl	$1, %esi
	shrl	%cl, %edx
	andl	$1, %edx
	movl	96(%rsp), %r8d
	andl	76(%rsp), %r8d
	andl	%eax, %r8d
	movl	88(%rsp), %eax
	andl	84(%rsp), %eax
	xorl	%eax, %r8d
	movl	96(%rsp), %eax
	andl	84(%rsp), %eax
	xorl	%eax, %r8d
	xorl	%esi, %r8d
	xorl	%edx, %r8d
	movq	$2, %rax
	movq	%rcx, %rdx
	incq	%rdx
	movl	$1, %esi
	andl	%r8d, %esi
	movl	$1, %r8d
	jmp 	Ltest$7
Ltest$8:
	shll	$1, %r8d
	addq	$-1, %rdx
Ltest$7:
	cmpq	$0, %rdx
	jnbe	Ltest$8
	cmpl	$1, %esi
	je  	Ltest$5
	xorl	$-1, %r8d
	andl	%r8d, 52(%rsp,%rax,4)
	jmp 	Ltest$6
Ltest$5:
	orl 	%r8d, 52(%rsp,%rax,4)
Ltest$6:
	incq	%rcx
Ltest$3:
	cmpq	$31, %rcx
	jb  	Ltest$4
	movq	$0, %rax
	imulq	$370, 8(%rsp), %rcx
	jmp 	Ltest$1
Ltest$2:
	movq	%rax, %rdx
	imulq	$370, %rdx, %rdx
	imulq	(%rsp), %rdx
	addq	%rcx, %rdx
	addq	$6144, %rdx
	addq	24(%rsp), %rdx
	movl	52(%rsp,%rax,4), %esi
	movl	%esi, (%rdi,%rdx)
	incq	%rax
Ltest$1:
	cmpq	$3, %rax
	jb  	Ltest$2
	movq	%r10, %rsp
	ret 
