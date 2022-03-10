	.text
	.p2align	5
	.globl	_zkboo_encrypt
	.globl	zkboo_encrypt
_zkboo_encrypt:
zkboo_encrypt:
	movq	%rsp, %r11
	leaq	-224(%rsp), %rsp
	andq	$-8, %rsp
	movq	$1, (%rsp)
	movq	$128, %rax
	movq	%rax, 8(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$1
Lzkboo_encrypt$2:
	movq	8(%rsp), %rcx
	shrq	$3, %rcx
	movq	$0, 16(%rsp)
	jmp 	Lzkboo_encrypt$3
Lzkboo_encrypt$4:
	imulq	$16, 16(%rsp), %rdi
	imulq	(%rsp), %rdi
	movq	$16, %rsi
	imulq	%rax, %rsi
	addq	$6144, %rsi
	addq	%rdi, %rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 32(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 33(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 34(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 35(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 36(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 37(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 38(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 39(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 40(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 41(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 42(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 43(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 44(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 45(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %dil
	movb	%dil, 46(%rsp)
	incq	%rsi
	movb	(%rdx,%rsi), %sil
	movb	%sil, 47(%rsp)
	movq	16(%rsp), %rsi
	imulq	$64, %rsi, %rsi
	addq	%rcx, %rsi
	movb	$-128, 32(%rsp,%rsi)
	imulq	$64, 16(%rsp), %rsi
	addq	$62, %rsi
	movq	8(%rsp), %rdi
	movb	%dil, 32(%rsp,%rsi)
	shrb	$8, 32(%rsp,%rsi)
	incq	%rsi
	movq	8(%rsp), %rdi
	movb	%dil, 32(%rsp,%rsi)
	imulq	$64, 16(%rsp), %rsi
	movq	16(%rsp), %rdi
	imulq	(%rsp), %rdi
	imulq	$64, %rdi, %rdi
	imulq	$64, %rax, %r9
	addq	%rdi, %r9
	movq	$0, 24(%rsp)
	jmp 	Lzkboo_encrypt$7
Lzkboo_encrypt$8:
	movb	32(%rsp,%rsi), %dil
	movb	%dil, (%r8,%r9)
	incq	%r9
	incq	%rsi
	incq	24(%rsp)
Lzkboo_encrypt$7:
	cmpq	$64, 24(%rsp)
	jb  	Lzkboo_encrypt$8
	movq	$0, 24(%rsp)
	jmp 	Lzkboo_encrypt$5
Lzkboo_encrypt$6:
	incq	24(%rsp)
Lzkboo_encrypt$5:
	cmpq	$16, 24(%rsp)
	jb  	Lzkboo_encrypt$6
	incq	16(%rsp)
Lzkboo_encrypt$3:
	cmpq	$3, 16(%rsp)
	jb  	Lzkboo_encrypt$4
	incq	%rax
Lzkboo_encrypt$1:
	cmpq	(%rsp), %rax
	jb  	Lzkboo_encrypt$2
	movq	%r11, %rsp
	ret 
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
