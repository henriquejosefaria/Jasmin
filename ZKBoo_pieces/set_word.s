	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r11
	subq	$8, %rsp
	andq	$-32, %rsp
	movq	$2, %rcx
	imulq	$128, %rax, %rax
	addq	(%rsp), %rax
	movq	$0, %rdx
	divq	%rcx
	cmpq	$0, %r8
	je  	Ltest$3
	movq	(%rdi,%rax), %r9
	shlq	$32, %r9
	jmp 	Ltest$4
Ltest$3:
	movq	(%rdi,%rax), %r9
	movq	$-4294967296, %rax
	andq	%rax, %r9
Ltest$4:
	imulq	$128, %r10, %rax
	addq	(%rsp), %rax
	movq	$0, %rdx
	divq	%rcx
	cmpq	$0, %r8
	je  	Ltest$1
	movq	(%rdi,%rax), %rax
	movq	$4294967295, %rcx
	andq	%rcx, %rax
	jmp 	Ltest$2
Ltest$1:
	movq	(%rdi,%rax), %rax
	shrq	$32, %rax
Ltest$2:
	addq	%rax, %r9
	imulq	$391, (%rsp), %rax
	addq	$390, %rax
	movq	%r9, (%rsi,%rax)
	movq	%r11, %rsp
	ret 
