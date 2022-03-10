	.text
	.p2align	5
	.globl	_zkboo_encrypt
	.globl	zkboo_encrypt
_zkboo_encrypt:
zkboo_encrypt:
	movq	%rsp, %rax
	leaq	-4904(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 4848(%rsp)
	movq	%rbx, 4856(%rsp)
	movq	%rbp, 4864(%rsp)
	movq	%r12, 4872(%rsp)
	movq	%r13, 4880(%rsp)
	movq	%r14, 4888(%rsp)
	movq	%r15, 4896(%rsp)
	movq	$1, 16(%rsp)
	movq	$128, %rax
	movq	%rax, 24(%rsp)
	movq	$0, %r15
	jmp 	Lzkboo_encrypt$119
Lzkboo_encrypt$120:
	movq	$0, %rax
	movl	$1732584193, 1284(%rsp)
	movl	$-271733879, 1288(%rsp)
	movl	$-1732584194, 1292(%rsp)
	movl	$271733878, 1296(%rsp)
	movl	$-1009589776, 1300(%rsp)
	movq	$0, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$685
Lzkboo_encrypt$686:
	movb	$0, 3172(%rsp,%r10)
	incq	%r10
Lzkboo_encrypt$685:
	cmpq	$192, %r10
	jb  	Lzkboo_encrypt$686
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$683
Lzkboo_encrypt$684:
	movl	$0, 2132(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$683:
	cmpq	$240, %r10
	jb  	Lzkboo_encrypt$684
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$675
Lzkboo_encrypt$676:
	movq	$48, %r10
	imulq	16(%rsp), %r10
	imulq	$16, 32(%rsp), %r11
	imulq	16(%rsp), %r11
	addq	%r11, %r10
	movq	$16, %r11
	imulq	%r15, %r11
	addq	%r11, %r10
	imulq	$64, 32(%rsp), %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$681
Lzkboo_encrypt$682:
	movb	(%rdx,%r10), %bl
	movb	%bl, 3172(%rsp,%r11)
	incq	%r11
	incq	%r10
	incq	%rbp
Lzkboo_encrypt$681:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$682
	imulq	$64, 32(%rsp), %r10
	addq	$16, %r10
	movb	$-128, 3172(%rsp,%r10)
	imulq	$64, 32(%rsp), %r10
	addq	$62, %r10
	movq	24(%rsp), %r11
	shrq	$8, %r11
	movb	%r11b, 3172(%rsp,%r10)
	incq	%r10
	movq	24(%rsp), %r11
	movb	%r11b, 3172(%rsp,%r10)
	imulq	$64, 32(%rsp), %r10
	imulq	$64, 32(%rsp), %r11
	imulq	16(%rsp), %r11
	imulq	$64, %r15, %rbp
	addq	%rbp, %r11
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$679
Lzkboo_encrypt$680:
	movb	3172(%rsp,%r10), %bpl
	movb	%bpl, (%r8,%r11)
	incq	%r11
	incq	%r10
	incq	40(%rsp)
Lzkboo_encrypt$679:
	cmpq	$64, 40(%rsp)
	jb  	Lzkboo_encrypt$680
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$677
Lzkboo_encrypt$678:
	imulq	$64, 32(%rsp), %r10
	imulq	$4, 40(%rsp), %r11
	addq	%r11, %r10
	movb	3172(%rsp,%r10), %r11b
	movb	%r11b, 1107(%rsp)
	incq	%r10
	movb	3172(%rsp,%r10), %r11b
	movb	%r11b, 1106(%rsp)
	incq	%r10
	movb	3172(%rsp,%r10), %r11b
	movb	%r11b, 1105(%rsp)
	incq	%r10
	movb	3172(%rsp,%r10), %r10b
	movb	%r10b, 1104(%rsp)
	movl	1104(%rsp), %r10d
	movq	32(%rsp), %r11
	imulq	$80, %r11, %r11
	addq	40(%rsp), %r11
	movl	%r10d, 2132(%rsp,%r11,4)
	incq	40(%rsp)
Lzkboo_encrypt$677:
	cmpq	$16, 40(%rsp)
	jb  	Lzkboo_encrypt$678
	incq	32(%rsp)
Lzkboo_encrypt$675:
	cmpq	$3, 32(%rsp)
	jb  	Lzkboo_encrypt$676
	movq	$16, 32(%rsp)
	jmp 	Lzkboo_encrypt$667
Lzkboo_encrypt$668:
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$669
Lzkboo_encrypt$670:
	movq	40(%rsp), %r10
	imulq	$80, %r10, %r10
	addq	32(%rsp), %r10
	movl	2120(%rsp,%r10,4), %r11d
	movl	2100(%rsp,%r10,4), %ebp
	movl	%r11d, 1152(%rsp)
	xorl	%ebp, 1152(%rsp)
	movl	2076(%rsp,%r10,4), %r11d
	xorl	%r11d, 1152(%rsp)
	movl	2068(%rsp,%r10,4), %r11d
	xorl	%r11d, 1152(%rsp)
	movq	$1, %r11
	movl	1152(%rsp), %ebp
	movq	%r11, %rbx
	jmp 	Lzkboo_encrypt$673
Lzkboo_encrypt$674:
	shll	$1, %ebp
	addq	$-1, %rbx
Lzkboo_encrypt$673:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$674
	movq	$32, %rbx
	subq	%r11, %rbx
	movl	1152(%rsp), %r11d
	jmp 	Lzkboo_encrypt$671
Lzkboo_encrypt$672:
	shrl	$1, %r11d
	addq	$-1, %rbx
Lzkboo_encrypt$671:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$672
	orl 	%r11d, %ebp
	movl	%ebp, 2132(%rsp,%r10,4)
	incq	40(%rsp)
Lzkboo_encrypt$669:
	cmpq	$3, 40(%rsp)
	jb  	Lzkboo_encrypt$670
	incq	32(%rsp)
Lzkboo_encrypt$667:
	cmpq	$80, 32(%rsp)
	jb  	Lzkboo_encrypt$668
	movl	1284(%rsp), %r10d
	movl	%r10d, 1164(%rsp)
	movl	%r10d, 1168(%rsp)
	movl	%r10d, 1172(%rsp)
	movl	1288(%rsp), %r10d
	movl	%r10d, 1176(%rsp)
	movl	%r10d, 1180(%rsp)
	movl	%r10d, 1184(%rsp)
	movl	1292(%rsp), %r10d
	movl	%r10d, 1188(%rsp)
	movl	%r10d, 1192(%rsp)
	movl	%r10d, 1196(%rsp)
	movl	1296(%rsp), %r10d
	movl	%r10d, 1200(%rsp)
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	1300(%rsp), %r10d
	movl	%r10d, 1212(%rsp)
	movl	%r10d, 1216(%rsp)
	movl	%r10d, 1220(%rsp)
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$483
Lzkboo_encrypt$484:
	cmpq	$19, 32(%rsp)
	jnbe	Lzkboo_encrypt$662
	movl	1188(%rsp), %r10d
	xorl	1200(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1192(%rsp), %r10d
	xorl	1204(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1196(%rsp), %r10d
	xorl	1208(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	1224(%rsp), %r10d
	movl	1228(%rsp), %ebp
	movl	1232(%rsp), %r11d
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$665
Lzkboo_encrypt$666:
	imulq	$1472, %rbx, %r12
	imulq	16(%rsp), %r12
	imulq	$1472, %r15, %r13
	addq	%r13, %r12
	addq	%rcx, %r12
	movl	(%rsi,%r12), %r12d
	movl	%r12d, 1236(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$665:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$666
	addq	$4, %rcx
	movl	1176(%rsp), %ebx
	movl	%ebp, %r12d
	andl	%r12d, %ebx
	movl	1180(%rsp), %r12d
	movl	%r10d, %r13d
	andl	%r13d, %r12d
	movl	1176(%rsp), %r13d
	movl	%r10d, %r14d
	andl	%r14d, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1236(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	1240(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	%ebx, 1224(%rsp)
	movl	1180(%rsp), %ebx
	movl	%r11d, %r12d
	andl	%r12d, %ebx
	movl	1184(%rsp), %r12d
	movl	%ebp, %r13d
	andl	%r13d, %r12d
	movl	1180(%rsp), %r13d
	andl	%ebp, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1240(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	1244(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 1228(%rsp)
	movl	1184(%rsp), %ebp
	andl	%r10d, %ebp
	movl	1176(%rsp), %r10d
	movl	%r11d, %ebx
	andl	%ebx, %r10d
	movl	1184(%rsp), %ebx
	andl	%r11d, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	movl	1244(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	1236(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	%ebp, 1232(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$663
Lzkboo_encrypt$664:
	imulq	$3, 16(%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1224(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$663:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$664
	addq	$4, %rax
	movl	1200(%rsp), %r10d
	xorl	1224(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1204(%rsp), %r10d
	xorl	1228(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1208(%rsp), %r10d
	xorl	1232(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	$1518500249, 1096(%rsp)
Lzkboo_encrypt$662:
	cmpq	$19, 32(%rsp)
	jbe 	Lzkboo_encrypt$653
	cmpq	$39, 32(%rsp)
	jnbe	Lzkboo_encrypt$661
	movl	1176(%rsp), %r10d
	xorl	1188(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1180(%rsp), %r10d
	xorl	1192(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1184(%rsp), %r10d
	xorl	1196(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	1200(%rsp), %r10d
	xorl	1224(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1204(%rsp), %r10d
	xorl	1228(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1208(%rsp), %r10d
	xorl	1232(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	$1859775393, 1096(%rsp)
Lzkboo_encrypt$661:
	cmpq	$39, 32(%rsp)
	jbe 	Lzkboo_encrypt$653
	cmpq	$59, 32(%rsp)
	jnbe	Lzkboo_encrypt$656
	movl	$0, 1236(%rsp)
	movl	$0, 1240(%rsp)
	movl	$0, 1244(%rsp)
	movl	$0, 1248(%rsp)
	movl	$0, 1252(%rsp)
	movl	$0, 1256(%rsp)
	movl	1176(%rsp), %r10d
	xorl	1188(%rsp), %r10d
	movl	%r10d, 1236(%rsp)
	movl	1180(%rsp), %r10d
	xorl	1192(%rsp), %r10d
	movl	%r10d, 1240(%rsp)
	movl	1184(%rsp), %r10d
	xorl	1196(%rsp), %r10d
	movl	%r10d, 1244(%rsp)
	movl	1176(%rsp), %r10d
	xorl	1200(%rsp), %r10d
	movl	%r10d, 1248(%rsp)
	movl	1180(%rsp), %r10d
	xorl	1204(%rsp), %r10d
	movl	%r10d, 1252(%rsp)
	movl	1184(%rsp), %r10d
	xorl	1208(%rsp), %r10d
	movl	%r10d, 1256(%rsp)
	movl	1248(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1252(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1256(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	1248(%rsp), %r10d
	movl	1252(%rsp), %ebp
	movl	1256(%rsp), %r11d
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$659
Lzkboo_encrypt$660:
	imulq	$1472, %rbx, %r12
	imulq	16(%rsp), %r12
	imulq	$1472, %r15, %r13
	addq	%r13, %r12
	addq	%rcx, %r12
	movl	(%rsi,%r12), %r12d
	movl	%r12d, 1248(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$659:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$660
	addq	$4, %rcx
	movl	1236(%rsp), %ebx
	movl	%ebp, %r12d
	andl	%r12d, %ebx
	movl	1240(%rsp), %r12d
	movl	%r10d, %r13d
	andl	%r13d, %r12d
	movl	1236(%rsp), %r13d
	movl	%r10d, %r14d
	andl	%r14d, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1248(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	1252(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	%ebx, 1224(%rsp)
	movl	1240(%rsp), %ebx
	movl	%r11d, %r12d
	andl	%r12d, %ebx
	movl	1244(%rsp), %r12d
	movl	%ebp, %r13d
	andl	%r13d, %r12d
	movl	1240(%rsp), %r13d
	andl	%ebp, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1252(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	1256(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 1228(%rsp)
	movl	1244(%rsp), %ebp
	andl	%r10d, %ebp
	movl	1236(%rsp), %r10d
	movl	%r11d, %ebx
	andl	%ebx, %r10d
	movl	1244(%rsp), %ebx
	andl	%r11d, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	movl	1256(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	1248(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	%ebp, 1232(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$657
Lzkboo_encrypt$658:
	imulq	$3, 16(%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1224(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$657:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$658
	addq	$4, %rax
	movl	1224(%rsp), %r10d
	xorl	1176(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1228(%rsp), %r10d
	xorl	1180(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1232(%rsp), %r10d
	xorl	1184(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	$-1894007588, 1096(%rsp)
Lzkboo_encrypt$656:
	cmpq	$59, 32(%rsp)
	jbe 	Lzkboo_encrypt$653
	movl	1176(%rsp), %r10d
	xorl	1188(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1180(%rsp), %r10d
	xorl	1192(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1184(%rsp), %r10d
	xorl	1196(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	1200(%rsp), %r10d
	xorl	1224(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	movl	1204(%rsp), %r10d
	xorl	1228(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1208(%rsp), %r10d
	xorl	1232(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	$-899497514, 1096(%rsp)
Lzkboo_encrypt$655:
Lzkboo_encrypt$654:
Lzkboo_encrypt$653:
	movl	1164(%rsp), %r10d
	movl	1164(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1152(%rsp)
	movl	1168(%rsp), %r10d
	movl	1168(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1156(%rsp)
	movl	1172(%rsp), %r10d
	movl	1172(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1160(%rsp)
	movl	$0, 1248(%rsp)
	movl	$0, 1252(%rsp)
	movl	$0, 1256(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$651
Lzkboo_encrypt$652:
	imulq	$1472, 16(%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1236(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$651:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$652
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$613
Lzkboo_encrypt$614:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$645
Lzkboo_encrypt$646:
	movl	1224(%rsp,%rbp,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$649
Lzkboo_encrypt$650:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$649:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$650
	andl	$1, %ebx
	movl	%ebx, 1272(%rsp,%rbp,4)
	movl	1152(%rsp,%rbp,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$647
Lzkboo_encrypt$648:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$647:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$648
	andl	$1, %ebx
	movl	%ebx, 1260(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$645:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$646
	movl	1272(%rsp), %ebp
	andl	1264(%rsp), %ebp
	movl	1276(%rsp), %ebx
	movl	1260(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1240(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$643
Lzkboo_encrypt$644:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$643:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$644
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$641
Lzkboo_encrypt$642:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$641:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$642
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1236(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$639
Lzkboo_encrypt$640:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$639:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$640
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$637
Lzkboo_encrypt$638:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$637:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$638
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$635
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$636
Lzkboo_encrypt$635:
	orl 	%r13d, %ebx
Lzkboo_encrypt$636:
	movl	%ebx, 1248(%rsp)
	movl	1276(%rsp), %ebp
	andl	1268(%rsp), %ebp
	movl	1280(%rsp), %ebx
	movl	1264(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1244(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$633
Lzkboo_encrypt$634:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$633:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$634
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$631
Lzkboo_encrypt$632:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$631:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$632
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1240(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$629
Lzkboo_encrypt$630:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$629:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$630
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$627
Lzkboo_encrypt$628:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$627:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$628
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$625
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$626
Lzkboo_encrypt$625:
	orl 	%r13d, %ebx
Lzkboo_encrypt$626:
	movl	%ebx, 1252(%rsp)
	movl	1280(%rsp), %ebp
	andl	1260(%rsp), %ebp
	movl	1272(%rsp), %ebx
	movl	1268(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1236(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$623
Lzkboo_encrypt$624:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$623:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$624
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$621
Lzkboo_encrypt$622:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$621:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$622
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1244(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$619
Lzkboo_encrypt$620:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$619:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$620
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$617
Lzkboo_encrypt$618:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$617:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$618
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$615
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$616
Lzkboo_encrypt$615:
	orl 	%r12d, %ebx
Lzkboo_encrypt$616:
	movl	%ebx, 1256(%rsp)
	incq	%r10
Lzkboo_encrypt$613:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$614
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$611
Lzkboo_encrypt$612:
	movl	1224(%rsp,%r10,4), %r11d
	movl	1152(%rsp,%r10,4), %ebp
	movl	1248(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1152(%rsp,%r10,4)
	imulq	$64, 16(%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, 16(%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1248(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$611:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$612
	addq	$4, %rax
	movl	$0, 1248(%rsp)
	movl	$0, 1252(%rsp)
	movl	$0, 1256(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$609
Lzkboo_encrypt$610:
	imulq	$1472, 16(%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1272(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$609:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$610
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$571
Lzkboo_encrypt$572:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$603
Lzkboo_encrypt$604:
	movl	1212(%rsp,%rbp,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$607
Lzkboo_encrypt$608:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$607:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$608
	andl	$1, %ebx
	movl	%ebx, 1236(%rsp,%rbp,4)
	movl	1152(%rsp,%rbp,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$605
Lzkboo_encrypt$606:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$605:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$606
	andl	$1, %ebx
	movl	%ebx, 1260(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$603:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$604
	movl	1236(%rsp), %ebp
	andl	1264(%rsp), %ebp
	movl	1240(%rsp), %ebx
	movl	1260(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$601
Lzkboo_encrypt$602:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$601:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$602
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$599
Lzkboo_encrypt$600:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$599:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$600
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1272(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$597
Lzkboo_encrypt$598:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$597:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$598
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$595
Lzkboo_encrypt$596:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$595:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$596
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$593
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$594
Lzkboo_encrypt$593:
	orl 	%r13d, %ebx
Lzkboo_encrypt$594:
	movl	%ebx, 1248(%rsp)
	movl	1240(%rsp), %ebp
	andl	1268(%rsp), %ebp
	movl	1244(%rsp), %ebx
	movl	1264(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$591
Lzkboo_encrypt$592:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$591:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$592
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$589
Lzkboo_encrypt$590:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$589:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$590
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$587
Lzkboo_encrypt$588:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$587:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$588
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$585
Lzkboo_encrypt$586:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$585:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$586
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$583
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$584
Lzkboo_encrypt$583:
	orl 	%r13d, %ebx
Lzkboo_encrypt$584:
	movl	%ebx, 1252(%rsp)
	movl	1244(%rsp), %ebp
	andl	1260(%rsp), %ebp
	movl	1236(%rsp), %ebx
	movl	1268(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1272(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$581
Lzkboo_encrypt$582:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$581:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$582
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$579
Lzkboo_encrypt$580:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$579:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$580
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$577
Lzkboo_encrypt$578:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$577:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$578
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$575
Lzkboo_encrypt$576:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$575:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$576
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$573
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$574
Lzkboo_encrypt$573:
	orl 	%r12d, %ebx
Lzkboo_encrypt$574:
	movl	%ebx, 1256(%rsp)
	incq	%r10
Lzkboo_encrypt$571:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$572
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$569
Lzkboo_encrypt$570:
	movl	1212(%rsp,%r10,4), %r11d
	movl	1152(%rsp,%r10,4), %ebp
	movl	1248(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1152(%rsp,%r10,4)
	imulq	$64, 16(%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, 16(%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1248(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$569:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$570
	addq	$4, %rax
	movl	$0, 1248(%rsp)
	movl	$0, 1252(%rsp)
	movl	$0, 1256(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$567
Lzkboo_encrypt$568:
	imulq	$1472, %r10, %r11
	imulq	16(%rsp), %r11
	imulq	$1472, %r15, %rbp
	addq	%rbp, %r11
	addq	%rcx, %r11
	movl	(%rsi,%r11), %r11d
	movl	%r11d, 1236(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$567:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$568
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$529
Lzkboo_encrypt$530:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$561
Lzkboo_encrypt$562:
	movl	1152(%rsp,%rbp,4), %r12d
	movl	1248(%rsp,%rbp,4), %r13d
	movl	1096(%rsp), %ebx
	xorl	%r13d, %r12d
	xorl	%r13d, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$565
Lzkboo_encrypt$566:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$565:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$566
	andl	$1, %r12d
	movl	%r12d, 1272(%rsp,%rbp,4)
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$563
Lzkboo_encrypt$564:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$563:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$564
	andl	$1, %ebx
	movl	%ebx, 1260(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$561:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$562
	movq	$1, %rbp
	movq	$0, %r12
	movl	1236(%rsp,%rbp,4), %ebp
	movl	1248(%rsp,%r12,4), %ebx
	movl	1236(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$559
Lzkboo_encrypt$560:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$559:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$560
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$557
Lzkboo_encrypt$558:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$557:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$558
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$555
Lzkboo_encrypt$556:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$555:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$556
	andl	$1, %r12d
	movl	1272(%rsp), %r13d
	andl	1264(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1276(%rsp), %ebp
	andl	1260(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1272(%rsp), %ebp
	andl	1260(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r11, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$553
Lzkboo_encrypt$554:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$553:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$554
	movl	1248(%rsp,%rbp,4), %ebx
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$551
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$552
Lzkboo_encrypt$551:
	orl 	%r12d, %ebx
Lzkboo_encrypt$552:
	movl	%ebx, 1248(%rsp,%rbp,4)
	movq	$2, %rbp
	movq	$1, %r12
	movl	1236(%rsp,%rbp,4), %ebp
	movl	1248(%rsp,%r12,4), %ebx
	movl	1236(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$549
Lzkboo_encrypt$550:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$549:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$550
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$547
Lzkboo_encrypt$548:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$547:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$548
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$545
Lzkboo_encrypt$546:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$545:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$546
	andl	$1, %r12d
	movl	1276(%rsp), %r13d
	andl	1268(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1280(%rsp), %ebp
	andl	1264(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1276(%rsp), %ebp
	andl	1264(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r11, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$543
Lzkboo_encrypt$544:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$543:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$544
	movl	1248(%rsp,%rbp,4), %ebx
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$541
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$542
Lzkboo_encrypt$541:
	orl 	%r12d, %ebx
Lzkboo_encrypt$542:
	movl	%ebx, 1248(%rsp,%rbp,4)
	movq	$0, %rbp
	movq	$2, %r12
	movl	1236(%rsp,%rbp,4), %ebp
	movl	1248(%rsp,%r12,4), %ebx
	movl	1236(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$539
Lzkboo_encrypt$540:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$539:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$540
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$537
Lzkboo_encrypt$538:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$537:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$538
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$535
Lzkboo_encrypt$536:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$535:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$536
	andl	$1, %r12d
	movl	1280(%rsp), %r13d
	andl	1260(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1272(%rsp), %ebp
	andl	1268(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1280(%rsp), %ebp
	andl	1268(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movl	$1, %ebx
	jmp 	Lzkboo_encrypt$533
Lzkboo_encrypt$534:
	shll	$1, %ebx
	addq	$-1, %r11
Lzkboo_encrypt$533:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$534
	movl	1248(%rsp,%rbp,4), %r11d
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$531
	xorl	$-1, %ebx
	andl	%ebx, %r11d
	jmp 	Lzkboo_encrypt$532
Lzkboo_encrypt$531:
	orl 	%ebx, %r11d
Lzkboo_encrypt$532:
	movl	%r11d, 1248(%rsp,%rbp,4)
	incq	%r10
Lzkboo_encrypt$529:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$530
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$527
Lzkboo_encrypt$528:
	imulq	$3, 16(%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1152(%rsp,%r10,4), %ebp
	movl	1248(%rsp,%r10,4), %ebx
	xorl	%ebx, %ebp
	xorl	1096(%rsp), %ebp
	movl	%ebp, 1152(%rsp,%r10,4)
	movl	1248(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$527:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$528
	addq	$4, %rax
	movl	$0, 1248(%rsp)
	movl	$0, 1252(%rsp)
	movl	$0, 1256(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$525
Lzkboo_encrypt$526:
	imulq	$1472, %r10, %r11
	imulq	16(%rsp), %r11
	imulq	$1472, %r15, %rbp
	addq	%rbp, %r11
	addq	%rcx, %r11
	movl	(%rsi,%r11), %r11d
	movl	%r11d, 1236(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$525:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$526
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$487
Lzkboo_encrypt$488:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$519
Lzkboo_encrypt$520:
	imulq	$80, %rbp, %rbx
	addq	32(%rsp), %rbx
	movl	2132(%rsp,%rbx,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$523
Lzkboo_encrypt$524:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$523:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$524
	andl	$1, %ebx
	movl	%ebx, 1260(%rsp,%rbp,4)
	movl	1152(%rsp,%rbp,4), %ebx
	xorl	1248(%rsp,%rbp,4), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$521
Lzkboo_encrypt$522:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$521:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$522
	andl	$1, %ebx
	movl	%ebx, 1272(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$519:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$520
	movl	1260(%rsp), %ebp
	andl	1276(%rsp), %ebp
	movl	1264(%rsp), %ebx
	movl	1272(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1240(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$517
Lzkboo_encrypt$518:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$517:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$518
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$515
Lzkboo_encrypt$516:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$515:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$516
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1236(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$513
Lzkboo_encrypt$514:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$513:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$514
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1248(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$511
Lzkboo_encrypt$512:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$511:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$512
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$509
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$510
Lzkboo_encrypt$509:
	orl 	%r13d, %ebx
Lzkboo_encrypt$510:
	movl	%ebx, 1248(%rsp)
	movl	1264(%rsp), %ebp
	andl	1280(%rsp), %ebp
	movl	1268(%rsp), %ebx
	movl	1276(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1244(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$507
Lzkboo_encrypt$508:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$507:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$508
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$505
Lzkboo_encrypt$506:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$505:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$506
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1240(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$503
Lzkboo_encrypt$504:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$503:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$504
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1252(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$501
Lzkboo_encrypt$502:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$501:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$502
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$499
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$500
Lzkboo_encrypt$499:
	orl 	%r13d, %ebx
Lzkboo_encrypt$500:
	movl	%ebx, 1252(%rsp)
	movl	1268(%rsp), %ebp
	andl	1272(%rsp), %ebp
	movl	1260(%rsp), %ebx
	movl	1280(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1236(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$497
Lzkboo_encrypt$498:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$497:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$498
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$495
Lzkboo_encrypt$496:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$495:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$496
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1244(%rsp), %ebx
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$493
Lzkboo_encrypt$494:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$493:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$494
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1256(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$491
Lzkboo_encrypt$492:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$491:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$492
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$489
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$490
Lzkboo_encrypt$489:
	orl 	%r12d, %ebx
Lzkboo_encrypt$490:
	movl	%ebx, 1256(%rsp)
	incq	%r10
Lzkboo_encrypt$487:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$488
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$485
Lzkboo_encrypt$486:
	imulq	$80, %r10, %r11
	addq	32(%rsp), %r11
	movl	2132(%rsp,%r11,4), %r11d
	movl	1152(%rsp,%r10,4), %ebp
	movl	1248(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1152(%rsp,%r10,4)
	imulq	$64, 16(%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, 16(%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1248(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$485:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$486
	addq	$4, %rax
	movl	1200(%rsp), %r10d
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1216(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1220(%rsp)
	movl	1188(%rsp), %r10d
	movl	%r10d, 1200(%rsp)
	movl	1192(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	1196(%rsp), %r10d
	movl	%r10d, 1208(%rsp)
	movl	1176(%rsp), %r10d
	movl	1176(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1188(%rsp)
	movl	1180(%rsp), %r10d
	movl	1180(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1192(%rsp)
	movl	1184(%rsp), %r10d
	movl	1184(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1196(%rsp)
	movl	1164(%rsp), %r10d
	movl	%r10d, 1176(%rsp)
	movl	1168(%rsp), %r10d
	movl	%r10d, 1180(%rsp)
	movl	1172(%rsp), %r10d
	movl	%r10d, 1184(%rsp)
	movl	1152(%rsp), %r10d
	movl	%r10d, 1164(%rsp)
	movl	1156(%rsp), %r10d
	movl	%r10d, 1168(%rsp)
	movl	1160(%rsp), %r10d
	movl	%r10d, 1172(%rsp)
	incq	32(%rsp)
Lzkboo_encrypt$483:
	cmpq	$80, 32(%rsp)
	jb  	Lzkboo_encrypt$484
	movl	1284(%rsp), %r10d
	movl	%r10d, 1400(%rsp)
	movl	%r10d, 1404(%rsp)
	movl	%r10d, 1408(%rsp)
	movl	1288(%rsp), %r10d
	movl	%r10d, 1412(%rsp)
	movl	%r10d, 1416(%rsp)
	movl	%r10d, 1420(%rsp)
	movl	1292(%rsp), %r10d
	movl	%r10d, 1424(%rsp)
	movl	%r10d, 1428(%rsp)
	movl	%r10d, 1432(%rsp)
	movl	1296(%rsp), %r10d
	movl	%r10d, 1436(%rsp)
	movl	%r10d, 1440(%rsp)
	movl	%r10d, 1444(%rsp)
	movl	1300(%rsp), %r10d
	movl	%r10d, 1448(%rsp)
	movl	%r10d, 1452(%rsp)
	movl	%r10d, 1456(%rsp)
	movq	$0, %r10
	movl	$0, 1152(%rsp)
	movl	$0, 1156(%rsp)
	movl	$0, 1160(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$481
Lzkboo_encrypt$482:
	imulq	$1472, %r11, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1472, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1224(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$481:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$482
	addq	$4, %rcx
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$443
Lzkboo_encrypt$444:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$475
Lzkboo_encrypt$476:
	movq	%rbx, %r12
	addq	%r10, %r12
	movl	1400(%rsp,%r12,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$479
Lzkboo_encrypt$480:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$479:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$480
	andl	$1, %r12d
	movl	%r12d, 1260(%rsp,%rbx,4)
	movl	1164(%rsp,%rbx,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$477
Lzkboo_encrypt$478:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$477:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$478
	andl	$1, %r12d
	movl	%r12d, 1248(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$475:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$476
	movl	1260(%rsp), %ebx
	andl	1252(%rsp), %ebx
	movl	1264(%rsp), %r12d
	movl	1248(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1228(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$473
Lzkboo_encrypt$474:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$473:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$474
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$471
Lzkboo_encrypt$472:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$471:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$472
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1224(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$469
Lzkboo_encrypt$470:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$469:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$470
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$467
Lzkboo_encrypt$468:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$467:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$468
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$465
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$466
Lzkboo_encrypt$465:
	orl 	%r14d, %r12d
Lzkboo_encrypt$466:
	movl	%r12d, 1152(%rsp)
	movl	1264(%rsp), %ebx
	andl	1256(%rsp), %ebx
	movl	1268(%rsp), %r12d
	movl	1252(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1232(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$463
Lzkboo_encrypt$464:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$463:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$464
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$461
Lzkboo_encrypt$462:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$461:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$462
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1228(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$459
Lzkboo_encrypt$460:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$459:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$460
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$457
Lzkboo_encrypt$458:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$457:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$458
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$455
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$456
Lzkboo_encrypt$455:
	orl 	%r14d, %r12d
Lzkboo_encrypt$456:
	movl	%r12d, 1156(%rsp)
	movl	1268(%rsp), %ebx
	andl	1248(%rsp), %ebx
	movl	1260(%rsp), %r12d
	movl	1256(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1224(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$453
Lzkboo_encrypt$454:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$453:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$454
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$451
Lzkboo_encrypt$452:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$451:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$452
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1232(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$449
Lzkboo_encrypt$450:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$449:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$450
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$447
Lzkboo_encrypt$448:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo_encrypt$447:
	cmpq	$0, %rbp
	jnbe	Lzkboo_encrypt$448
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$445
	xorl	$-1, %r13d
	andl	%r13d, %r12d
	jmp 	Lzkboo_encrypt$446
Lzkboo_encrypt$445:
	orl 	%r13d, %r12d
Lzkboo_encrypt$446:
	movl	%r12d, 1160(%rsp)
	incq	%r11
Lzkboo_encrypt$443:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$444
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$441
Lzkboo_encrypt$442:
	movq	%r11, %rbp
	addq	%r10, %rbp
	movl	1400(%rsp,%rbp,4), %ebx
	movl	1164(%rsp,%r11,4), %r12d
	movl	1152(%rsp,%r11,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	%ebx, 1400(%rsp,%rbp,4)
	imulq	$64, 16(%rsp), %rbp
	imulq	$3, %rbp, %rbp
	imulq	$1480, 16(%rsp), %rbx
	imulq	%r11, %rbx
	addq	%rbx, %rbp
	imulq	$1480, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rax, %rbp
	movl	1152(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$441:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$442
	addq	$4, %rax
	movq	$3, %r10
	movl	$0, 1152(%rsp)
	movl	$0, 1156(%rsp)
	movl	$0, 1160(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$439
Lzkboo_encrypt$440:
	imulq	$1472, %r11, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1472, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1164(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$439:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$440
	addq	$4, %rcx
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$401
Lzkboo_encrypt$402:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$433
Lzkboo_encrypt$434:
	movq	%rbx, %r12
	addq	%r10, %r12
	movl	1400(%rsp,%r12,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$437
Lzkboo_encrypt$438:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$437:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$438
	andl	$1, %r12d
	movl	%r12d, 1248(%rsp,%rbx,4)
	movl	1176(%rsp,%rbx,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$435
Lzkboo_encrypt$436:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$435:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$436
	andl	$1, %r12d
	movl	%r12d, 1260(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$433:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$434
	movl	1248(%rsp), %ebx
	andl	1264(%rsp), %ebx
	movl	1252(%rsp), %r12d
	movl	1260(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1168(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$431
Lzkboo_encrypt$432:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$431:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$432
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$429
Lzkboo_encrypt$430:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$429:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$430
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1164(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$427
Lzkboo_encrypt$428:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$427:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$428
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$425
Lzkboo_encrypt$426:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$425:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$426
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$423
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$424
Lzkboo_encrypt$423:
	orl 	%r14d, %r12d
Lzkboo_encrypt$424:
	movl	%r12d, 1152(%rsp)
	movl	1252(%rsp), %ebx
	andl	1268(%rsp), %ebx
	movl	1256(%rsp), %r12d
	movl	1264(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1172(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$421
Lzkboo_encrypt$422:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$421:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$422
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$419
Lzkboo_encrypt$420:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$419:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$420
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1168(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$417
Lzkboo_encrypt$418:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$417:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$418
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$415
Lzkboo_encrypt$416:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$415:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$416
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$413
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$414
Lzkboo_encrypt$413:
	orl 	%r14d, %r12d
Lzkboo_encrypt$414:
	movl	%r12d, 1156(%rsp)
	movl	1256(%rsp), %ebx
	andl	1260(%rsp), %ebx
	movl	1248(%rsp), %r12d
	movl	1268(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1164(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$411
Lzkboo_encrypt$412:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$411:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$412
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$409
Lzkboo_encrypt$410:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$409:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$410
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1172(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$407
Lzkboo_encrypt$408:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$407:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$408
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$405
Lzkboo_encrypt$406:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo_encrypt$405:
	cmpq	$0, %rbp
	jnbe	Lzkboo_encrypt$406
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$403
	xorl	$-1, %r13d
	andl	%r13d, %r12d
	jmp 	Lzkboo_encrypt$404
Lzkboo_encrypt$403:
	orl 	%r13d, %r12d
Lzkboo_encrypt$404:
	movl	%r12d, 1160(%rsp)
	incq	%r11
Lzkboo_encrypt$401:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$402
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$399
Lzkboo_encrypt$400:
	movq	%r11, %rbp
	addq	%r10, %rbp
	movl	1400(%rsp,%rbp,4), %ebx
	movl	1176(%rsp,%r11,4), %r12d
	movl	1152(%rsp,%r11,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	%ebx, 1400(%rsp,%rbp,4)
	imulq	$64, 16(%rsp), %rbp
	imulq	$3, %rbp, %rbp
	imulq	$1480, 16(%rsp), %rbx
	imulq	%r11, %rbx
	addq	%rbx, %rbp
	imulq	$1480, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rax, %rbp
	movl	1152(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$399:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$400
	addq	$4, %rax
	movq	$6, %r10
	movl	$0, 1152(%rsp)
	movl	$0, 1156(%rsp)
	movl	$0, 1160(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$397
Lzkboo_encrypt$398:
	imulq	$1472, %r11, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1472, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1176(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$397:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$398
	addq	$4, %rcx
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$359
Lzkboo_encrypt$360:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$391
Lzkboo_encrypt$392:
	movq	%rbx, %r12
	addq	%r10, %r12
	movl	1400(%rsp,%r12,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$395
Lzkboo_encrypt$396:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$395:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$396
	andl	$1, %r12d
	movl	%r12d, 1260(%rsp,%rbx,4)
	movl	1188(%rsp,%rbx,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$393
Lzkboo_encrypt$394:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$393:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$394
	andl	$1, %r12d
	movl	%r12d, 1248(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$391:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$392
	movl	1260(%rsp), %ebx
	andl	1252(%rsp), %ebx
	movl	1264(%rsp), %r12d
	movl	1248(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1180(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$389
Lzkboo_encrypt$390:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$389:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$390
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$387
Lzkboo_encrypt$388:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$387:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$388
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1176(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$385
Lzkboo_encrypt$386:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$385:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$386
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$383
Lzkboo_encrypt$384:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$383:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$384
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$381
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$382
Lzkboo_encrypt$381:
	orl 	%r14d, %r12d
Lzkboo_encrypt$382:
	movl	%r12d, 1152(%rsp)
	movl	1264(%rsp), %ebx
	andl	1256(%rsp), %ebx
	movl	1268(%rsp), %r12d
	movl	1252(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1184(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$379
Lzkboo_encrypt$380:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$379:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$380
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$377
Lzkboo_encrypt$378:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$377:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$378
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1180(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$375
Lzkboo_encrypt$376:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$375:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$376
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$373
Lzkboo_encrypt$374:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$373:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$374
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$371
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$372
Lzkboo_encrypt$371:
	orl 	%r14d, %r12d
Lzkboo_encrypt$372:
	movl	%r12d, 1156(%rsp)
	movl	1268(%rsp), %ebx
	andl	1248(%rsp), %ebx
	movl	1260(%rsp), %r12d
	movl	1256(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1176(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$369
Lzkboo_encrypt$370:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$369:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$370
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$367
Lzkboo_encrypt$368:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$367:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$368
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1184(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$365
Lzkboo_encrypt$366:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$365:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$366
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$363
Lzkboo_encrypt$364:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo_encrypt$363:
	cmpq	$0, %rbp
	jnbe	Lzkboo_encrypt$364
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$361
	xorl	$-1, %r13d
	andl	%r13d, %r12d
	jmp 	Lzkboo_encrypt$362
Lzkboo_encrypt$361:
	orl 	%r13d, %r12d
Lzkboo_encrypt$362:
	movl	%r12d, 1160(%rsp)
	incq	%r11
Lzkboo_encrypt$359:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$360
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$357
Lzkboo_encrypt$358:
	movq	%r11, %rbp
	addq	%r10, %rbp
	movl	1400(%rsp,%rbp,4), %ebx
	movl	1188(%rsp,%r11,4), %r12d
	movl	1152(%rsp,%r11,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	%ebx, 1400(%rsp,%rbp,4)
	imulq	$64, 16(%rsp), %rbp
	imulq	$3, %rbp, %rbp
	imulq	$1480, 16(%rsp), %rbx
	imulq	%r11, %rbx
	addq	%rbx, %rbp
	imulq	$1480, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rax, %rbp
	movl	1152(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$357:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$358
	addq	$4, %rax
	movq	$9, %r10
	movl	$0, 1152(%rsp)
	movl	$0, 1156(%rsp)
	movl	$0, 1160(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$355
Lzkboo_encrypt$356:
	imulq	$1472, %r11, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1472, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1188(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$355:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$356
	addq	$4, %rcx
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$317
Lzkboo_encrypt$318:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$349
Lzkboo_encrypt$350:
	movq	%rbx, %r12
	addq	%r10, %r12
	movl	1400(%rsp,%r12,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$353
Lzkboo_encrypt$354:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$353:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$354
	andl	$1, %r12d
	movl	%r12d, 1248(%rsp,%rbx,4)
	movl	1200(%rsp,%rbx,4), %r12d
	xorl	1152(%rsp,%rbx,4), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$351
Lzkboo_encrypt$352:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$351:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$352
	andl	$1, %r12d
	movl	%r12d, 1260(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$349:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$350
	movl	1248(%rsp), %ebx
	andl	1264(%rsp), %ebx
	movl	1252(%rsp), %r12d
	movl	1260(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1192(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$347
Lzkboo_encrypt$348:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$347:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$348
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$345
Lzkboo_encrypt$346:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$345:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$346
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1188(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$343
Lzkboo_encrypt$344:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$343:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$344
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1152(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$341
Lzkboo_encrypt$342:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$341:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$342
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$339
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$340
Lzkboo_encrypt$339:
	orl 	%r14d, %r12d
Lzkboo_encrypt$340:
	movl	%r12d, 1152(%rsp)
	movl	1252(%rsp), %ebx
	andl	1268(%rsp), %ebx
	movl	1256(%rsp), %r12d
	movl	1264(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1196(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$337
Lzkboo_encrypt$338:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$337:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$338
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$335
Lzkboo_encrypt$336:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$335:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$336
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1192(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$333
Lzkboo_encrypt$334:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$333:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$334
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1156(%rsp), %r12d
	movq	%rbp, %r13
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$331
Lzkboo_encrypt$332:
	shll	$1, %r14d
	addq	$-1, %r13
Lzkboo_encrypt$331:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$332
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$329
	xorl	$-1, %r14d
	andl	%r14d, %r12d
	jmp 	Lzkboo_encrypt$330
Lzkboo_encrypt$329:
	orl 	%r14d, %r12d
Lzkboo_encrypt$330:
	movl	%r12d, 1156(%rsp)
	movl	1256(%rsp), %ebx
	andl	1260(%rsp), %ebx
	movl	1248(%rsp), %r12d
	movl	1268(%rsp), %r13d
	andl	%r13d, %r12d
	xorl	%r12d, %ebx
	movl	1188(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$327
Lzkboo_encrypt$328:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$327:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$328
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$325
Lzkboo_encrypt$326:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$325:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$326
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1196(%rsp), %r12d
	movq	%r11, %r13
	jmp 	Lzkboo_encrypt$323
Lzkboo_encrypt$324:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$323:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$324
	andl	$1, %r12d
	xorl	%r12d, %ebx
	movl	1160(%rsp), %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$321
Lzkboo_encrypt$322:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo_encrypt$321:
	cmpq	$0, %rbp
	jnbe	Lzkboo_encrypt$322
	andl	$1, %ebx
	cmpl	$1, %ebx
	je  	Lzkboo_encrypt$319
	xorl	$-1, %r13d
	andl	%r13d, %r12d
	jmp 	Lzkboo_encrypt$320
Lzkboo_encrypt$319:
	orl 	%r13d, %r12d
Lzkboo_encrypt$320:
	movl	%r12d, 1160(%rsp)
	incq	%r11
Lzkboo_encrypt$317:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$318
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$315
Lzkboo_encrypt$316:
	movq	%r11, %rbp
	addq	%r10, %rbp
	movl	1400(%rsp,%rbp,4), %ebx
	movl	1200(%rsp,%r11,4), %r12d
	movl	1152(%rsp,%r11,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	%ebx, 1400(%rsp,%rbp,4)
	imulq	$64, 16(%rsp), %rbp
	imulq	$3, %rbp, %rbp
	imulq	$1480, 16(%rsp), %rbx
	imulq	%r11, %rbx
	addq	%rbx, %rbp
	imulq	$1480, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rax, %rbp
	movl	1152(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$315:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$316
	addq	$4, %rax
	movq	$12, %r10
	movl	$0, 1152(%rsp)
	movl	$0, 1156(%rsp)
	movl	$0, 1160(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$313
Lzkboo_encrypt$314:
	imulq	$1472, %r11, %rbp
	imulq	16(%rsp), %rbp
	imulq	$1472, %r15, %rbx
	addq	%rbx, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1200(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$313:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$314
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$275
Lzkboo_encrypt$276:
	movq	%rcx, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$307
Lzkboo_encrypt$308:
	movq	%rbp, %rbx
	addq	%r10, %rbx
	movl	1400(%rsp,%rbx,4), %ebx
	xorl	1152(%rsp,%rbp,4), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$311
Lzkboo_encrypt$312:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$311:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$312
	andl	$1, %ebx
	movl	%ebx, 1260(%rsp,%rbp,4)
	movl	1212(%rsp,%rbp,4), %ebx
	xorl	1152(%rsp,%rbp,4), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$309
Lzkboo_encrypt$310:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$309:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$310
	andl	$1, %ebx
	movl	%ebx, 1248(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$307:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$308
	movl	1260(%rsp), %ebp
	andl	1252(%rsp), %ebp
	movl	1264(%rsp), %ebx
	movl	1248(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1204(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$305
Lzkboo_encrypt$306:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$305:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$306
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1152(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$303
Lzkboo_encrypt$304:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$303:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$304
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1200(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$301
Lzkboo_encrypt$302:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$301:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$302
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1152(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$299
Lzkboo_encrypt$300:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$299:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$300
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$297
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$298
Lzkboo_encrypt$297:
	orl 	%r13d, %ebx
Lzkboo_encrypt$298:
	movl	%ebx, 1152(%rsp)
	movl	1264(%rsp), %ebp
	andl	1256(%rsp), %ebp
	movl	1268(%rsp), %ebx
	movl	1252(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1208(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$295
Lzkboo_encrypt$296:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$295:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$296
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1156(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$293
Lzkboo_encrypt$294:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$293:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$294
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1204(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$291
Lzkboo_encrypt$292:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$291:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$292
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1156(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$289
Lzkboo_encrypt$290:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$289:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$290
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$287
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$288
Lzkboo_encrypt$287:
	orl 	%r13d, %ebx
Lzkboo_encrypt$288:
	movl	%ebx, 1156(%rsp)
	movl	1268(%rsp), %ebp
	andl	1248(%rsp), %ebp
	movl	1260(%rsp), %ebx
	movl	1256(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1200(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$285
Lzkboo_encrypt$286:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$285:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$286
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1160(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$283
Lzkboo_encrypt$284:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$283:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$284
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1208(%rsp), %ebx
	movq	%rcx, %r12
	jmp 	Lzkboo_encrypt$281
Lzkboo_encrypt$282:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$281:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$282
	andl	$1, %ebx
	xorl	%ebx, %ebp
	movl	1160(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$279
Lzkboo_encrypt$280:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$279:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$280
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$277
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$278
Lzkboo_encrypt$277:
	orl 	%r12d, %ebx
Lzkboo_encrypt$278:
	movl	%ebx, 1160(%rsp)
	incq	%rcx
Lzkboo_encrypt$275:
	cmpq	$31, %rcx
	jb  	Lzkboo_encrypt$276
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$273
Lzkboo_encrypt$274:
	movq	%rcx, %r11
	addq	%r10, %r11
	movl	1400(%rsp,%r11,4), %ebp
	movl	1212(%rsp,%rcx,4), %ebx
	movl	1152(%rsp,%rcx,4), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	%ebp, 1400(%rsp,%r11,4)
	imulq	$64, 16(%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, 16(%rsp), %rbp
	imulq	%rcx, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1152(%rsp,%rcx,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%rcx
Lzkboo_encrypt$273:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$274
	addq	$4, %rax
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$269
Lzkboo_encrypt$270:
	imulq	$8, 32(%rsp), %rcx
	movq	32(%rsp), %r10
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$271
Lzkboo_encrypt$272:
	movl	1400(%rsp,%r10,4), %r11d
	movl	%r11d, 1524(%rsp,%rcx,4)
	addq	$3, %r10
	incq	%rcx
	incq	40(%rsp)
Lzkboo_encrypt$271:
	cmpq	$5, 40(%rsp)
	jb  	Lzkboo_encrypt$272
	incq	32(%rsp)
Lzkboo_encrypt$269:
	cmpq	$3, 32(%rsp)
	jb  	Lzkboo_encrypt$270
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$265
Lzkboo_encrypt$266:
	movq	$64, %r10
	imulq	16(%rsp), %r10
	imulq	$3, %r10, %r10
	imulq	$1480, 16(%rsp), %r11
	imulq	%rcx, %r11
	addq	%r11, %r10
	imulq	$1480, %r15, %r11
	addq	%r11, %r10
	addq	%rax, %r10
	imulq	$8, %rcx, %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$267
Lzkboo_encrypt$268:
	movl	1524(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%r10)
	addq	$4, %r10
	incq	%r11
	incq	%rbp
Lzkboo_encrypt$267:
	cmpq	$5, %rbp
	jb  	Lzkboo_encrypt$268
	incq	%rcx
Lzkboo_encrypt$265:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$266
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$261
Lzkboo_encrypt$262:
	imulq	$32, %rcx, %r10
	imulq	16(%rsp), %r10
	imulq	$32, %r15, %r11
	addq	%r11, %r10
	movq	$64, %r11
	imulq	16(%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, 16(%rsp), %rbp
	imulq	%rcx, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$263
Lzkboo_encrypt$264:
	movl	(%r8,%r11), %ebx
	movl	%ebx, (%r9,%r10)
	addq	$4, %r10
	addq	$4, %r11
	incq	%rbp
Lzkboo_encrypt$263:
	cmpq	$5, %rbp
	jb  	Lzkboo_encrypt$264
	incq	%rcx
Lzkboo_encrypt$261:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$262
	movq	$0, %r14
	jmp 	Lzkboo_encrypt$121
Lzkboo_encrypt$122:
	movq	$0, %r13
	jmp 	Lzkboo_encrypt$123
Lzkboo_encrypt$124:
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$1779033703, 1304(%rsp)
	movl	$-1150833019, 1308(%rsp)
	movl	$1013904242, 1312(%rsp)
	movl	$-1521486534, 1316(%rsp)
	movl	$1359893119, 1320(%rsp)
	movl	$-1694144372, 1324(%rsp)
	movl	$528734635, 1328(%rsp)
	movl	$1541459225, 1332(%rsp)
	imulq	$16, %r13, %rax
	imulq	16(%rsp), %rax
	imulq	$16, %r14, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$259
Lzkboo_encrypt$260:
	movb	(%rdx,%rax), %r10b
	movb	%r10b, 3092(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$259:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$260
	movq	%r13, %rax
	imulq	$64, %rax, %rax
	imulq	16(%rsp), %rax
	movq	%r14, %rcx
	imulq	$64, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$257
Lzkboo_encrypt$258:
	movb	(%r8,%rax), %r10b
	movb	%r10b, 3108(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$257:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$258
	movq	%r13, %rax
	imulq	$1480, %rax, %rax
	imulq	16(%rsp), %rax
	imulq	$64, 16(%rsp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movq	%r14, %rcx
	imulq	$1480, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$255
Lzkboo_encrypt$256:
	movb	(%r8,%rax), %r10b
	movb	%r10b, 3364(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$255:
	cmpq	$1480, %rcx
	jb  	Lzkboo_encrypt$256
	movq	%r13, %rax
	imulq	$4, %rax, %rax
	imulq	16(%rsp), %rax
	movq	%r14, %rcx
	imulq	$4, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$253
Lzkboo_encrypt$254:
	movb	(%rdi,%rax), %r10b
	movb	%r10b, 1104(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$253:
	cmpq	$4, %rcx
	jb  	Lzkboo_encrypt$254
	movq	%r14, 48(%rsp)
	movq	%r13, 56(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$232
Lzkboo_encrypt$233:
	movb	3092(%rsp,%rcx), %al
	movq	%rcx, 64(%rsp)
	movq	40(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	cmpq	$64, 40(%rsp)
	jne 	Lzkboo_encrypt$234
	movl	$1116352408, 1620(%rsp)
	movl	$1899447441, 1624(%rsp)
	movl	$-1245643825, 1628(%rsp)
	movl	$-373957723, 1632(%rsp)
	movl	$961987163, 1636(%rsp)
	movl	$1508970993, 1640(%rsp)
	movl	$-1841331548, 1644(%rsp)
	movl	$-1424204075, 1648(%rsp)
	movl	$-670586216, 1652(%rsp)
	movl	$310598401, 1656(%rsp)
	movl	$607225278, 1660(%rsp)
	movl	$1426881987, 1664(%rsp)
	movl	$1925078388, 1668(%rsp)
	movl	$-2132889090, 1672(%rsp)
	movl	$-1680079193, 1676(%rsp)
	movl	$-1046744716, 1680(%rsp)
	movl	$-459576895, 1684(%rsp)
	movl	$-272742522, 1688(%rsp)
	movl	$264347078, 1692(%rsp)
	movl	$604807628, 1696(%rsp)
	movl	$770255983, 1700(%rsp)
	movl	$1249150122, 1704(%rsp)
	movl	$1555081692, 1708(%rsp)
	movl	$1996064986, 1712(%rsp)
	movl	$-1740746414, 1716(%rsp)
	movl	$-1473132947, 1720(%rsp)
	movl	$-1341970488, 1724(%rsp)
	movl	$-1084653625, 1728(%rsp)
	movl	$-958395405, 1732(%rsp)
	movl	$-710438585, 1736(%rsp)
	movl	$113926993, 1740(%rsp)
	movl	$338241895, 1744(%rsp)
	movl	$666307205, 1748(%rsp)
	movl	$773529912, 1752(%rsp)
	movl	$1294757372, 1756(%rsp)
	movl	$1396182291, 1760(%rsp)
	movl	$1695183700, 1764(%rsp)
	movl	$1986661051, 1768(%rsp)
	movl	$-2117940946, 1772(%rsp)
	movl	$-1838011259, 1776(%rsp)
	movl	$-1564481375, 1780(%rsp)
	movl	$-1474664885, 1784(%rsp)
	movl	$-1035236496, 1788(%rsp)
	movl	$-949202525, 1792(%rsp)
	movl	$-778901479, 1796(%rsp)
	movl	$-694614492, 1800(%rsp)
	movl	$-200395387, 1804(%rsp)
	movl	$275423344, 1808(%rsp)
	movl	$430227734, 1812(%rsp)
	movl	$506948616, 1816(%rsp)
	movl	$659060556, 1820(%rsp)
	movl	$883997877, 1824(%rsp)
	movl	$958139571, 1828(%rsp)
	movl	$1322822218, 1832(%rsp)
	movl	$1537002063, 1836(%rsp)
	movl	$1747873779, 1840(%rsp)
	movl	$1955562222, 1844(%rsp)
	movl	$2024104815, 1848(%rsp)
	movl	$-2067236844, 1852(%rsp)
	movl	$-1933114872, 1856(%rsp)
	movl	$-1866530822, 1860(%rsp)
	movl	$-1538233109, 1864(%rsp)
	movl	$-1090935817, 1868(%rsp)
	movl	$-965641998, 1872(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$251
Lzkboo_encrypt$252:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$251:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$252
	jmp 	Lzkboo_encrypt$245
Lzkboo_encrypt$246:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$250(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$250:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$249(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$249:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$248(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$248:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$247(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$247:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$245:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$246
	movl	1304(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$237
Lzkboo_encrypt$238:
	movl	1136(%rsp), %r11d
	movl	1124(%rsp), %r12d
	leaq	Lzkboo_encrypt$244(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$244:
	movl	1124(%rsp), %ebx
	leaq	Lzkboo_encrypt$243(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$243:
	movl	1124(%rsp), %ecx
	leaq	Lzkboo_encrypt$242(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$242:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1124(%rsp), %eax
	andl	1128(%rsp), %eax
	movl	1124(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1132(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$241(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$241:
	movl	%ebp, 1140(%rsp)
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$240(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$240:
	movl	%ebp, 1144(%rsp)
	movl	1108(%rsp), %ecx
	leaq	Lzkboo_encrypt$239(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$239:
	movl	%ecx, 1148(%rsp)
	movl	1140(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1148(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1108(%rsp), %ecx
	movl	1112(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1108(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1112(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1132(%rsp), %ecx
	movl	%ecx, 1136(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	movl	1124(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1120(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1124(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1112(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1108(%rsp)
	incq	%r10
Lzkboo_encrypt$237:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$238
	movl	1304(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$235
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$236
Lzkboo_encrypt$235:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$236:
	movq	$0, 40(%rsp)
Lzkboo_encrypt$234:
	movq	64(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$232:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$233
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$211
Lzkboo_encrypt$212:
	movq	%rax, 64(%rsp)
	movb	3108(%rsp,%rax), %al
	movq	40(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	cmpq	$64, 40(%rsp)
	jne 	Lzkboo_encrypt$213
	movl	$1116352408, 1876(%rsp)
	movl	$1899447441, 1880(%rsp)
	movl	$-1245643825, 1884(%rsp)
	movl	$-373957723, 1888(%rsp)
	movl	$961987163, 1892(%rsp)
	movl	$1508970993, 1896(%rsp)
	movl	$-1841331548, 1900(%rsp)
	movl	$-1424204075, 1904(%rsp)
	movl	$-670586216, 1908(%rsp)
	movl	$310598401, 1912(%rsp)
	movl	$607225278, 1916(%rsp)
	movl	$1426881987, 1920(%rsp)
	movl	$1925078388, 1924(%rsp)
	movl	$-2132889090, 1928(%rsp)
	movl	$-1680079193, 1932(%rsp)
	movl	$-1046744716, 1936(%rsp)
	movl	$-459576895, 1940(%rsp)
	movl	$-272742522, 1944(%rsp)
	movl	$264347078, 1948(%rsp)
	movl	$604807628, 1952(%rsp)
	movl	$770255983, 1956(%rsp)
	movl	$1249150122, 1960(%rsp)
	movl	$1555081692, 1964(%rsp)
	movl	$1996064986, 1968(%rsp)
	movl	$-1740746414, 1972(%rsp)
	movl	$-1473132947, 1976(%rsp)
	movl	$-1341970488, 1980(%rsp)
	movl	$-1084653625, 1984(%rsp)
	movl	$-958395405, 1988(%rsp)
	movl	$-710438585, 1992(%rsp)
	movl	$113926993, 1996(%rsp)
	movl	$338241895, 2000(%rsp)
	movl	$666307205, 2004(%rsp)
	movl	$773529912, 2008(%rsp)
	movl	$1294757372, 2012(%rsp)
	movl	$1396182291, 2016(%rsp)
	movl	$1695183700, 2020(%rsp)
	movl	$1986661051, 2024(%rsp)
	movl	$-2117940946, 2028(%rsp)
	movl	$-1838011259, 2032(%rsp)
	movl	$-1564481375, 2036(%rsp)
	movl	$-1474664885, 2040(%rsp)
	movl	$-1035236496, 2044(%rsp)
	movl	$-949202525, 2048(%rsp)
	movl	$-778901479, 2052(%rsp)
	movl	$-694614492, 2056(%rsp)
	movl	$-200395387, 2060(%rsp)
	movl	$275423344, 2064(%rsp)
	movl	$430227734, 2068(%rsp)
	movl	$506948616, 2072(%rsp)
	movl	$659060556, 2076(%rsp)
	movl	$883997877, 2080(%rsp)
	movl	$958139571, 2084(%rsp)
	movl	$1322822218, 2088(%rsp)
	movl	$1537002063, 2092(%rsp)
	movl	$1747873779, 2096(%rsp)
	movl	$1955562222, 2100(%rsp)
	movl	$2024104815, 2104(%rsp)
	movl	$-2067236844, 2108(%rsp)
	movl	$-1933114872, 2112(%rsp)
	movl	$-1866530822, 2116(%rsp)
	movl	$-1538233109, 2120(%rsp)
	movl	$-1090935817, 2124(%rsp)
	movl	$-965641998, 2128(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$230
Lzkboo_encrypt$231:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$230:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$231
	jmp 	Lzkboo_encrypt$224
Lzkboo_encrypt$225:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$229(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$229:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$228(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$228:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$227(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$227:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$226(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$226:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$224:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$225
	movl	1304(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$216
Lzkboo_encrypt$217:
	movl	1108(%rsp), %r11d
	movl	1120(%rsp), %r12d
	leaq	Lzkboo_encrypt$223(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$223:
	movl	1120(%rsp), %ebx
	leaq	Lzkboo_encrypt$222(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$222:
	movl	1120(%rsp), %ecx
	leaq	Lzkboo_encrypt$221(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$221:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1120(%rsp), %eax
	andl	1116(%rsp), %eax
	movl	1120(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1112(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$220(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$220:
	movl	%ebp, 1148(%rsp)
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$219(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$219:
	movl	%ebp, 1144(%rsp)
	movl	1136(%rsp), %ecx
	leaq	Lzkboo_encrypt$218(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$218:
	movl	%ecx, 1140(%rsp)
	movl	1148(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1140(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1136(%rsp), %ecx
	movl	1132(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1136(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1132(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1112(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1124(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1120(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	movl	1132(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1136(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1136(%rsp)
	incq	%r10
Lzkboo_encrypt$216:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$217
	movl	1304(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$214
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$215
Lzkboo_encrypt$214:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$215:
	movq	$0, 40(%rsp)
Lzkboo_encrypt$213:
	movq	64(%rsp), %rax
	incq	%rax
Lzkboo_encrypt$211:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$212
	movq	$0, %r13
	jmp 	Lzkboo_encrypt$190
Lzkboo_encrypt$191:
	movb	3364(%rsp,%r13), %al
	movq	40(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	cmpq	$64, 40(%rsp)
	jne 	Lzkboo_encrypt$192
	movl	$1116352408, 1620(%rsp)
	movl	$1899447441, 1624(%rsp)
	movl	$-1245643825, 1628(%rsp)
	movl	$-373957723, 1632(%rsp)
	movl	$961987163, 1636(%rsp)
	movl	$1508970993, 1640(%rsp)
	movl	$-1841331548, 1644(%rsp)
	movl	$-1424204075, 1648(%rsp)
	movl	$-670586216, 1652(%rsp)
	movl	$310598401, 1656(%rsp)
	movl	$607225278, 1660(%rsp)
	movl	$1426881987, 1664(%rsp)
	movl	$1925078388, 1668(%rsp)
	movl	$-2132889090, 1672(%rsp)
	movl	$-1680079193, 1676(%rsp)
	movl	$-1046744716, 1680(%rsp)
	movl	$-459576895, 1684(%rsp)
	movl	$-272742522, 1688(%rsp)
	movl	$264347078, 1692(%rsp)
	movl	$604807628, 1696(%rsp)
	movl	$770255983, 1700(%rsp)
	movl	$1249150122, 1704(%rsp)
	movl	$1555081692, 1708(%rsp)
	movl	$1996064986, 1712(%rsp)
	movl	$-1740746414, 1716(%rsp)
	movl	$-1473132947, 1720(%rsp)
	movl	$-1341970488, 1724(%rsp)
	movl	$-1084653625, 1728(%rsp)
	movl	$-958395405, 1732(%rsp)
	movl	$-710438585, 1736(%rsp)
	movl	$113926993, 1740(%rsp)
	movl	$338241895, 1744(%rsp)
	movl	$666307205, 1748(%rsp)
	movl	$773529912, 1752(%rsp)
	movl	$1294757372, 1756(%rsp)
	movl	$1396182291, 1760(%rsp)
	movl	$1695183700, 1764(%rsp)
	movl	$1986661051, 1768(%rsp)
	movl	$-2117940946, 1772(%rsp)
	movl	$-1838011259, 1776(%rsp)
	movl	$-1564481375, 1780(%rsp)
	movl	$-1474664885, 1784(%rsp)
	movl	$-1035236496, 1788(%rsp)
	movl	$-949202525, 1792(%rsp)
	movl	$-778901479, 1796(%rsp)
	movl	$-694614492, 1800(%rsp)
	movl	$-200395387, 1804(%rsp)
	movl	$275423344, 1808(%rsp)
	movl	$430227734, 1812(%rsp)
	movl	$506948616, 1816(%rsp)
	movl	$659060556, 1820(%rsp)
	movl	$883997877, 1824(%rsp)
	movl	$958139571, 1828(%rsp)
	movl	$1322822218, 1832(%rsp)
	movl	$1537002063, 1836(%rsp)
	movl	$1747873779, 1840(%rsp)
	movl	$1955562222, 1844(%rsp)
	movl	$2024104815, 1848(%rsp)
	movl	$-2067236844, 1852(%rsp)
	movl	$-1933114872, 1856(%rsp)
	movl	$-1866530822, 1860(%rsp)
	movl	$-1538233109, 1864(%rsp)
	movl	$-1090935817, 1868(%rsp)
	movl	$-965641998, 1872(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$209
Lzkboo_encrypt$210:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$209:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$210
	jmp 	Lzkboo_encrypt$203
Lzkboo_encrypt$204:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$208(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$208:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$207(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$207:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$206(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$206:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$205(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$205:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$203:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$204
	movl	1304(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$195
Lzkboo_encrypt$196:
	movl	1136(%rsp), %r11d
	movl	1124(%rsp), %r12d
	leaq	Lzkboo_encrypt$202(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$202:
	movl	1124(%rsp), %ebx
	leaq	Lzkboo_encrypt$201(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$201:
	movl	1124(%rsp), %ecx
	leaq	Lzkboo_encrypt$200(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$200:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1124(%rsp), %eax
	andl	1128(%rsp), %eax
	movl	1124(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1132(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$199(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$199:
	movl	%ebp, 1140(%rsp)
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$198(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$198:
	movl	%ebp, 1144(%rsp)
	movl	1108(%rsp), %ecx
	leaq	Lzkboo_encrypt$197(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$197:
	movl	%ecx, 1148(%rsp)
	movl	1140(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1148(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1108(%rsp), %ecx
	movl	1112(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1108(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1112(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1132(%rsp), %ecx
	movl	%ecx, 1136(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	movl	1124(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1120(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1124(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1112(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1108(%rsp)
	incq	%r10
Lzkboo_encrypt$195:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$196
	movl	1304(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$193
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$194
Lzkboo_encrypt$193:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$194:
	movq	$0, 40(%rsp)
Lzkboo_encrypt$192:
	incq	%r13
Lzkboo_encrypt$190:
	cmpq	$1480, %r13
	jb  	Lzkboo_encrypt$191
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$169
Lzkboo_encrypt$170:
	movb	1104(%rsp,%rcx), %al
	movq	%rcx, 64(%rsp)
	movq	40(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 40(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_encrypt$171
	movl	$1116352408, 1876(%rsp)
	movl	$1899447441, 1880(%rsp)
	movl	$-1245643825, 1884(%rsp)
	movl	$-373957723, 1888(%rsp)
	movl	$961987163, 1892(%rsp)
	movl	$1508970993, 1896(%rsp)
	movl	$-1841331548, 1900(%rsp)
	movl	$-1424204075, 1904(%rsp)
	movl	$-670586216, 1908(%rsp)
	movl	$310598401, 1912(%rsp)
	movl	$607225278, 1916(%rsp)
	movl	$1426881987, 1920(%rsp)
	movl	$1925078388, 1924(%rsp)
	movl	$-2132889090, 1928(%rsp)
	movl	$-1680079193, 1932(%rsp)
	movl	$-1046744716, 1936(%rsp)
	movl	$-459576895, 1940(%rsp)
	movl	$-272742522, 1944(%rsp)
	movl	$264347078, 1948(%rsp)
	movl	$604807628, 1952(%rsp)
	movl	$770255983, 1956(%rsp)
	movl	$1249150122, 1960(%rsp)
	movl	$1555081692, 1964(%rsp)
	movl	$1996064986, 1968(%rsp)
	movl	$-1740746414, 1972(%rsp)
	movl	$-1473132947, 1976(%rsp)
	movl	$-1341970488, 1980(%rsp)
	movl	$-1084653625, 1984(%rsp)
	movl	$-958395405, 1988(%rsp)
	movl	$-710438585, 1992(%rsp)
	movl	$113926993, 1996(%rsp)
	movl	$338241895, 2000(%rsp)
	movl	$666307205, 2004(%rsp)
	movl	$773529912, 2008(%rsp)
	movl	$1294757372, 2012(%rsp)
	movl	$1396182291, 2016(%rsp)
	movl	$1695183700, 2020(%rsp)
	movl	$1986661051, 2024(%rsp)
	movl	$-2117940946, 2028(%rsp)
	movl	$-1838011259, 2032(%rsp)
	movl	$-1564481375, 2036(%rsp)
	movl	$-1474664885, 2040(%rsp)
	movl	$-1035236496, 2044(%rsp)
	movl	$-949202525, 2048(%rsp)
	movl	$-778901479, 2052(%rsp)
	movl	$-694614492, 2056(%rsp)
	movl	$-200395387, 2060(%rsp)
	movl	$275423344, 2064(%rsp)
	movl	$430227734, 2068(%rsp)
	movl	$506948616, 2072(%rsp)
	movl	$659060556, 2076(%rsp)
	movl	$883997877, 2080(%rsp)
	movl	$958139571, 2084(%rsp)
	movl	$1322822218, 2088(%rsp)
	movl	$1537002063, 2092(%rsp)
	movl	$1747873779, 2096(%rsp)
	movl	$1955562222, 2100(%rsp)
	movl	$2024104815, 2104(%rsp)
	movl	$-2067236844, 2108(%rsp)
	movl	$-1933114872, 2112(%rsp)
	movl	$-1866530822, 2116(%rsp)
	movl	$-1538233109, 2120(%rsp)
	movl	$-1090935817, 2124(%rsp)
	movl	$-965641998, 2128(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$188
Lzkboo_encrypt$189:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$188:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$189
	jmp 	Lzkboo_encrypt$182
Lzkboo_encrypt$183:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$187(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$187:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$186(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$186:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$185(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$185:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$184(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$184:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$182:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$183
	movl	1304(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$174
Lzkboo_encrypt$175:
	movl	1108(%rsp), %r11d
	movl	1120(%rsp), %r12d
	leaq	Lzkboo_encrypt$181(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$181:
	movl	1120(%rsp), %ebx
	leaq	Lzkboo_encrypt$180(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$180:
	movl	1120(%rsp), %ecx
	leaq	Lzkboo_encrypt$179(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$179:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1120(%rsp), %eax
	andl	1116(%rsp), %eax
	movl	1120(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1112(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$178(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$178:
	movl	%ebp, 1148(%rsp)
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$177(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$177:
	movl	%ebp, 1144(%rsp)
	movl	1136(%rsp), %ecx
	leaq	Lzkboo_encrypt$176(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$176:
	movl	%ecx, 1140(%rsp)
	movl	1148(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1140(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1136(%rsp), %ecx
	movl	1132(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1136(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1132(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1112(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1124(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1120(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	movl	1132(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1136(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1136(%rsp)
	incq	%r10
Lzkboo_encrypt$174:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$175
	movl	1304(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$172
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$173
Lzkboo_encrypt$172:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$173:
	movq	$0, 40(%rsp)
Lzkboo_encrypt$171:
	movq	64(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$169:
	cmpq	$4, %rcx
	jb  	Lzkboo_encrypt$170
	movq	48(%rsp), %r14
	movq	56(%rsp), %r13
	movq	40(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$145
	movb	$-128, 1460(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$167
Lzkboo_encrypt$168:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$167:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$168
	movl	$1116352408, 1620(%rsp)
	movl	$1899447441, 1624(%rsp)
	movl	$-1245643825, 1628(%rsp)
	movl	$-373957723, 1632(%rsp)
	movl	$961987163, 1636(%rsp)
	movl	$1508970993, 1640(%rsp)
	movl	$-1841331548, 1644(%rsp)
	movl	$-1424204075, 1648(%rsp)
	movl	$-670586216, 1652(%rsp)
	movl	$310598401, 1656(%rsp)
	movl	$607225278, 1660(%rsp)
	movl	$1426881987, 1664(%rsp)
	movl	$1925078388, 1668(%rsp)
	movl	$-2132889090, 1672(%rsp)
	movl	$-1680079193, 1676(%rsp)
	movl	$-1046744716, 1680(%rsp)
	movl	$-459576895, 1684(%rsp)
	movl	$-272742522, 1688(%rsp)
	movl	$264347078, 1692(%rsp)
	movl	$604807628, 1696(%rsp)
	movl	$770255983, 1700(%rsp)
	movl	$1249150122, 1704(%rsp)
	movl	$1555081692, 1708(%rsp)
	movl	$1996064986, 1712(%rsp)
	movl	$-1740746414, 1716(%rsp)
	movl	$-1473132947, 1720(%rsp)
	movl	$-1341970488, 1724(%rsp)
	movl	$-1084653625, 1728(%rsp)
	movl	$-958395405, 1732(%rsp)
	movl	$-710438585, 1736(%rsp)
	movl	$113926993, 1740(%rsp)
	movl	$338241895, 1744(%rsp)
	movl	$666307205, 1748(%rsp)
	movl	$773529912, 1752(%rsp)
	movl	$1294757372, 1756(%rsp)
	movl	$1396182291, 1760(%rsp)
	movl	$1695183700, 1764(%rsp)
	movl	$1986661051, 1768(%rsp)
	movl	$-2117940946, 1772(%rsp)
	movl	$-1838011259, 1776(%rsp)
	movl	$-1564481375, 1780(%rsp)
	movl	$-1474664885, 1784(%rsp)
	movl	$-1035236496, 1788(%rsp)
	movl	$-949202525, 1792(%rsp)
	movl	$-778901479, 1796(%rsp)
	movl	$-694614492, 1800(%rsp)
	movl	$-200395387, 1804(%rsp)
	movl	$275423344, 1808(%rsp)
	movl	$430227734, 1812(%rsp)
	movl	$506948616, 1816(%rsp)
	movl	$659060556, 1820(%rsp)
	movl	$883997877, 1824(%rsp)
	movl	$958139571, 1828(%rsp)
	movl	$1322822218, 1832(%rsp)
	movl	$1537002063, 1836(%rsp)
	movl	$1747873779, 1840(%rsp)
	movl	$1955562222, 1844(%rsp)
	movl	$2024104815, 1848(%rsp)
	movl	$-2067236844, 1852(%rsp)
	movl	$-1933114872, 1856(%rsp)
	movl	$-1866530822, 1860(%rsp)
	movl	$-1538233109, 1864(%rsp)
	movl	$-1090935817, 1868(%rsp)
	movl	$-965641998, 1872(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$165
Lzkboo_encrypt$166:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$165:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$166
	jmp 	Lzkboo_encrypt$159
Lzkboo_encrypt$160:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$164(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$164:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$163(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$163:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1876(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$162(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$162:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$161(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$161:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1876(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$159:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$160
	movl	1304(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$151
Lzkboo_encrypt$152:
	movl	1136(%rsp), %r11d
	movl	1124(%rsp), %r12d
	leaq	Lzkboo_encrypt$158(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$158:
	movl	1124(%rsp), %ebx
	leaq	Lzkboo_encrypt$157(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$157:
	movl	1124(%rsp), %ecx
	leaq	Lzkboo_encrypt$156(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$156:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1124(%rsp), %eax
	andl	1128(%rsp), %eax
	movl	1124(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1132(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$155(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$155:
	movl	%ebp, 1140(%rsp)
	movl	1108(%rsp), %ebp
	leaq	Lzkboo_encrypt$154(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$154:
	movl	%ebp, 1144(%rsp)
	movl	1108(%rsp), %ecx
	leaq	Lzkboo_encrypt$153(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$153:
	movl	%ecx, 1148(%rsp)
	movl	1140(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1148(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1108(%rsp), %ecx
	movl	1112(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1108(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1112(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1132(%rsp), %ecx
	movl	%ecx, 1136(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	movl	1124(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1120(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1124(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1112(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1108(%rsp)
	incq	%r10
Lzkboo_encrypt$151:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$152
	movl	1304(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$149
Lzkboo_encrypt$150:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$149:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$150
	jmp 	Lzkboo_encrypt$146
Lzkboo_encrypt$145:
	movb	$-128, 1460(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$147
Lzkboo_encrypt$148:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$147:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$148
Lzkboo_encrypt$146:
	movq	40(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$143
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$144
Lzkboo_encrypt$143:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$144:
	movl	32(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1520(%rsp)
	movl	36(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1516(%rsp)
	movl	$1116352408, 1876(%rsp)
	movl	$1899447441, 1880(%rsp)
	movl	$-1245643825, 1884(%rsp)
	movl	$-373957723, 1888(%rsp)
	movl	$961987163, 1892(%rsp)
	movl	$1508970993, 1896(%rsp)
	movl	$-1841331548, 1900(%rsp)
	movl	$-1424204075, 1904(%rsp)
	movl	$-670586216, 1908(%rsp)
	movl	$310598401, 1912(%rsp)
	movl	$607225278, 1916(%rsp)
	movl	$1426881987, 1920(%rsp)
	movl	$1925078388, 1924(%rsp)
	movl	$-2132889090, 1928(%rsp)
	movl	$-1680079193, 1932(%rsp)
	movl	$-1046744716, 1936(%rsp)
	movl	$-459576895, 1940(%rsp)
	movl	$-272742522, 1944(%rsp)
	movl	$264347078, 1948(%rsp)
	movl	$604807628, 1952(%rsp)
	movl	$770255983, 1956(%rsp)
	movl	$1249150122, 1960(%rsp)
	movl	$1555081692, 1964(%rsp)
	movl	$1996064986, 1968(%rsp)
	movl	$-1740746414, 1972(%rsp)
	movl	$-1473132947, 1976(%rsp)
	movl	$-1341970488, 1980(%rsp)
	movl	$-1084653625, 1984(%rsp)
	movl	$-958395405, 1988(%rsp)
	movl	$-710438585, 1992(%rsp)
	movl	$113926993, 1996(%rsp)
	movl	$338241895, 2000(%rsp)
	movl	$666307205, 2004(%rsp)
	movl	$773529912, 2008(%rsp)
	movl	$1294757372, 2012(%rsp)
	movl	$1396182291, 2016(%rsp)
	movl	$1695183700, 2020(%rsp)
	movl	$1986661051, 2024(%rsp)
	movl	$-2117940946, 2028(%rsp)
	movl	$-1838011259, 2032(%rsp)
	movl	$-1564481375, 2036(%rsp)
	movl	$-1474664885, 2040(%rsp)
	movl	$-1035236496, 2044(%rsp)
	movl	$-949202525, 2048(%rsp)
	movl	$-778901479, 2052(%rsp)
	movl	$-694614492, 2056(%rsp)
	movl	$-200395387, 2060(%rsp)
	movl	$275423344, 2064(%rsp)
	movl	$430227734, 2068(%rsp)
	movl	$506948616, 2072(%rsp)
	movl	$659060556, 2076(%rsp)
	movl	$883997877, 2080(%rsp)
	movl	$958139571, 2084(%rsp)
	movl	$1322822218, 2088(%rsp)
	movl	$1537002063, 2092(%rsp)
	movl	$1747873779, 2096(%rsp)
	movl	$1955562222, 2100(%rsp)
	movl	$2024104815, 2104(%rsp)
	movl	$-2067236844, 2108(%rsp)
	movl	$-1933114872, 2112(%rsp)
	movl	$-1866530822, 2116(%rsp)
	movl	$-1538233109, 2120(%rsp)
	movl	$-1090935817, 2124(%rsp)
	movl	$-965641998, 2128(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$141
Lzkboo_encrypt$142:
	movl	1460(%rsp,%rbp,4), %eax
	bswapl	%eax
	movl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$141:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$142
	jmp 	Lzkboo_encrypt$135
Lzkboo_encrypt$136:
	movq	%rbp, %rax
	addq	$-2, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %eax
	leaq	Lzkboo_encrypt$140(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$140:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$139(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$139:
	shrl	$10, %ebx
	xorl	%eax, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-7, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-15, %rax
	movl	1620(%rsp,%rax,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_encrypt$138(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$138:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$137(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$137:
	shrl	$3, %ebx
	xorl	%ecx, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1620(%rsp,%rbp,4)
	movq	%rbp, %rax
	addq	$-16, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$135:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$136
	movl	1304(%rsp), %eax
	movl	%eax, 1136(%rsp)
	movl	1308(%rsp), %eax
	movl	%eax, 1132(%rsp)
	movl	1312(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1316(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1320(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1324(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1328(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$127
Lzkboo_encrypt$128:
	movl	1108(%rsp), %r11d
	movl	1120(%rsp), %r12d
	leaq	Lzkboo_encrypt$134(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$134:
	movl	1120(%rsp), %ebx
	leaq	Lzkboo_encrypt$133(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$133:
	movl	1120(%rsp), %ecx
	leaq	Lzkboo_encrypt$132(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$132:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %r11d
	movl	1120(%rsp), %eax
	andl	1116(%rsp), %eax
	movl	1120(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1112(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1876(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1620(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$131(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$131:
	movl	%ebp, 1148(%rsp)
	movl	1136(%rsp), %ebp
	leaq	Lzkboo_encrypt$130(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$130:
	movl	%ebp, 1144(%rsp)
	movl	1136(%rsp), %ecx
	leaq	Lzkboo_encrypt$129(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$129:
	movl	%ecx, 1140(%rsp)
	movl	1148(%rsp), %eax
	movl	1144(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1140(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1136(%rsp), %ecx
	movl	1132(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1136(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1132(%rsp), %ebp
	movl	1128(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1112(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1124(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1120(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	movl	1132(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1136(%rsp), %ecx
	movl	%ecx, 1132(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1136(%rsp)
	incq	%r10
Lzkboo_encrypt$127:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$128
	movl	1304(%rsp), %eax
	addl	1136(%rsp), %eax
	movl	%eax, 1304(%rsp)
	movl	1308(%rsp), %eax
	addl	1132(%rsp), %eax
	movl	%eax, 1308(%rsp)
	movl	1312(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1312(%rsp)
	movl	1316(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1316(%rsp)
	movl	1320(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1320(%rsp)
	movl	1324(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1324(%rsp)
	movl	1328(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1332(%rsp)
	imulq	$32, 16(%rsp), %rax
	imulq	$3, %rax, %rax
	movq	%r13, %rcx
	imulq	$32, %rcx, %rcx
	imulq	16(%rsp), %rcx
	addq	%rcx, %rax
	imulq	$32, %r14, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$125
Lzkboo_encrypt$126:
	movl	1304(%rsp,%rcx,4), %r10d
	bswapl	%r10d
	movl	%r10d, (%r9,%rax)
	addq	$4, %rax
	incq	%rcx
Lzkboo_encrypt$125:
	cmpq	$8, %rcx
	jb  	Lzkboo_encrypt$126
	incq	%r13
Lzkboo_encrypt$123:
	cmpq	$3, %r13
	jb  	Lzkboo_encrypt$124
	incq	%r14
Lzkboo_encrypt$121:
	cmpq	16(%rsp), %r14
	jb  	Lzkboo_encrypt$122
	incq	%r15
Lzkboo_encrypt$119:
	cmpq	16(%rsp), %r15
	jb  	Lzkboo_encrypt$120
	movq	$32, %rax
	imulq	16(%rsp), %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$117
Lzkboo_encrypt$118:
	imulq	$4, %rcx, %rdx
	movl	(%r9,%rdx), %esi
	addq	%rax, %rdx
	xorl	(%r9,%rdx), %esi
	addq	%rax, %rdx
	xorl	(%r9,%rdx), %esi
	imulq	$4, %rcx, %rdx
	movl	%esi, 1304(%rsp,%rdx,4)
	incq	%rcx
Lzkboo_encrypt$117:
	cmpq	$8, %rcx
	jb  	Lzkboo_encrypt$118
	movq	$0, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, 36(%rsp)
	movl	$1779033703, 1336(%rsp)
	movl	$-1150833019, 1340(%rsp)
	movl	$1013904242, 1344(%rsp)
	movl	$-1521486534, 1348(%rsp)
	movl	$1359893119, 1352(%rsp)
	movl	$-1694144372, 1356(%rsp)
	movl	$528734635, 1360(%rsp)
	movl	$1541459225, 1364(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$115
Lzkboo_encrypt$116:
	movb	1304(%rsp,%rax), %cl
	movb	%cl, 1368(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$115:
	cmpq	$32, %rax
	jb  	Lzkboo_encrypt$116
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$94
Lzkboo_encrypt$95:
	movb	1368(%rsp,%rcx), %al
	movq	%rcx, 40(%rsp)
	movq	24(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 24(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_encrypt$96
	movl	$1116352408, 1620(%rsp)
	movl	$1899447441, 1624(%rsp)
	movl	$-1245643825, 1628(%rsp)
	movl	$-373957723, 1632(%rsp)
	movl	$961987163, 1636(%rsp)
	movl	$1508970993, 1640(%rsp)
	movl	$-1841331548, 1644(%rsp)
	movl	$-1424204075, 1648(%rsp)
	movl	$-670586216, 1652(%rsp)
	movl	$310598401, 1656(%rsp)
	movl	$607225278, 1660(%rsp)
	movl	$1426881987, 1664(%rsp)
	movl	$1925078388, 1668(%rsp)
	movl	$-2132889090, 1672(%rsp)
	movl	$-1680079193, 1676(%rsp)
	movl	$-1046744716, 1680(%rsp)
	movl	$-459576895, 1684(%rsp)
	movl	$-272742522, 1688(%rsp)
	movl	$264347078, 1692(%rsp)
	movl	$604807628, 1696(%rsp)
	movl	$770255983, 1700(%rsp)
	movl	$1249150122, 1704(%rsp)
	movl	$1555081692, 1708(%rsp)
	movl	$1996064986, 1712(%rsp)
	movl	$-1740746414, 1716(%rsp)
	movl	$-1473132947, 1720(%rsp)
	movl	$-1341970488, 1724(%rsp)
	movl	$-1084653625, 1728(%rsp)
	movl	$-958395405, 1732(%rsp)
	movl	$-710438585, 1736(%rsp)
	movl	$113926993, 1740(%rsp)
	movl	$338241895, 1744(%rsp)
	movl	$666307205, 1748(%rsp)
	movl	$773529912, 1752(%rsp)
	movl	$1294757372, 1756(%rsp)
	movl	$1396182291, 1760(%rsp)
	movl	$1695183700, 1764(%rsp)
	movl	$1986661051, 1768(%rsp)
	movl	$-2117940946, 1772(%rsp)
	movl	$-1838011259, 1776(%rsp)
	movl	$-1564481375, 1780(%rsp)
	movl	$-1474664885, 1784(%rsp)
	movl	$-1035236496, 1788(%rsp)
	movl	$-949202525, 1792(%rsp)
	movl	$-778901479, 1796(%rsp)
	movl	$-694614492, 1800(%rsp)
	movl	$-200395387, 1804(%rsp)
	movl	$275423344, 1808(%rsp)
	movl	$430227734, 1812(%rsp)
	movl	$506948616, 1816(%rsp)
	movl	$659060556, 1820(%rsp)
	movl	$883997877, 1824(%rsp)
	movl	$958139571, 1828(%rsp)
	movl	$1322822218, 1832(%rsp)
	movl	$1537002063, 1836(%rsp)
	movl	$1747873779, 1840(%rsp)
	movl	$1955562222, 1844(%rsp)
	movl	$2024104815, 1848(%rsp)
	movl	$-2067236844, 1852(%rsp)
	movl	$-1933114872, 1856(%rsp)
	movl	$-1866530822, 1860(%rsp)
	movl	$-1538233109, 1864(%rsp)
	movl	$-1090935817, 1868(%rsp)
	movl	$-965641998, 1872(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$113
Lzkboo_encrypt$114:
	movl	1460(%rsp,%rdx,4), %eax
	bswapl	%eax
	movl	%eax, 1876(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$113:
	cmpq	$16, %rdx
	jb  	Lzkboo_encrypt$114
	jmp 	Lzkboo_encrypt$107
Lzkboo_encrypt$108:
	movq	%rdx, %rax
	addq	$-2, %rax
	movl	1876(%rsp,%rax,4), %esi
	movl	%esi, %eax
	leaq	Lzkboo_encrypt$112(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$112:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$111(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$111:
	shrl	$10, %esi
	xorl	%eax, %r11d
	xorl	%esi, %r11d
	movl	%r11d, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-7, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-15, %rax
	movl	1876(%rsp,%rax,4), %esi
	movl	%esi, %r11d
	leaq	Lzkboo_encrypt$110(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$110:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$109(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$109:
	shrl	$3, %esi
	xorl	%ecx, %r11d
	xorl	%esi, %r11d
	addl	%r11d, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-16, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$107:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$108
	movl	1336(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1360(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$99
Lzkboo_encrypt$100:
	movl	1128(%rsp), %esi
	movl	1116(%rsp), %r12d
	leaq	Lzkboo_encrypt$106(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$106:
	movl	1116(%rsp), %ebx
	leaq	Lzkboo_encrypt$105(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$105:
	movl	1116(%rsp), %ecx
	leaq	Lzkboo_encrypt$104(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$104:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %esi
	movl	1116(%rsp), %eax
	andl	1120(%rsp), %eax
	movl	1116(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1124(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %esi
	movl	1620(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1876(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1096(%rsp), %ebp
	leaq	Lzkboo_encrypt$103(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$103:
	movl	%ebp, 1132(%rsp)
	movl	1096(%rsp), %ebp
	leaq	Lzkboo_encrypt$102(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$102:
	movl	%ebp, 1136(%rsp)
	movl	1096(%rsp), %ecx
	leaq	Lzkboo_encrypt$101(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$101:
	movl	%ecx, 1140(%rsp)
	movl	1132(%rsp), %eax
	movl	1136(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1140(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1096(%rsp), %ecx
	movl	1104(%rsp), %edi
	andl	%edi, %ecx
	movl	1096(%rsp), %edi
	movl	1108(%rsp), %r10d
	andl	%r10d, %edi
	xorl	%edi, %ecx
	movl	1104(%rsp), %edi
	movl	1108(%rsp), %r10d
	andl	%r10d, %edi
	xorl	%edi, %ecx
	addl	%ecx, %eax
	movl	1124(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1112(%rsp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 1116(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	movl	1104(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1096(%rsp), %ecx
	movl	%ecx, 1104(%rsp)
	addl	%eax, %esi
	movl	%esi, 1096(%rsp)
	incq	%rdx
Lzkboo_encrypt$99:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$100
	movl	1336(%rsp), %eax
	addl	1096(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1104(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movl	1360(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_encrypt$97
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$98
Lzkboo_encrypt$97:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$98:
	movq	$0, 24(%rsp)
Lzkboo_encrypt$96:
	movq	40(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$94:
	cmpq	$32, %rcx
	jb  	Lzkboo_encrypt$95
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$86
Lzkboo_encrypt$87:
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$88
Lzkboo_encrypt$89:
	imulq	$192, %rax, %rdx
	imulq	$32, %rcx, %rsi
	addq	%rsi, %rdx
	imulq	$32, 16(%rsp), %rsi
	imulq	%rcx, %rsi
	imulq	$32, %rax, %rdi
	addq	%rdi, %rsi
	movq	$0, %rdi
	jmp 	Lzkboo_encrypt$92
Lzkboo_encrypt$93:
	movb	(%r9,%rsi), %r10b
	movb	%r10b, 3172(%rsp,%rdx)
	incq	%rdx
	incq	%rsi
	incq	%rdi
Lzkboo_encrypt$92:
	cmpq	$32, %rdi
	jb  	Lzkboo_encrypt$93
	imulq	$192, %rax, %rdx
	movq	$96, %rsi
	addq	%rsi, %rdx
	imulq	$32, %rcx, %rsi
	addq	%rsi, %rdx
	imulq	$32, 16(%rsp), %rsi
	imulq	$3, %rsi, %rsi
	imulq	$32, 16(%rsp), %rdi
	imulq	%rcx, %rdi
	addq	%rdi, %rsi
	imulq	$32, %rax, %rdi
	addq	%rdi, %rsi
	movq	$0, %rdi
	jmp 	Lzkboo_encrypt$90
Lzkboo_encrypt$91:
	movb	(%r9,%rsi), %r10b
	movb	%r10b, 3172(%rsp,%rdx)
	incq	%rdx
	incq	%rsi
	incq	%rdi
Lzkboo_encrypt$90:
	cmpq	$32, %rdi
	jb  	Lzkboo_encrypt$91
	incq	%rcx
Lzkboo_encrypt$88:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$89
	incq	%rax
Lzkboo_encrypt$86:
	cmpq	16(%rsp), %rax
	jb  	Lzkboo_encrypt$87
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$65
Lzkboo_encrypt$66:
	movb	3172(%rsp,%rcx), %al
	movq	%rcx, 40(%rsp)
	movq	24(%rsp), %rcx
	movb	%al, 1460(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 24(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_encrypt$67
	movl	$1116352408, 1876(%rsp)
	movl	$1899447441, 1880(%rsp)
	movl	$-1245643825, 1884(%rsp)
	movl	$-373957723, 1888(%rsp)
	movl	$961987163, 1892(%rsp)
	movl	$1508970993, 1896(%rsp)
	movl	$-1841331548, 1900(%rsp)
	movl	$-1424204075, 1904(%rsp)
	movl	$-670586216, 1908(%rsp)
	movl	$310598401, 1912(%rsp)
	movl	$607225278, 1916(%rsp)
	movl	$1426881987, 1920(%rsp)
	movl	$1925078388, 1924(%rsp)
	movl	$-2132889090, 1928(%rsp)
	movl	$-1680079193, 1932(%rsp)
	movl	$-1046744716, 1936(%rsp)
	movl	$-459576895, 1940(%rsp)
	movl	$-272742522, 1944(%rsp)
	movl	$264347078, 1948(%rsp)
	movl	$604807628, 1952(%rsp)
	movl	$770255983, 1956(%rsp)
	movl	$1249150122, 1960(%rsp)
	movl	$1555081692, 1964(%rsp)
	movl	$1996064986, 1968(%rsp)
	movl	$-1740746414, 1972(%rsp)
	movl	$-1473132947, 1976(%rsp)
	movl	$-1341970488, 1980(%rsp)
	movl	$-1084653625, 1984(%rsp)
	movl	$-958395405, 1988(%rsp)
	movl	$-710438585, 1992(%rsp)
	movl	$113926993, 1996(%rsp)
	movl	$338241895, 2000(%rsp)
	movl	$666307205, 2004(%rsp)
	movl	$773529912, 2008(%rsp)
	movl	$1294757372, 2012(%rsp)
	movl	$1396182291, 2016(%rsp)
	movl	$1695183700, 2020(%rsp)
	movl	$1986661051, 2024(%rsp)
	movl	$-2117940946, 2028(%rsp)
	movl	$-1838011259, 2032(%rsp)
	movl	$-1564481375, 2036(%rsp)
	movl	$-1474664885, 2040(%rsp)
	movl	$-1035236496, 2044(%rsp)
	movl	$-949202525, 2048(%rsp)
	movl	$-778901479, 2052(%rsp)
	movl	$-694614492, 2056(%rsp)
	movl	$-200395387, 2060(%rsp)
	movl	$275423344, 2064(%rsp)
	movl	$430227734, 2068(%rsp)
	movl	$506948616, 2072(%rsp)
	movl	$659060556, 2076(%rsp)
	movl	$883997877, 2080(%rsp)
	movl	$958139571, 2084(%rsp)
	movl	$1322822218, 2088(%rsp)
	movl	$1537002063, 2092(%rsp)
	movl	$1747873779, 2096(%rsp)
	movl	$1955562222, 2100(%rsp)
	movl	$2024104815, 2104(%rsp)
	movl	$-2067236844, 2108(%rsp)
	movl	$-1933114872, 2112(%rsp)
	movl	$-1866530822, 2116(%rsp)
	movl	$-1538233109, 2120(%rsp)
	movl	$-1090935817, 2124(%rsp)
	movl	$-965641998, 2128(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$84
Lzkboo_encrypt$85:
	movl	1460(%rsp,%rdx,4), %eax
	bswapl	%eax
	movl	%eax, 1620(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$84:
	cmpq	$16, %rdx
	jb  	Lzkboo_encrypt$85
	jmp 	Lzkboo_encrypt$78
Lzkboo_encrypt$79:
	movq	%rdx, %rax
	addq	$-2, %rax
	movl	1620(%rsp,%rax,4), %esi
	movl	%esi, %eax
	leaq	Lzkboo_encrypt$83(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$83:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$82(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$82:
	shrl	$10, %esi
	xorl	%eax, %r11d
	xorl	%esi, %r11d
	movl	%r11d, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-7, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-15, %rax
	movl	1620(%rsp,%rax,4), %esi
	movl	%esi, %r11d
	leaq	Lzkboo_encrypt$81(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$81:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$80(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$80:
	shrl	$3, %esi
	xorl	%ecx, %r11d
	xorl	%esi, %r11d
	addl	%r11d, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-16, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$78:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$79
	movl	1336(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1360(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$70
Lzkboo_encrypt$71:
	movl	1096(%rsp), %esi
	movl	1112(%rsp), %r12d
	leaq	Lzkboo_encrypt$77(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$77:
	movl	1112(%rsp), %ebx
	leaq	Lzkboo_encrypt$76(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$76:
	movl	1112(%rsp), %ecx
	leaq	Lzkboo_encrypt$75(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$75:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %esi
	movl	1112(%rsp), %eax
	andl	1108(%rsp), %eax
	movl	1112(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1104(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %esi
	movl	1876(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1620(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1128(%rsp), %ebp
	leaq	Lzkboo_encrypt$74(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$74:
	movl	%ebp, 1140(%rsp)
	movl	1128(%rsp), %ebp
	leaq	Lzkboo_encrypt$73(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$73:
	movl	%ebp, 1136(%rsp)
	movl	1128(%rsp), %ecx
	leaq	Lzkboo_encrypt$72(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$72:
	movl	%ecx, 1132(%rsp)
	movl	1140(%rsp), %eax
	movl	1136(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1132(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1128(%rsp), %ecx
	movl	1124(%rsp), %edi
	andl	%edi, %ecx
	movl	1128(%rsp), %edi
	movl	1120(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	movl	1124(%rsp), %edi
	movl	1120(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	addl	%ecx, %eax
	movl	1104(%rsp), %ecx
	movl	%ecx, 1096(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1104(%rsp)
	movl	1112(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1116(%rsp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 1112(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1124(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	addl	%eax, %esi
	movl	%esi, 1128(%rsp)
	incq	%rdx
Lzkboo_encrypt$70:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$71
	movl	1336(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movl	1360(%rsp), %eax
	addl	1104(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1096(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movq	$512, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_encrypt$68
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$69
Lzkboo_encrypt$68:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$69:
	movq	$0, 24(%rsp)
Lzkboo_encrypt$67:
	movq	40(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$65:
	cmpq	$192, %rcx
	jb  	Lzkboo_encrypt$66
	movq	24(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$41
	movb	$-128, 1460(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$63
Lzkboo_encrypt$64:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$63:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$64
	movl	$1116352408, 1620(%rsp)
	movl	$1899447441, 1624(%rsp)
	movl	$-1245643825, 1628(%rsp)
	movl	$-373957723, 1632(%rsp)
	movl	$961987163, 1636(%rsp)
	movl	$1508970993, 1640(%rsp)
	movl	$-1841331548, 1644(%rsp)
	movl	$-1424204075, 1648(%rsp)
	movl	$-670586216, 1652(%rsp)
	movl	$310598401, 1656(%rsp)
	movl	$607225278, 1660(%rsp)
	movl	$1426881987, 1664(%rsp)
	movl	$1925078388, 1668(%rsp)
	movl	$-2132889090, 1672(%rsp)
	movl	$-1680079193, 1676(%rsp)
	movl	$-1046744716, 1680(%rsp)
	movl	$-459576895, 1684(%rsp)
	movl	$-272742522, 1688(%rsp)
	movl	$264347078, 1692(%rsp)
	movl	$604807628, 1696(%rsp)
	movl	$770255983, 1700(%rsp)
	movl	$1249150122, 1704(%rsp)
	movl	$1555081692, 1708(%rsp)
	movl	$1996064986, 1712(%rsp)
	movl	$-1740746414, 1716(%rsp)
	movl	$-1473132947, 1720(%rsp)
	movl	$-1341970488, 1724(%rsp)
	movl	$-1084653625, 1728(%rsp)
	movl	$-958395405, 1732(%rsp)
	movl	$-710438585, 1736(%rsp)
	movl	$113926993, 1740(%rsp)
	movl	$338241895, 1744(%rsp)
	movl	$666307205, 1748(%rsp)
	movl	$773529912, 1752(%rsp)
	movl	$1294757372, 1756(%rsp)
	movl	$1396182291, 1760(%rsp)
	movl	$1695183700, 1764(%rsp)
	movl	$1986661051, 1768(%rsp)
	movl	$-2117940946, 1772(%rsp)
	movl	$-1838011259, 1776(%rsp)
	movl	$-1564481375, 1780(%rsp)
	movl	$-1474664885, 1784(%rsp)
	movl	$-1035236496, 1788(%rsp)
	movl	$-949202525, 1792(%rsp)
	movl	$-778901479, 1796(%rsp)
	movl	$-694614492, 1800(%rsp)
	movl	$-200395387, 1804(%rsp)
	movl	$275423344, 1808(%rsp)
	movl	$430227734, 1812(%rsp)
	movl	$506948616, 1816(%rsp)
	movl	$659060556, 1820(%rsp)
	movl	$883997877, 1824(%rsp)
	movl	$958139571, 1828(%rsp)
	movl	$1322822218, 1832(%rsp)
	movl	$1537002063, 1836(%rsp)
	movl	$1747873779, 1840(%rsp)
	movl	$1955562222, 1844(%rsp)
	movl	$2024104815, 1848(%rsp)
	movl	$-2067236844, 1852(%rsp)
	movl	$-1933114872, 1856(%rsp)
	movl	$-1866530822, 1860(%rsp)
	movl	$-1538233109, 1864(%rsp)
	movl	$-1090935817, 1868(%rsp)
	movl	$-965641998, 1872(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$61
Lzkboo_encrypt$62:
	movl	1460(%rsp,%rdx,4), %eax
	bswapl	%eax
	movl	%eax, 1876(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$61:
	cmpq	$16, %rdx
	jb  	Lzkboo_encrypt$62
	jmp 	Lzkboo_encrypt$55
Lzkboo_encrypt$56:
	movq	%rdx, %rax
	addq	$-2, %rax
	movl	1876(%rsp,%rax,4), %esi
	movl	%esi, %eax
	leaq	Lzkboo_encrypt$60(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$60:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$59(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$59:
	shrl	$10, %esi
	xorl	%eax, %r11d
	xorl	%esi, %r11d
	movl	%r11d, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-7, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-15, %rax
	movl	1876(%rsp,%rax,4), %esi
	movl	%esi, %r11d
	leaq	Lzkboo_encrypt$58(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$58:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$57(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$57:
	shrl	$3, %esi
	xorl	%ecx, %r11d
	xorl	%esi, %r11d
	addl	%r11d, 1876(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-16, %rax
	movl	1876(%rsp,%rax,4), %eax
	addl	%eax, 1876(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$55:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$56
	movl	1336(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1360(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$47
Lzkboo_encrypt$48:
	movl	1128(%rsp), %esi
	movl	1116(%rsp), %r12d
	leaq	Lzkboo_encrypt$54(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$54:
	movl	1116(%rsp), %ebx
	leaq	Lzkboo_encrypt$53(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$53:
	movl	1116(%rsp), %ecx
	leaq	Lzkboo_encrypt$52(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$52:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %esi
	movl	1116(%rsp), %eax
	andl	1120(%rsp), %eax
	movl	1116(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1124(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %esi
	movl	1620(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1876(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1096(%rsp), %ebp
	leaq	Lzkboo_encrypt$51(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$51:
	movl	%ebp, 1132(%rsp)
	movl	1096(%rsp), %ebp
	leaq	Lzkboo_encrypt$50(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$50:
	movl	%ebp, 1136(%rsp)
	movl	1096(%rsp), %ecx
	leaq	Lzkboo_encrypt$49(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$49:
	movl	%ecx, 1140(%rsp)
	movl	1132(%rsp), %eax
	movl	1136(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1140(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1096(%rsp), %ecx
	movl	1104(%rsp), %edi
	andl	%edi, %ecx
	movl	1096(%rsp), %edi
	movl	1108(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	movl	1104(%rsp), %edi
	movl	1108(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	addl	%ecx, %eax
	movl	1124(%rsp), %ecx
	movl	%ecx, 1128(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	movl	1116(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1112(%rsp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 1116(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1112(%rsp)
	movl	1104(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1096(%rsp), %ecx
	movl	%ecx, 1104(%rsp)
	addl	%eax, %esi
	movl	%esi, 1096(%rsp)
	incq	%rdx
Lzkboo_encrypt$47:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$48
	movl	1336(%rsp), %eax
	addl	1096(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1104(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movl	1360(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$45
Lzkboo_encrypt$46:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$45:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$46
	jmp 	Lzkboo_encrypt$42
Lzkboo_encrypt$41:
	movb	$-128, 1460(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$43
Lzkboo_encrypt$44:
	movb	$0, 1460(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$43:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$44
Lzkboo_encrypt$42:
	movq	24(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	32(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_encrypt$39
	addl	%eax, %ecx
	movl	%ecx, 32(%rsp)
	jmp 	Lzkboo_encrypt$40
Lzkboo_encrypt$39:
	movl	36(%rsp), %eax
	incl	%eax
	movl	%eax, 36(%rsp)
Lzkboo_encrypt$40:
	movl	32(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1520(%rsp)
	movl	36(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1516(%rsp)
	movl	$1116352408, 1876(%rsp)
	movl	$1899447441, 1880(%rsp)
	movl	$-1245643825, 1884(%rsp)
	movl	$-373957723, 1888(%rsp)
	movl	$961987163, 1892(%rsp)
	movl	$1508970993, 1896(%rsp)
	movl	$-1841331548, 1900(%rsp)
	movl	$-1424204075, 1904(%rsp)
	movl	$-670586216, 1908(%rsp)
	movl	$310598401, 1912(%rsp)
	movl	$607225278, 1916(%rsp)
	movl	$1426881987, 1920(%rsp)
	movl	$1925078388, 1924(%rsp)
	movl	$-2132889090, 1928(%rsp)
	movl	$-1680079193, 1932(%rsp)
	movl	$-1046744716, 1936(%rsp)
	movl	$-459576895, 1940(%rsp)
	movl	$-272742522, 1944(%rsp)
	movl	$264347078, 1948(%rsp)
	movl	$604807628, 1952(%rsp)
	movl	$770255983, 1956(%rsp)
	movl	$1249150122, 1960(%rsp)
	movl	$1555081692, 1964(%rsp)
	movl	$1996064986, 1968(%rsp)
	movl	$-1740746414, 1972(%rsp)
	movl	$-1473132947, 1976(%rsp)
	movl	$-1341970488, 1980(%rsp)
	movl	$-1084653625, 1984(%rsp)
	movl	$-958395405, 1988(%rsp)
	movl	$-710438585, 1992(%rsp)
	movl	$113926993, 1996(%rsp)
	movl	$338241895, 2000(%rsp)
	movl	$666307205, 2004(%rsp)
	movl	$773529912, 2008(%rsp)
	movl	$1294757372, 2012(%rsp)
	movl	$1396182291, 2016(%rsp)
	movl	$1695183700, 2020(%rsp)
	movl	$1986661051, 2024(%rsp)
	movl	$-2117940946, 2028(%rsp)
	movl	$-1838011259, 2032(%rsp)
	movl	$-1564481375, 2036(%rsp)
	movl	$-1474664885, 2040(%rsp)
	movl	$-1035236496, 2044(%rsp)
	movl	$-949202525, 2048(%rsp)
	movl	$-778901479, 2052(%rsp)
	movl	$-694614492, 2056(%rsp)
	movl	$-200395387, 2060(%rsp)
	movl	$275423344, 2064(%rsp)
	movl	$430227734, 2068(%rsp)
	movl	$506948616, 2072(%rsp)
	movl	$659060556, 2076(%rsp)
	movl	$883997877, 2080(%rsp)
	movl	$958139571, 2084(%rsp)
	movl	$1322822218, 2088(%rsp)
	movl	$1537002063, 2092(%rsp)
	movl	$1747873779, 2096(%rsp)
	movl	$1955562222, 2100(%rsp)
	movl	$2024104815, 2104(%rsp)
	movl	$-2067236844, 2108(%rsp)
	movl	$-1933114872, 2112(%rsp)
	movl	$-1866530822, 2116(%rsp)
	movl	$-1538233109, 2120(%rsp)
	movl	$-1090935817, 2124(%rsp)
	movl	$-965641998, 2128(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$37
Lzkboo_encrypt$38:
	movl	1460(%rsp,%rdx,4), %eax
	bswapl	%eax
	movl	%eax, 1620(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$37:
	cmpq	$16, %rdx
	jb  	Lzkboo_encrypt$38
	jmp 	Lzkboo_encrypt$31
Lzkboo_encrypt$32:
	movq	%rdx, %rax
	addq	$-2, %rax
	movl	1620(%rsp,%rax,4), %esi
	movl	%esi, %eax
	leaq	Lzkboo_encrypt$36(%rip), 	%rcx
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$36:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$35(%rip), 	%rcx
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$35:
	shrl	$10, %esi
	xorl	%eax, %r11d
	xorl	%esi, %r11d
	movl	%r11d, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-7, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-15, %rax
	movl	1620(%rsp,%rax,4), %esi
	movl	%esi, %r11d
	leaq	Lzkboo_encrypt$34(%rip), 	%rcx
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$34:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$33(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$33:
	shrl	$3, %esi
	xorl	%ecx, %r11d
	xorl	%esi, %r11d
	addl	%r11d, 1620(%rsp,%rdx,4)
	movq	%rdx, %rax
	addq	$-16, %rax
	movl	1620(%rsp,%rax,4), %eax
	addl	%eax, 1620(%rsp,%rdx,4)
	incq	%rdx
Lzkboo_encrypt$31:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$32
	movl	1336(%rsp), %eax
	movl	%eax, 1128(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1124(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1120(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1116(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1112(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1108(%rsp)
	movl	1360(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movq	$0, %rdx
	jmp 	Lzkboo_encrypt$23
Lzkboo_encrypt$24:
	movl	1096(%rsp), %esi
	movl	1112(%rsp), %r12d
	leaq	Lzkboo_encrypt$30(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$30:
	movl	1112(%rsp), %ebx
	leaq	Lzkboo_encrypt$29(%rip), 	%rcx
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$29:
	movl	1112(%rsp), %ecx
	leaq	Lzkboo_encrypt$28(%rip), 	%rbp
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$28:
	xorl	%ebx, %r12d
	xorl	%ecx, %r12d
	addl	%r12d, %esi
	movl	1112(%rsp), %eax
	andl	1108(%rsp), %eax
	movl	1112(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1104(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %esi
	movl	1876(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1620(%rsp,%rdx,4), %eax
	addl	%eax, %esi
	movl	1128(%rsp), %ebp
	leaq	Lzkboo_encrypt$27(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$27:
	movl	%ebp, 1140(%rsp)
	movl	1128(%rsp), %ebp
	leaq	Lzkboo_encrypt$26(%rip), 	%rcx
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$26:
	movl	%ebp, 1136(%rsp)
	movl	1128(%rsp), %ecx
	leaq	Lzkboo_encrypt$25(%rip), 	%rax
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$25:
	movl	%ecx, 1132(%rsp)
	movl	1140(%rsp), %eax
	movl	1136(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1132(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1128(%rsp), %ecx
	movl	1124(%rsp), %edi
	andl	%edi, %ecx
	movl	1128(%rsp), %edi
	movl	1120(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	movl	1124(%rsp), %edi
	movl	1120(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %ecx
	addl	%ecx, %eax
	movl	1104(%rsp), %ecx
	movl	%ecx, 1096(%rsp)
	movl	1108(%rsp), %ecx
	movl	%ecx, 1104(%rsp)
	movl	1112(%rsp), %ecx
	movl	%ecx, 1108(%rsp)
	movl	1116(%rsp), %ecx
	addl	%esi, %ecx
	movl	%ecx, 1112(%rsp)
	movl	1120(%rsp), %ecx
	movl	%ecx, 1116(%rsp)
	movl	1124(%rsp), %ecx
	movl	%ecx, 1120(%rsp)
	movl	1128(%rsp), %ecx
	movl	%ecx, 1124(%rsp)
	addl	%eax, %esi
	movl	%esi, 1128(%rsp)
	incq	%rdx
Lzkboo_encrypt$23:
	cmpq	$64, %rdx
	jb  	Lzkboo_encrypt$24
	movl	1336(%rsp), %eax
	addl	1128(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1124(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1120(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1116(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1112(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1108(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movl	1360(%rsp), %eax
	addl	1104(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1096(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$21
Lzkboo_encrypt$22:
	movl	1336(%rsp,%rax,4), %ecx
	movl	%ecx, 1368(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$21:
	cmpq	$8, %rax
	jb  	Lzkboo_encrypt$22
	movq	$0, %rax
	movl	$0, %edx
	jmp 	Lzkboo_encrypt$3
Lzkboo_encrypt$4:
	cmpl	$256, 1100(%rsp)
	jb  	Lzkboo_encrypt$18
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$19
Lzkboo_encrypt$20:
	incq	%rcx
Lzkboo_encrypt$19:
	cmpq	$32, %rcx
	jb  	Lzkboo_encrypt$20
Lzkboo_encrypt$18:
	movl	%edx, 1096(%rsp)
	movl	1096(%rsp), %ecx
	jmp 	Lzkboo_encrypt$16
Lzkboo_encrypt$17:
	incq	(%rsp)
	addl	$-8, %ecx
Lzkboo_encrypt$16:
	cmpl	$8, %ecx
	jnbe	Lzkboo_encrypt$17
	movq	(%rsp), %rdx
	movl	1368(%rsp,%rdx,4), %edx
	jmp 	Lzkboo_encrypt$14
Lzkboo_encrypt$15:
	shrl	$1, %edx
	addl	$-1, %ecx
Lzkboo_encrypt$14:
	cmpl	$0, %ecx
	jnbe	Lzkboo_encrypt$15
	andl	$1, %edx
	movl	1096(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1096(%rsp)
	movl	1096(%rsp), %ecx
	jmp 	Lzkboo_encrypt$12
Lzkboo_encrypt$13:
	incq	8(%rsp)
	addl	$-8, %ecx
Lzkboo_encrypt$12:
	cmpl	$8, %ecx
	jnbe	Lzkboo_encrypt$13
	movq	8(%rsp), %rsi
	movl	1368(%rsp,%rsi,4), %esi
	jmp 	Lzkboo_encrypt$10
Lzkboo_encrypt$11:
	shrl	$1, %esi
	addl	$-1, %ecx
Lzkboo_encrypt$10:
	cmpl	$0, %ecx
	jnbe	Lzkboo_encrypt$11
	andl	$1, %esi
	cmpl	$0, %edx
	je  	Lzkboo_encrypt$5
	cmpl	$0, %esi
	jne 	Lzkboo_encrypt$6
	movq	$2, 72(%rsp,%rax,8)
	incq	%rax
Lzkboo_encrypt$9:
	jmp 	Lzkboo_encrypt$6
Lzkboo_encrypt$5:
	cmpl	$0, %esi
	je  	Lzkboo_encrypt$7
	movq	$1, 72(%rsp,%rax,8)
	incq	%rax
	jmp 	Lzkboo_encrypt$6
Lzkboo_encrypt$7:
	movq	$0, 72(%rsp,%rax,8)
	incq	%rax
Lzkboo_encrypt$8:
Lzkboo_encrypt$6:
	movl	1096(%rsp), %edx
	incl	%edx
	movl	%edx, 1100(%rsp)
Lzkboo_encrypt$3:
	cmpq	16(%rsp), %rax
	jb  	Lzkboo_encrypt$4
	movq	$0, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$1
Lzkboo_encrypt$2:
	movq	72(%rsp,%rcx,8), %rdx
	movq	%rdx, (%r8,%rax)
	addq	$8, %rax
	incq	%rcx
Lzkboo_encrypt$1:
	cmpq	$128, %rcx
	jb  	Lzkboo_encrypt$2
	movq	4856(%rsp), %rbx
	movq	4864(%rsp), %rbp
	movq	4872(%rsp), %r12
	movq	4880(%rsp), %r13
	movq	4888(%rsp), %r14
	movq	4896(%rsp), %r15
	movq	4848(%rsp), %rsp
	ret 
LROTRIGHT_19$1:
	movl	%r10d, %eax
	shrl	$19, %eax
	shll	$13, %r10d
	orl 	%r10d, %eax
	jmp 	*%rcx
LROTRIGHT_17$1:
	movl	%eax, %r11d
	shrl	$17, %r11d
	shll	$15, %eax
	orl 	%eax, %r11d
	jmp 	*%rcx
LROTRIGHT_18$1:
	movl	%ecx, %eax
	shrl	$18, %ecx
	shll	$14, %eax
	xorl	%eax, %ecx
	jmp 	*%r10
LROTRIGHT_7$1:
	movl	%r11d, %eax
	shrl	$7, %r11d
	shll	$25, %eax
	xorl	%eax, %r11d
	jmp 	*%rcx
LROTRIGHT_25$1:
	movl	%ecx, %eax
	shrl	$25, %ecx
	shll	$7, %eax
	orl 	%eax, %ecx
	jmp 	*%rbp
LROTRIGHT_11$1:
	movl	%ebx, %eax
	shrl	$11, %ebx
	shll	$21, %eax
	orl 	%eax, %ebx
	jmp 	*%rcx
LROTRIGHT_6$1:
	movl	%r12d, %eax
	shrl	$6, %r12d
	shll	$26, %eax
	orl 	%eax, %r12d
	jmp 	*%rcx
LROTRIGHT_22$1:
	movl	%ecx, %ebp
	shrl	$22, %ecx
	shll	$10, %ebp
	orl 	%ebp, %ecx
	jmp 	*%rax
LROTRIGHT_13$1:
	movl	%ebp, %eax
	shrl	$13, %ebp
	shll	$19, %eax
	orl 	%eax, %ebp
	jmp 	*%rcx
LROTRIGHT_2$1:
	movl	%ebp, %eax
	shrl	$2, %ebp
	shll	$30, %eax
	orl 	%eax, %ebp
	jmp 	*%rcx
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
