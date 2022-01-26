	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	pushq	%rbp
	pushq	%r12
	movq	%rsp, %r12
	subq	$9, %rsp
	andq	$-32, %rsp
	movq	$0, %rax
	jmp 	Ltest$105
Ltest$106:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$107
	movq	$0, %rcx
	jmp 	Ltest$116
Ltest$117:
	addq	$4, %rcx
Ltest$116:
	cmpq	$64, %rcx
	jb  	Ltest$117
	jmp 	Ltest$114
Ltest$115:
	incq	%rdx
Ltest$114:
	cmpq	$64, %rdx
	jb  	Ltest$115
	movq	$0, %rcx
	jmp 	Ltest$112
Ltest$113:
	incq	%rcx
Ltest$112:
	cmpq	$4, %rcx
	jb  	Ltest$113
	movq	$0, %rcx
	jmp 	Ltest$110
Ltest$111:
	incq	%rcx
Ltest$110:
	cmpq	$64, %rcx
	jb  	Ltest$111
	movq	$0, %rdx
	jmp 	Ltest$108
Ltest$109:
	incq	%rdx
Ltest$108:
	cmpq	$4, %rdx
	jb  	Ltest$109
	movq	$0, (%rsp)
Ltest$107:
	incq	%rax
Ltest$105:
	cmpq	$20, %rax
	jb  	Ltest$106
	movq	$0, %rax
	jmp 	Ltest$92
Ltest$93:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$94
	movq	$0, %rcx
	jmp 	Ltest$103
Ltest$104:
	addq	$4, %rcx
Ltest$103:
	cmpq	$64, %rcx
	jb  	Ltest$104
	jmp 	Ltest$101
Ltest$102:
	incq	%rsi
Ltest$101:
	cmpq	$64, %rsi
	jb  	Ltest$102
	movq	$0, %rcx
	jmp 	Ltest$99
Ltest$100:
	incq	%rcx
Ltest$99:
	cmpq	$4, %rcx
	jb  	Ltest$100
	movq	$0, %rcx
	jmp 	Ltest$97
Ltest$98:
	incq	%rcx
Ltest$97:
	cmpq	$64, %rcx
	jb  	Ltest$98
	movq	$0, %rsi
	jmp 	Ltest$95
Ltest$96:
	incq	%rsi
Ltest$95:
	cmpq	$4, %rsi
	jb  	Ltest$96
	movq	$0, (%rsp)
Ltest$94:
	incq	%rax
Ltest$92:
	cmpq	$12288, %rax
	jb  	Ltest$93
	movq	$0, %rax
	jmp 	Ltest$79
Ltest$80:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$81
	movq	$0, %rcx
	jmp 	Ltest$90
Ltest$91:
	addq	$4, %rcx
Ltest$90:
	cmpq	$64, %rcx
	jb  	Ltest$91
	jmp 	Ltest$88
Ltest$89:
	incq	%rdi
Ltest$88:
	cmpq	$64, %rdi
	jb  	Ltest$89
	movq	$0, %rcx
	jmp 	Ltest$86
Ltest$87:
	incq	%rcx
Ltest$86:
	cmpq	$4, %rcx
	jb  	Ltest$87
	movq	$0, %rcx
	jmp 	Ltest$84
Ltest$85:
	incq	%rcx
Ltest$84:
	cmpq	$64, %rcx
	jb  	Ltest$85
	movq	$0, %rdi
	jmp 	Ltest$82
Ltest$83:
	incq	%rdi
Ltest$82:
	cmpq	$4, %rdi
	jb  	Ltest$83
	movq	$0, (%rsp)
Ltest$81:
	incq	%rax
Ltest$79:
	cmpq	$12288, %rax
	jb  	Ltest$80
	movq	(%rsp), %rax
	cmpq	$56, (%rsp)
	jb  	Ltest$61
	incq	%rax
	jmp 	Ltest$77
Ltest$78:
	incq	%rax
Ltest$77:
	cmpq	$64, %rax
	jb  	Ltest$78
	movq	$0, %rax
	jmp 	Ltest$75
Ltest$76:
	addq	$4, %rax
Ltest$75:
	cmpq	$64, %rax
	jb  	Ltest$76
	jmp 	Ltest$73
Ltest$74:
	incq	%r8
Ltest$73:
	cmpq	$64, %r8
	jb  	Ltest$74
	movq	$0, %rax
	jmp 	Ltest$71
Ltest$72:
	incq	%rax
Ltest$71:
	cmpq	$4, %rax
	jb  	Ltest$72
	movq	$0, %rax
	jmp 	Ltest$69
Ltest$70:
	incq	%rax
Ltest$69:
	cmpq	$64, %rax
	jb  	Ltest$70
	movq	$0, %rax
	jmp 	Ltest$67
Ltest$68:
	incq	%rax
Ltest$67:
	cmpq	$4, %rax
	jb  	Ltest$68
	movq	$0, %rax
	jmp 	Ltest$65
Ltest$66:
	incq	%rax
Ltest$65:
	cmpq	$56, %rax
	jb  	Ltest$66
	jmp 	Ltest$62
Ltest$61:
	incq	%rax
	jmp 	Ltest$63
Ltest$64:
	incq	%rax
Ltest$63:
	cmpq	$56, %rax
	jb  	Ltest$64
Ltest$62:
	movq	$0, %rax
	jmp 	Ltest$59
Ltest$60:
	addq	$4, %rax
Ltest$59:
	cmpq	$64, %rax
	jb  	Ltest$60
	jmp 	Ltest$57
