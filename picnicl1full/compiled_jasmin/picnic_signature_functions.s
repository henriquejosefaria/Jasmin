	.text
	.p2align	5
	.globl	_jazz_mpc_setBit_verify
	.globl	jazz_mpc_setBit_verify
	.globl	_jazz_mpc_setBit_precompute_verify
	.globl	jazz_mpc_setBit_precompute_verify
	.globl	_jazz_and_setBit_verify
	.globl	jazz_and_setBit_verify
	.globl	_jazz_mpc_AND_verify
	.globl	jazz_mpc_AND_verify
	.globl	_jazz_and_getBit_verify
	.globl	jazz_and_getBit_verify
	.globl	_jazz_mpc_getBit_verify
	.globl	jazz_mpc_getBit_verify
	.globl	_jazz_mpc_setBit
	.globl	jazz_mpc_setBit
	.globl	_jazz_mpc_setBit_precompute
	.globl	jazz_mpc_setBit_precompute
	.globl	_jazz_mpc_getBit
	.globl	jazz_mpc_getBit
	.globl	_jazz_and_setBit
	.globl	jazz_and_setBit
	.globl	_jazz_mpc_AND
	.globl	jazz_mpc_AND
	.globl	_jazz_and_getBit
	.globl	jazz_and_getBit
	.globl	_jazz_substitution
	.globl	jazz_substitution
	.globl	_jazz_matrix_mul
	.globl	jazz_matrix_mul
	.globl	_getBitFromWordArray
	.globl	getBitFromWordArray
	.globl	_jazz_setBit
	.globl	jazz_setBit
	.globl	_jazz_getBit
	.globl	jazz_getBit
	.globl	_xor_array
	.globl	xor_array
	.globl	_xor_three
	.globl	xor_three
