	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %r10
	leaq	-8(%rsp), %rsp
	andq	$-8, %rsp
	movq	$0, %rax
	jmp 	Ltest$81
Ltest$82:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$83
	movq	$0, %rcx
	jmp 	Ltest$88
Ltest$89:
	incq	%rcx
Ltest$88:
	cmpq	$16, %rcx
	jb  	Ltest$89
	jmp 	Ltest$86
Ltest$87:
	incq	%rcx
Ltest$86:
	cmpq	$64, %rcx
	jb  	Ltest$87
	movq	$0, %rcx
	jmp 	Ltest$84
Ltest$85:
	incq	%rcx
Ltest$84:
	cmpq	$64, %rcx
	jb  	Ltest$85
	movq	$0, (%rsp)
Ltest$83:
	incq	%rax
Ltest$81:
	cmpq	$20, %rax
	jb  	Ltest$82
	movq	$0, %rax
	jmp 	Ltest$72
Ltest$73:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$74
	movq	$0, %rcx
	jmp 	Ltest$79
Ltest$80:
	incq	%rcx
Ltest$79:
	cmpq	$16, %rcx
	jb  	Ltest$80
	jmp 	Ltest$77
Ltest$78:
	incq	%rcx
Ltest$77:
	cmpq	$64, %rcx
	jb  	Ltest$78
	movq	$0, %rcx
	jmp 	Ltest$75
Ltest$76:
	incq	%rcx
Ltest$75:
	cmpq	$64, %rcx
	jb  	Ltest$76
	movq	$0, (%rsp)
Ltest$74:
	incq	%rax
Ltest$72:
	cmpq	$3072, %rax
	jb  	Ltest$73
	movq	$0, %rax
	jmp 	Ltest$63
Ltest$64:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$65
	movq	$0, %rcx
	jmp 	Ltest$70
Ltest$71:
	incq	%rcx
Ltest$70:
	cmpq	$16, %rcx
	jb  	Ltest$71
	jmp 	Ltest$68
Ltest$69:
	incq	%rcx
Ltest$68:
	cmpq	$64, %rcx
	jb  	Ltest$69
	movq	$0, %rcx
	jmp 	Ltest$66
Ltest$67:
	incq	%rcx
Ltest$66:
	cmpq	$64, %rcx
	jb  	Ltest$67
	movq	$0, (%rsp)
Ltest$65:
	incq	%rax
Ltest$63:
	cmpq	$3072, %rax
	jb  	Ltest$64
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Ltest$49
	incq	%rax
	jmp 	Ltest$61
Ltest$62:
	incq	%rax
Ltest$61:
	cmpq	$16, %rax
	jb  	Ltest$62
	movq	$0, %rax
	jmp 	Ltest$59
Ltest$60:
	incq	%rax
Ltest$59:
	cmpq	$16, %rax
	jb  	Ltest$60
	jmp 	Ltest$57
Ltest$58:
	incq	%rax
Ltest$57:
	cmpq	$64, %rax
	jb  	Ltest$58
	movq	$0, %rax
	jmp 	Ltest$55
Ltest$56:
	incq	%rax
Ltest$55:
	cmpq	$64, %rax
	jb  	Ltest$56
	movq	$0, %rax
	jmp 	Ltest$53
Ltest$54:
	incq	%rax
Ltest$53:
	cmpq	$14, %rax
	jb  	Ltest$54
	jmp 	Ltest$50
Ltest$49:
	incq	%rax
	jmp 	Ltest$51
Ltest$52:
	incq	%rax
Ltest$51:
	cmpq	$14, %rax
	jb  	Ltest$52
Ltest$50:
	movq	$0, %rax
	jmp 	Ltest$47
Ltest$48:
	incq	%rax
Ltest$47:
	cmpq	$16, %rax
	jb  	Ltest$48
	jmp 	Ltest$45
Ltest$46:
	incq	%rax
Ltest$45:
	cmpq	$64, %rax
	jb  	Ltest$46
	movq	$0, %rax
	jmp 	Ltest$43
Ltest$44:
	incq	%rax
