	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movl	$32, %eax
	subl	%ecx, %eax
	jmp 	Ltest$1
Ltest$2:
	addl	$-1, %eax
Ltest$1:
	cmpl	$0, %eax
	jnbe	Ltest$2
	ret 
