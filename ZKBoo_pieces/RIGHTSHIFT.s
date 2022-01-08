	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movb	$0, %al
	jmp 	Ltest$1
Ltest$2:
	incb	%al
Ltest$1:
	cmpb	$3, %al
	jb  	Ltest$2
	ret 