_jazz_mpc_setBit_verify:
jazz_mpc_setBit_verify:
	movq	%rsp, %rax
	leaq	-24(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	(%rdx), %rax
	movq	$0, %rdx
	movq	$0, %r8
	jmp 	Ljazz_mpc_setBit_verify$1
Ljazz_mpc_setBit_verify$2:
	movb	(%rcx,%r8), %r9b
	movq	%rax, %r10
	shrq	$3, %r10
	movb	(%rdi,%r10), %r10b
	movq	$7, %r11
	movq	%rax, %rbp
	andq	$7, %rbp
	subq	%rbp, %r11
	movq	%r11, %rbp
	movb	$1, %bl
	jmp 	Ljazz_mpc_setBit_verify$9
Ljazz_mpc_setBit_verify$10:
	shlb	$1, %bl
	addq	$-1, %r11
Ljazz_mpc_setBit_verify$9:
	cmpq	$0, %r11
	jnbe	Ljazz_mpc_setBit_verify$10
	xorb	$-1, %bl
	andb	%bl, %r10b
	jmp 	Ljazz_mpc_setBit_verify$7
Ljazz_mpc_setBit_verify$8:
	shlb	$1, %r9b
	addq	$-1, %rbp
Ljazz_mpc_setBit_verify$7:
	cmpq	$0, %rbp
	jnbe	Ljazz_mpc_setBit_verify$8
	orb 	%r9b, %r10b
	movq	%rax, %r9
	shrq	$3, %r9
	movb	%r10b, (%rdi,%r9)
	incq	%r8
	movb	(%rcx,%r8), %r9b
	movq	%rax, %r10
	shrq	$3, %r10
	movb	(%rsi,%r10), %r10b
	movq	$7, %r11
	movq	%rax, %rbp
	andq	$7, %rbp
	subq	%rbp, %r11
	movq	%r11, %rbp
	movb	$1, %bl
	jmp 	Ljazz_mpc_setBit_verify$5
Ljazz_mpc_setBit_verify$6:
	shlb	$1, %bl
	addq	$-1, %r11
Ljazz_mpc_setBit_verify$5:
	cmpq	$0, %r11
	jnbe	Ljazz_mpc_setBit_verify$6
	xorb	$-1, %bl
	andb	%bl, %r10b
	jmp 	Ljazz_mpc_setBit_verify$3
Ljazz_mpc_setBit_verify$4:
	shlb	$1, %r9b
	addq	$-1, %rbp
Ljazz_mpc_setBit_verify$3:
	cmpq	$0, %rbp
	jnbe	Ljazz_mpc_setBit_verify$4
	orb 	%r9b, %r10b
	movq	%rax, %r9
	shrq	$3, %r9
	movb	%r10b, (%rsi,%r9)
	addq	$-1, %rax
	incq	%r8
	incq	%rdx
Ljazz_mpc_setBit_verify$1:
	cmpq	$3, %rdx
	jb  	Ljazz_mpc_setBit_verify$2
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	(%rsp), %rsp
	ret 
_jazz_mpc_setBit_precompute_verify:
jazz_mpc_setBit_precompute_verify:
	movb	(%rdi), %al
	movb	(%rsi), %cl
	xorb	%cl, %al
	movb	%al, (%rdx)
	movb	1(%rdi), %al
	movb	1(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 1(%rdx)
	movb	(%rdi), %al
	movb	2(%rdi), %cl
	xorb	%cl, %al
	movb	2(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 2(%rdx)
	movb	1(%rdi), %al
	movb	3(%rdi), %cl
	xorb	%cl, %al
	movb	3(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 3(%rdx)
	movb	(%rdi), %al
	movb	2(%rdi), %cl
	xorb	%cl, %al
	movb	4(%rdi), %cl
	xorb	%cl, %al
	movb	4(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 4(%rdx)
	movb	1(%rdi), %al
	movb	3(%rdi), %cl
	xorb	%cl, %al
	movb	5(%rdi), %cl
	xorb	%cl, %al
	movb	5(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 5(%rdx)
	ret 
_jazz_and_setBit_verify:
jazz_and_setBit_verify:
	movq	(%rdx), %rax
	movb	(%rcx), %dl
	movq	%rax, %r8
	shrq	$3, %r8
	movb	(%rdi,%r8), %r8b
	movq	$7, %r9
	movq	%rax, %r10
	andq	$7, %r10
	subq	%r10, %r9
	movq	%r9, %r10
	movb	$1, %r11b
	jmp 	Ljazz_and_setBit_verify$5
Ljazz_and_setBit_verify$6:
	shlb	$1, %r11b
	addq	$-1, %r9
Ljazz_and_setBit_verify$5:
	cmpq	$0, %r9
	jnbe	Ljazz_and_setBit_verify$6
	xorb	$-1, %r11b
	andb	%r11b, %r8b
	jmp 	Ljazz_and_setBit_verify$3
Ljazz_and_setBit_verify$4:
	shlb	$1, %dl
	addq	$-1, %r10
Ljazz_and_setBit_verify$3:
	cmpq	$0, %r10
	jnbe	Ljazz_and_setBit_verify$4
	orb 	%dl, %r8b
	movq	%rax, %rdx
	shrq	$3, %rdx
	movb	%r8b, (%rdi,%rdx)
	movq	%rax, %rdx
	shrq	$3, %rdx
	movb	(%rsi,%rdx), %dl
	andq	$7, %rax
	movq	$7, %rsi
	subq	%rax, %rsi
	jmp 	Ljazz_and_setBit_verify$1
Ljazz_and_setBit_verify$2:
	shrb	$1, %dl
	addq	$-1, %rsi
Ljazz_and_setBit_verify$1:
	cmpq	$0, %rsi
	jnbe	Ljazz_and_setBit_verify$2
	andb	$1, %dl
	movb	%dl, 1(%rcx)
	ret 
_jazz_mpc_AND_verify:
jazz_mpc_AND_verify:
	movb	(%rdi), %al
	movb	1(%rsi), %r8b
	andb	%r8b, %al
	movb	1(%rdi), %r8b
	movb	(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	(%rdi), %r8b
	movb	(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	(%rcx), %r8b
	xorb	%r8b, %al
	movb	1(%rcx), %r8b
	xorb	%r8b, %al
	movb	%al, (%rdx)
	movb	1(%rdi), %al
	movb	2(%rsi), %r8b
	andb	%r8b, %al
	movb	2(%rdi), %r8b
	movb	1(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	1(%rdi), %dil
	movb	1(%rsi), %sil
	andb	%sil, %dil
	xorb	%dil, %al
	movb	1(%rcx), %sil
	xorb	%sil, %al
	movb	2(%rcx), %cl
	xorb	%cl, %al
	movb	%al, 1(%rdx)
	ret 
_jazz_and_getBit_verify:
jazz_and_getBit_verify:
	movq	(%rdx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movb	(%rdi,%rdx), %dl
	movq	%rax, %rdi
	andq	$7, %rdi
	movq	$7, %r8
	subq	%rdi, %r8
	jmp 	Ljazz_and_getBit_verify$3
Ljazz_and_getBit_verify$4:
	shrb	$1, %dl
	addq	$-1, %r8
Ljazz_and_getBit_verify$3:
	cmpq	$0, %r8
	jnbe	Ljazz_and_getBit_verify$4
	andb	$1, %dl
	movq	%rax, %rdi
	shrq	$3, %rdi
	movb	(%rsi,%rdi), %sil
	andq	$7, %rax
	movq	$7, %rdi
	subq	%rax, %rdi
	jmp 	Ljazz_and_getBit_verify$1
Ljazz_and_getBit_verify$2:
	shrb	$1, %sil
	addq	$-1, %rdi
Ljazz_and_getBit_verify$1:
	cmpq	$0, %rdi
	jnbe	Ljazz_and_getBit_verify$2
	andb	$1, %sil
	movb	%dl, (%rcx)
	movb	%sil, 1(%rcx)
	ret 
_jazz_mpc_getBit_verify:
jazz_mpc_getBit_verify:
	movq	(%rdx), %rax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movb	(%rdi,%rdx), %dl
	movq	%rax, %r8
	andq	$7, %r8
	movq	$7, %r9
	subq	%r8, %r9
	jmp 	Ljazz_mpc_getBit_verify$11
Ljazz_mpc_getBit_verify$12:
	shrb	$1, %dl
	addq	$-1, %r9
Ljazz_mpc_getBit_verify$11:
	cmpq	$0, %r9
	jnbe	Ljazz_mpc_getBit_verify$12
	andb	$1, %dl
	movq	%rax, %r8
	addq	$-1, %r8
	shrq	$3, %r8
	movb	(%rdi,%r8), %r8b
	movq	%rax, %r9
	addq	$-1, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_mpc_getBit_verify$9
Ljazz_mpc_getBit_verify$10:
	shrb	$1, %r8b
	addq	$-1, %r10
Ljazz_mpc_getBit_verify$9:
	cmpq	$0, %r10
	jnbe	Ljazz_mpc_getBit_verify$10
	andb	$1, %r8b
	movq	%rax, %r9
	addq	$-2, %r9
	shrq	$3, %r9
	movb	(%rdi,%r9), %dil
	movq	%rax, %r9
	addq	$-2, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_mpc_getBit_verify$7
Ljazz_mpc_getBit_verify$8:
	shrb	$1, %dil
	addq	$-1, %r10
Ljazz_mpc_getBit_verify$7:
	cmpq	$0, %r10
	jnbe	Ljazz_mpc_getBit_verify$8
	andb	$1, %dil
	movb	%dl, (%rcx)
	movb	%r8b, 2(%rcx)
	movb	%dil, 4(%rcx)
	movq	%rax, %rdx
	shrq	$3, %rdx
	movb	(%rsi,%rdx), %dl
	movq	%rax, %rdi
	andq	$7, %rdi
	movq	$7, %r8
	subq	%rdi, %r8
	jmp 	Ljazz_mpc_getBit_verify$5
Ljazz_mpc_getBit_verify$6:
	shrb	$1, %dl
	addq	$-1, %r8
Ljazz_mpc_getBit_verify$5:
	cmpq	$0, %r8
	jnbe	Ljazz_mpc_getBit_verify$6
	andb	$1, %dl
	movq	%rax, %rdi
	addq	$-1, %rdi
	shrq	$3, %rdi
	movb	(%rsi,%rdi), %dil
	movq	%rax, %r8
	addq	$-1, %r8
	andq	$7, %r8
	movq	$7, %r9
	subq	%r8, %r9
	jmp 	Ljazz_mpc_getBit_verify$3
Ljazz_mpc_getBit_verify$4:
	shrb	$1, %dil
	addq	$-1, %r9
Ljazz_mpc_getBit_verify$3:
	cmpq	$0, %r9
	jnbe	Ljazz_mpc_getBit_verify$4
	andb	$1, %dil
	movq	%rax, %r8
	addq	$-2, %r8
	shrq	$3, %r8
	movb	(%rsi,%r8), %sil
	addq	$-2, %rax
	andq	$7, %rax
	movq	$7, %r8
	subq	%rax, %r8
	jmp 	Ljazz_mpc_getBit_verify$1
Ljazz_mpc_getBit_verify$2:
	shrb	$1, %sil
	addq	$-1, %r8
Ljazz_mpc_getBit_verify$1:
	cmpq	$0, %r8
	jnbe	Ljazz_mpc_getBit_verify$2
	andb	$1, %sil
	movb	%dl, 1(%rcx)
	movb	%dil, 3(%rcx)
	movb	%sil, 5(%rcx)
	ret 
_jazz_mpc_setBit:
jazz_mpc_setBit:
	movq	%rsp, %rax
	leaq	-32(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	(%rcx), %rax
	movq	$0, %rcx
	movq	$0, %r9
	jmp 	Ljazz_mpc_setBit$1
Ljazz_mpc_setBit$2:
	movb	(%r8,%r9), %r10b
	movq	%rax, %r11
	shrq	$3, %r11
	movb	(%rdi,%r11), %r11b
	movq	$7, %rbp
	movq	%rax, %rbx
	andq	$7, %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	movb	$1, %r12b
	jmp 	Ljazz_mpc_setBit$13
Ljazz_mpc_setBit$14:
	shlb	$1, %r12b
	addq	$-1, %rbp
Ljazz_mpc_setBit$13:
	cmpq	$0, %rbp
	jnbe	Ljazz_mpc_setBit$14
	xorb	$-1, %r12b
	andb	%r12b, %r11b
	jmp 	Ljazz_mpc_setBit$11
Ljazz_mpc_setBit$12:
	shlb	$1, %r10b
	addq	$-1, %rbx
Ljazz_mpc_setBit$11:
	cmpq	$0, %rbx
	jnbe	Ljazz_mpc_setBit$12
	orb 	%r10b, %r11b
	movq	%rax, %r10
	shrq	$3, %r10
	movb	%r11b, (%rdi,%r10)
	incq	%r9
	movb	(%r8,%r9), %r10b
	movq	%rax, %r11
	shrq	$3, %r11
	movb	(%rsi,%r11), %r11b
	movq	$7, %rbp
	movq	%rax, %rbx
	andq	$7, %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	movb	$1, %r12b
	jmp 	Ljazz_mpc_setBit$9
Ljazz_mpc_setBit$10:
	shlb	$1, %r12b
	addq	$-1, %rbp
Ljazz_mpc_setBit$9:
	cmpq	$0, %rbp
	jnbe	Ljazz_mpc_setBit$10
	xorb	$-1, %r12b
	andb	%r12b, %r11b
	jmp 	Ljazz_mpc_setBit$7
Ljazz_mpc_setBit$8:
	shlb	$1, %r10b
	addq	$-1, %rbx
Ljazz_mpc_setBit$7:
	cmpq	$0, %rbx
	jnbe	Ljazz_mpc_setBit$8
	orb 	%r10b, %r11b
	movq	%rax, %r10
	shrq	$3, %r10
	movb	%r11b, (%rsi,%r10)
	incq	%r9
	movb	(%r8,%r9), %r10b
	movq	%rax, %r11
	shrq	$3, %r11
	movb	(%rdx,%r11), %r11b
	movq	$7, %rbp
	movq	%rax, %rbx
	andq	$7, %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	movb	$1, %r12b
	jmp 	Ljazz_mpc_setBit$5
Ljazz_mpc_setBit$6:
	shlb	$1, %r12b
	addq	$-1, %rbp
Ljazz_mpc_setBit$5:
	cmpq	$0, %rbp
	jnbe	Ljazz_mpc_setBit$6
	xorb	$-1, %r12b
	andb	%r12b, %r11b
	jmp 	Ljazz_mpc_setBit$3
Ljazz_mpc_setBit$4:
	shlb	$1, %r10b
	addq	$-1, %rbx
Ljazz_mpc_setBit$3:
	cmpq	$0, %rbx
	jnbe	Ljazz_mpc_setBit$4
	orb 	%r10b, %r11b
	movq	%rax, %r10
	shrq	$3, %r10
	movb	%r11b, (%rdx,%r10)
	addq	$-1, %rax
	incq	%r9
	incq	%rcx
Ljazz_mpc_setBit$1:
	cmpq	$3, %rcx
	jb  	Ljazz_mpc_setBit$2
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	(%rsp), %rsp
	ret 
_jazz_mpc_setBit_precompute:
jazz_mpc_setBit_precompute:
	movb	(%rdi), %al
	movb	(%rsi), %cl
	xorb	%cl, %al
	movb	%al, (%rdx)
	movb	1(%rdi), %al
	movb	1(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 1(%rdx)
	movb	2(%rdi), %al
	movb	2(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 2(%rdx)
	movb	(%rdi), %al
	movb	3(%rdi), %cl
	xorb	%cl, %al
	movb	3(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 3(%rdx)
	movb	1(%rdi), %al
	movb	4(%rdi), %cl
	xorb	%cl, %al
	movb	4(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 4(%rdx)
	movb	2(%rdi), %al
	movb	5(%rdi), %cl
	xorb	%cl, %al
	movb	5(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 5(%rdx)
	movb	(%rdi), %al
	movb	3(%rdi), %cl
	xorb	%cl, %al
	movb	6(%rdi), %cl
	xorb	%cl, %al
	movb	6(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 6(%rdx)
	movb	1(%rdi), %al
	movb	4(%rdi), %cl
	xorb	%cl, %al
	movb	7(%rdi), %cl
	xorb	%cl, %al
	movb	7(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 7(%rdx)
	movb	2(%rdi), %al
	movb	5(%rdi), %cl
	xorb	%cl, %al
	movb	8(%rdi), %cl
	xorb	%cl, %al
	movb	8(%rsi), %cl
	xorb	%cl, %al
	movb	%al, 8(%rdx)
	ret 
_jazz_mpc_getBit:
jazz_mpc_getBit:
	movq	(%rcx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	(%rdi,%rcx), %cl
	movq	%rax, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_mpc_getBit$17
Ljazz_mpc_getBit$18:
	shrb	$1, %cl
	addq	$-1, %r10
Ljazz_mpc_getBit$17:
	cmpq	$0, %r10
	jnbe	Ljazz_mpc_getBit$18
	andb	$1, %cl
	movq	%rax, %r9
	addq	$-1, %r9
	shrq	$3, %r9
	movb	(%rdi,%r9), %r9b
	movq	%rax, %r10
	addq	$-1, %r10
	andq	$7, %r10
	movq	$7, %r11
	subq	%r10, %r11
	jmp 	Ljazz_mpc_getBit$15
Ljazz_mpc_getBit$16:
	shrb	$1, %r9b
	addq	$-1, %r11
Ljazz_mpc_getBit$15:
	cmpq	$0, %r11
	jnbe	Ljazz_mpc_getBit$16
	andb	$1, %r9b
	movq	%rax, %r10
	addq	$-2, %r10
	shrq	$3, %r10
	movb	(%rdi,%r10), %dil
	movq	%rax, %r10
	addq	$-2, %r10
	andq	$7, %r10
	movq	$7, %r11
	subq	%r10, %r11
	jmp 	Ljazz_mpc_getBit$13
Ljazz_mpc_getBit$14:
	shrb	$1, %dil
	addq	$-1, %r11
Ljazz_mpc_getBit$13:
	cmpq	$0, %r11
	jnbe	Ljazz_mpc_getBit$14
	andb	$1, %dil
	movb	%cl, (%r8)
	movb	%r9b, 3(%r8)
	movb	%dil, 6(%r8)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	(%rsi,%rcx), %cl
	movq	%rax, %rdi
	andq	$7, %rdi
	movq	$7, %r9
	subq	%rdi, %r9
	jmp 	Ljazz_mpc_getBit$11
Ljazz_mpc_getBit$12:
	shrb	$1, %cl
	addq	$-1, %r9
Ljazz_mpc_getBit$11:
	cmpq	$0, %r9
	jnbe	Ljazz_mpc_getBit$12
	andb	$1, %cl
	movq	%rax, %rdi
	addq	$-1, %rdi
	shrq	$3, %rdi
	movb	(%rsi,%rdi), %dil
	movq	%rax, %r9
	addq	$-1, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_mpc_getBit$9
Ljazz_mpc_getBit$10:
	shrb	$1, %dil
	addq	$-1, %r10
Ljazz_mpc_getBit$9:
	cmpq	$0, %r10
	jnbe	Ljazz_mpc_getBit$10
	andb	$1, %dil
	movq	%rax, %r9
	addq	$-2, %r9
	shrq	$3, %r9
	movb	(%rsi,%r9), %sil
	movq	%rax, %r9
	addq	$-2, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_mpc_getBit$7
Ljazz_mpc_getBit$8:
	shrb	$1, %sil
	addq	$-1, %r10
Ljazz_mpc_getBit$7:
	cmpq	$0, %r10
	jnbe	Ljazz_mpc_getBit$8
	andb	$1, %sil
	movb	%cl, 1(%r8)
	movb	%dil, 4(%r8)
	movb	%sil, 7(%r8)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	(%rdx,%rcx), %cl
	movq	%rax, %rsi
	andq	$7, %rsi
	movq	$7, %rdi
	subq	%rsi, %rdi
	jmp 	Ljazz_mpc_getBit$5
Ljazz_mpc_getBit$6:
	shrb	$1, %cl
	addq	$-1, %rdi
Ljazz_mpc_getBit$5:
	cmpq	$0, %rdi
	jnbe	Ljazz_mpc_getBit$6
	andb	$1, %cl
	movq	%rax, %rsi
	addq	$-1, %rsi
	shrq	$3, %rsi
	movb	(%rdx,%rsi), %sil
	movq	%rax, %rdi
	addq	$-1, %rdi
	andq	$7, %rdi
	movq	$7, %r9
	subq	%rdi, %r9
	jmp 	Ljazz_mpc_getBit$3
Ljazz_mpc_getBit$4:
	shrb	$1, %sil
	addq	$-1, %r9
Ljazz_mpc_getBit$3:
	cmpq	$0, %r9
	jnbe	Ljazz_mpc_getBit$4
	andb	$1, %sil
	movq	%rax, %rdi
	addq	$-2, %rdi
	shrq	$3, %rdi
	movb	(%rdx,%rdi), %dl
	addq	$-2, %rax
	andq	$7, %rax
	movq	$7, %rdi
	subq	%rax, %rdi
	jmp 	Ljazz_mpc_getBit$1
Ljazz_mpc_getBit$2:
	shrb	$1, %dl
	addq	$-1, %rdi
Ljazz_mpc_getBit$1:
	cmpq	$0, %rdi
	jnbe	Ljazz_mpc_getBit$2
	andb	$1, %dl
	movb	%cl, 2(%r8)
	movb	%sil, 5(%r8)
	movb	%dl, 8(%r8)
	ret 
_jazz_and_setBit:
jazz_and_setBit:
	movq	%rsp, %rax
	leaq	-16(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, (%rsp)
	movq	%rbp, 8(%rsp)
	movq	(%rcx), %rax
	movb	(%r8), %cl
	movq	%rax, %r9
	shrq	$3, %r9
	movb	(%rdi,%r9), %r9b
	movq	$7, %r10
	movq	%rax, %r11
	andq	$7, %r11
	subq	%r11, %r10
	movq	%r10, %r11
	movb	$1, %bpl
	jmp 	Ljazz_and_setBit$11
Ljazz_and_setBit$12:
	shlb	$1, %bpl
	addq	$-1, %r10
Ljazz_and_setBit$11:
	cmpq	$0, %r10
	jnbe	Ljazz_and_setBit$12
	xorb	$-1, %bpl
	andb	%bpl, %r9b
	jmp 	Ljazz_and_setBit$9
Ljazz_and_setBit$10:
	shlb	$1, %cl
	addq	$-1, %r11
Ljazz_and_setBit$9:
	cmpq	$0, %r11
	jnbe	Ljazz_and_setBit$10
	orb 	%cl, %r9b
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	%r9b, (%rdi,%rcx)
	movb	1(%r8), %cl
	movq	%rax, %rdi
	shrq	$3, %rdi
	movb	(%rsi,%rdi), %dil
	movq	$7, %r9
	movq	%rax, %r10
	andq	$7, %r10
	subq	%r10, %r9
	movq	%r9, %r10
	movb	$1, %r11b
	jmp 	Ljazz_and_setBit$7
Ljazz_and_setBit$8:
	shlb	$1, %r11b
	addq	$-1, %r9
Ljazz_and_setBit$7:
	cmpq	$0, %r9
	jnbe	Ljazz_and_setBit$8
	xorb	$-1, %r11b
	andb	%r11b, %dil
	jmp 	Ljazz_and_setBit$5
Ljazz_and_setBit$6:
	shlb	$1, %cl
	addq	$-1, %r10
Ljazz_and_setBit$5:
	cmpq	$0, %r10
	jnbe	Ljazz_and_setBit$6
	orb 	%cl, %dil
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	%dil, (%rsi,%rcx)
	movb	2(%r8), %cl
	movq	%rax, %rsi
	shrq	$3, %rsi
	movb	(%rdx,%rsi), %sil
	movq	$7, %rdi
	movq	%rax, %r8
	andq	$7, %r8
	subq	%r8, %rdi
	movq	%rdi, %r8
	movb	$1, %r9b
	jmp 	Ljazz_and_setBit$3
Ljazz_and_setBit$4:
	shlb	$1, %r9b
	addq	$-1, %rdi
Ljazz_and_setBit$3:
	cmpq	$0, %rdi
	jnbe	Ljazz_and_setBit$4
	xorb	$-1, %r9b
	andb	%r9b, %sil
	jmp 	Ljazz_and_setBit$1
Ljazz_and_setBit$2:
	shlb	$1, %cl
	addq	$-1, %r8
Ljazz_and_setBit$1:
	cmpq	$0, %r8
	jnbe	Ljazz_and_setBit$2
	orb 	%cl, %sil
	shrq	$3, %rax
	movb	%sil, (%rdx,%rax)
	movq	8(%rsp), %rbp
	movq	(%rsp), %rsp
	ret 
_jazz_mpc_AND:
jazz_mpc_AND:
	movb	(%rdi), %al
	movb	1(%rsi), %r8b
	andb	%r8b, %al
	movb	1(%rdi), %r8b
	movb	(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	(%rdi), %r8b
	movb	(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	(%rcx), %r8b
	xorb	%r8b, %al
	movb	1(%rcx), %r8b
	xorb	%r8b, %al
	movb	%al, (%rdx)
	movb	1(%rdi), %al
	movb	2(%rsi), %r8b
	andb	%r8b, %al
	movb	2(%rdi), %r8b
	movb	1(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	1(%rdi), %r8b
	movb	1(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	1(%rcx), %r8b
	xorb	%r8b, %al
	movb	2(%rcx), %r8b
	xorb	%r8b, %al
	movb	%al, 1(%rdx)
	movb	2(%rdi), %al
	movb	(%rsi), %r8b
	andb	%r8b, %al
	movb	(%rdi), %r8b
	movb	2(%rsi), %r9b
	andb	%r9b, %r8b
	xorb	%r8b, %al
	movb	2(%rdi), %dil
	movb	2(%rsi), %sil
	andb	%sil, %dil
	xorb	%dil, %al
	movb	2(%rcx), %sil
	xorb	%sil, %al
	movb	(%rcx), %cl
	xorb	%cl, %al
	movb	%al, 2(%rdx)
	ret 
_jazz_and_getBit:
jazz_and_getBit:
	movq	(%rcx), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	(%rdi,%rcx), %cl
	movq	%rax, %rdi
	andq	$7, %rdi
	movq	$7, %r9
	subq	%rdi, %r9
	jmp 	Ljazz_and_getBit$5
Ljazz_and_getBit$6:
	shrb	$1, %cl
	addq	$-1, %r9
Ljazz_and_getBit$5:
	cmpq	$0, %r9
	jnbe	Ljazz_and_getBit$6
	andb	$1, %cl
	movq	%rax, %rdi
	shrq	$3, %rdi
	movb	(%rsi,%rdi), %sil
	movq	%rax, %rdi
	andq	$7, %rdi
	movq	$7, %r9
	subq	%rdi, %r9
	jmp 	Ljazz_and_getBit$3
Ljazz_and_getBit$4:
	shrb	$1, %sil
	addq	$-1, %r9
Ljazz_and_getBit$3:
	cmpq	$0, %r9
	jnbe	Ljazz_and_getBit$4
	andb	$1, %sil
	movq	%rax, %rdi
	shrq	$3, %rdi
	movb	(%rdx,%rdi), %dl
	andq	$7, %rax
	movq	$7, %rdi
	subq	%rax, %rdi
	jmp 	Ljazz_and_getBit$1
Ljazz_and_getBit$2:
	shrb	$1, %dl
	addq	$-1, %rdi
Ljazz_and_getBit$1:
	cmpq	$0, %rdi
	jnbe	Ljazz_and_getBit$2
	andb	$1, %dl
	movb	%cl, (%r8)
	movb	%sil, 1(%r8)
	movb	%dl, 2(%r8)
	ret 
_jazz_substitution:
jazz_substitution:
	movq	%rsp, %rax
	leaq	-32(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	(%rsi), %rax
	imulq	$3, %rax, %rax
	movq	$0, %rcx
	jmp 	Ljazz_substitution$1
Ljazz_substitution$2:
	movq	%rcx, %rsi
	addq	$2, %rsi
	movq	%rsi, %rdx
	shrq	$3, %rdx
	movb	(%rdi,%rdx), %dl
	movq	%rsi, %r8
	andq	$7, %r8
	movq	$7, %r9
	subq	%r8, %r9
	jmp 	Ljazz_substitution$19
Ljazz_substitution$20:
	shrb	$1, %dl
	addq	$-1, %r9
Ljazz_substitution$19:
	cmpq	$0, %r9
	jnbe	Ljazz_substitution$20
	andb	$1, %dl
	movq	%rsi, %r8
	addq	$-1, %r8
	shrq	$3, %r8
	movb	(%rdi,%r8), %r8b
	movq	%rsi, %r9
	addq	$-1, %r9
	andq	$7, %r9
	movq	$7, %r10
	subq	%r9, %r10
	jmp 	Ljazz_substitution$17
Ljazz_substitution$18:
	shrb	$1, %r8b
	addq	$-1, %r10
Ljazz_substitution$17:
	cmpq	$0, %r10
	jnbe	Ljazz_substitution$18
	andb	$1, %r8b
	movq	%rsi, %r9
	addq	$-2, %r9
	shrq	$3, %r9
	movb	(%rdi,%r9), %r9b
	addq	$-2, %rsi
	andq	$7, %rsi
	movq	$7, %r10
	subq	%rsi, %r10
	jmp 	Ljazz_substitution$15
Ljazz_substitution$16:
	shrb	$1, %r9b
	addq	$-1, %r10
Ljazz_substitution$15:
	cmpq	$0, %r10
	jnbe	Ljazz_substitution$16
	andb	$1, %r9b
	movq	%rcx, %r10
	addq	$2, %r10
	movb	%r8b, %sil
	movb	%r9b, %r8b
	movb	%dl, %r9b
	movb	%sil, %r11b
	andb	%r8b, %r11b
	xorb	%r11b, %r9b
	movq	%r10, %r11
	shrq	$3, %r11
	movb	(%rdi,%r11), %r11b
	movq	$7, %rbp
	movq	%r10, %rbx
	andq	$7, %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	movb	$1, %r12b
	jmp 	Ljazz_substitution$13
Ljazz_substitution$14:
	shlb	$1, %r12b
	addq	$-1, %rbp
Ljazz_substitution$13:
	cmpq	$0, %rbp
	jnbe	Ljazz_substitution$14
	xorb	$-1, %r12b
	andb	%r12b, %r11b
	jmp 	Ljazz_substitution$11
Ljazz_substitution$12:
	shlb	$1, %r9b
	addq	$-1, %rbx
Ljazz_substitution$11:
	cmpq	$0, %rbx
	jnbe	Ljazz_substitution$12
	orb 	%r9b, %r11b
	movq	%r10, %r9
	shrq	$3, %r9
	movb	%r11b, (%rdi,%r9)
	movb	%dl, %r9b
	xorb	%sil, %r9b
	movb	%dl, %r11b
	andb	%r8b, %r11b
	xorb	%r11b, %r9b
	addq	$-1, %r10
	movq	%r10, %r11
	shrq	$3, %r11
	movb	(%rdi,%r11), %r11b
	movq	$7, %rbp
	movq	%r10, %rbx
	andq	$7, %rbx
	subq	%rbx, %rbp
	movq	%rbp, %rbx
	movb	$1, %r12b
	jmp 	Ljazz_substitution$9
Ljazz_substitution$10:
	shlb	$1, %r12b
	addq	$-1, %rbp
Ljazz_substitution$9:
	cmpq	$0, %rbp
	jnbe	Ljazz_substitution$10
	xorb	$-1, %r12b
	andb	%r12b, %r11b
	jmp 	Ljazz_substitution$7
Ljazz_substitution$8:
	shlb	$1, %r9b
	addq	$-1, %rbx
Ljazz_substitution$7:
	cmpq	$0, %rbx
	jnbe	Ljazz_substitution$8
	orb 	%r9b, %r11b
	movq	%r10, %r9
	shrq	$3, %r9
	movb	%r11b, (%rdi,%r9)
	movb	%dl, %r9b
	xorb	%sil, %r9b
	xorb	%r8b, %r9b
	andb	%sil, %dl
	xorb	%dl, %r9b
	addq	$-1, %r10
	movq	%r10, %rdx
	shrq	$3, %rdx
	movb	(%rdi,%rdx), %dl
	movq	$7, %rsi
	movq	%r10, %r8
	andq	$7, %r8
	subq	%r8, %rsi
	movq	%rsi, %r8
	movb	$1, %r11b
	jmp 	Ljazz_substitution$5
Ljazz_substitution$6:
	shlb	$1, %r11b
	addq	$-1, %rsi
Ljazz_substitution$5:
	cmpq	$0, %rsi
	jnbe	Ljazz_substitution$6
	xorb	$-1, %r11b
	andb	%r11b, %dl
	jmp 	Ljazz_substitution$3
Ljazz_substitution$4:
	shlb	$1, %r9b
	addq	$-1, %r8
Ljazz_substitution$3:
	cmpq	$0, %r8
	jnbe	Ljazz_substitution$4
	orb 	%r9b, %dl
	shrq	$3, %r10
	movb	%dl, (%rdi,%r10)
	addq	$3, %rcx
Ljazz_substitution$1:
	cmpq	%rax, %rcx
	jb  	Ljazz_substitution$2
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	(%rsp), %rsp
	ret 
_jazz_matrix_mul:
jazz_matrix_mul:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%r13, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	(%r8), %rax
	movq	(%rcx), %rcx
	movq	(%r9), %r8
	imulq	$4, %r8, %r8
	movq	$0, %r10
	jmp 	Ljazz_matrix_mul$1
Ljazz_matrix_mul$2:
	movl	$0, %r11d
	movq	$0, %rbp
	jmp 	Ljazz_matrix_mul$13
Ljazz_matrix_mul$14:
	movq	%r10, %rbx
	imulq	%rax, %rbx
	imulq	$4, %rbx, %rbx
	addq	%rbp, %rbx
	movl	(%rsi,%rbp), %r12d
	movl	(%rdx,%rbx), %ebx
	andl	%ebx, %r12d
	xorl	%r12d, %r11d
	addq	$4, %rbp
Ljazz_matrix_mul$13:
	cmpq	%r8, %rbp
	jb  	Ljazz_matrix_mul$14
	movq	(%r9), %rbp
	imulq	$32, %rbp, %rbp
	jmp 	Ljazz_matrix_mul$7
Ljazz_matrix_mul$8:
	movq	%r10, %rbx
	imulq	%rax, %rbx
	imulq	$32, %rbx, %rbx
	addq	%rbp, %rbx
	movq	%rbp, %r12
	shrq	$3, %r12
	movb	(%rsi,%r12), %r12b
	movq	%rbp, %r13
	andq	$7, %r13
	movq	$7, %r14
	subq	%r13, %r14
	jmp 	Ljazz_matrix_mul$11
Ljazz_matrix_mul$12:
	shrb	$1, %r12b
	addq	$-1, %r14
Ljazz_matrix_mul$11:
	cmpq	$0, %r14
	jnbe	Ljazz_matrix_mul$12
	andb	$1, %r12b
	movq	%rbx, %r13
	shrq	$3, %r13
	movb	(%rdx,%r13), %r13b
	andq	$7, %rbx
	movq	$7, %r14
	subq	%rbx, %r14
	jmp 	Ljazz_matrix_mul$9
Ljazz_matrix_mul$10:
	shrb	$1, %r13b
	addq	$-1, %r14
Ljazz_matrix_mul$9:
	cmpq	$0, %r14
	jnbe	Ljazz_matrix_mul$10
	andb	$1, %r13b
	andb	%r13b, %r12b
	movb	%r12b, 3(%rsp)
	xorl	(%rsp), %r11d
	incq	%rbp
Ljazz_matrix_mul$7:
	cmpq	%rcx, %rbp
	jb  	Ljazz_matrix_mul$8
	movl	%r11d, %ebp
	shrl	$1, %r11d
	xorl	%r11d, %ebp
	movl	%ebp, %r11d
	shrl	$2, %r11d
	xorl	%r11d, %ebp
	movl	%ebp, %r11d
	shrl	$4, %r11d
	xorl	%r11d, %ebp
	movl	%ebp, %r11d
	shrl	$8, %r11d
	xorl	%r11d, %ebp
	movl	%ebp, %r11d
	shrl	$16, %r11d
	xorl	%r11d, %ebp
	andl	$1, %ebp
	movq	%r10, %r11
	shrq	$3, %r11
	movb	(%rdi,%r11), %r11b
	movq	$7, %rbx
	movq	%r10, %r12
	andq	$7, %r12
	subq	%r12, %rbx
	movq	%rbx, %r12
	movb	$1, %r13b
	jmp 	Ljazz_matrix_mul$5
Ljazz_matrix_mul$6:
	shlb	$1, %r13b
	addq	$-1, %rbx
Ljazz_matrix_mul$5:
	cmpq	$0, %rbx
	jnbe	Ljazz_matrix_mul$6
	xorb	$-1, %r13b
	andb	%r13b, %r11b
	jmp 	Ljazz_matrix_mul$3
Ljazz_matrix_mul$4:
	shlb	$1, %bpl
	addq	$-1, %r12
Ljazz_matrix_mul$3:
	cmpq	$0, %r12
	jnbe	Ljazz_matrix_mul$4
	orb 	%bpl, %r11b
	movq	%r10, %rbp
	shrq	$3, %rbp
	movb	%r11b, (%rdi,%rbp)
	incq	%r10
Ljazz_matrix_mul$1:
	cmpq	%rcx, %r10
	jb  	Ljazz_matrix_mul$2
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	movq	8(%rsp), %rsp
	ret 
_getBitFromWordArray:
getBitFromWordArray:
	movq	(%rsi), %rax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movb	(%rdi,%rcx), %cl
	movq	$7, %rsi
	andq	$7, %rax
	subq	%rax, %rsi
	jmp 	LgetBitFromWordArray$1
LgetBitFromWordArray$2:
	shrb	$1, %cl
	addq	$-1, %rsi
LgetBitFromWordArray$1:
	cmpq	$0, %rsi
	jnbe	LgetBitFromWordArray$2
	andb	$1, %cl
	movb	%cl, (%rdx)
	ret 
_jazz_setBit:
jazz_setBit:
	movq	(%rsi), %rax
	shrq	$3, %rax
	movb	(%rdi,%rax), %al
	movq	$7, %rcx
	movq	(%rsi), %r8
	andq	$7, %r8
	subq	%r8, %rcx
	movq	%rcx, %r8
	movb	$1, %r9b
	jmp 	Ljazz_setBit$3
Ljazz_setBit$4:
	shlb	$1, %r9b
	addq	$-1, %rcx
Ljazz_setBit$3:
	cmpq	$0, %rcx
	jnbe	Ljazz_setBit$4
	xorb	$-1, %r9b
	andb	%r9b, %al
	movb	(%rdx), %cl
	jmp 	Ljazz_setBit$1
Ljazz_setBit$2:
	shlb	$1, %cl
	addq	$-1, %r8
Ljazz_setBit$1:
	cmpq	$0, %r8
	jnbe	Ljazz_setBit$2
	orb 	%cl, %al
	movq	(%rsi), %rcx
	shrq	$3, %rcx
	movb	%al, (%rdi,%rcx)
	ret 
_jazz_getBit:
jazz_getBit:
	movq	%rsp, %r10
	leaq	-8(%rsp), %rsp
	andq	$-8, %rsp
	movq	$8, %rcx
	movq	(%rsi), %rsi
	movq	%rsi, %rax
	movq	%rdx, (%rsp)
	movq	$0, %rdx
	divq	%rcx
	movq	(%rsp), %r8
	movb	(%rdi,%rax), %dil
	movq	%rsi, %rax
	movq	$0, %rdx
	divq	%rcx
	addq	$-7, %rdx
	jmp 	Ljazz_getBit$1
Ljazz_getBit$2:
	shrb	$1, %dil
	incq	%rdx
Ljazz_getBit$1:
	cmpq	$0, %rdx
	jb  	Ljazz_getBit$2
	andb	$1, %dil
	movb	%dil, (%r8)
	movq	%r10, %rsp
	ret 
_xor_array:
xor_array:
	movl	(%rcx), %eax
	imull	$4, %eax, %eax
	movq	$0, %rcx
	jmp 	Lxor_array$1
Lxor_array$2:
	movl	(%rsi,%rcx), %r8d
	xorl	(%rdx,%rcx), %r8d
	movl	%r8d, (%rdi,%rcx)
	addq	$4, %rcx
Lxor_array$1:
	cmpl	%eax, %ecx
	jb  	Lxor_array$2
	ret 
_xor_three:
xor_three:
	movb	(%r8), %al
	movq	$0, %r8
	movq	$-4, %r9
	jmp 	Lxor_three$3
Lxor_three$4:
	addq	$4, %r9
	movl	(%rsi,%r9), %r10d
	xorl	(%rdx,%r9), %r10d
	xorl	(%rcx,%r9), %r10d
	movl	%r10d, (%rdi,%r9)
	addq	$4, %r8
Lxor_three$3:
	cmpb	%al, %r8b
	jb  	Lxor_three$4
	jmp 	Lxor_three$1
Lxor_three$2:
	movb	(%rsi,%r9), %r8b
	xorb	(%rdx,%r9), %r8b
	xorb	(%rcx,%r9), %r8b
	movb	%r8b, (%rdi,%r9)
	incq	%r9
Lxor_three$1:
	cmpb	%al, %r9b
	jb  	Lxor_three$2
	ret 