Ltest$58:
	incq	%r9
Ltest$57:
	cmpq	$64, %r9
	jb  	Ltest$58
	movq	$0, %rax
	jmp 	Ltest$55
Ltest$56:
	incq	%rax
Ltest$55:
	cmpq	$4, %rax
	jb  	Ltest$56
	movq	$0, %rax
	jmp 	Ltest$53
Ltest$54:
	incq	%rax
Ltest$53:
	cmpq	$64, %rax
	jb  	Ltest$54
	movq	$0, %rax
	jmp 	Ltest$51
Ltest$52:
	incq	%rax
Ltest$51:
	cmpq	$4, %rax
	jb  	Ltest$52
	movq	$0, %rax
	movb	$0, 8(%rsp)
	jmp 	Ltest$1
Ltest$2:
	cmpb	$0, 8(%rsp)
	jb  	Ltest$9
	movq	$0, %rcx
	jmp 	Ltest$38
Ltest$39:
	incq	(%rsp)
	cmpq	$64, (%rsp)
	jne 	Ltest$40
	movq	$0, %rdx
	jmp 	Ltest$49
Ltest$50:
	addq	$4, %rdx
Ltest$49:
	cmpq	$64, %rdx
	jb  	Ltest$50
	jmp 	Ltest$47
Ltest$48:
	incq	%r10
Ltest$47:
	cmpq	$64, %r10
	jb  	Ltest$48
	movq	$0, %rdx
	jmp 	Ltest$45
Ltest$46:
	incq	%rdx
Ltest$45:
	cmpq	$4, %rdx
	jb  	Ltest$46
	movq	$0, %rdx
	jmp 	Ltest$43
Ltest$44:
	incq	%rdx
Ltest$43:
	cmpq	$64, %rdx
	jb  	Ltest$44
	movq	$0, %r10
	jmp 	Ltest$41
Ltest$42:
	incq	%r10
Ltest$41:
	cmpq	$4, %r10
	jb  	Ltest$42
	movq	$0, (%rsp)
Ltest$40:
	incq	%rcx
Ltest$38:
	cmpq	$32, %rcx
	jb  	Ltest$39
	movq	(%rsp), %rcx
	cmpq	$56, (%rsp)
	jb  	Ltest$20
	incq	%rcx
	jmp 	Ltest$36
Ltest$37:
	incq	%rcx
Ltest$36:
	cmpq	$64, %rcx
	jb  	Ltest$37
	movq	$0, %rcx
	jmp 	Ltest$34
Ltest$35:
	addq	$4, %rcx
Ltest$34:
	cmpq	$64, %rcx
	jb  	Ltest$35
	jmp 	Ltest$32
Ltest$33:
	incq	%r11
Ltest$32:
	cmpq	$64, %r11
	jb  	Ltest$33
	movq	$0, %rcx
	jmp 	Ltest$30
Ltest$31:
	incq	%rcx
Ltest$30:
	cmpq	$4, %rcx
	jb  	Ltest$31
	movq	$0, %rcx
	jmp 	Ltest$28
Ltest$29:
	incq	%rcx
Ltest$28:
	cmpq	$64, %rcx
	jb  	Ltest$29
	movq	$0, %r11
	jmp 	Ltest$26
Ltest$27:
	incq	%r11
Ltest$26:
	cmpq	$4, %r11
	jb  	Ltest$27
	movq	$0, %rcx
	jmp 	Ltest$24
Ltest$25:
	incq	%rcx
Ltest$24:
	cmpq	$56, %rcx
	jb  	Ltest$25
	jmp 	Ltest$21
Ltest$20:
	incq	%rcx
	jmp 	Ltest$22
Ltest$23:
	incq	%rcx
Ltest$22:
	cmpq	$56, %rcx
	jb  	Ltest$23
Ltest$21:
	movq	$0, %rcx
	jmp 	Ltest$18
Ltest$19:
	addq	$4, %rcx
Ltest$18:
	cmpq	$64, %rcx
	jb  	Ltest$19
	jmp 	Ltest$16
Ltest$17:
	incq	%rbp
Ltest$16:
	cmpq	$64, %rbp
	jb  	Ltest$17
	movq	$0, %rcx
	jmp 	Ltest$14
Ltest$15:
	incq	%rcx
Ltest$14:
	cmpq	$4, %rcx
	jb  	Ltest$15
	movq	$0, %rcx
	jmp 	Ltest$12
Ltest$13:
	incq	%rcx
Ltest$12:
	cmpq	$64, %rcx
	jb  	Ltest$13
	movq	$0, %rbp
	jmp 	Ltest$10
Ltest$11:
	incq	%rbp
Ltest$10:
	cmpq	$4, %rbp
	jb  	Ltest$11
	movb	$0, 8(%rsp)
Ltest$9:
	movb	$0, %cl
	incb	8(%rsp)
	movb	$0, %dl
	cmpb	$0, %cl
	je  	Ltest$3
	cmpb	$0, %dl
	je  	Ltest$7
	incb	8(%rsp)
	jmp 	Ltest$8
Ltest$7:
	incb	8(%rsp)
	incq	%rax
Ltest$8:
	jmp 	Ltest$4
Ltest$3:
	cmpb	$0, %dl
	je  	Ltest$5
	incb	8(%rsp)
	incq	%rax
	jmp 	Ltest$6
Ltest$5:
	incb	8(%rsp)
	incq	%rax
Ltest$6:
Ltest$4:
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%r12, %rsp
	popq	%r12
	popq	%rbp
	ret 
