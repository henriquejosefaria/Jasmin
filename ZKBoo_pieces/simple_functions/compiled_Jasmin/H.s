	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	pushq	%rbp
	pushq	%r12
	movq	%rsp, %r12
	subq	$8, %rsp
	andq	$-32, %rsp
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	movq	$0, %rcx
	jmp 	Ltest$3
Ltest$4:
	movq	$0, %rdx
	jmp 	Ltest$87
Ltest$88:
	incq	%rdx
Ltest$87:
	cmpq	$370, %rdx
	jb  	Ltest$88
	movq	$0, %rdx
	jmp 	Ltest$74
Ltest$75:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$76
	movq	$0, %rsi
	jmp 	Ltest$85
Ltest$86:
	addq	$4, %rsi
Ltest$85:
	cmpq	$64, %rsi
	jb  	Ltest$86
	jmp 	Ltest$83
Ltest$84:
	incq	%rdi
Ltest$83:
	cmpq	$64, %rdi
	jb  	Ltest$84
	movq	$0, %rsi
	jmp 	Ltest$81
Ltest$82:
	incq	%rsi
Ltest$81:
	cmpq	$4, %rsi
	jb  	Ltest$82
	movq	$0, %rsi
	jmp 	Ltest$79
Ltest$80:
	incq	%rsi
Ltest$79:
	cmpq	$64, %rsi
	jb  	Ltest$80
	movq	$0, %rdi
	jmp 	Ltest$77
Ltest$78:
	incq	%rdi
Ltest$77:
	cmpq	$4, %rdi
	jb  	Ltest$78
	movq	$0, (%rsp)
Ltest$76:
	incq	%rdx
Ltest$74:
	cmpq	$16, %rdx
	jb  	Ltest$75
	movq	$0, %rdx
	jmp 	Ltest$61
Ltest$62:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$63
	movq	$0, %rsi
	jmp 	Ltest$72
Ltest$73:
	addq	$4, %rsi
Ltest$72:
	cmpq	$64, %rsi
	jb  	Ltest$73
	jmp 	Ltest$70
Ltest$71:
	incq	%r8
Ltest$70:
	cmpq	$64, %r8
	jb  	Ltest$71
	movq	$0, %rsi
	jmp 	Ltest$68
Ltest$69:
	incq	%rsi
Ltest$68:
	cmpq	$4, %rsi
	jb  	Ltest$69
	movq	$0, %rsi
	jmp 	Ltest$66
Ltest$67:
	incq	%rsi
Ltest$66:
	cmpq	$64, %rsi
	jb  	Ltest$67
	movq	$0, %r8
	jmp 	Ltest$64
Ltest$65:
	incq	%r8
Ltest$64:
	cmpq	$4, %r8
	jb  	Ltest$65
	movq	$0, (%rsp)
Ltest$63:
	incq	%rdx
Ltest$61:
	cmpq	$64, %rdx
	jb  	Ltest$62
	movq	$0, %rdx
	jmp 	Ltest$48
Ltest$49:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$50
	movq	$0, %rsi
	jmp 	Ltest$59
Ltest$60:
	addq	$4, %rsi
Ltest$59:
	cmpq	$64, %rsi
	jb  	Ltest$60
	jmp 	Ltest$57
Ltest$58:
	incq	%r9
Ltest$57:
	cmpq	$64, %r9
	jb  	Ltest$58
	movq	$0, %rsi
	jmp 	Ltest$55
Ltest$56:
	incq	%rsi
Ltest$55:
	cmpq	$4, %rsi
	jb  	Ltest$56
	movq	$0, %rsi
	jmp 	Ltest$53
Ltest$54:
	incq	%rsi
Ltest$53:
	cmpq	$64, %rsi
	jb  	Ltest$54
	movq	$0, %r9
	jmp 	Ltest$51
Ltest$52:
	incq	%r9
Ltest$51:
	cmpq	$4, %r9
	jb  	Ltest$52
	movq	$0, (%rsp)
Ltest$50:
	incq	%rdx
Ltest$48:
	cmpq	$370, %rdx
	jb  	Ltest$49
	movq	$0, %rdx
	jmp 	Ltest$35
