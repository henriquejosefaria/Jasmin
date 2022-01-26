	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r11
	leaq	-40(%rsp), %rsp
	andq	$-8, %rsp
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	movq	$0, %rdx
	jmp 	Ltest$3
Ltest$4:
	movq	$0, %rsi
	jmp 	Ltest$69
Ltest$70:
	incq	%rsi
Ltest$69:
	cmpq	$4, %rsi
	jb  	Ltest$70
	movq	$0, %rsi
	jmp 	Ltest$67
Ltest$68:
	incq	%rsi
Ltest$67:
	cmpq	$16, %rsi
	jb  	Ltest$68
	movq	$0, %rsi
	jmp 	Ltest$65
Ltest$66:
	incq	%rsi
Ltest$65:
	cmpq	$3, %rsi
	jb  	Ltest$66
	movq	$0, %rsi
	jmp 	Ltest$63
Ltest$64:
	incq	%rsi
Ltest$63:
	cmpq	$370, %rsi
	jb  	Ltest$64
	movq	$0, %rsi
	jmp 	Ltest$54
Ltest$55:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$56
	movq	$0, %rdi
	jmp 	Ltest$61
Ltest$62:
	incq	%rdi
Ltest$61:
	cmpq	$16, %rdi
	jb  	Ltest$62
	jmp 	Ltest$59
Ltest$60:
	incq	%rdi
Ltest$59:
	cmpq	$64, %rdi
	jb  	Ltest$60
	movq	$0, %rdi
	jmp 	Ltest$57
Ltest$58:
	incq	%rdi
Ltest$57:
	cmpq	$64, %rdi
	jb  	Ltest$58
	movq	$0, (%rsp)
Ltest$56:
	incq	%rsi
Ltest$54:
	cmpq	$4, %rsi
	jb  	Ltest$55
	movq	$0, %rsi
	jmp 	Ltest$45
Ltest$46:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$47
	movq	$0, %rdi
	jmp 	Ltest$52
Ltest$53:
	incq	%rdi
Ltest$52:
	cmpq	$16, %rdi
	jb  	Ltest$53
	jmp 	Ltest$50
Ltest$51:
	incq	%rdi
Ltest$50:
	cmpq	$64, %rdi
	jb  	Ltest$51
	movq	$0, %rdi
	jmp 	Ltest$48
Ltest$49:
	incq	%rdi
Ltest$48:
	cmpq	$64, %rdi
	jb  	Ltest$49
	movq	$0, (%rsp)
Ltest$47:
	incq	%rsi
Ltest$45:
	cmpq	$16, %rsi
	jb  	Ltest$46
	movq	$0, %rsi
	jmp 	Ltest$36
Ltest$37:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$38
	movq	$0, %rdi
	jmp 	Ltest$43
Ltest$44:
	incq	%rdi
Ltest$43:
	cmpq	$16, %rdi
	jb  	Ltest$44
	jmp 	Ltest$41
Ltest$42:
	incq	%rdi
Ltest$41:
	cmpq	$64, %rdi
	jb  	Ltest$42
	movq	$0, %rdi
	jmp 	Ltest$39
Ltest$40:
	incq	%rdi
Ltest$39:
	cmpq	$64, %rdi
	jb  	Ltest$40
	movq	$0, (%rsp)
Ltest$38:
	incq	%rsi
Ltest$36:
	cmpq	$370, %rsi
	jb  	Ltest$37
	movq	$0, %rsi
	jmp 	Ltest$27
Ltest$28:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$29
	movq	$0, %rdi
	jmp 	Ltest$34
Ltest$35:
	incq	%rdi
Ltest$34:
	cmpq	$16, %rdi
	jb  	Ltest$35
	jmp 	Ltest$32
Ltest$33:
	incq	%rdi
Ltest$32:
	cmpq	$64, %rdi
	jb  	Ltest$33
	movq	$0, %rdi
	jmp 	Ltest$30
Ltest$31:
	incq	%rdi
Ltest$30:
	cmpq	$64, %rdi
	jb  	Ltest$31
	movq	$0, (%rsp)
Ltest$29:
	incq	%rsi
Ltest$27:
	cmpq	$3, %rsi
	jb  	Ltest$28
	movq	(%rsp), %rsi
	cmpq	$14, (%rsp)
	jb  	Ltest$13
	incq	%rsi
	jmp 	Ltest$25
Ltest$26:
	incq	%rsi
Ltest$25:
	cmpq	$16, %rsi
	jb  	Ltest$26
	movq	$0, %rsi
	jmp 	Ltest$23
Ltest$24:
	incq	%rsi
Ltest$23:
	cmpq	$16, %rsi
	jb  	Ltest$24
	jmp 	Ltest$21
Ltest$22:
	incq	%rsi
Ltest$21:
	cmpq	$64, %rsi
	jb  	Ltest$22
	movq	$0, %rsi
	jmp 	Ltest$19
Ltest$20:
	incq	%rsi
Ltest$19:
	cmpq	$64, %rsi
	jb  	Ltest$20
	movq	$0, %rsi
	jmp 	Ltest$17
Ltest$18:
	incq	%rsi
Ltest$17:
	cmpq	$14, %rsi
	jb  	Ltest$18
	jmp 	Ltest$14
Ltest$13:
	incq	%rsi
	jmp 	Ltest$15
Ltest$16:
	incq	%rsi
Ltest$15:
	cmpq	$14, %rsi
	jb  	Ltest$16
Ltest$14:
	movq	$0, %rsi
	jmp 	Ltest$11
Ltest$12:
	incq	%rsi
Ltest$11:
	cmpq	$16, %rsi
	jb  	Ltest$12
	jmp 	Ltest$9
Ltest$10:
	incq	%rsi
Ltest$9:
	cmpq	$64, %rsi
	jb  	Ltest$10
	movq	$0, %rsi
	jmp 	Ltest$7
Ltest$8:
	incq	%rsi
Ltest$7:
	cmpq	$64, %rsi
	jb  	Ltest$8
	movq	$0, %rsi
	movq	$0, %rdi
	jmp 	Ltest$5
Ltest$6:
	movq	%rax, %r8
	imulq	$4, %r8, %r8
	addq	%rsi, %r8
	addq	$384, %r8
	addq	%rdi, %r8
	movl	8(%rsp,%rdi,4), %r9d
	movl	%r9d, (%rcx,%r8)
	incq	%rdi
Ltest$5:
	cmpq	$8, %rdi
	jb  	Ltest$6
	incq	%rdx
Ltest$3:
	cmpq	$3, %rdx
	jb  	Ltest$4
	incq	%rax
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%r11, %rsp
	ret 
