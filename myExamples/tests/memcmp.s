	.text
	.p2align	5
	.globl	_memcmp
	.globl	memcmp
_memcmp:
memcmp:
	movq	$1, %rax
	movq	$0, %rcx
	movq	$0, %r8
	jmp 	Lmemcmp$1
Lmemcmp$2:
	movq	(%rdi), %r9
	movq	(%rsi), %r10
	cmpq	%r10, %r9
	cmovne	%r8, %rax
	addq	$8, %rdi
	addq	$8, %rsi
	incq	%rcx
Lmemcmp$1:
	cmpq	%rdx, %rcx
	jb  	Lmemcmp$2
	ret 