Ltest$36:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$37
	movq	$0, %rsi
	jmp 	Ltest$46
Ltest$47:
	addq	$4, %rsi
Ltest$46:
	cmpq	$64, %rsi
	jb  	Ltest$47
	jmp 	Ltest$44
Ltest$45:
	incq	%r10
Ltest$44:
	cmpq	$64, %r10
	jb  	Ltest$45
	movq	$0, %rsi
	jmp 	Ltest$42
Ltest$43:
	incq	%rsi
Ltest$42:
	cmpq	$4, %rsi
	jb  	Ltest$43
	movq	$0, %rsi
	jmp 	Ltest$40
Ltest$41:
	incq	%rsi
Ltest$40:
	cmpq	$64, %rsi
	jb  	Ltest$41
	movq	$0, %r10
	jmp 	Ltest$38
Ltest$39:
	incq	%r10
Ltest$38:
	cmpq	$4, %r10
	jb  	Ltest$39
	movq	$0, (%rsp)
Ltest$37:
	incq	%rdx
Ltest$35:
	cmpq	$12, %rdx
	jb  	Ltest$36
	movq	(%rsp), %rdx
	cmpq	$56, (%rsp)
	jb  	Ltest$17
	incq	%rdx
	jmp 	Ltest$33
Ltest$34:
	incq	%rdx
Ltest$33:
	cmpq	$64, %rdx
	jb  	Ltest$34
	movq	$0, %rdx
	jmp 	Ltest$31
Ltest$32:
	addq	$4, %rdx
Ltest$31:
	cmpq	$64, %rdx
	jb  	Ltest$32
	jmp 	Ltest$29
Ltest$30:
	incq	%r11
Ltest$29:
	cmpq	$64, %r11
	jb  	Ltest$30
	movq	$0, %rdx
	jmp 	Ltest$27
Ltest$28:
	incq	%rdx
Ltest$27:
	cmpq	$4, %rdx
	jb  	Ltest$28
	movq	$0, %rdx
	jmp 	Ltest$25
Ltest$26:
	incq	%rdx
Ltest$25:
	cmpq	$64, %rdx
	jb  	Ltest$26
	movq	$0, %r11
	jmp 	Ltest$23
Ltest$24:
	incq	%r11
Ltest$23:
	cmpq	$4, %r11
	jb  	Ltest$24
	movq	$0, %rdx
	jmp 	Ltest$21
Ltest$22:
	incq	%rdx
Ltest$21:
	cmpq	$56, %rdx
	jb  	Ltest$22
	jmp 	Ltest$18
Ltest$17:
	incq	%rdx
	jmp 	Ltest$19
Ltest$20:
	incq	%rdx
Ltest$19:
	cmpq	$56, %rdx
	jb  	Ltest$20
Ltest$18:
	movq	$0, %rdx
	jmp 	Ltest$15
Ltest$16:
	addq	$4, %rdx
Ltest$15:
	cmpq	$64, %rdx
	jb  	Ltest$16
	jmp 	Ltest$13
Ltest$14:
	incq	%rbp
Ltest$13:
	cmpq	$64, %rbp
	jb  	Ltest$14
	movq	$0, %rdx
	jmp 	Ltest$11
Ltest$12:
	incq	%rdx
Ltest$11:
	cmpq	$4, %rdx
	jb  	Ltest$12
	movq	$0, %rdx
	jmp 	Ltest$9
Ltest$10:
	incq	%rdx
Ltest$9:
	cmpq	$64, %rdx
	jb  	Ltest$10
	movq	$0, %rbp
	jmp 	Ltest$7
Ltest$8:
	incq	%rbp
Ltest$7:
	cmpq	$4, %rbp
	jb  	Ltest$8
	movq	$0, %rdx
	jmp 	Ltest$5
Ltest$6:
	incq	%rdx
Ltest$5:
	cmpq	$4, %rdx
	jb  	Ltest$6
	incq	%rcx
Ltest$3:
	cmpq	$3, %rcx
	jb  	Ltest$4
	incq	%rax
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%r12, %rsp
	popq	%r12
	popq	%rbp
	ret 
