	.text
	.p2align	5
	.globl	_zkboo_encrypt
	.globl	zkboo_encrypt
_zkboo_encrypt:
zkboo_encrypt:
	movq	%rsp, %rax
	leaq	-2640(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 2592(%rsp)
	movq	%rbx, 2600(%rsp)
	movq	%rbp, 2608(%rsp)
	movq	%r12, 2616(%rsp)
	movq	%r13, 2624(%rsp)
	movq	%r14, 2632(%rsp)
	movq	$128, 16(%rsp)
	movq	$128, %rax
	movq	%rax, 24(%rsp)
	movq	$0, %rax
	movq	%rcx, 32(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$115
Lzkboo_encrypt$116:
	movl	$1732584193, 1232(%rsp)
	movl	$-271733879, 1236(%rsp)
	movl	$-1732584194, 1240(%rsp)
	movl	$271733878, 1244(%rsp)
	movl	$-1009589776, 1248(%rsp)
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movq	$0, %r10
	movq	24(%rsp), %r11
	shrq	$3, %r11
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$627
Lzkboo_encrypt$628:
	imulq	$16, 40(%rsp), %rbx
	imulq	16(%rsp), %rbx
	movq	$16, %rbp
	imulq	%rcx, %rbp
	addq	$6144, %rbp
	addq	%rbx, %rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1440(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1441(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1442(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1443(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1444(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1445(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1446(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1447(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1448(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1449(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1450(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1451(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1452(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1453(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bl
	movb	%bl, 1454(%rsp)
	incq	%rbp
	movb	(%rdx,%rbp), %bpl
	movb	%bpl, 1455(%rsp)
	movq	40(%rsp), %rbp
	imulq	$64, %rbp, %rbp
	addq	%r11, %rbp
	movb	$-128, 1440(%rsp,%rbp)
	imulq	$64, 40(%rsp), %rbp
	addq	$62, %rbp
	movq	24(%rsp), %rbx
	movb	%bl, 1440(%rsp,%rbp)
	shrb	$8, 1440(%rsp,%rbp)
	incq	%rbp
	movq	24(%rsp), %rbx
	movb	%bl, 1440(%rsp,%rbp)
	imulq	$64, 40(%rsp), %rbp
	movq	40(%rsp), %rbx
	imulq	16(%rsp), %rbx
	imulq	$64, %rbx, %rbx
	imulq	$64, %rcx, %r12
	addq	%rbx, %r12
	movq	$0, 48(%rsp)
	jmp 	Lzkboo_encrypt$631
Lzkboo_encrypt$632:
	movb	1440(%rsp,%rbp), %bl
	movb	%bl, (%r8,%r12)
	incq	%r12
	incq	%rbp
	incq	48(%rsp)
Lzkboo_encrypt$631:
	cmpq	$64, 48(%rsp)
	jb  	Lzkboo_encrypt$632
	movq	$0, 48(%rsp)
	jmp 	Lzkboo_encrypt$629
Lzkboo_encrypt$630:
	movq	48(%rsp), %rbp
	movl	1440(%rsp,%rbp,4), %ebp
	movq	40(%rsp), %rbx
	imulq	$80, %rbx, %rbx
	addq	48(%rsp), %rbx
	movl	%ebp, 1632(%rsp,%rbx,4)
	incq	48(%rsp)
Lzkboo_encrypt$629:
	cmpq	$16, 48(%rsp)
	jb  	Lzkboo_encrypt$630
	incq	40(%rsp)
Lzkboo_encrypt$627:
	cmpq	$3, 40(%rsp)
	jb  	Lzkboo_encrypt$628
	movq	$16, 40(%rsp)
	jmp 	Lzkboo_encrypt$619
Lzkboo_encrypt$620:
	movq	$0, 48(%rsp)
	jmp 	Lzkboo_encrypt$621
Lzkboo_encrypt$622:
	movq	48(%rsp), %r11
	imulq	$80, %r11, %r11
	addq	40(%rsp), %r11
	movl	1620(%rsp,%r11,4), %ebp
	movl	1600(%rsp,%r11,4), %ebx
	movl	%ebp, 1088(%rsp)
	xorl	%ebx, 1088(%rsp)
	movl	1576(%rsp,%r11,4), %ebp
	xorl	%ebp, 1088(%rsp)
	movl	1568(%rsp,%r11,4), %ebp
	xorl	%ebp, 1088(%rsp)
	movq	$1, %rbp
	movl	1088(%rsp), %ebx
	movq	%rbp, %r12
	jmp 	Lzkboo_encrypt$625
Lzkboo_encrypt$626:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$625:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$626
	movq	$32, %r12
	subq	%rbp, %r12
	movl	1088(%rsp), %ebp
	jmp 	Lzkboo_encrypt$623
Lzkboo_encrypt$624:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$623:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$624
	orl 	%ebp, %ebx
	movl	%ebx, 1632(%rsp,%r11,4)
	incq	48(%rsp)
Lzkboo_encrypt$621:
	cmpq	$3, 48(%rsp)
	jb  	Lzkboo_encrypt$622
	incq	40(%rsp)
Lzkboo_encrypt$619:
	cmpq	$80, 40(%rsp)
	jb  	Lzkboo_encrypt$620
	movl	1232(%rsp), %r11d
	movl	%r11d, 1100(%rsp)
	movl	%r11d, 1104(%rsp)
	movl	%r11d, 1108(%rsp)
	movl	1236(%rsp), %r11d
	movl	%r11d, 1112(%rsp)
	movl	%r11d, 1116(%rsp)
	movl	%r11d, 1120(%rsp)
	movl	1240(%rsp), %r11d
	movl	%r11d, 1124(%rsp)
	movl	%r11d, 1128(%rsp)
	movl	%r11d, 1132(%rsp)
	movl	1244(%rsp), %r11d
	movl	%r11d, 1136(%rsp)
	movl	%r11d, 1140(%rsp)
	movl	%r11d, 1144(%rsp)
	movl	1248(%rsp), %r11d
	movl	%r11d, 1148(%rsp)
	movl	%r11d, 1152(%rsp)
	movl	%r11d, 1156(%rsp)
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$413
Lzkboo_encrypt$414:
	cmpq	$19, 40(%rsp)
	jnbe	Lzkboo_encrypt$614
	movl	1124(%rsp), %r11d
	xorl	1136(%rsp), %r11d
	movl	%r11d, 1160(%rsp)
	movl	1128(%rsp), %r11d
	xorl	1140(%rsp), %r11d
	movl	%r11d, 1164(%rsp)
	movl	1132(%rsp), %r11d
	xorl	1144(%rsp), %r11d
	movl	%r11d, 1168(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$617
Lzkboo_encrypt$618:
	imulq	$4, %r11, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movq	%r11, %rbx
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%rbx,4)
	incq	%r11
Lzkboo_encrypt$617:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$618
	incq	%r10
	movl	1160(%rsp), %r11d
	movl	1112(%rsp), %ebp
	andl	1164(%rsp), %ebp
	movl	1116(%rsp), %ebx
	andl	1160(%rsp), %ebx
	movl	1112(%rsp), %r12d
	andl	1160(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	1172(%rsp), %ebx
	movl	1176(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	%ebp, 1160(%rsp)
	movl	1116(%rsp), %ebp
	andl	1168(%rsp), %ebp
	movl	1120(%rsp), %ebx
	andl	1164(%rsp), %ebx
	movl	1116(%rsp), %r12d
	andl	1164(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	1176(%rsp), %ebx
	movl	1180(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	%ebp, 1164(%rsp)
	movl	1120(%rsp), %ebp
	andl	%r11d, %ebp
	movl	1112(%rsp), %r11d
	andl	1168(%rsp), %r11d
	movl	1120(%rsp), %ebx
	andl	1168(%rsp), %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	1180(%rsp), %r11d
	movl	1172(%rsp), %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo_encrypt$615
Lzkboo_encrypt$616:
	movq	%r11, %rbx
	imulq	16(%rsp), %rbx
	imulq	$370, %rbx, %rbx
	addq	$6144, %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	1160(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$615:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$616
	incq	%rax
	movl	1136(%rsp), %r11d
	xorl	1160(%rsp), %r11d
	movl	%r11d, 1160(%rsp)
	movl	1140(%rsp), %r11d
	xorl	1164(%rsp), %r11d
	movl	%r11d, 1164(%rsp)
	movl	1144(%rsp), %r11d
	xorl	1168(%rsp), %r11d
	movl	%r11d, 1168(%rsp)
Lzkboo_encrypt$614:
	cmpq	$39, 40(%rsp)
	jbe 	Lzkboo_encrypt$613
Lzkboo_encrypt$613:
	cmpq	$59, 40(%rsp)
	jbe 	Lzkboo_encrypt$607
	movl	$-899497514, 1080(%rsp)
	jmp 	Lzkboo_encrypt$608
Lzkboo_encrypt$607:
	movl	$0, 1172(%rsp)
	movl	$0, 1176(%rsp)
	movl	$0, 1180(%rsp)
	movl	$0, 1184(%rsp)
	movl	$0, 1188(%rsp)
	movl	$0, 1192(%rsp)
	movl	1112(%rsp), %r11d
	xorl	1124(%rsp), %r11d
	movl	%r11d, 1172(%rsp)
	movl	1116(%rsp), %r11d
	xorl	1128(%rsp), %r11d
	movl	%r11d, 1176(%rsp)
	movl	1120(%rsp), %r11d
	xorl	1132(%rsp), %r11d
	movl	%r11d, 1180(%rsp)
	movl	1112(%rsp), %r11d
	xorl	1136(%rsp), %r11d
	movl	%r11d, 1184(%rsp)
	movl	1116(%rsp), %r11d
	xorl	1140(%rsp), %r11d
	movl	%r11d, 1188(%rsp)
	movl	1120(%rsp), %r11d
	xorl	1144(%rsp), %r11d
	movl	%r11d, 1192(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$611
Lzkboo_encrypt$612:
	imulq	$4, %r11, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movq	%r11, %rbx
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1196(%rsp,%rbx,4)
	incq	%r11
Lzkboo_encrypt$611:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$612
	incq	%r10
	movl	1184(%rsp), %r11d
	movl	1172(%rsp), %ebp
	andl	1188(%rsp), %ebp
	movl	1176(%rsp), %ebx
	andl	1184(%rsp), %ebx
	movl	1172(%rsp), %r12d
	andl	1184(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	1196(%rsp), %ebx
	movl	1200(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	%ebp, 1160(%rsp)
	movl	1176(%rsp), %ebp
	andl	1192(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	1188(%rsp), %ebx
	movl	1176(%rsp), %r12d
	andl	1188(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	1200(%rsp), %ebx
	movl	1204(%rsp), %r12d
	xorl	%ebx, %ebp
	xorl	%r12d, %ebp
	movl	%ebp, 1164(%rsp)
	movl	1180(%rsp), %ebp
	andl	%r11d, %ebp
	movl	1172(%rsp), %r11d
	andl	1192(%rsp), %r11d
	movl	1180(%rsp), %ebx
	andl	1192(%rsp), %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	1204(%rsp), %r11d
	movl	1196(%rsp), %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo_encrypt$609
Lzkboo_encrypt$610:
	movq	%r11, %rbx
	imulq	16(%rsp), %rbx
	imulq	$370, %rbx, %rbx
	addq	$6144, %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	1160(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$609:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$610
	incq	%rax
	movl	1160(%rsp), %r11d
	xorl	1112(%rsp), %r11d
	movl	%r11d, 1160(%rsp)
	movl	1164(%rsp), %r11d
	xorl	1116(%rsp), %r11d
	movl	%r11d, 1164(%rsp)
	movl	1168(%rsp), %r11d
	xorl	1120(%rsp), %r11d
	movl	%r11d, 1168(%rsp)
	movl	$-1894007588, 1080(%rsp)
Lzkboo_encrypt$608:
	movq	$5, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1100(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$605
Lzkboo_encrypt$606:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$605:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$606
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$603
Lzkboo_encrypt$604:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$603:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$604
	orl 	%ebp, %ebx
	movl	%ebx, 1088(%rsp)
	movl	1104(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$601
Lzkboo_encrypt$602:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$601:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$602
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$599
Lzkboo_encrypt$600:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$599:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$600
	orl 	%ebp, %ebx
	movl	%ebx, 1092(%rsp)
	movl	1108(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$597
Lzkboo_encrypt$598:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$597:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$598
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$595
Lzkboo_encrypt$596:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$595:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$596
	orl 	%ebp, %ebx
	movl	%ebx, 1096(%rsp)
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movl	1088(%rsp), %r11d
	movl	%r11d, 1184(%rsp)
	movl	1092(%rsp), %r11d
	movl	%r11d, 1188(%rsp)
	movl	1096(%rsp), %r11d
	movl	%r11d, 1192(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$593
Lzkboo_encrypt$594:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$593:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$594
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$555
Lzkboo_encrypt$556:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$587
Lzkboo_encrypt$588:
	movl	1160(%rsp,%rbp,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	movl	1196(%rsp,%rbp,4), %r13d
	xorl	%r13d, %ebx
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$591
Lzkboo_encrypt$592:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$591:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$592
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$589
Lzkboo_encrypt$590:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$589:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$590
	andl	$1, %r12d
	movl	%ebx, 1220(%rsp,%rbp,4)
	movl	%r12d, 1208(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$587:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$588
	movq	$1, %rbp
	movq	$0, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$585
Lzkboo_encrypt$586:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$585:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$586
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$583
Lzkboo_encrypt$584:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$583:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$584
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$581
Lzkboo_encrypt$582:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$581:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$582
	andl	$1, %r12d
	movl	1220(%rsp), %r13d
	andl	1212(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1224(%rsp), %ebp
	andl	1208(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1220(%rsp), %ebp
	andl	1208(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$579
Lzkboo_encrypt$580:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$579:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$580
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$577
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$578
Lzkboo_encrypt$577:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$578:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$575
Lzkboo_encrypt$576:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$575:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$576
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$573
Lzkboo_encrypt$574:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$573:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$574
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$571
Lzkboo_encrypt$572:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$571:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$572
	andl	$1, %r12d
	movl	1224(%rsp), %r13d
	andl	1216(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1228(%rsp), %ebp
	andl	1212(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1224(%rsp), %ebp
	andl	1212(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$569
Lzkboo_encrypt$570:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$569:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$570
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$567
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$568
Lzkboo_encrypt$567:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$568:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$565
Lzkboo_encrypt$566:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$565:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$566
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$563
Lzkboo_encrypt$564:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$563:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$564
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$561
Lzkboo_encrypt$562:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$561:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$562
	andl	$1, %r12d
	movl	1228(%rsp), %r13d
	andl	1208(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1220(%rsp), %ebp
	andl	1216(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1228(%rsp), %ebp
	andl	1216(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$559
Lzkboo_encrypt$560:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$559:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$560
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$557
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$558
Lzkboo_encrypt$557:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$558:
	incq	%r11
Lzkboo_encrypt$555:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$556
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo_encrypt$553
Lzkboo_encrypt$554:
	movl	1184(%rsp,%r11,4), %ebx
	xorl	1160(%rsp,%r11,4), %ebx
	xorl	1196(%rsp,%r11,4), %ebx
	movl	%ebx, 1088(%rsp,%r11,4)
	movq	%r11, %rbx
	imulq	$370, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%rbp, %rbx
	addq	$6144, %rbx
	addq	%rax, %rbx
	movl	1196(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$553:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$554
	incq	%rax
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movl	1088(%rsp), %r11d
	movl	%r11d, 1184(%rsp)
	movl	1092(%rsp), %r11d
	movl	%r11d, 1188(%rsp)
	movl	1096(%rsp), %r11d
	movl	%r11d, 1192(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$551
Lzkboo_encrypt$552:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$551:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$552
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$513
Lzkboo_encrypt$514:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$545
Lzkboo_encrypt$546:
	movl	1148(%rsp,%rbp,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	movl	1196(%rsp,%rbp,4), %r13d
	xorl	%r13d, %ebx
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$549
Lzkboo_encrypt$550:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$549:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$550
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$547
Lzkboo_encrypt$548:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$547:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$548
	andl	$1, %r12d
	movl	%ebx, 1208(%rsp,%rbp,4)
	movl	%r12d, 1220(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$545:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$546
	movq	$1, %rbp
	movq	$0, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$543
Lzkboo_encrypt$544:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$543:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$544
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$541
Lzkboo_encrypt$542:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$541:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$542
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$539
Lzkboo_encrypt$540:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$539:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$540
	andl	$1, %r12d
	movl	1208(%rsp), %r13d
	andl	1224(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1212(%rsp), %ebp
	andl	1220(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1208(%rsp), %ebp
	andl	1220(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$537
Lzkboo_encrypt$538:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$537:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$538
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$535
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$536
Lzkboo_encrypt$535:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$536:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$533
Lzkboo_encrypt$534:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$533:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$534
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$531
Lzkboo_encrypt$532:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$531:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$532
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$529
Lzkboo_encrypt$530:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$529:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$530
	andl	$1, %r12d
	movl	1212(%rsp), %r13d
	andl	1228(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1216(%rsp), %ebp
	andl	1224(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1212(%rsp), %ebp
	andl	1224(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$527
Lzkboo_encrypt$528:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$527:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$528
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$525
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$526
Lzkboo_encrypt$525:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$526:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$523
Lzkboo_encrypt$524:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$523:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$524
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$521
Lzkboo_encrypt$522:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$521:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$522
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$519
Lzkboo_encrypt$520:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$519:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$520
	andl	$1, %r12d
	movl	1216(%rsp), %r13d
	andl	1220(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1208(%rsp), %ebp
	andl	1228(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1216(%rsp), %ebp
	andl	1228(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$517
Lzkboo_encrypt$518:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$517:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$518
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$515
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$516
Lzkboo_encrypt$515:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$516:
	incq	%r11
Lzkboo_encrypt$513:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$514
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo_encrypt$511
Lzkboo_encrypt$512:
	movl	1184(%rsp,%r11,4), %ebx
	xorl	1148(%rsp,%r11,4), %ebx
	xorl	1196(%rsp,%r11,4), %ebx
	movl	%ebx, 1088(%rsp,%r11,4)
	movq	%r11, %rbx
	imulq	$370, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%rbp, %rbx
	addq	$6144, %rbx
	addq	%rax, %rbx
	movl	1196(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$511:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$512
	incq	%rax
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$509
Lzkboo_encrypt$510:
	movq	%r11, %rbp
	imulq	$4, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1184(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$509:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$510
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$471
Lzkboo_encrypt$472:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$503
Lzkboo_encrypt$504:
	movl	1088(%rsp,%rbx,4), %r12d
	movl	1196(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$507
Lzkboo_encrypt$508:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$507:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$508
	andl	$1, %r12d
	movl	%r12d, 1208(%rsp,%rbx,4)
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$505
Lzkboo_encrypt$506:
	addl	$-1, %r13d
Lzkboo_encrypt$505:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$506
	movl	%r12d, 1172(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$503:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$504
	movq	$1, %rbx
	movq	$0, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$501
Lzkboo_encrypt$502:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$501:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$502
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$499
Lzkboo_encrypt$500:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$499:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$500
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$497
Lzkboo_encrypt$498:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$497:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$498
	andl	$1, %r13d
	movl	1208(%rsp), %r14d
	andl	1176(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1212(%rsp), %ebx
	andl	1172(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1208(%rsp), %ebx
	andl	1172(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$0, %rbx
	movq	%rbp, %r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$495
Lzkboo_encrypt$496:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$495:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$496
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$493
	xorl	$-1, %r14d
	andl	%r14d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$494
Lzkboo_encrypt$493:
	orl 	%r14d, 1196(%rsp,%rbx,4)
Lzkboo_encrypt$494:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$491
Lzkboo_encrypt$492:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$491:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$492
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$489
Lzkboo_encrypt$490:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$489:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$490
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$487
Lzkboo_encrypt$488:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$487:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$488
	andl	$1, %r13d
	movl	1212(%rsp), %r14d
	andl	1180(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1216(%rsp), %ebx
	andl	1176(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1212(%rsp), %ebx
	andl	1176(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$1, %rbx
	movq	%rbp, %r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$485
Lzkboo_encrypt$486:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$485:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$486
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$483
	xorl	$-1, %r14d
	andl	%r14d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$484
Lzkboo_encrypt$483:
	orl 	%r14d, 1196(%rsp,%rbx,4)
Lzkboo_encrypt$484:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$481
Lzkboo_encrypt$482:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$481:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$482
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$479
Lzkboo_encrypt$480:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$479:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$480
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo_encrypt$477
Lzkboo_encrypt$478:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$477:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$478
	andl	$1, %r13d
	movl	1216(%rsp), %r14d
	andl	1172(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1208(%rsp), %ebx
	andl	1180(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1216(%rsp), %ebx
	andl	1180(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$2, %rbx
	movl	$1, %r12d
	andl	%r14d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$475
Lzkboo_encrypt$476:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo_encrypt$475:
	cmpq	$0, %rbp
	jnbe	Lzkboo_encrypt$476
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$473
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$474
Lzkboo_encrypt$473:
	orl 	%r13d, 1196(%rsp,%rbx,4)
Lzkboo_encrypt$474:
	incq	%r11
Lzkboo_encrypt$471:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$472
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$469
Lzkboo_encrypt$470:
	movl	1088(%rsp,%r11,4), %ebp
	movl	1196(%rsp,%r11,4), %ebx
	xorl	%ebx, %ebp
	xorl	1080(%rsp), %ebp
	movl	%ebp, 1088(%rsp,%r11,4)
	movq	%r11, %rbp
	imulq	$365, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	$768, %rbp
	addq	%rax, %rbp
	movl	1196(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$469:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$470
	incq	%rax
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$467
Lzkboo_encrypt$468:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1184(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$467:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$468
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$429
Lzkboo_encrypt$430:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$461
Lzkboo_encrypt$462:
	imulq	$80, %rbp, %rbx
	addq	40(%rsp), %rbx
	movl	1632(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%rbp,4), %r12d
	movl	1088(%rsp,%rbp,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r12d, %r13d
	movl	%r11d, %r12d
	jmp 	Lzkboo_encrypt$465
Lzkboo_encrypt$466:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_encrypt$465:
	cmpl	$0, %r12d
	jnbe	Lzkboo_encrypt$466
	andl	$1, %ebx
	movl	%ebx, 1172(%rsp,%rbp,4)
	movl	%r11d, %ebx
	jmp 	Lzkboo_encrypt$463
Lzkboo_encrypt$464:
	shrl	$1, %r13d
	addl	$-1, %ebx
Lzkboo_encrypt$463:
	cmpl	$0, %ebx
	jnbe	Lzkboo_encrypt$464
	andl	$1, %r13d
	movl	%r13d, 1208(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$461:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$462
	movq	$1, %rbp
	movq	$0, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$459
Lzkboo_encrypt$460:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$459:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$460
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$457
Lzkboo_encrypt$458:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$457:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$458
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$455
Lzkboo_encrypt$456:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$455:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$456
	andl	$1, %r12d
	movl	1172(%rsp), %r13d
	andl	1212(%rsp), %r13d
	andl	%ebp, %r13d
	movl	1176(%rsp), %ebp
	andl	1208(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1172(%rsp), %ebp
	andl	1208(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$453
Lzkboo_encrypt$454:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$453:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$454
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$451
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$452
Lzkboo_encrypt$451:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$452:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$449
Lzkboo_encrypt$450:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$449:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$450
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$447
Lzkboo_encrypt$448:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$447:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$448
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$445
Lzkboo_encrypt$446:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$445:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$446
	andl	$1, %r12d
	movl	1176(%rsp), %r13d
	andl	1216(%rsp), %r13d
	andl	%ebp, %r13d
	movl	1180(%rsp), %ebp
	andl	1212(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1176(%rsp), %ebp
	andl	1212(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$443
Lzkboo_encrypt$444:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$443:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$444
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$441
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$442
Lzkboo_encrypt$441:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$442:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$439
Lzkboo_encrypt$440:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$439:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$440
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$437
Lzkboo_encrypt$438:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$437:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$438
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo_encrypt$435
Lzkboo_encrypt$436:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$435:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$436
	andl	$1, %r12d
	movl	1180(%rsp), %r13d
	andl	1208(%rsp), %r13d
	andl	%ebp, %r13d
	movl	1172(%rsp), %ebp
	andl	1216(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1180(%rsp), %ebp
	andl	1216(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movq	%r11, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$433
Lzkboo_encrypt$434:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$433:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$434
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$431
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$432
Lzkboo_encrypt$431:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo_encrypt$432:
	incq	%r11
Lzkboo_encrypt$429:
	cmpq	$31, %r11
	jb  	Lzkboo_encrypt$430
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo_encrypt$427
Lzkboo_encrypt$428:
	movq	%r11, %rbx
	imulq	$370, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%rbp, %rbx
	addq	$6144, %rbx
	addq	%rax, %rbx
	movl	1196(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$427:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$428
	incq	%rax
	movl	1136(%rsp), %r11d
	movl	%r11d, 1148(%rsp)
	movl	1140(%rsp), %r11d
	movl	%r11d, 1152(%rsp)
	movl	1144(%rsp), %r11d
	movl	%r11d, 1156(%rsp)
	movl	1124(%rsp), %r11d
	movl	%r11d, 1136(%rsp)
	movl	1128(%rsp), %r11d
	movl	%r11d, 1140(%rsp)
	movl	1132(%rsp), %r11d
	movl	%r11d, 1144(%rsp)
	movq	$30, %r11
	movl	1112(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$425
Lzkboo_encrypt$426:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$425:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$426
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$423
Lzkboo_encrypt$424:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$423:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$424
	orl 	%ebp, %ebx
	movl	%ebx, 1124(%rsp)
	movl	1116(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$421
Lzkboo_encrypt$422:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$421:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$422
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$419
Lzkboo_encrypt$420:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$419:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$420
	orl 	%ebp, %ebx
	movl	%ebx, 1128(%rsp)
	movl	1120(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo_encrypt$417
Lzkboo_encrypt$418:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$417:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$418
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo_encrypt$415
Lzkboo_encrypt$416:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_encrypt$415:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$416
	orl 	%ebp, %ebx
	movl	%ebx, 1132(%rsp)
	movl	1100(%rsp), %r11d
	movl	%r11d, 1112(%rsp)
	movl	1104(%rsp), %r11d
	movl	%r11d, 1116(%rsp)
	movl	1108(%rsp), %r11d
	movl	%r11d, 1120(%rsp)
	movl	1088(%rsp), %r11d
	movl	%r11d, 1100(%rsp)
	movl	1092(%rsp), %r11d
	movl	%r11d, 1104(%rsp)
	movl	1096(%rsp), %r11d
	movl	%r11d, 1108(%rsp)
	incq	40(%rsp)
Lzkboo_encrypt$413:
	cmpq	$80, 40(%rsp)
	jb  	Lzkboo_encrypt$414
	movl	1232(%rsp), %r11d
	movl	%r11d, 1284(%rsp)
	movl	1232(%rsp), %r11d
	movl	%r11d, 1288(%rsp)
	movl	1232(%rsp), %r11d
	movl	%r11d, 1292(%rsp)
	movl	1236(%rsp), %r11d
	movl	%r11d, 1296(%rsp)
	movl	1236(%rsp), %r11d
	movl	%r11d, 1300(%rsp)
	movl	1236(%rsp), %r11d
	movl	%r11d, 1304(%rsp)
	movl	1240(%rsp), %r11d
	movl	%r11d, 1308(%rsp)
	movl	1240(%rsp), %r11d
	movl	%r11d, 1312(%rsp)
	movl	1240(%rsp), %r11d
	movl	%r11d, 1316(%rsp)
	movl	1244(%rsp), %r11d
	movl	%r11d, 1320(%rsp)
	movl	1244(%rsp), %r11d
	movl	%r11d, 1324(%rsp)
	movl	1244(%rsp), %r11d
	movl	%r11d, 1328(%rsp)
	movl	1248(%rsp), %r11d
	movl	%r11d, 1332(%rsp)
	movl	1248(%rsp), %r11d
	movl	%r11d, 1336(%rsp)
	movl	1248(%rsp), %r11d
	movl	%r11d, 1340(%rsp)
	movq	$0, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1284(%rsp), %ebp
	movl	%ebp, 1160(%rsp)
	movl	1288(%rsp), %ebp
	movl	%ebp, 1164(%rsp)
	movl	1292(%rsp), %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$411
Lzkboo_encrypt$412:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1196(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$411:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$412
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$373
Lzkboo_encrypt$374:
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$405
Lzkboo_encrypt$406:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$409
Lzkboo_encrypt$410:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$409:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$410
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$407
Lzkboo_encrypt$408:
	addl	$-1, %r13d
Lzkboo_encrypt$407:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$408
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1184(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$405:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$406
	movq	$1, %rbx
	movq	$0, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$403
Lzkboo_encrypt$404:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$403:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$404
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$401
Lzkboo_encrypt$402:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$401:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$402
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$399
Lzkboo_encrypt$400:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$399:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$400
	andl	$1, %r13d
	movl	1172(%rsp), %r14d
	andl	1188(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1184(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1184(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$0, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$397
Lzkboo_encrypt$398:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$397:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$398
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$395
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$396
Lzkboo_encrypt$395:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$396:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$393
Lzkboo_encrypt$394:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$393:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$394
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$391
Lzkboo_encrypt$392:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$391:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$392
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$389
Lzkboo_encrypt$390:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$389:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$390
	andl	$1, %r13d
	movl	1176(%rsp), %r14d
	andl	1192(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1188(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1188(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$1, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$387
Lzkboo_encrypt$388:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$387:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$388
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$385
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$386
Lzkboo_encrypt$385:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$386:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$383
Lzkboo_encrypt$384:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$383:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$384
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$381
Lzkboo_encrypt$382:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$381:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$382
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$379
Lzkboo_encrypt$380:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$379:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$380
	andl	$1, %r13d
	movl	1180(%rsp), %r14d
	andl	1184(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1192(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1192(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$2, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$377
Lzkboo_encrypt$378:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$377:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$378
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$375
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$376
Lzkboo_encrypt$375:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$376:
	incq	%rbp
Lzkboo_encrypt$373:
	cmpq	$31, %rbp
	jb  	Lzkboo_encrypt$374
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$371
Lzkboo_encrypt$372:
	movl	1160(%rsp,%rbp,4), %ebx
	xorl	1100(%rsp,%rbp,4), %ebx
	xorl	1088(%rsp,%rbp,4), %ebx
	movl	%ebx, 1284(%rsp,%rbp,4)
	movq	%r11, %rbx
	imulq	$365, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	$768, %rbx
	addq	%rax, %rbx
	movl	1088(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$371:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$372
	incq	%rax
	movq	$1, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1284(%rsp), %ebp
	movl	%ebp, 1160(%rsp)
	movl	1288(%rsp), %ebp
	movl	%ebp, 1164(%rsp)
	movl	1292(%rsp), %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$369
Lzkboo_encrypt$370:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1100(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$369:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$370
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$331
Lzkboo_encrypt$332:
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$363
Lzkboo_encrypt$364:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$367
Lzkboo_encrypt$368:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$367:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$368
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$365
Lzkboo_encrypt$366:
	addl	$-1, %r13d
Lzkboo_encrypt$365:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$366
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1196(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$363:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$364
	movq	$1, %rbx
	movq	$0, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$361
Lzkboo_encrypt$362:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$361:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$362
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$359
Lzkboo_encrypt$360:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$359:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$360
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$357
Lzkboo_encrypt$358:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$357:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$358
	andl	$1, %r13d
	movl	1172(%rsp), %r14d
	andl	1200(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1196(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1196(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$0, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$355
Lzkboo_encrypt$356:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$355:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$356
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$353
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$354
Lzkboo_encrypt$353:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$354:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$351
Lzkboo_encrypt$352:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$351:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$352
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$349
Lzkboo_encrypt$350:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$349:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$350
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$347
Lzkboo_encrypt$348:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$347:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$348
	andl	$1, %r13d
	movl	1176(%rsp), %r14d
	andl	1204(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1200(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1200(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$1, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$345
Lzkboo_encrypt$346:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$345:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$346
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$343
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$344
Lzkboo_encrypt$343:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$344:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$341
Lzkboo_encrypt$342:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$341:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$342
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$339
Lzkboo_encrypt$340:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$339:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$340
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$337
Lzkboo_encrypt$338:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$337:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$338
	andl	$1, %r13d
	movl	1180(%rsp), %r14d
	andl	1196(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1204(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1204(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$2, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$335
Lzkboo_encrypt$336:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$335:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$336
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$333
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$334
Lzkboo_encrypt$333:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$334:
	incq	%rbp
Lzkboo_encrypt$331:
	cmpq	$31, %rbp
	jb  	Lzkboo_encrypt$332
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$329
Lzkboo_encrypt$330:
	movl	1160(%rsp,%rbp,4), %ebx
	xorl	1112(%rsp,%rbp,4), %ebx
	xorl	1088(%rsp,%rbp,4), %ebx
	movl	%ebx, 1284(%rsp,%rbp,4)
	movq	%r11, %rbx
	imulq	$365, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	$768, %rbx
	addq	%rax, %rbx
	movl	1088(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$329:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$330
	incq	%rax
	movq	$2, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1284(%rsp), %ebp
	movl	%ebp, 1160(%rsp)
	movl	1288(%rsp), %ebp
	movl	%ebp, 1164(%rsp)
	movl	1292(%rsp), %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$327
Lzkboo_encrypt$328:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1112(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$327:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$328
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$289
Lzkboo_encrypt$290:
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$321
Lzkboo_encrypt$322:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$325
Lzkboo_encrypt$326:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$325:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$326
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$323
Lzkboo_encrypt$324:
	addl	$-1, %r13d
Lzkboo_encrypt$323:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$324
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1100(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$321:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$322
	movq	$1, %rbx
	movq	$0, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$319
Lzkboo_encrypt$320:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$319:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$320
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$317
Lzkboo_encrypt$318:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$317:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$318
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$315
Lzkboo_encrypt$316:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$315:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$316
	andl	$1, %r13d
	movl	1172(%rsp), %r14d
	andl	1104(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1100(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1100(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$0, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$313
Lzkboo_encrypt$314:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$313:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$314
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$311
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$312
Lzkboo_encrypt$311:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$312:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$309
Lzkboo_encrypt$310:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$309:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$310
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$307
Lzkboo_encrypt$308:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$307:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$308
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$305
Lzkboo_encrypt$306:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$305:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$306
	andl	$1, %r13d
	movl	1176(%rsp), %r14d
	andl	1108(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1104(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1104(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$1, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$303
Lzkboo_encrypt$304:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$303:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$304
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$301
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$302
Lzkboo_encrypt$301:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$302:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$299
Lzkboo_encrypt$300:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$299:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$300
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$297
Lzkboo_encrypt$298:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$297:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$298
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$295
Lzkboo_encrypt$296:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$295:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$296
	andl	$1, %r13d
	movl	1180(%rsp), %r14d
	andl	1100(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1108(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1108(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$2, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$293
Lzkboo_encrypt$294:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$293:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$294
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$291
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$292
Lzkboo_encrypt$291:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$292:
	incq	%rbp
Lzkboo_encrypt$289:
	cmpq	$31, %rbp
	jb  	Lzkboo_encrypt$290
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$287
Lzkboo_encrypt$288:
	movl	1160(%rsp,%rbp,4), %ebx
	xorl	1124(%rsp,%rbp,4), %ebx
	xorl	1088(%rsp,%rbp,4), %ebx
	movl	%ebx, 1284(%rsp,%rbp,4)
	movq	%r11, %rbx
	imulq	$365, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	$768, %rbx
	addq	%rax, %rbx
	movl	1088(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$287:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$288
	incq	%rax
	movq	$3, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1284(%rsp), %ebp
	movl	%ebp, 1160(%rsp)
	movl	1288(%rsp), %ebp
	movl	%ebp, 1164(%rsp)
	movl	1292(%rsp), %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$285
Lzkboo_encrypt$286:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1124(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$285:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$286
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$247
Lzkboo_encrypt$248:
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$279
Lzkboo_encrypt$280:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$283
Lzkboo_encrypt$284:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$283:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$284
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_encrypt$281
Lzkboo_encrypt$282:
	addl	$-1, %r13d
Lzkboo_encrypt$281:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$282
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1112(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$279:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$280
	movq	$1, %rbx
	movq	$0, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$277
Lzkboo_encrypt$278:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$277:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$278
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$275
Lzkboo_encrypt$276:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$275:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$276
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$273
Lzkboo_encrypt$274:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$273:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$274
	andl	$1, %r13d
	movl	1172(%rsp), %r14d
	andl	1116(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1112(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1112(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$0, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$271
Lzkboo_encrypt$272:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$271:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$272
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$269
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$270
Lzkboo_encrypt$269:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$270:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$267
Lzkboo_encrypt$268:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$267:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$268
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$265
Lzkboo_encrypt$266:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$265:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$266
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$263
Lzkboo_encrypt$264:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$263:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$264
	andl	$1, %r13d
	movl	1176(%rsp), %r14d
	andl	1120(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1116(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1176(%rsp), %ebx
	andl	1116(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$1, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$261
Lzkboo_encrypt$262:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$261:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$262
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$259
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$260
Lzkboo_encrypt$259:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$260:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$257
Lzkboo_encrypt$258:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_encrypt$257:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$258
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$255
Lzkboo_encrypt$256:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_encrypt$255:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$256
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_encrypt$253
Lzkboo_encrypt$254:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_encrypt$253:
	cmpl	$0, %r14d
	jnbe	Lzkboo_encrypt$254
	andl	$1, %r13d
	movl	1180(%rsp), %r14d
	andl	1112(%rsp), %r14d
	xorl	%ebx, %r14d
	movl	1172(%rsp), %ebx
	andl	1120(%rsp), %ebx
	xorl	%ebx, %r14d
	movl	1180(%rsp), %ebx
	andl	1120(%rsp), %ebx
	xorl	%ebx, %r14d
	xorl	%r12d, %r14d
	xorl	%r13d, %r14d
	movq	$2, %rbx
	movq	%rbp, %r12
	incq	%r12
	movl	$1, %r13d
	andl	%r14d, %r13d
	movl	$1, %r14d
	jmp 	Lzkboo_encrypt$251
Lzkboo_encrypt$252:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo_encrypt$251:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$252
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$249
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo_encrypt$250
Lzkboo_encrypt$249:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo_encrypt$250:
	incq	%rbp
Lzkboo_encrypt$247:
	cmpq	$31, %rbp
	jb  	Lzkboo_encrypt$248
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$245
Lzkboo_encrypt$246:
	movl	1160(%rsp,%rbp,4), %ebx
	xorl	1136(%rsp,%rbp,4), %ebx
	xorl	1088(%rsp,%rbp,4), %ebx
	movl	%ebx, 1284(%rsp,%rbp,4)
	movq	%r11, %rbx
	imulq	$365, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	$768, %rbx
	addq	%rax, %rbx
	movl	1088(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo_encrypt$245:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$246
	incq	%rax
	movq	$4, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1284(%rsp), %ebp
	movl	%ebp, 1160(%rsp)
	movl	1288(%rsp), %ebp
	movl	%ebp, 1164(%rsp)
	movl	1292(%rsp), %ebp
	movl	%ebp, 1168(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$243
Lzkboo_encrypt$244:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1136(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$243:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$244
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$205
Lzkboo_encrypt$206:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$237
Lzkboo_encrypt$238:
	movl	1284(%rsp,%r11,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	xorl	%r12d, %ebx
	movl	%r10d, %r12d
	jmp 	Lzkboo_encrypt$241
Lzkboo_encrypt$242:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_encrypt$241:
	cmpl	$0, %r12d
	jnbe	Lzkboo_encrypt$242
	andl	$1, %ebx
	movl	%r10d, %r12d
	jmp 	Lzkboo_encrypt$239
Lzkboo_encrypt$240:
	addl	$-1, %r12d
Lzkboo_encrypt$239:
	cmpl	$0, %r12d
	jnbe	Lzkboo_encrypt$240
	movl	%ebx, 1172(%rsp,%rbp,4)
	movl	%ebx, 1124(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$237:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$238
	movq	$1, %rbp
	movq	$0, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$235
Lzkboo_encrypt$236:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$235:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$236
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$233
Lzkboo_encrypt$234:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$233:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$234
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$231
Lzkboo_encrypt$232:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$231:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$232
	andl	$1, %r12d
	movl	1172(%rsp), %r13d
	andl	1128(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1176(%rsp), %ebp
	andl	1124(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1172(%rsp), %ebp
	andl	1124(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r10, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$229
Lzkboo_encrypt$230:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$229:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$230
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$227
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$228
Lzkboo_encrypt$227:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo_encrypt$228:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$225
Lzkboo_encrypt$226:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$225:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$226
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$223
Lzkboo_encrypt$224:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$223:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$224
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$221
Lzkboo_encrypt$222:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$221:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$222
	andl	$1, %r12d
	movl	1176(%rsp), %r13d
	andl	1132(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1180(%rsp), %ebp
	andl	1128(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1176(%rsp), %ebp
	andl	1128(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r10, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$219
Lzkboo_encrypt$220:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$219:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$220
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$217
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$218
Lzkboo_encrypt$217:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo_encrypt$218:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$215
Lzkboo_encrypt$216:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo_encrypt$215:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$216
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$213
Lzkboo_encrypt$214:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo_encrypt$213:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$214
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo_encrypt$211
Lzkboo_encrypt$212:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_encrypt$211:
	cmpl	$0, %r13d
	jnbe	Lzkboo_encrypt$212
	andl	$1, %r12d
	movl	1180(%rsp), %r13d
	andl	1124(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1172(%rsp), %ebp
	andl	1132(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1180(%rsp), %ebp
	andl	1132(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movq	%r10, %rbx
	incq	%rbx
	movl	$1, %r12d
	andl	%r13d, %r12d
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$209
Lzkboo_encrypt$210:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo_encrypt$209:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$210
	cmpl	$1, %r12d
	je  	Lzkboo_encrypt$207
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo_encrypt$208
Lzkboo_encrypt$207:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo_encrypt$208:
	incq	%r10
Lzkboo_encrypt$205:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$206
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$203
Lzkboo_encrypt$204:
	movl	1160(%rsp,%r10,4), %ebp
	xorl	1148(%rsp,%r10,4), %ebp
	xorl	1088(%rsp,%r10,4), %ebp
	movl	%ebp, 1284(%rsp,%r10,4)
	movq	%r11, %rbp
	imulq	$365, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	$768, %rbp
	addq	%rax, %rbp
	movl	1088(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$203:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$204
	incq	%rax
	movq	$0, 40(%rsp)
	jmp 	Lzkboo_encrypt$189
Lzkboo_encrypt$190:
	movq	$24, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$199
Lzkboo_encrypt$200:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo_encrypt$201
Lzkboo_encrypt$202:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo_encrypt$201:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$202
	movl	%ebp, 1148(%rsp,%r10,4)
	incq	%r11
Lzkboo_encrypt$199:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$200
	movq	$16, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$195
Lzkboo_encrypt$196:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo_encrypt$197
Lzkboo_encrypt$198:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo_encrypt$197:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$198
	movl	%ebp, 1160(%rsp,%r10,4)
	incq	%r11
Lzkboo_encrypt$195:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$196
	movq	$8, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$191
Lzkboo_encrypt$192:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo_encrypt$193
Lzkboo_encrypt$194:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo_encrypt$193:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$194
	movl	%ebp, 1088(%rsp,%r10,4)
	incq	%r11
Lzkboo_encrypt$191:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$192
	movq	40(%rsp), %r10
	movq	40(%rsp), %r11
	imulq	$3, %r11, %r11
	movl	1148(%rsp), %ebp
	andl	$-16777216, %ebp
	movl	1160(%rsp), %ebx
	andl	$16711680, %ebx
	orl 	%ebx, %ebp
	movl	1088(%rsp), %ebx
	andl	$65280, %ebx
	orl 	%ebx, %ebp
	movl	1284(%rsp,%r11,4), %ebx
	andl	$255, %ebx
	orl 	%ebx, %ebp
	movl	%ebp, 1344(%rsp,%r10,4)
	addq	$8, %r10
	incq	%r11
	movl	1152(%rsp), %ebp
	andl	$-16777216, %ebp
	movl	1164(%rsp), %ebx
	andl	$16711680, %ebx
	orl 	%ebx, %ebp
	movl	1092(%rsp), %ebx
	andl	$65280, %ebx
	orl 	%ebx, %ebp
	movl	1284(%rsp,%r11,4), %ebx
	andl	$255, %ebx
	orl 	%ebx, %ebp
	movl	%ebp, 1344(%rsp,%r10,4)
	addq	$8, %r10
	incq	%r11
	movl	1156(%rsp), %ebp
	andl	$-16777216, %ebp
	movl	1168(%rsp), %ebx
	andl	$16711680, %ebx
	orl 	%ebx, %ebp
	movl	1096(%rsp), %ebx
	andl	$65280, %ebx
	orl 	%ebx, %ebp
	movl	1284(%rsp,%r11,4), %r11d
	andl	$255, %r11d
	orl 	%r11d, %ebp
	movl	%ebp, 1344(%rsp,%r10,4)
	incq	40(%rsp)
Lzkboo_encrypt$189:
	cmpq	$5, 40(%rsp)
	jb  	Lzkboo_encrypt$190
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$185
Lzkboo_encrypt$186:
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$187
Lzkboo_encrypt$188:
	movq	$370, %rbp
	imulq	16(%rsp), %rbp
	imulq	%r11, %rbp
	addq	%rax, %rbp
	addq	$768, %rbp
	movq	%r11, %rbx
	imulq	$8, %rbx, %rbx
	addq	%r10, %rbx
	movl	1344(%rsp,%rbx,4), %ebx
	movl	%ebx, (%r8,%rbp)
	incq	%r11
Lzkboo_encrypt$187:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$188
	incq	%rax
	incq	%r10
Lzkboo_encrypt$185:
	cmpq	$5, %r10
	jb  	Lzkboo_encrypt$186
	movq	$370, %r10
	imulq	16(%rsp), %r10
	movq	$5, %r11
	jmp 	Lzkboo_encrypt$183
Lzkboo_encrypt$184:
	movq	%rcx, %rbp
	imulq	$8, %rbp, %rbp
	addq	%r11, %rbp
	movq	%rax, %rbx
	addq	$768, %rbx
	subq	%r11, %rbx
	movl	(%r8,%rbx), %ebx
	movl	%ebx, (%r9,%rbp)
	movq	%rax, %rbx
	addq	$768, %rbx
	addq	%r10, %rbx
	subq	%r11, %rbx
	addq	$1024, %rbp
	movl	(%r8,%rbx), %ebx
	movl	%ebx, (%r9,%rbp)
	movq	%rax, %rbx
	addq	$768, %rbx
	addq	%r10, %rbx
	addq	%r10, %rbx
	subq	%r11, %rbx
	addq	$1024, %rbp
	movl	(%r8,%rbx), %ebx
	movl	%ebx, (%r9,%rbp)
	addq	$-1, %r11
Lzkboo_encrypt$183:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$184
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$117
Lzkboo_encrypt$118:
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$119
Lzkboo_encrypt$120:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$181
Lzkboo_encrypt$182:
	incq	%rbp
Lzkboo_encrypt$181:
	cmpq	$4, %rbp
	jb  	Lzkboo_encrypt$182
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$179
Lzkboo_encrypt$180:
	incq	%rbp
Lzkboo_encrypt$179:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$180
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$177
Lzkboo_encrypt$178:
	incq	%rbp
Lzkboo_encrypt$177:
	cmpq	$370, %rbp
	jb  	Lzkboo_encrypt$178
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$168
Lzkboo_encrypt$169:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_encrypt$170
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$175
Lzkboo_encrypt$176:
	incq	%rbx
Lzkboo_encrypt$175:
	cmpq	$16, %rbx
	jb  	Lzkboo_encrypt$176
	jmp 	Lzkboo_encrypt$173
Lzkboo_encrypt$174:
	incq	%rbx
Lzkboo_encrypt$173:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$174
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$171
Lzkboo_encrypt$172:
	incq	%rbx
Lzkboo_encrypt$171:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$172
	movq	$0, 8(%rsp)
Lzkboo_encrypt$170:
	incq	%rbp
Lzkboo_encrypt$168:
	cmpq	$4, %rbp
	jb  	Lzkboo_encrypt$169
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$159
Lzkboo_encrypt$160:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_encrypt$161
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$166
Lzkboo_encrypt$167:
	incq	%rbx
Lzkboo_encrypt$166:
	cmpq	$16, %rbx
	jb  	Lzkboo_encrypt$167
	jmp 	Lzkboo_encrypt$164
Lzkboo_encrypt$165:
	incq	%rbx
Lzkboo_encrypt$164:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$165
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$162
Lzkboo_encrypt$163:
	incq	%rbx
Lzkboo_encrypt$162:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$163
	movq	$0, 8(%rsp)
Lzkboo_encrypt$161:
	incq	%rbp
Lzkboo_encrypt$159:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$160
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$150
Lzkboo_encrypt$151:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_encrypt$152
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$157
Lzkboo_encrypt$158:
	incq	%rbx
Lzkboo_encrypt$157:
	cmpq	$16, %rbx
	jb  	Lzkboo_encrypt$158
	jmp 	Lzkboo_encrypt$155
Lzkboo_encrypt$156:
	incq	%rbx
Lzkboo_encrypt$155:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$156
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$153
Lzkboo_encrypt$154:
	incq	%rbx
Lzkboo_encrypt$153:
	cmpq	$64, %rbx
	jb  	Lzkboo_encrypt$154
	movq	$0, 8(%rsp)
Lzkboo_encrypt$152:
	incq	%rbp
Lzkboo_encrypt$150:
	cmpq	$370, %rbp
	jb  	Lzkboo_encrypt$151
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_encrypt$143
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$148
Lzkboo_encrypt$149:
	incq	%rbp
Lzkboo_encrypt$148:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$149
	jmp 	Lzkboo_encrypt$146
Lzkboo_encrypt$147:
	incq	%rbp
Lzkboo_encrypt$146:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$147
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$144
Lzkboo_encrypt$145:
	incq	%rbp
Lzkboo_encrypt$144:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$145
	movq	$0, 8(%rsp)
Lzkboo_encrypt$143:
	movq	8(%rsp), %rbp
	cmpq	$14, 8(%rsp)
	jb  	Lzkboo_encrypt$129
	incq	%rbp
	jmp 	Lzkboo_encrypt$141
Lzkboo_encrypt$142:
	incq	%rbp
Lzkboo_encrypt$141:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$142
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$139
Lzkboo_encrypt$140:
	incq	%rbp
Lzkboo_encrypt$139:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$140
	jmp 	Lzkboo_encrypt$137
Lzkboo_encrypt$138:
	incq	%rbp
Lzkboo_encrypt$137:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$138
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$135
Lzkboo_encrypt$136:
	incq	%rbp
Lzkboo_encrypt$135:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$136
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$133
Lzkboo_encrypt$134:
	incq	%rbp
Lzkboo_encrypt$133:
	cmpq	$14, %rbp
	jb  	Lzkboo_encrypt$134
	jmp 	Lzkboo_encrypt$130
Lzkboo_encrypt$129:
	incq	%rbp
	jmp 	Lzkboo_encrypt$131
Lzkboo_encrypt$132:
	incq	%rbp
Lzkboo_encrypt$131:
	cmpq	$14, %rbp
	jb  	Lzkboo_encrypt$132
Lzkboo_encrypt$130:
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$127
Lzkboo_encrypt$128:
	incq	%rbp
Lzkboo_encrypt$127:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$128
	jmp 	Lzkboo_encrypt$125
Lzkboo_encrypt$126:
	incq	%rbp
Lzkboo_encrypt$125:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$126
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$123
Lzkboo_encrypt$124:
	incq	%rbp
Lzkboo_encrypt$123:
	cmpq	$64, %rbp
	jb  	Lzkboo_encrypt$124
	movq	%r11, %rbp
	imulq	$8, %rbp, %rbp
	imulq	16(%rsp), %rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$121
Lzkboo_encrypt$122:
	movq	%r10, %r12
	imulq	$4, %r12, %r12
	addq	%rbp, %r12
	addq	$384, %r12
	addq	%rbx, %r12
	movl	1252(%rsp,%rbx,4), %r13d
	movl	%r13d, (%r9,%r12)
	incq	%rbx
Lzkboo_encrypt$121:
	cmpq	$8, %rbx
	jb  	Lzkboo_encrypt$122
	incq	%r11
Lzkboo_encrypt$119:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$120
	incq	%r10
Lzkboo_encrypt$117:
	cmpq	16(%rsp), %r10
	jb  	Lzkboo_encrypt$118
	incq	%rcx
Lzkboo_encrypt$115:
	cmpq	16(%rsp), %rcx
	jb  	Lzkboo_encrypt$116
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$113
Lzkboo_encrypt$114:
	incq	%rax
Lzkboo_encrypt$113:
	cmpq	$8, %rax
	jb  	Lzkboo_encrypt$114
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$104
Lzkboo_encrypt$105:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_encrypt$106
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$111
Lzkboo_encrypt$112:
	incq	%rcx
Lzkboo_encrypt$111:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$112
	jmp 	Lzkboo_encrypt$109
Lzkboo_encrypt$110:
	incq	%rcx
Lzkboo_encrypt$109:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$110
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$107
Lzkboo_encrypt$108:
	incq	%rcx
Lzkboo_encrypt$107:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$108
	movq	$0, (%rsp)
Lzkboo_encrypt$106:
	incq	%rax
Lzkboo_encrypt$104:
	cmpq	$20, %rax
	jb  	Lzkboo_encrypt$105
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$95
Lzkboo_encrypt$96:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_encrypt$97
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$102
Lzkboo_encrypt$103:
	incq	%rcx
Lzkboo_encrypt$102:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$103
	jmp 	Lzkboo_encrypt$100
Lzkboo_encrypt$101:
	incq	%rcx
Lzkboo_encrypt$100:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$101
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$98
Lzkboo_encrypt$99:
	incq	%rcx
Lzkboo_encrypt$98:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$99
	movq	$0, (%rsp)
Lzkboo_encrypt$97:
	incq	%rax
Lzkboo_encrypt$95:
	cmpq	$3072, %rax
	jb  	Lzkboo_encrypt$96
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$86
Lzkboo_encrypt$87:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_encrypt$88
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$93
Lzkboo_encrypt$94:
	incq	%rcx
Lzkboo_encrypt$93:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$94
	jmp 	Lzkboo_encrypt$91
Lzkboo_encrypt$92:
	incq	%rcx
Lzkboo_encrypt$91:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$92
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$89
Lzkboo_encrypt$90:
	incq	%rcx
Lzkboo_encrypt$89:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$90
	movq	$0, (%rsp)
Lzkboo_encrypt$88:
	incq	%rax
Lzkboo_encrypt$86:
	cmpq	$3072, %rax
	jb  	Lzkboo_encrypt$87
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Lzkboo_encrypt$72
	incq	%rax
	jmp 	Lzkboo_encrypt$84
Lzkboo_encrypt$85:
	incq	%rax
Lzkboo_encrypt$84:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$85
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$82
Lzkboo_encrypt$83:
	incq	%rax
Lzkboo_encrypt$82:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$83
	jmp 	Lzkboo_encrypt$80
Lzkboo_encrypt$81:
	incq	%rax
Lzkboo_encrypt$80:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$81
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$78
Lzkboo_encrypt$79:
	incq	%rax
Lzkboo_encrypt$78:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$79
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$76
Lzkboo_encrypt$77:
	incq	%rax
Lzkboo_encrypt$76:
	cmpq	$14, %rax
	jb  	Lzkboo_encrypt$77
	jmp 	Lzkboo_encrypt$73
Lzkboo_encrypt$72:
	incq	%rax
	jmp 	Lzkboo_encrypt$74
Lzkboo_encrypt$75:
	incq	%rax
Lzkboo_encrypt$74:
	cmpq	$14, %rax
	jb  	Lzkboo_encrypt$75
Lzkboo_encrypt$73:
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$70
Lzkboo_encrypt$71:
	incq	%rax
Lzkboo_encrypt$70:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$71
	jmp 	Lzkboo_encrypt$68
Lzkboo_encrypt$69:
	incq	%rax
Lzkboo_encrypt$68:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$69
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$66
Lzkboo_encrypt$67:
	incq	%rax
Lzkboo_encrypt$66:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$67
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$64
Lzkboo_encrypt$65:
	incq	%rax
Lzkboo_encrypt$64:
	cmpq	$8, %rax
	jb  	Lzkboo_encrypt$65
	movq	$0, %rax
	movl	$0, 1080(%rsp)
	jmp 	Lzkboo_encrypt$24
Lzkboo_encrypt$25:
	cmpl	$256, 1080(%rsp)
	jb  	Lzkboo_encrypt$32
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$55
Lzkboo_encrypt$56:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_encrypt$57
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$62
Lzkboo_encrypt$63:
	incq	%rsi
Lzkboo_encrypt$62:
	cmpq	$16, %rsi
	jb  	Lzkboo_encrypt$63
	jmp 	Lzkboo_encrypt$60
Lzkboo_encrypt$61:
	incq	%rsi
Lzkboo_encrypt$60:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$61
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$58
Lzkboo_encrypt$59:
	incq	%rsi
Lzkboo_encrypt$58:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$59
	movq	$0, (%rsp)
Lzkboo_encrypt$57:
	incq	%rcx
Lzkboo_encrypt$55:
	cmpq	$32, %rcx
	jb  	Lzkboo_encrypt$56
	movq	(%rsp), %rcx
	cmpq	$14, (%rsp)
	jb  	Lzkboo_encrypt$41
	incq	%rcx
	jmp 	Lzkboo_encrypt$53
Lzkboo_encrypt$54:
	incq	%rcx
Lzkboo_encrypt$53:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$54
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$51
Lzkboo_encrypt$52:
	incq	%rcx
Lzkboo_encrypt$51:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$52
	jmp 	Lzkboo_encrypt$49
Lzkboo_encrypt$50:
	incq	%rcx
Lzkboo_encrypt$49:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$50
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$47
Lzkboo_encrypt$48:
	incq	%rcx
Lzkboo_encrypt$47:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$48
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$45
Lzkboo_encrypt$46:
	incq	%rcx
Lzkboo_encrypt$45:
	cmpq	$14, %rcx
	jb  	Lzkboo_encrypt$46
	jmp 	Lzkboo_encrypt$42
Lzkboo_encrypt$41:
	incq	%rcx
	jmp 	Lzkboo_encrypt$43
Lzkboo_encrypt$44:
	incq	%rcx
Lzkboo_encrypt$43:
	cmpq	$14, %rcx
	jb  	Lzkboo_encrypt$44
Lzkboo_encrypt$42:
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$39
Lzkboo_encrypt$40:
	incq	%rcx
Lzkboo_encrypt$39:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$40
	jmp 	Lzkboo_encrypt$37
Lzkboo_encrypt$38:
	incq	%rcx
Lzkboo_encrypt$37:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$38
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$35
Lzkboo_encrypt$36:
	incq	%rcx
Lzkboo_encrypt$35:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$36
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$33
Lzkboo_encrypt$34:
	incq	%rcx
Lzkboo_encrypt$33:
	cmpq	$8, %rcx
	jb  	Lzkboo_encrypt$34
	movl	$0, 1080(%rsp)
Lzkboo_encrypt$32:
	movl	$0, %ecx
	movl	1080(%rsp), %esi
	incl	%esi
	movl	%esi, 1084(%rsp)
	movl	$0, %esi
	cmpl	$0, %ecx
	je  	Lzkboo_encrypt$26
	cmpl	$0, %esi
	je  	Lzkboo_encrypt$30
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	jmp 	Lzkboo_encrypt$24
Lzkboo_encrypt$30:
	movq	$2, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
Lzkboo_encrypt$31:
	jmp 	Lzkboo_encrypt$24
Lzkboo_encrypt$26:
	cmpl	$0, %esi
	je  	Lzkboo_encrypt$28
	movq	$1, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
	jmp 	Lzkboo_encrypt$24
Lzkboo_encrypt$28:
	movq	$0, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
Lzkboo_encrypt$29:
Lzkboo_encrypt$27:
Lzkboo_encrypt$24:
	cmpq	16(%rsp), %rax
	jb  	Lzkboo_encrypt$25
	movq	32(%rsp), %rax
	movq	$0, %rcx
	movq	$1, %rsi
	movq	$0, %r9
	jmp 	Lzkboo_encrypt$1
Lzkboo_encrypt$2:
	movq	56(%rsp,%r9,8), %r10
	movq	56(%rsp,%r9,8), %r11
	incq	%r11
	cmpq	$3, %r11
	jne 	Lzkboo_encrypt$23
	movq	$0, %r11
Lzkboo_encrypt$23:
	imulq	$2, %r9, %rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$21
Lzkboo_encrypt$22:
	imulq	$391, %r9, %r12
	addq	%rbx, %r12
	imulq	$2, %r10, %r13
	imulq	16(%rsp), %r13
	addq	%rbp, %r13
	addq	%rbx, %r13
	movq	(%rdx,%r13), %r13
	movq	%r13, (%rax,%r12)
	addq	$2, %r12
	imulq	$2, %r11, %r13
	imulq	16(%rsp), %r13
	addq	%rbp, %r13
	addq	%rbx, %r13
	movq	(%rdx,%r13), %r13
	movq	%r13, (%rax,%r12)
	incq	%rbx
Lzkboo_encrypt$21:
	cmpq	$2, %rbx
	jb  	Lzkboo_encrypt$22
	imulq	$8, 16(%rsp), %rbp
	imulq	%r10, %rbp
	movq	$23680, %r12
	imulq	%r10, %r12
	movq	$3072, %rbx
	addq	%r12, %rbx
	movq	$0, %r12
	jmp 	Lzkboo_encrypt$19
Lzkboo_encrypt$20:
	imulq	$391, %r9, %r13
	addq	$4, %r13
	addq	%r12, %r13
	imulq	$8, %r9, %r14
	addq	%rbp, %r14
	addq	%r12, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rax,%r13)
	incq	%r12
Lzkboo_encrypt$19:
	cmpq	$8, %r12
	jb  	Lzkboo_encrypt$20
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$17
Lzkboo_encrypt$18:
	imulq	$391, %r9, %r12
	addq	$12, %r12
	addq	%rbp, %r12
	imulq	$185, %r9, %r13
	addq	%rbx, %r13
	addq	%rbp, %r13
	movq	(%r8,%r13), %r13
	movq	%r13, (%rax,%r12)
	incq	%rbp
Lzkboo_encrypt$17:
	cmpq	$185, %rbp
	jb  	Lzkboo_encrypt$18
	imulq	$8, 16(%rsp), %rbp
	imulq	%r11, %rbp
	movq	$23680, %r12
	imulq	%r11, %r12
	movq	$3072, %rbx
	addq	%r12, %rbx
	movq	$0, %r12
	jmp 	Lzkboo_encrypt$15
Lzkboo_encrypt$16:
	imulq	$391, %r9, %r13
	addq	$197, %r13
	addq	%r12, %r13
	imulq	$8, %r9, %r14
	addq	%rbp, %r14
	addq	%r12, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rax,%r13)
	incq	%r12
Lzkboo_encrypt$15:
	cmpq	$8, %r12
	jb  	Lzkboo_encrypt$16
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$13
Lzkboo_encrypt$14:
	imulq	$391, %r9, %r12
	addq	$205, %r12
	addq	%rbp, %r12
	imulq	$185, %r9, %r13
	addq	%rbx, %r13
	addq	%rbp, %r13
	movq	(%r8,%r13), %r13
	movq	%r13, (%rax,%r12)
	incq	%rbp
Lzkboo_encrypt$13:
	cmpq	$185, %rbp
	jb  	Lzkboo_encrypt$14
	movq	%r9, %rbp
	andq	%rsi, %rbp
	cmpq	$0, %rbp
	je  	Lzkboo_encrypt$3
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rsi
	je  	Lzkboo_encrypt$11
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	Lzkboo_encrypt$12
Lzkboo_encrypt$11:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbp
	andq	%rbp, %r10
Lzkboo_encrypt$12:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rsi
	je  	Lzkboo_encrypt$9
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbp
	andq	%rbp, %r11
	jmp 	Lzkboo_encrypt$10
Lzkboo_encrypt$9:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
Lzkboo_encrypt$10:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rax,%r11)
	jmp 	Lzkboo_encrypt$4
Lzkboo_encrypt$3:
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rcx
	je  	Lzkboo_encrypt$7
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	Lzkboo_encrypt$8
Lzkboo_encrypt$7:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbp
	andq	%rbp, %r10
Lzkboo_encrypt$8:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rcx
	je  	Lzkboo_encrypt$5
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbp
	andq	%rbp, %r11
	jmp 	Lzkboo_encrypt$6
Lzkboo_encrypt$5:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
Lzkboo_encrypt$6:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rax,%r11)
Lzkboo_encrypt$4:
	incq	%r9
Lzkboo_encrypt$1:
	cmpq	16(%rsp), %r9
	jb  	Lzkboo_encrypt$2
	movq	2600(%rsp), %rbx
	movq	2608(%rsp), %rbp
	movq	2616(%rsp), %r12
	movq	2624(%rsp), %r13
	movq	2632(%rsp), %r14
	movq	2592(%rsp), %rsp
	ret 
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
