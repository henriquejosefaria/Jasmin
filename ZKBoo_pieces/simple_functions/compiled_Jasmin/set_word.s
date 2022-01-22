	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r11
	leaq	-16(%rsp), %rsp
	andq	$-8, %rsp
	movq	$0, %rax
	movq	$1, %r8
	movq	$128, %r9
	movq	$2, 8(%rsp)
	imulq	%r9, %rax
	addq	(%rsp), %rax
	movq	$0, %rdx
	divq	8(%rsp)
	cmpq	$0, %rcx
	je  	Ltest$3
	movq	(%rdi,%rax), %r10
	shlq	$32, %r10
	jmp 	Ltest$4
Ltest$3:
	movq	(%rdi,%rax), %r10
	movq	$-4294967296, %rax
	andq	%rax, %r10
Ltest$4:
	imulq	%r9, %r8
	addq	(%rsp), %r8
	movq	%r8, %rax
	movq	$0, %rdx
	divq	8(%rsp)
	cmpq	$0, %rcx
	je  	Ltest$1
	movq	(%rdi,%rax), %rax
	movq	$4294967295, %rcx
	andq	%rcx, %rax
	jmp 	Ltest$2
Ltest$1:
	movq	(%rdi,%rax), %rax
	shrq	$32, %rax
Ltest$2:
	addq	%rax, %r10
	imulq	$391, (%rsp), %rax
	addq	$390, %rax
	movq	%r10, (%rsi,%rax)
	movq	%r11, %rsp
	ret 
