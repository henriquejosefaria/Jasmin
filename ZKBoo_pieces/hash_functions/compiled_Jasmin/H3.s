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
	jmp 	Ltest$41
Ltest$42:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$43
	movq	$0, %rcx
	jmp 	Ltest$48
Ltest$49:
	incq	%rcx
Ltest$48:
	cmpq	$16, %rcx
	jb  	Ltest$49
	jmp 	Ltest$46
Ltest$47:
	incq	%rcx
Ltest$46:
	cmpq	$64, %rcx
	jb  	Ltest$47
	movq	$0, %rcx
	jmp 	Ltest$44
Ltest$45:
	incq	%rcx
Ltest$44:
	cmpq	$64, %rcx
	jb  	Ltest$45
	movq	$0, (%rsp)
Ltest$43:
	incq	%rax
Ltest$41:
	cmpq	$20, %rax
	jb  	Ltest$42
	movq	$0, %rax
	jmp 	Ltest$32
Ltest$33:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$34
	movq	$0, %rcx
	jmp 	Ltest$39
Ltest$40:
	incq	%rcx
Ltest$39:
	cmpq	$16, %rcx
	jb  	Ltest$40
	jmp 	Ltest$37
Ltest$38:
	incq	%rcx
Ltest$37:
	cmpq	$64, %rcx
	jb  	Ltest$38
	movq	$0, %rcx
	jmp 	Ltest$35
Ltest$36:
	incq	%rcx
Ltest$35:
	cmpq	$64, %rcx
	jb  	Ltest$36
	movq	$0, (%rsp)
Ltest$34:
	incq	%rax
Ltest$32:
	cmpq	$3072, %rax
	jb  	Ltest$33
	movq	$0, %rax
	jmp 	Ltest$23
Ltest$24:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Ltest$25
	movq	$0, %rcx
	jmp 	Ltest$30
Ltest$31:
	incq	%rcx
Ltest$30:
	cmpq	$16, %rcx
	jb  	Ltest$31
	jmp 	Ltest$28
Ltest$29:
	incq	%rcx
Ltest$28:
	cmpq	$64, %rcx
	jb  	Ltest$29
	movq	$0, %rcx
	jmp 	Ltest$26
Ltest$27:
	incq	%rcx
Ltest$26:
	cmpq	$64, %rcx
	jb  	Ltest$27
	movq	$0, (%rsp)
Ltest$25:
	incq	%rax
Ltest$23:
	cmpq	$3072, %rax
	jb  	Ltest$24
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Ltest$9
	incq	%rax
	jmp 	Ltest$21
Ltest$22:
	incq	%rax
Ltest$21:
	cmpq	$16, %rax
	jb  	Ltest$22
	movq	$0, %rax
	jmp 	Ltest$19
Ltest$20:
	incq	%rax
Ltest$19:
	cmpq	$16, %rax
	jb  	Ltest$20
	jmp 	Ltest$17
Ltest$18:
	incq	%rax
Ltest$17:
	cmpq	$64, %rax
	jb  	Ltest$18
	movq	$0, %rax
	jmp 	Ltest$15
Ltest$16:
	incq	%rax
Ltest$15:
	cmpq	$64, %rax
	jb  	Ltest$16
	movq	$0, %rax
	jmp 	Ltest$13
Ltest$14:
	incq	%rax
Ltest$13:
	cmpq	$14, %rax
	jb  	Ltest$14
	jmp 	Ltest$10
Ltest$9:
	incq	%rax
	jmp 	Ltest$11
Ltest$12:
	incq	%rax
Ltest$11:
	cmpq	$14, %rax
	jb  	Ltest$12
Ltest$10:
	movq	$0, %rax
	jmp 	Ltest$7
Ltest$8:
	incq	%rax
Ltest$7:
	cmpq	$16, %rax
	jb  	Ltest$8
	jmp 	Ltest$5
Ltest$6:
	incq	%rax
Ltest$5:
	cmpq	$64, %rax
	jb  	Ltest$6
	movq	$0, %rax
	jmp 	Ltest$3
Ltest$4:
	incq	%rax
Ltest$3:
	cmpq	$64, %rax
	jb  	Ltest$4
	movq	$0, %rax
	jmp 	Ltest$1
Ltest$2:
	incq	%rax
Ltest$1:
	cmpq	$8, %rax
	jb  	Ltest$2
	movq	%r10, %rsp
	ret 
