	.text
	.p2align	5
	.globl	_jazz_matrix_mul
	.globl	jazz_matrix_mul
	.globl	_getBitFromWordArray
	.globl	getBitFromWordArray
	.globl	_jazz_setBit2
	.globl	jazz_setBit2
	.globl	_jazz_setBit
	.globl	jazz_setBit
	.globl	_jazz_getBit
	.globl	jazz_getBit
	.globl	_xor_array
	.globl	xor_array
	.globl	_xor_three
	.globl	xor_three
_jazz_matrix_mul:
jazz_matrix_mul:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 72(%rsp)
	movq	%rbx, 80(%rsp)
	movq	%rbp, 88(%rsp)
	movq	%r12, 96(%rsp)
	movq	%r13, 104(%rsp)
	movq	%r14, 112(%rsp)
	movq	(%r8), %rax
	movq	(%rcx), %rcx
	movq	(%r9), %r8
	imulq	$4, %r8, %r8
	movq	$0, %r10
	jmp 	Ljazz_matrix_mul$3
Ljazz_matrix_mul$4:
	movl	$0, %r11d
	movq	$0, %rbp
	jmp 	Ljazz_matrix_mul$17
Ljazz_matrix_mul$18:
	movq	%r10, %rbx
	imulq	%rax, %rbx
	imulq	$4, %rbx, %rbx
	addq	%rbp, %rbx
	movl	(%rsi,%rbp), %r12d
	movl	(%rdx,%rbx), %ebx
	andl	%ebx, %r12d
	xorl	%r12d, %r11d
	addq	$4, %rbp
Ljazz_matrix_mul$17:
	cmpq	%r8, %rbp
	jb  	Ljazz_matrix_mul$18
	movq	(%r9), %rbp
	imulq	$32, %rbp, %rbp
	jmp 	Ljazz_matrix_mul$11
Ljazz_matrix_mul$12:
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
	jmp 	Ljazz_matrix_mul$15
Ljazz_matrix_mul$16:
	shrb	$1, %r12b
	addq	$-1, %r14
Ljazz_matrix_mul$15:
	cmpq	$0, %r14
	jnbe	Ljazz_matrix_mul$16
	andb	$1, %r12b
	movq	%rbx, %r13
	shrq	$3, %r13
	movb	(%rsi,%r13), %r13b
	andq	$7, %rbx
	movq	$7, %r14
	subq	%rbx, %r14
	jmp 	Ljazz_matrix_mul$13
Ljazz_matrix_mul$14:
	shrb	$1, %r13b
	addq	$-1, %r14
Ljazz_matrix_mul$13:
	cmpq	$0, %r14
	jnbe	Ljazz_matrix_mul$14
	andb	$1, %r13b
	andb	%r13b, %r12b
	movb	%r12b, 3(%rsp)
	xorl	(%rsp), %r11d
	incq	%rbp
Ljazz_matrix_mul$11:
	cmpq	%rcx, %rbp
	jb  	Ljazz_matrix_mul$12
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
	movb	4(%rsp,%r11), %r11b
	movq	$7, %rbx
	movq	%r10, %r12
	andq	$7, %r12
	subq	%r12, %rbx
	movq	%rbx, %r12
	movb	$1, %r13b
	jmp 	Ljazz_matrix_mul$9
Ljazz_matrix_mul$10:
	shlb	$1, %r13b
	addq	$-1, %rbx
Ljazz_matrix_mul$9:
	cmpq	$0, %rbx
	jnbe	Ljazz_matrix_mul$10
	xorb	$-1, %r13b
	andb	%r13b, %r11b
	cmpl	$1, %ebp
	je  	Ljazz_matrix_mul$7
	movb	$0, %bpl
	jmp 	Ljazz_matrix_mul$5
Ljazz_matrix_mul$7:
	movb	$1, %bpl
Ljazz_matrix_mul$8:
	jmp 	Ljazz_matrix_mul$5
Ljazz_matrix_mul$6:
	shlb	$1, %bpl
	addq	$-1, %r12
Ljazz_matrix_mul$5:
	cmpq	$0, %r12
	jnbe	Ljazz_matrix_mul$6
	orb 	%bpl, %r11b
	movq	%r10, %rbp
	shrq	$3, %rbp
	movb	%r11b, 4(%rsp,%rbp)
	incq	%r10
Ljazz_matrix_mul$3:
	cmpq	%rcx, %r10
	jb  	Ljazz_matrix_mul$4
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Ljazz_matrix_mul$1
Ljazz_matrix_mul$2:
	movl	4(%rsp,%rax,4), %edx
	movl	%edx, (%rdi,%rcx)
	incq	%rax
	addq	$4, %rcx
Ljazz_matrix_mul$1:
	cmpq	%r8, %rax
	jb  	Ljazz_matrix_mul$2
	movq	80(%rsp), %rbx
	movq	88(%rsp), %rbp
	movq	96(%rsp), %r12
	movq	104(%rsp), %r13
	movq	112(%rsp), %r14
	movq	72(%rsp), %rsp
	ret 
_getBitFromWordArray:
getBitFromWordArray:
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
	jmp 	LgetBitFromWordArray$1
LgetBitFromWordArray$2:
	shrb	$1, %dil
	incq	%rdx
LgetBitFromWordArray$1:
	cmpq	$0, %rdx
	jb  	LgetBitFromWordArray$2
	andb	$1, %dil
	movb	%dil, (%r8)
	movq	%r10, %rsp
	ret 
_jazz_setBit2:
jazz_setBit2:
	movq	(%rsi), %rax
	shrq	$3, %rax
	movb	(%rdi,%rax), %al
	movq	$7, %r8
	movq	(%rsi), %r9
	andq	$7, %r9
	subq	%r9, %r8
	movq	%r8, %r9
	movb	$1, %r10b
	jmp 	Ljazz_setBit2$3
Ljazz_setBit2$4:
	shlb	$1, %r10b
	addq	$-1, %r8
Ljazz_setBit2$3:
	cmpq	$0, %r8
	jnbe	Ljazz_setBit2$4
	xorb	$-1, %r10b
	andb	%r10b, %al
	movq	(%rsi), %r8
	movb	%r10b, (%rcx,%r8)
	movb	(%rdx), %cl
	jmp 	Ljazz_setBit2$1
Ljazz_setBit2$2:
	shlb	$1, %cl
	addq	$-1, %r9
Ljazz_setBit2$1:
	cmpq	$0, %r9
	jnbe	Ljazz_setBit2$2
	orb 	%cl, %al
	movq	(%rsi), %rcx
	shrq	$3, %rcx
	movb	%al, (%rdi,%rcx)
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