Ltest$43:
	cmpq	$64, %rax
	jb  	Ltest$44
	movq	$0, %rax
	jmp 	Ltest$41
Ltest$42:
	incq	%rax
Ltest$41:
	cmpq	$8, %rax
	jb  	Ltest$42
	movq	$0, %rax
	movl	$0, %ecx
	jmp 	Ltest$1
Ltest$2:
	cmpl	$256, %ecx
	jb  	Ltest$9
	movq	$0, %rcx
	jmp 	Ltest$32
Ltest$33:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$34
	movq	$0, %rdx
	jmp 	Ltest$39
Ltest$40:
	incq	%rdx
Ltest$39:
	cmpq	$16, %rdx
	jb  	Ltest$40
	jmp 	Ltest$37
Ltest$38:
	incq	%rdx
Ltest$37:
	cmpq	$64, %rdx
	jb  	Ltest$38
	movq	$0, %rdx
	jmp 	Ltest$35
Ltest$36:
	incq	%rdx
Ltest$35:
	cmpq	$64, %rdx
	jb  	Ltest$36
	movq	$0, (%rsp)
Ltest$34:
	incq	%rcx
Ltest$32:
	cmpq	$32, %rcx
	jb  	Ltest$33
	movq	(%rsp), %rcx
	cmpq	$14, (%rsp)
	jb  	Ltest$18
	incq	%rcx
	jmp 	Ltest$30
Ltest$31:
	incq	%rcx
Ltest$30:
	cmpq	$16, %rcx
	jb  	Ltest$31
	movq	$0, %rcx
	jmp 	Ltest$28
Ltest$29:
	incq	%rcx
Ltest$28:
	cmpq	$16, %rcx
	jb  	Ltest$29
	jmp 	Ltest$26
Ltest$27:
	incq	%rcx
Ltest$26:
	cmpq	$64, %rcx
	jb  	Ltest$27
	movq	$0, %rcx
	jmp 	Ltest$24
Ltest$25:
	incq	%rcx
Ltest$24:
	cmpq	$64, %rcx
	jb  	Ltest$25
	movq	$0, %rcx
	jmp 	Ltest$22
Ltest$23:
	incq	%rcx
Ltest$22:
	cmpq	$14, %rcx
	jb  	Ltest$23
	jmp 	Ltest$19
Ltest$18:
	incq	%rcx
	jmp 	Ltest$20
Ltest$21:
	incq	%rcx
Ltest$20:
	cmpq	$14, %rcx
	jb  	Ltest$21
Ltest$19:
	movq	$0, %rcx
	jmp 	Ltest$16
Ltest$17:
	incq	%rcx
Ltest$16:
	cmpq	$16, %rcx
	jb  	Ltest$17
	jmp 	Ltest$14
Ltest$15:
	incq	%rcx
Ltest$14:
	cmpq	$64, %rcx
	jb  	Ltest$15
	movq	$0, %rcx
	jmp 	Ltest$12
Ltest$13:
	incq	%rcx
Ltest$12:
	cmpq	$64, %rcx
	jb  	Ltest$13
	movq	$0, %rcx
	jmp 	Ltest$10
Ltest$11:
	incq	%rcx
Ltest$10:
	cmpq	$8, %rcx
	jb  	Ltest$11
	movl	$0, %ecx
Ltest$9:
	movl	$0, %edx
	incl	%ecx
	movl	$0, %esi
	cmpl	$0, %edx
	je  	Ltest$3
	cmpl	$0, %esi
	je  	Ltest$7
	incl	%ecx
	jmp 	Ltest$1
Ltest$7:
	incl	%ecx
	incq	%rax
Ltest$8:
	jmp 	Ltest$1
Ltest$3:
	cmpl	$0, %esi
	je  	Ltest$5
	incl	%ecx
	incq	%rax
	jmp 	Ltest$1
Ltest$5:
	incl	%ecx
	incq	%rax
Ltest$6:
Ltest$4:
Ltest$1:
	cmpq	$0, %rax
	jb  	Ltest$2
	movq	%r10, %rsp
	ret 
