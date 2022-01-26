	.text
	.p2align	5
	.globl	_zkboo
	.globl	zkboo
_zkboo:
zkboo:
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
	jmp 	Lzkboo$115
Lzkboo$116:
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
	jmp 	Lzkboo$631
Lzkboo$632:
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
	jmp 	Lzkboo$635
Lzkboo$636:
	movb	1440(%rsp,%rbp), %bl
	movb	%bl, (%r8,%r12)
	incq	%r12
	incq	%rbp
	incq	48(%rsp)
Lzkboo$635:
	cmpq	$64, 48(%rsp)
	jb  	Lzkboo$636
	movq	$0, 48(%rsp)
	jmp 	Lzkboo$633
Lzkboo$634:
	movq	48(%rsp), %rbp
	movl	1440(%rsp,%rbp,4), %ebp
	movq	40(%rsp), %rbx
	imulq	$80, %rbx, %rbx
	addq	48(%rsp), %rbx
	movl	%ebp, 1632(%rsp,%rbx,4)
	incq	48(%rsp)
Lzkboo$633:
	cmpq	$16, 48(%rsp)
	jb  	Lzkboo$634
	incq	40(%rsp)
Lzkboo$631:
	cmpq	$3, 40(%rsp)
	jb  	Lzkboo$632
	movq	$16, 40(%rsp)
	jmp 	Lzkboo$623
Lzkboo$624:
	movq	$0, 48(%rsp)
	jmp 	Lzkboo$625
Lzkboo$626:
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
	jmp 	Lzkboo$629
Lzkboo$630:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$629:
	cmpq	$0, %r12
	jnbe	Lzkboo$630
	movq	$32, %r12
	subq	%rbp, %r12
	movl	1088(%rsp), %ebp
	jmp 	Lzkboo$627
Lzkboo$628:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$627:
	cmpq	$0, %r12
	jnbe	Lzkboo$628
	orl 	%ebp, %ebx
	movl	%ebx, 1632(%rsp,%r11,4)
	incq	48(%rsp)
Lzkboo$625:
	cmpq	$3, 48(%rsp)
	jb  	Lzkboo$626
	incq	40(%rsp)
Lzkboo$623:
	cmpq	$80, 40(%rsp)
	jb  	Lzkboo$624
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
	jmp 	Lzkboo$417
Lzkboo$418:
	cmpq	$19, 40(%rsp)
	jnbe	Lzkboo$618
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
	jmp 	Lzkboo$621
Lzkboo$622:
	imulq	$4, %r11, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movq	%r11, %rbx
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%rbx,4)
	incq	%r11
Lzkboo$621:
	cmpq	$3, %r11
	jb  	Lzkboo$622
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
	jmp 	Lzkboo$619
Lzkboo$620:
	movq	%r11, %rbx
	imulq	16(%rsp), %rbx
	imulq	$370, %rbx, %rbx
	addq	$6144, %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	1160(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo$619:
	cmpq	$3, %r11
	jb  	Lzkboo$620
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
Lzkboo$618:
	cmpq	$39, 40(%rsp)
	jbe 	Lzkboo$617
Lzkboo$617:
	cmpq	$59, 40(%rsp)
	jbe 	Lzkboo$611
	movl	$-899497514, 1080(%rsp)
	jmp 	Lzkboo$612
Lzkboo$611:
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
	jmp 	Lzkboo$615
Lzkboo$616:
	imulq	$4, %r11, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movq	%r11, %rbx
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1196(%rsp,%rbx,4)
	incq	%r11
Lzkboo$615:
	cmpq	$3, %r11
	jb  	Lzkboo$616
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
	jmp 	Lzkboo$613
Lzkboo$614:
	movq	%r11, %rbx
	imulq	16(%rsp), %rbx
	imulq	$370, %rbx, %rbx
	addq	$6144, %rbx
	addq	%rbp, %rbx
	addq	%rax, %rbx
	movl	1160(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo$613:
	cmpq	$3, %r11
	jb  	Lzkboo$614
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
Lzkboo$612:
	movq	$5, %r11
	movl	$0, 1088(%rsp)
	movl	$0, 1092(%rsp)
	movl	$0, 1096(%rsp)
	movl	1100(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo$609
Lzkboo$610:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$609:
	cmpq	$0, %r12
	jnbe	Lzkboo$610
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$607
Lzkboo$608:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$607:
	cmpq	$0, %r12
	jnbe	Lzkboo$608
	orl 	%ebp, %ebx
	movl	%ebx, 1088(%rsp)
	movl	1104(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo$605
Lzkboo$606:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$605:
	cmpq	$0, %r12
	jnbe	Lzkboo$606
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$603
Lzkboo$604:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$603:
	cmpq	$0, %r12
	jnbe	Lzkboo$604
	orl 	%ebp, %ebx
	movl	%ebx, 1092(%rsp)
	movl	1108(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo$601
Lzkboo$602:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$601:
	cmpq	$0, %r12
	jnbe	Lzkboo$602
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$599
Lzkboo$600:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$599:
	cmpq	$0, %r12
	jnbe	Lzkboo$600
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
	jmp 	Lzkboo$597
Lzkboo$598:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%r11,4)
	incq	%r11
Lzkboo$597:
	cmpq	$3, %r11
	jb  	Lzkboo$598
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo$559
Lzkboo$560:
	movq	$0, %rbp
	jmp 	Lzkboo$591
Lzkboo$592:
	movl	1160(%rsp,%rbp,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	movl	1196(%rsp,%rbp,4), %r13d
	xorl	%r13d, %ebx
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$595
Lzkboo$596:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$595:
	cmpl	$0, %r13d
	jnbe	Lzkboo$596
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$593
Lzkboo$594:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$593:
	cmpl	$0, %r13d
	jnbe	Lzkboo$594
	andl	$1, %r12d
	movl	%ebx, 1220(%rsp,%rbp,4)
	movl	%r12d, 1208(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$591:
	cmpq	$3, %rbp
	jb  	Lzkboo$592
	movq	$1, %rbp
	movq	$0, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$589
Lzkboo$590:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$589:
	cmpl	$0, %r13d
	jnbe	Lzkboo$590
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$587
Lzkboo$588:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$587:
	cmpl	$0, %r13d
	jnbe	Lzkboo$588
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$585
Lzkboo$586:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$585:
	cmpl	$0, %r13d
	jnbe	Lzkboo$586
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
	jmp 	Lzkboo$583
Lzkboo$584:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$583:
	cmpq	$0, %rbx
	jnbe	Lzkboo$584
	cmpl	$1, %r12d
	je  	Lzkboo$581
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$582
Lzkboo$581:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$582:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$579
Lzkboo$580:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$579:
	cmpl	$0, %r13d
	jnbe	Lzkboo$580
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$577
Lzkboo$578:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$577:
	cmpl	$0, %r13d
	jnbe	Lzkboo$578
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$575
Lzkboo$576:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$575:
	cmpl	$0, %r13d
	jnbe	Lzkboo$576
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
	jmp 	Lzkboo$573
Lzkboo$574:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$573:
	cmpq	$0, %rbx
	jnbe	Lzkboo$574
	cmpl	$1, %r12d
	je  	Lzkboo$571
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$572
Lzkboo$571:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$572:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$569
Lzkboo$570:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$569:
	cmpl	$0, %r13d
	jnbe	Lzkboo$570
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$567
Lzkboo$568:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$567:
	cmpl	$0, %r13d
	jnbe	Lzkboo$568
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$565
Lzkboo$566:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$565:
	cmpl	$0, %r13d
	jnbe	Lzkboo$566
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
	jmp 	Lzkboo$563
Lzkboo$564:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$563:
	cmpq	$0, %rbx
	jnbe	Lzkboo$564
	cmpl	$1, %r12d
	je  	Lzkboo$561
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$562
Lzkboo$561:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$562:
	incq	%r11
Lzkboo$559:
	cmpq	$31, %r11
	jb  	Lzkboo$560
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo$557
Lzkboo$558:
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
Lzkboo$557:
	cmpq	$3, %r11
	jb  	Lzkboo$558
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
	jmp 	Lzkboo$555
Lzkboo$556:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1172(%rsp,%r11,4)
	incq	%r11
Lzkboo$555:
	cmpq	$3, %r11
	jb  	Lzkboo$556
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo$517
Lzkboo$518:
	movq	$0, %rbp
	jmp 	Lzkboo$549
Lzkboo$550:
	movl	1148(%rsp,%rbp,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	movl	1196(%rsp,%rbp,4), %r13d
	xorl	%r13d, %ebx
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$553
Lzkboo$554:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$553:
	cmpl	$0, %r13d
	jnbe	Lzkboo$554
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$551
Lzkboo$552:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$551:
	cmpl	$0, %r13d
	jnbe	Lzkboo$552
	andl	$1, %r12d
	movl	%ebx, 1208(%rsp,%rbp,4)
	movl	%r12d, 1220(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$549:
	cmpq	$3, %rbp
	jb  	Lzkboo$550
	movq	$1, %rbp
	movq	$0, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$547
Lzkboo$548:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$547:
	cmpl	$0, %r13d
	jnbe	Lzkboo$548
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$545
Lzkboo$546:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$545:
	cmpl	$0, %r13d
	jnbe	Lzkboo$546
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$543
Lzkboo$544:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$543:
	cmpl	$0, %r13d
	jnbe	Lzkboo$544
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
	jmp 	Lzkboo$541
Lzkboo$542:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$541:
	cmpq	$0, %rbx
	jnbe	Lzkboo$542
	cmpl	$1, %r12d
	je  	Lzkboo$539
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$540
Lzkboo$539:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$540:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$537
Lzkboo$538:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$537:
	cmpl	$0, %r13d
	jnbe	Lzkboo$538
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$535
Lzkboo$536:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$535:
	cmpl	$0, %r13d
	jnbe	Lzkboo$536
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$533
Lzkboo$534:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$533:
	cmpl	$0, %r13d
	jnbe	Lzkboo$534
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
	jmp 	Lzkboo$531
Lzkboo$532:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$531:
	cmpq	$0, %rbx
	jnbe	Lzkboo$532
	cmpl	$1, %r12d
	je  	Lzkboo$529
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$530
Lzkboo$529:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$530:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1172(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1172(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$527
Lzkboo$528:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$527:
	cmpl	$0, %r13d
	jnbe	Lzkboo$528
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$525
Lzkboo$526:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$525:
	cmpl	$0, %r13d
	jnbe	Lzkboo$526
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$523
Lzkboo$524:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$523:
	cmpl	$0, %r13d
	jnbe	Lzkboo$524
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
	jmp 	Lzkboo$521
Lzkboo$522:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$521:
	cmpq	$0, %rbx
	jnbe	Lzkboo$522
	cmpl	$1, %r12d
	je  	Lzkboo$519
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$520
Lzkboo$519:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$520:
	incq	%r11
Lzkboo$517:
	cmpq	$31, %r11
	jb  	Lzkboo$518
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo$515
Lzkboo$516:
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
Lzkboo$515:
	cmpq	$3, %r11
	jb  	Lzkboo$516
	incq	%rax
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo$513
Lzkboo$514:
	movq	%r11, %rbp
	imulq	$4, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1184(%rsp,%r11,4)
	incq	%r11
Lzkboo$513:
	cmpq	$3, %r11
	jb  	Lzkboo$514
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo$475
Lzkboo$476:
	movq	%r11, %rbp
	incq	%rbp
	movq	$0, %rbx
	jmp 	Lzkboo$507
Lzkboo$508:
	movl	1088(%rsp,%rbx,4), %r12d
	movl	1196(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$511
Lzkboo$512:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$511:
	cmpl	$0, %r13d
	jnbe	Lzkboo$512
	andl	$1, %r12d
	movl	%r12d, 1208(%rsp,%rbx,4)
	movl	%r11d, %r13d
	jmp 	Lzkboo$509
Lzkboo$510:
	addl	$-1, %r13d
Lzkboo$509:
	cmpl	$0, %r13d
	jnbe	Lzkboo$510
	movl	%r12d, 1172(%rsp,%rbx,4)
	incq	%rbx
Lzkboo$507:
	cmpq	$3, %rbx
	jb  	Lzkboo$508
	movq	$1, %rbx
	movq	$0, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo$505
Lzkboo$506:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$505:
	cmpl	$0, %r14d
	jnbe	Lzkboo$506
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo$503
Lzkboo$504:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$503:
	cmpl	$0, %r14d
	jnbe	Lzkboo$504
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo$501
Lzkboo$502:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$501:
	cmpl	$0, %r14d
	jnbe	Lzkboo$502
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
	jmp 	Lzkboo$499
Lzkboo$500:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$499:
	cmpq	$0, %r12
	jnbe	Lzkboo$500
	cmpl	$1, %r13d
	je  	Lzkboo$497
	xorl	$-1, %r14d
	andl	%r14d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo$498
Lzkboo$497:
	orl 	%r14d, 1196(%rsp,%rbx,4)
Lzkboo$498:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo$495
Lzkboo$496:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$495:
	cmpl	$0, %r14d
	jnbe	Lzkboo$496
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo$493
Lzkboo$494:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$493:
	cmpl	$0, %r14d
	jnbe	Lzkboo$494
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo$491
Lzkboo$492:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$491:
	cmpl	$0, %r14d
	jnbe	Lzkboo$492
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
	jmp 	Lzkboo$489
Lzkboo$490:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$489:
	cmpq	$0, %r12
	jnbe	Lzkboo$490
	cmpl	$1, %r13d
	je  	Lzkboo$487
	xorl	$-1, %r14d
	andl	%r14d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo$488
Lzkboo$487:
	orl 	%r14d, 1196(%rsp,%rbx,4)
Lzkboo$488:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1184(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%r13,4), %r12d
	movl	1184(%rsp,%r13,4), %r13d
	movl	%r11d, %r14d
	jmp 	Lzkboo$485
Lzkboo$486:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$485:
	cmpl	$0, %r14d
	jnbe	Lzkboo$486
	andl	$1, %ebx
	movl	%r11d, %r14d
	jmp 	Lzkboo$483
Lzkboo$484:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$483:
	cmpl	$0, %r14d
	jnbe	Lzkboo$484
	andl	$1, %r12d
	movl	%r11d, %r14d
	jmp 	Lzkboo$481
Lzkboo$482:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$481:
	cmpl	$0, %r14d
	jnbe	Lzkboo$482
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
	jmp 	Lzkboo$479
Lzkboo$480:
	shll	$1, %r13d
	addq	$-1, %rbp
Lzkboo$479:
	cmpq	$0, %rbp
	jnbe	Lzkboo$480
	cmpl	$1, %r12d
	je  	Lzkboo$477
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbx,4)
	jmp 	Lzkboo$478
Lzkboo$477:
	orl 	%r13d, 1196(%rsp,%rbx,4)
Lzkboo$478:
	incq	%r11
Lzkboo$475:
	cmpq	$31, %r11
	jb  	Lzkboo$476
	movq	$0, %r11
	jmp 	Lzkboo$473
Lzkboo$474:
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
Lzkboo$473:
	cmpq	$3, %r11
	jb  	Lzkboo$474
	incq	%rax
	movl	$0, 1196(%rsp)
	movl	$0, 1200(%rsp)
	movl	$0, 1204(%rsp)
	movq	$0, %r11
	jmp 	Lzkboo$471
Lzkboo$472:
	movq	%r11, %rbp
	imulq	$368, %rbp, %rbp
	imulq	16(%rsp), %rbp
	addq	%r10, %rbp
	movl	(%rsi,%rbp), %ebp
	movl	%ebp, 1184(%rsp,%r11,4)
	incq	%r11
Lzkboo$471:
	cmpq	$3, %r11
	jb  	Lzkboo$472
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo$433
Lzkboo$434:
	movq	$0, %rbp
	jmp 	Lzkboo$465
Lzkboo$466:
	imulq	$80, %rbp, %rbx
	addq	40(%rsp), %rbx
	movl	1632(%rsp,%rbx,4), %ebx
	movl	1196(%rsp,%rbp,4), %r12d
	movl	1088(%rsp,%rbp,4), %r13d
	xorl	%r12d, %ebx
	xorl	%r12d, %r13d
	movl	%r11d, %r12d
	jmp 	Lzkboo$469
Lzkboo$470:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo$469:
	cmpl	$0, %r12d
	jnbe	Lzkboo$470
	andl	$1, %ebx
	movl	%ebx, 1172(%rsp,%rbp,4)
	movl	%r11d, %ebx
	jmp 	Lzkboo$467
Lzkboo$468:
	shrl	$1, %r13d
	addl	$-1, %ebx
Lzkboo$467:
	cmpl	$0, %ebx
	jnbe	Lzkboo$468
	andl	$1, %r13d
	movl	%r13d, 1208(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$465:
	cmpq	$3, %rbp
	jb  	Lzkboo$466
	movq	$1, %rbp
	movq	$0, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$463
Lzkboo$464:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$463:
	cmpl	$0, %r13d
	jnbe	Lzkboo$464
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$461
Lzkboo$462:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$461:
	cmpl	$0, %r13d
	jnbe	Lzkboo$462
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$459
Lzkboo$460:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$459:
	cmpl	$0, %r13d
	jnbe	Lzkboo$460
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
	jmp 	Lzkboo$457
Lzkboo$458:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$457:
	cmpq	$0, %rbx
	jnbe	Lzkboo$458
	cmpl	$1, %r12d
	je  	Lzkboo$455
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$456
Lzkboo$455:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$456:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$453
Lzkboo$454:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$453:
	cmpl	$0, %r13d
	jnbe	Lzkboo$454
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$451
Lzkboo$452:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$451:
	cmpl	$0, %r13d
	jnbe	Lzkboo$452
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$449
Lzkboo$450:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$449:
	cmpl	$0, %r13d
	jnbe	Lzkboo$450
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
	jmp 	Lzkboo$447
Lzkboo$448:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$447:
	cmpq	$0, %rbx
	jnbe	Lzkboo$448
	cmpl	$1, %r12d
	je  	Lzkboo$445
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$446
Lzkboo$445:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$446:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1184(%rsp,%rbp,4), %ebp
	movl	1196(%rsp,%r12,4), %ebx
	movl	1184(%rsp,%r12,4), %r12d
	movl	%r11d, %r13d
	jmp 	Lzkboo$443
Lzkboo$444:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$443:
	cmpl	$0, %r13d
	jnbe	Lzkboo$444
	andl	$1, %ebp
	movl	%r11d, %r13d
	jmp 	Lzkboo$441
Lzkboo$442:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$441:
	cmpl	$0, %r13d
	jnbe	Lzkboo$442
	andl	$1, %ebx
	movl	%r11d, %r13d
	jmp 	Lzkboo$439
Lzkboo$440:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$439:
	cmpl	$0, %r13d
	jnbe	Lzkboo$440
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
	jmp 	Lzkboo$437
Lzkboo$438:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$437:
	cmpq	$0, %rbx
	jnbe	Lzkboo$438
	cmpl	$1, %r12d
	je  	Lzkboo$435
	xorl	$-1, %r13d
	andl	%r13d, 1196(%rsp,%rbp,4)
	jmp 	Lzkboo$436
Lzkboo$435:
	orl 	%r13d, 1196(%rsp,%rbp,4)
Lzkboo$436:
	incq	%r11
Lzkboo$433:
	cmpq	$31, %r11
	jb  	Lzkboo$434
	movq	$0, %r11
	imulq	$370, %rcx, %rbp
	jmp 	Lzkboo$431
Lzkboo$432:
	movq	%r11, %rbx
	imulq	$370, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%rbp, %rbx
	addq	$6144, %rbx
	addq	%rax, %rbx
	movl	1196(%rsp,%r11,4), %r12d
	movl	%r12d, (%r8,%rbx)
	incq	%r11
Lzkboo$431:
	cmpq	$3, %r11
	jb  	Lzkboo$432
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
	jmp 	Lzkboo$429
Lzkboo$430:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$429:
	cmpq	$0, %r12
	jnbe	Lzkboo$430
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$427
Lzkboo$428:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$427:
	cmpq	$0, %r12
	jnbe	Lzkboo$428
	orl 	%ebp, %ebx
	movl	%ebx, 1124(%rsp)
	movl	1116(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo$425
Lzkboo$426:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$425:
	cmpq	$0, %r12
	jnbe	Lzkboo$426
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$423
Lzkboo$424:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$423:
	cmpq	$0, %r12
	jnbe	Lzkboo$424
	orl 	%ebp, %ebx
	movl	%ebx, 1128(%rsp)
	movl	1120(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%r11, %r12
	jmp 	Lzkboo$421
Lzkboo$422:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo$421:
	cmpq	$0, %r12
	jnbe	Lzkboo$422
	movq	$32, %r12
	subq	%r11, %r12
	jmp 	Lzkboo$419
Lzkboo$420:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo$419:
	cmpq	$0, %r12
	jnbe	Lzkboo$420
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
Lzkboo$417:
	cmpq	$80, 40(%rsp)
	jb  	Lzkboo$418
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
	jmp 	Lzkboo$415
Lzkboo$416:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1196(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$415:
	cmpq	$3, %rbp
	jb  	Lzkboo$416
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo$377
Lzkboo$378:
	movq	$0, %rbx
	jmp 	Lzkboo$409
Lzkboo$410:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$413
Lzkboo$414:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$413:
	cmpl	$0, %r13d
	jnbe	Lzkboo$414
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$411
Lzkboo$412:
	addl	$-1, %r13d
Lzkboo$411:
	cmpl	$0, %r13d
	jnbe	Lzkboo$412
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1184(%rsp,%rbx,4)
	incq	%rbx
Lzkboo$409:
	cmpq	$3, %rbx
	jb  	Lzkboo$410
	movq	$1, %rbx
	movq	$0, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$407
Lzkboo$408:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$407:
	cmpl	$0, %r14d
	jnbe	Lzkboo$408
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$405
Lzkboo$406:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$405:
	cmpl	$0, %r14d
	jnbe	Lzkboo$406
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$403
Lzkboo$404:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$403:
	cmpl	$0, %r14d
	jnbe	Lzkboo$404
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
	jmp 	Lzkboo$401
Lzkboo$402:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$401:
	cmpq	$0, %r12
	jnbe	Lzkboo$402
	cmpl	$1, %r13d
	je  	Lzkboo$399
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$400
Lzkboo$399:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$400:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$397
Lzkboo$398:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$397:
	cmpl	$0, %r14d
	jnbe	Lzkboo$398
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$395
Lzkboo$396:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$395:
	cmpl	$0, %r14d
	jnbe	Lzkboo$396
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$393
Lzkboo$394:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$393:
	cmpl	$0, %r14d
	jnbe	Lzkboo$394
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
	jmp 	Lzkboo$391
Lzkboo$392:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$391:
	cmpq	$0, %r12
	jnbe	Lzkboo$392
	cmpl	$1, %r13d
	je  	Lzkboo$389
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$390
Lzkboo$389:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$390:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1196(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1196(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$387
Lzkboo$388:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$387:
	cmpl	$0, %r14d
	jnbe	Lzkboo$388
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$385
Lzkboo$386:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$385:
	cmpl	$0, %r14d
	jnbe	Lzkboo$386
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$383
Lzkboo$384:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$383:
	cmpl	$0, %r14d
	jnbe	Lzkboo$384
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
	jmp 	Lzkboo$381
Lzkboo$382:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$381:
	cmpq	$0, %r12
	jnbe	Lzkboo$382
	cmpl	$1, %r13d
	je  	Lzkboo$379
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$380
Lzkboo$379:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$380:
	incq	%rbp
Lzkboo$377:
	cmpq	$31, %rbp
	jb  	Lzkboo$378
	movq	$0, %r11
	jmp 	Lzkboo$375
Lzkboo$376:
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
Lzkboo$375:
	cmpq	$3, %r11
	jb  	Lzkboo$376
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
	jmp 	Lzkboo$373
Lzkboo$374:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1100(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$373:
	cmpq	$3, %rbp
	jb  	Lzkboo$374
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo$335
Lzkboo$336:
	movq	$0, %rbx
	jmp 	Lzkboo$367
Lzkboo$368:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$371
Lzkboo$372:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$371:
	cmpl	$0, %r13d
	jnbe	Lzkboo$372
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$369
Lzkboo$370:
	addl	$-1, %r13d
Lzkboo$369:
	cmpl	$0, %r13d
	jnbe	Lzkboo$370
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1196(%rsp,%rbx,4)
	incq	%rbx
Lzkboo$367:
	cmpq	$3, %rbx
	jb  	Lzkboo$368
	movq	$1, %rbx
	movq	$0, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$365
Lzkboo$366:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$365:
	cmpl	$0, %r14d
	jnbe	Lzkboo$366
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$363
Lzkboo$364:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$363:
	cmpl	$0, %r14d
	jnbe	Lzkboo$364
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$361
Lzkboo$362:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$361:
	cmpl	$0, %r14d
	jnbe	Lzkboo$362
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
	jmp 	Lzkboo$359
Lzkboo$360:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$359:
	cmpq	$0, %r12
	jnbe	Lzkboo$360
	cmpl	$1, %r13d
	je  	Lzkboo$357
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$358
Lzkboo$357:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$358:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$355
Lzkboo$356:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$355:
	cmpl	$0, %r14d
	jnbe	Lzkboo$356
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$353
Lzkboo$354:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$353:
	cmpl	$0, %r14d
	jnbe	Lzkboo$354
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$351
Lzkboo$352:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$351:
	cmpl	$0, %r14d
	jnbe	Lzkboo$352
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
	jmp 	Lzkboo$349
Lzkboo$350:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$349:
	cmpq	$0, %r12
	jnbe	Lzkboo$350
	cmpl	$1, %r13d
	je  	Lzkboo$347
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$348
Lzkboo$347:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$348:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1100(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1100(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$345
Lzkboo$346:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$345:
	cmpl	$0, %r14d
	jnbe	Lzkboo$346
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$343
Lzkboo$344:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$343:
	cmpl	$0, %r14d
	jnbe	Lzkboo$344
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$341
Lzkboo$342:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$341:
	cmpl	$0, %r14d
	jnbe	Lzkboo$342
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
	jmp 	Lzkboo$339
Lzkboo$340:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$339:
	cmpq	$0, %r12
	jnbe	Lzkboo$340
	cmpl	$1, %r13d
	je  	Lzkboo$337
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$338
Lzkboo$337:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$338:
	incq	%rbp
Lzkboo$335:
	cmpq	$31, %rbp
	jb  	Lzkboo$336
	movq	$0, %r11
	jmp 	Lzkboo$333
Lzkboo$334:
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
Lzkboo$333:
	cmpq	$3, %r11
	jb  	Lzkboo$334
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
	jmp 	Lzkboo$331
Lzkboo$332:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1112(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$331:
	cmpq	$3, %rbp
	jb  	Lzkboo$332
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo$293
Lzkboo$294:
	movq	$0, %rbx
	jmp 	Lzkboo$325
Lzkboo$326:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$329
Lzkboo$330:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$329:
	cmpl	$0, %r13d
	jnbe	Lzkboo$330
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$327
Lzkboo$328:
	addl	$-1, %r13d
Lzkboo$327:
	cmpl	$0, %r13d
	jnbe	Lzkboo$328
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1100(%rsp,%rbx,4)
	incq	%rbx
Lzkboo$325:
	cmpq	$3, %rbx
	jb  	Lzkboo$326
	movq	$1, %rbx
	movq	$0, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$323
Lzkboo$324:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$323:
	cmpl	$0, %r14d
	jnbe	Lzkboo$324
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$321
Lzkboo$322:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$321:
	cmpl	$0, %r14d
	jnbe	Lzkboo$322
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$319
Lzkboo$320:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$319:
	cmpl	$0, %r14d
	jnbe	Lzkboo$320
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
	jmp 	Lzkboo$317
Lzkboo$318:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$317:
	cmpq	$0, %r12
	jnbe	Lzkboo$318
	cmpl	$1, %r13d
	je  	Lzkboo$315
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$316
Lzkboo$315:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$316:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$313
Lzkboo$314:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$313:
	cmpl	$0, %r14d
	jnbe	Lzkboo$314
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$311
Lzkboo$312:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$311:
	cmpl	$0, %r14d
	jnbe	Lzkboo$312
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$309
Lzkboo$310:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$309:
	cmpl	$0, %r14d
	jnbe	Lzkboo$310
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
	jmp 	Lzkboo$307
Lzkboo$308:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$307:
	cmpq	$0, %r12
	jnbe	Lzkboo$308
	cmpl	$1, %r13d
	je  	Lzkboo$305
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$306
Lzkboo$305:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$306:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1112(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1112(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$303
Lzkboo$304:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$303:
	cmpl	$0, %r14d
	jnbe	Lzkboo$304
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$301
Lzkboo$302:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$301:
	cmpl	$0, %r14d
	jnbe	Lzkboo$302
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$299
Lzkboo$300:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$299:
	cmpl	$0, %r14d
	jnbe	Lzkboo$300
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
	jmp 	Lzkboo$297
Lzkboo$298:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$297:
	cmpq	$0, %r12
	jnbe	Lzkboo$298
	cmpl	$1, %r13d
	je  	Lzkboo$295
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$296
Lzkboo$295:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$296:
	incq	%rbp
Lzkboo$293:
	cmpq	$31, %rbp
	jb  	Lzkboo$294
	movq	$0, %r11
	jmp 	Lzkboo$291
Lzkboo$292:
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
Lzkboo$291:
	cmpq	$3, %r11
	jb  	Lzkboo$292
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
	jmp 	Lzkboo$289
Lzkboo$290:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1124(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$289:
	cmpq	$3, %rbp
	jb  	Lzkboo$290
	incq	%r10
	movq	$0, %rbp
	jmp 	Lzkboo$251
Lzkboo$252:
	movq	$0, %rbx
	jmp 	Lzkboo$283
Lzkboo$284:
	movl	1284(%rsp,%r11,4), %r12d
	movl	1088(%rsp,%rbx,4), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$287
Lzkboo$288:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$287:
	cmpl	$0, %r13d
	jnbe	Lzkboo$288
	andl	$1, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo$285
Lzkboo$286:
	addl	$-1, %r13d
Lzkboo$285:
	cmpl	$0, %r13d
	jnbe	Lzkboo$286
	movl	%r12d, 1172(%rsp,%rbx,4)
	movl	%r12d, 1112(%rsp,%rbx,4)
	incq	%rbx
Lzkboo$283:
	cmpq	$3, %rbx
	jb  	Lzkboo$284
	movq	$1, %rbx
	movq	$0, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$281
Lzkboo$282:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$281:
	cmpl	$0, %r14d
	jnbe	Lzkboo$282
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$279
Lzkboo$280:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$279:
	cmpl	$0, %r14d
	jnbe	Lzkboo$280
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$277
Lzkboo$278:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$277:
	cmpl	$0, %r14d
	jnbe	Lzkboo$278
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
	jmp 	Lzkboo$275
Lzkboo$276:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$275:
	cmpq	$0, %r12
	jnbe	Lzkboo$276
	cmpl	$1, %r13d
	je  	Lzkboo$273
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$274
Lzkboo$273:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$274:
	movq	$2, %rbx
	movq	$1, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$271
Lzkboo$272:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$271:
	cmpl	$0, %r14d
	jnbe	Lzkboo$272
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$269
Lzkboo$270:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$269:
	cmpl	$0, %r14d
	jnbe	Lzkboo$270
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$267
Lzkboo$268:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$267:
	cmpl	$0, %r14d
	jnbe	Lzkboo$268
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
	jmp 	Lzkboo$265
Lzkboo$266:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$265:
	cmpq	$0, %r12
	jnbe	Lzkboo$266
	cmpl	$1, %r13d
	je  	Lzkboo$263
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$264
Lzkboo$263:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$264:
	movq	$0, %rbx
	movq	$2, %r13
	movl	1124(%rsp,%rbx,4), %ebx
	movl	1088(%rsp,%r13,4), %r12d
	movl	1124(%rsp,%r13,4), %r13d
	movl	%ebp, %r14d
	jmp 	Lzkboo$261
Lzkboo$262:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo$261:
	cmpl	$0, %r14d
	jnbe	Lzkboo$262
	andl	$1, %ebx
	movl	%ebp, %r14d
	jmp 	Lzkboo$259
Lzkboo$260:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo$259:
	cmpl	$0, %r14d
	jnbe	Lzkboo$260
	andl	$1, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo$257
Lzkboo$258:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo$257:
	cmpl	$0, %r14d
	jnbe	Lzkboo$258
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
	jmp 	Lzkboo$255
Lzkboo$256:
	shll	$1, %r14d
	addq	$-1, %r12
Lzkboo$255:
	cmpq	$0, %r12
	jnbe	Lzkboo$256
	cmpl	$1, %r13d
	je  	Lzkboo$253
	xorl	$-1, %r14d
	andl	%r14d, 1088(%rsp,%rbx,4)
	jmp 	Lzkboo$254
Lzkboo$253:
	orl 	%r14d, 1088(%rsp,%rbx,4)
Lzkboo$254:
	incq	%rbp
Lzkboo$251:
	cmpq	$31, %rbp
	jb  	Lzkboo$252
	movq	$0, %r11
	jmp 	Lzkboo$249
Lzkboo$250:
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
Lzkboo$249:
	cmpq	$3, %r11
	jb  	Lzkboo$250
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
	jmp 	Lzkboo$247
Lzkboo$248:
	movq	%rbp, %rbx
	imulq	$4, %rbx, %rbx
	imulq	16(%rsp), %rbx
	addq	%r10, %rbx
	movl	(%rsi,%rbx), %ebx
	movl	%ebx, 1136(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$247:
	cmpq	$3, %rbp
	jb  	Lzkboo$248
	movq	$0, %r10
	jmp 	Lzkboo$209
Lzkboo$210:
	movq	$0, %rbp
	jmp 	Lzkboo$241
Lzkboo$242:
	movl	1284(%rsp,%r11,4), %ebx
	movl	1088(%rsp,%rbp,4), %r12d
	xorl	%r12d, %ebx
	movl	%r10d, %r12d
	jmp 	Lzkboo$245
Lzkboo$246:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo$245:
	cmpl	$0, %r12d
	jnbe	Lzkboo$246
	andl	$1, %ebx
	movl	%r10d, %r12d
	jmp 	Lzkboo$243
Lzkboo$244:
	addl	$-1, %r12d
Lzkboo$243:
	cmpl	$0, %r12d
	jnbe	Lzkboo$244
	movl	%ebx, 1172(%rsp,%rbp,4)
	movl	%ebx, 1124(%rsp,%rbp,4)
	incq	%rbp
Lzkboo$241:
	cmpq	$3, %rbp
	jb  	Lzkboo$242
	movq	$1, %rbp
	movq	$0, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo$239
Lzkboo$240:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$239:
	cmpl	$0, %r13d
	jnbe	Lzkboo$240
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo$237
Lzkboo$238:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$237:
	cmpl	$0, %r13d
	jnbe	Lzkboo$238
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo$235
Lzkboo$236:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$235:
	cmpl	$0, %r13d
	jnbe	Lzkboo$236
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
	jmp 	Lzkboo$233
Lzkboo$234:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$233:
	cmpq	$0, %rbx
	jnbe	Lzkboo$234
	cmpl	$1, %r12d
	je  	Lzkboo$231
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo$232
Lzkboo$231:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo$232:
	movq	$2, %rbp
	movq	$1, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo$229
Lzkboo$230:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$229:
	cmpl	$0, %r13d
	jnbe	Lzkboo$230
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo$227
Lzkboo$228:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$227:
	cmpl	$0, %r13d
	jnbe	Lzkboo$228
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo$225
Lzkboo$226:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$225:
	cmpl	$0, %r13d
	jnbe	Lzkboo$226
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
	jmp 	Lzkboo$223
Lzkboo$224:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$223:
	cmpq	$0, %rbx
	jnbe	Lzkboo$224
	cmpl	$1, %r12d
	je  	Lzkboo$221
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo$222
Lzkboo$221:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo$222:
	movq	$0, %rbp
	movq	$2, %r12
	movl	1136(%rsp,%rbp,4), %ebp
	movl	1088(%rsp,%r12,4), %ebx
	movl	1136(%rsp,%r12,4), %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo$219
Lzkboo$220:
	shrl	$1, %ebp
	addl	$-1, %r13d
Lzkboo$219:
	cmpl	$0, %r13d
	jnbe	Lzkboo$220
	andl	$1, %ebp
	movl	%r10d, %r13d
	jmp 	Lzkboo$217
Lzkboo$218:
	shrl	$1, %ebx
	addl	$-1, %r13d
Lzkboo$217:
	cmpl	$0, %r13d
	jnbe	Lzkboo$218
	andl	$1, %ebx
	movl	%r10d, %r13d
	jmp 	Lzkboo$215
Lzkboo$216:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo$215:
	cmpl	$0, %r13d
	jnbe	Lzkboo$216
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
	jmp 	Lzkboo$213
Lzkboo$214:
	shll	$1, %r13d
	addq	$-1, %rbx
Lzkboo$213:
	cmpq	$0, %rbx
	jnbe	Lzkboo$214
	cmpl	$1, %r12d
	je  	Lzkboo$211
	xorl	$-1, %r13d
	andl	%r13d, 1088(%rsp,%rbp,4)
	jmp 	Lzkboo$212
Lzkboo$211:
	orl 	%r13d, 1088(%rsp,%rbp,4)
Lzkboo$212:
	incq	%r10
Lzkboo$209:
	cmpq	$31, %r10
	jb  	Lzkboo$210
	movq	$0, %r11
	jmp 	Lzkboo$207
Lzkboo$208:
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
Lzkboo$207:
	cmpq	$3, %r11
	jb  	Lzkboo$208
	incq	%rax
	movq	$0, 40(%rsp)
	jmp 	Lzkboo$193
Lzkboo$194:
	movq	$24, %r10
	movq	$0, %r11
	jmp 	Lzkboo$203
Lzkboo$204:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo$205
Lzkboo$206:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo$205:
	cmpq	$0, %rbx
	jnbe	Lzkboo$206
	movl	%ebp, 1148(%rsp,%r10,4)
	incq	%r11
Lzkboo$203:
	cmpq	$3, %r11
	jb  	Lzkboo$204
	movq	$16, %r10
	movq	$0, %r11
	jmp 	Lzkboo$199
Lzkboo$200:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo$201
Lzkboo$202:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo$201:
	cmpq	$0, %rbx
	jnbe	Lzkboo$202
	movl	%ebp, 1160(%rsp,%r10,4)
	incq	%r11
Lzkboo$199:
	cmpq	$3, %r11
	jb  	Lzkboo$200
	movq	$8, %r10
	movq	$0, %r11
	jmp 	Lzkboo$195
Lzkboo$196:
	movq	40(%rsp), %rbp
	addq	%r11, %rbp
	movl	1284(%rsp,%rbp,4), %ebp
	movq	%r10, %rbx
	jmp 	Lzkboo$197
Lzkboo$198:
	shrl	$1, %ebp
	addq	$-1, %rbx
Lzkboo$197:
	cmpq	$0, %rbx
	jnbe	Lzkboo$198
	movl	%ebp, 1088(%rsp,%r10,4)
	incq	%r11
Lzkboo$195:
	cmpq	$3, %r11
	jb  	Lzkboo$196
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
Lzkboo$193:
	cmpq	$5, 40(%rsp)
	jb  	Lzkboo$194
	movq	$0, %r10
	jmp 	Lzkboo$189
Lzkboo$190:
	movq	$0, %r11
	jmp 	Lzkboo$191
Lzkboo$192:
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
Lzkboo$191:
	cmpq	$3, %r11
	jb  	Lzkboo$192
	incq	%rax
	incq	%r10
Lzkboo$189:
	cmpq	$5, %r10
	jb  	Lzkboo$190
	movq	$370, %r10
	imulq	16(%rsp), %r10
	movq	$5, %r11
	jmp 	Lzkboo$187
Lzkboo$188:
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
Lzkboo$187:
	cmpq	$0, %r11
	jnbe	Lzkboo$188
	movq	$0, %r10
	jmp 	Lzkboo$117
Lzkboo$118:
	movq	$0, %r11
	jmp 	Lzkboo$119
Lzkboo$120:
	movq	$0, %rbp
	jmp 	Lzkboo$185
Lzkboo$186:
	incq	%rbp
Lzkboo$185:
	cmpq	$4, %rbp
	jb  	Lzkboo$186
	movq	$0, %rbp
	jmp 	Lzkboo$183
Lzkboo$184:
	incq	%rbp
Lzkboo$183:
	cmpq	$16, %rbp
	jb  	Lzkboo$184
	movq	$0, %rbp
	jmp 	Lzkboo$181
Lzkboo$182:
	incq	%rbp
Lzkboo$181:
	cmpq	$3, %rbp
	jb  	Lzkboo$182
	movq	$0, %rbp
	jmp 	Lzkboo$179
Lzkboo$180:
	incq	%rbp
Lzkboo$179:
	cmpq	$370, %rbp
	jb  	Lzkboo$180
	movq	$0, %rbp
	jmp 	Lzkboo$170
Lzkboo$171:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo$172
	movq	$0, %rbx
	jmp 	Lzkboo$177
Lzkboo$178:
	incq	%rbx
Lzkboo$177:
	cmpq	$16, %rbx
	jb  	Lzkboo$178
	jmp 	Lzkboo$175
Lzkboo$176:
	incq	%rbx
Lzkboo$175:
	cmpq	$64, %rbx
	jb  	Lzkboo$176
	movq	$0, %rbx
	jmp 	Lzkboo$173
Lzkboo$174:
	incq	%rbx
Lzkboo$173:
	cmpq	$64, %rbx
	jb  	Lzkboo$174
	movq	$0, 8(%rsp)
Lzkboo$172:
	incq	%rbp
Lzkboo$170:
	cmpq	$4, %rbp
	jb  	Lzkboo$171
	movq	$0, %rbp
	jmp 	Lzkboo$161
Lzkboo$162:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo$163
	movq	$0, %rbx
	jmp 	Lzkboo$168
Lzkboo$169:
	incq	%rbx
Lzkboo$168:
	cmpq	$16, %rbx
	jb  	Lzkboo$169
	jmp 	Lzkboo$166
Lzkboo$167:
	incq	%rbx
Lzkboo$166:
	cmpq	$64, %rbx
	jb  	Lzkboo$167
	movq	$0, %rbx
	jmp 	Lzkboo$164
Lzkboo$165:
	incq	%rbx
Lzkboo$164:
	cmpq	$64, %rbx
	jb  	Lzkboo$165
	movq	$0, 8(%rsp)
Lzkboo$163:
	incq	%rbp
Lzkboo$161:
	cmpq	$16, %rbp
	jb  	Lzkboo$162
	movq	$0, %rbp
	jmp 	Lzkboo$152
Lzkboo$153:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo$154
	movq	$0, %rbx
	jmp 	Lzkboo$159
Lzkboo$160:
	incq	%rbx
Lzkboo$159:
	cmpq	$16, %rbx
	jb  	Lzkboo$160
	jmp 	Lzkboo$157
Lzkboo$158:
	incq	%rbx
Lzkboo$157:
	cmpq	$64, %rbx
	jb  	Lzkboo$158
	movq	$0, %rbx
	jmp 	Lzkboo$155
Lzkboo$156:
	incq	%rbx
Lzkboo$155:
	cmpq	$64, %rbx
	jb  	Lzkboo$156
	movq	$0, 8(%rsp)
Lzkboo$154:
	incq	%rbp
Lzkboo$152:
	cmpq	$370, %rbp
	jb  	Lzkboo$153
	movq	$0, %rbp
	jmp 	Lzkboo$143
Lzkboo$144:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo$145
	movq	$0, %rbx
	jmp 	Lzkboo$150
Lzkboo$151:
	incq	%rbx
Lzkboo$150:
	cmpq	$16, %rbx
	jb  	Lzkboo$151
	jmp 	Lzkboo$148
Lzkboo$149:
	incq	%rbx
Lzkboo$148:
	cmpq	$64, %rbx
	jb  	Lzkboo$149
	movq	$0, %rbx
	jmp 	Lzkboo$146
Lzkboo$147:
	incq	%rbx
Lzkboo$146:
	cmpq	$64, %rbx
	jb  	Lzkboo$147
	movq	$0, 8(%rsp)
Lzkboo$145:
	incq	%rbp
Lzkboo$143:
	cmpq	$3, %rbp
	jb  	Lzkboo$144
	movq	8(%rsp), %rbp
	cmpq	$14, 8(%rsp)
	jb  	Lzkboo$129
	incq	%rbp
	jmp 	Lzkboo$141
Lzkboo$142:
	incq	%rbp
Lzkboo$141:
	cmpq	$16, %rbp
	jb  	Lzkboo$142
	movq	$0, %rbp
	jmp 	Lzkboo$139
Lzkboo$140:
	incq	%rbp
Lzkboo$139:
	cmpq	$16, %rbp
	jb  	Lzkboo$140
	jmp 	Lzkboo$137
Lzkboo$138:
	incq	%rbp
Lzkboo$137:
	cmpq	$64, %rbp
	jb  	Lzkboo$138
	movq	$0, %rbp
	jmp 	Lzkboo$135
Lzkboo$136:
	incq	%rbp
Lzkboo$135:
	cmpq	$64, %rbp
	jb  	Lzkboo$136
	movq	$0, %rbp
	jmp 	Lzkboo$133
Lzkboo$134:
	incq	%rbp
Lzkboo$133:
	cmpq	$14, %rbp
	jb  	Lzkboo$134
	jmp 	Lzkboo$130
Lzkboo$129:
	incq	%rbp
	jmp 	Lzkboo$131
Lzkboo$132:
	incq	%rbp
Lzkboo$131:
	cmpq	$14, %rbp
	jb  	Lzkboo$132
Lzkboo$130:
	movq	$0, %rbp
	jmp 	Lzkboo$127
Lzkboo$128:
	incq	%rbp
Lzkboo$127:
	cmpq	$16, %rbp
	jb  	Lzkboo$128
	jmp 	Lzkboo$125
Lzkboo$126:
	incq	%rbp
Lzkboo$125:
	cmpq	$64, %rbp
	jb  	Lzkboo$126
	movq	$0, %rbp
	jmp 	Lzkboo$123
Lzkboo$124:
	incq	%rbp
Lzkboo$123:
	cmpq	$64, %rbp
	jb  	Lzkboo$124
	movq	%r11, %rbp
	imulq	$8, %rbp, %rbp
	imulq	16(%rsp), %rbp
	movq	$0, %rbx
	jmp 	Lzkboo$121
Lzkboo$122:
	movq	%r10, %r12
	imulq	$4, %r12, %r12
	addq	%rbp, %r12
	addq	$384, %r12
	addq	%rbx, %r12
	movl	1252(%rsp,%rbx,4), %r13d
	movl	%r13d, (%r9,%r12)
	incq	%rbx
Lzkboo$121:
	cmpq	$8, %rbx
	jb  	Lzkboo$122
	incq	%r11
Lzkboo$119:
	cmpq	$3, %r11
	jb  	Lzkboo$120
	incq	%r10
Lzkboo$117:
	cmpq	16(%rsp), %r10
	jb  	Lzkboo$118
	incq	%rcx
Lzkboo$115:
	cmpq	16(%rsp), %rcx
	jb  	Lzkboo$116
	movq	$0, %rax
	jmp 	Lzkboo$113
Lzkboo$114:
	incq	%rax
Lzkboo$113:
	cmpq	$8, %rax
	jb  	Lzkboo$114
	movq	$0, %rax
	jmp 	Lzkboo$104
Lzkboo$105:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo$106
	movq	$0, %rcx
	jmp 	Lzkboo$111
Lzkboo$112:
	incq	%rcx
Lzkboo$111:
	cmpq	$16, %rcx
	jb  	Lzkboo$112
	jmp 	Lzkboo$109
Lzkboo$110:
	incq	%rcx
Lzkboo$109:
	cmpq	$64, %rcx
	jb  	Lzkboo$110
	movq	$0, %rcx
	jmp 	Lzkboo$107
Lzkboo$108:
	incq	%rcx
Lzkboo$107:
	cmpq	$64, %rcx
	jb  	Lzkboo$108
	movq	$0, (%rsp)
Lzkboo$106:
	incq	%rax
Lzkboo$104:
	cmpq	$20, %rax
	jb  	Lzkboo$105
	movq	$0, %rax
	jmp 	Lzkboo$95
Lzkboo$96:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo$97
	movq	$0, %rcx
	jmp 	Lzkboo$102
Lzkboo$103:
	incq	%rcx
Lzkboo$102:
	cmpq	$16, %rcx
	jb  	Lzkboo$103
	jmp 	Lzkboo$100
Lzkboo$101:
	incq	%rcx
Lzkboo$100:
	cmpq	$64, %rcx
	jb  	Lzkboo$101
	movq	$0, %rcx
	jmp 	Lzkboo$98
Lzkboo$99:
	incq	%rcx
Lzkboo$98:
	cmpq	$64, %rcx
	jb  	Lzkboo$99
	movq	$0, (%rsp)
Lzkboo$97:
	incq	%rax
Lzkboo$95:
	cmpq	$3072, %rax
	jb  	Lzkboo$96
	movq	$0, %rax
	jmp 	Lzkboo$86
Lzkboo$87:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo$88
	movq	$0, %rcx
	jmp 	Lzkboo$93
Lzkboo$94:
	incq	%rcx
Lzkboo$93:
	cmpq	$16, %rcx
	jb  	Lzkboo$94
	jmp 	Lzkboo$91
Lzkboo$92:
	incq	%rcx
Lzkboo$91:
	cmpq	$64, %rcx
	jb  	Lzkboo$92
	movq	$0, %rcx
	jmp 	Lzkboo$89
Lzkboo$90:
	incq	%rcx
Lzkboo$89:
	cmpq	$64, %rcx
	jb  	Lzkboo$90
	movq	$0, (%rsp)
Lzkboo$88:
	incq	%rax
Lzkboo$86:
	cmpq	$3072, %rax
	jb  	Lzkboo$87
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Lzkboo$72
	incq	%rax
	jmp 	Lzkboo$84
Lzkboo$85:
	incq	%rax
Lzkboo$84:
	cmpq	$16, %rax
	jb  	Lzkboo$85
	movq	$0, %rax
	jmp 	Lzkboo$82
Lzkboo$83:
	incq	%rax
Lzkboo$82:
	cmpq	$16, %rax
	jb  	Lzkboo$83
	jmp 	Lzkboo$80
Lzkboo$81:
	incq	%rax
Lzkboo$80:
	cmpq	$64, %rax
	jb  	Lzkboo$81
	movq	$0, %rax
	jmp 	Lzkboo$78
Lzkboo$79:
	incq	%rax
Lzkboo$78:
	cmpq	$64, %rax
	jb  	Lzkboo$79
	movq	$0, %rax
	jmp 	Lzkboo$76
Lzkboo$77:
	incq	%rax
Lzkboo$76:
	cmpq	$14, %rax
	jb  	Lzkboo$77
	jmp 	Lzkboo$73
Lzkboo$72:
	incq	%rax
	jmp 	Lzkboo$74
Lzkboo$75:
	incq	%rax
Lzkboo$74:
	cmpq	$14, %rax
	jb  	Lzkboo$75
Lzkboo$73:
	movq	$0, %rax
	jmp 	Lzkboo$70
Lzkboo$71:
	incq	%rax
Lzkboo$70:
	cmpq	$16, %rax
	jb  	Lzkboo$71
	jmp 	Lzkboo$68
Lzkboo$69:
	incq	%rax
Lzkboo$68:
	cmpq	$64, %rax
	jb  	Lzkboo$69
	movq	$0, %rax
	jmp 	Lzkboo$66
Lzkboo$67:
	incq	%rax
Lzkboo$66:
	cmpq	$64, %rax
	jb  	Lzkboo$67
	movq	$0, %rax
	jmp 	Lzkboo$64
Lzkboo$65:
	incq	%rax
Lzkboo$64:
	cmpq	$8, %rax
	jb  	Lzkboo$65
	movq	$0, %rax
	movl	$0, 1080(%rsp)
	jmp 	Lzkboo$24
Lzkboo$25:
	cmpl	$256, 1080(%rsp)
	jb  	Lzkboo$32
	movq	$0, %rcx
	jmp 	Lzkboo$55
Lzkboo$56:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo$57
	movq	$0, %rsi
	jmp 	Lzkboo$62
Lzkboo$63:
	incq	%rsi
Lzkboo$62:
	cmpq	$16, %rsi
	jb  	Lzkboo$63
	jmp 	Lzkboo$60
Lzkboo$61:
	incq	%rsi
Lzkboo$60:
	cmpq	$64, %rsi
	jb  	Lzkboo$61
	movq	$0, %rsi
	jmp 	Lzkboo$58
Lzkboo$59:
	incq	%rsi
Lzkboo$58:
	cmpq	$64, %rsi
	jb  	Lzkboo$59
	movq	$0, (%rsp)
Lzkboo$57:
	incq	%rcx
Lzkboo$55:
	cmpq	$32, %rcx
	jb  	Lzkboo$56
	movq	(%rsp), %rcx
	cmpq	$14, (%rsp)
	jb  	Lzkboo$41
	incq	%rcx
	jmp 	Lzkboo$53
Lzkboo$54:
	incq	%rcx
Lzkboo$53:
	cmpq	$16, %rcx
	jb  	Lzkboo$54
	movq	$0, %rcx
	jmp 	Lzkboo$51
Lzkboo$52:
	incq	%rcx
Lzkboo$51:
	cmpq	$16, %rcx
	jb  	Lzkboo$52
	jmp 	Lzkboo$49
Lzkboo$50:
	incq	%rcx
Lzkboo$49:
	cmpq	$64, %rcx
	jb  	Lzkboo$50
	movq	$0, %rcx
	jmp 	Lzkboo$47
Lzkboo$48:
	incq	%rcx
Lzkboo$47:
	cmpq	$64, %rcx
	jb  	Lzkboo$48
	movq	$0, %rcx
	jmp 	Lzkboo$45
Lzkboo$46:
	incq	%rcx
Lzkboo$45:
	cmpq	$14, %rcx
	jb  	Lzkboo$46
	jmp 	Lzkboo$42
Lzkboo$41:
	incq	%rcx
	jmp 	Lzkboo$43
Lzkboo$44:
	incq	%rcx
Lzkboo$43:
	cmpq	$14, %rcx
	jb  	Lzkboo$44
Lzkboo$42:
	movq	$0, %rcx
	jmp 	Lzkboo$39
Lzkboo$40:
	incq	%rcx
Lzkboo$39:
	cmpq	$16, %rcx
	jb  	Lzkboo$40
	jmp 	Lzkboo$37
Lzkboo$38:
	incq	%rcx
Lzkboo$37:
	cmpq	$64, %rcx
	jb  	Lzkboo$38
	movq	$0, %rcx
	jmp 	Lzkboo$35
Lzkboo$36:
	incq	%rcx
Lzkboo$35:
	cmpq	$64, %rcx
	jb  	Lzkboo$36
	movq	$0, %rcx
	jmp 	Lzkboo$33
Lzkboo$34:
	incq	%rcx
Lzkboo$33:
	cmpq	$8, %rcx
	jb  	Lzkboo$34
	movl	$0, 1080(%rsp)
Lzkboo$32:
	movl	$0, %ecx
	movl	1080(%rsp), %esi
	incl	%esi
	movl	%esi, 1084(%rsp)
	movl	$0, %esi
	cmpl	$0, %ecx
	je  	Lzkboo$26
	cmpl	$0, %esi
	je  	Lzkboo$30
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	jmp 	Lzkboo$24
Lzkboo$30:
	movq	$2, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
Lzkboo$31:
	jmp 	Lzkboo$24
Lzkboo$26:
	cmpl	$0, %esi
	je  	Lzkboo$28
	movq	$1, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
	jmp 	Lzkboo$24
Lzkboo$28:
	movq	$0, %rcx
	movq	%rcx, 56(%rsp,%rax,8)
	movl	1084(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 1080(%rsp)
	incq	%rax
Lzkboo$29:
Lzkboo$27:
Lzkboo$24:
	cmpq	16(%rsp), %rax
	jb  	Lzkboo$25
	movq	32(%rsp), %rax
	movq	$0, %rcx
	movq	$1, %rsi
	movq	$0, %r9
	jmp 	Lzkboo$1
Lzkboo$2:
	movq	56(%rsp,%r9,8), %r10
	movq	56(%rsp,%r9,8), %r11
	incq	%r11
	cmpq	$3, %r11
	jne 	Lzkboo$23
	movq	$0, %r11
Lzkboo$23:
	imulq	$2, %r9, %rbp
	movq	$0, %rbx
	jmp 	Lzkboo$21
Lzkboo$22:
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
Lzkboo$21:
	cmpq	$2, %rbx
	jb  	Lzkboo$22
	imulq	$8, 16(%rsp), %rbp
	imulq	%r10, %rbp
	movq	$23680, %r12
	imulq	%r10, %r12
	movq	$3072, %rbx
	addq	%r12, %rbx
	movq	$0, %r12
	jmp 	Lzkboo$19
Lzkboo$20:
	imulq	$391, %r9, %r13
	addq	$4, %r13
	addq	%r12, %r13
	imulq	$8, %r9, %r14
	addq	%rbp, %r14
	addq	%r12, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rax,%r13)
	incq	%r12
Lzkboo$19:
	cmpq	$8, %r12
	jb  	Lzkboo$20
	movq	$0, %rbp
	jmp 	Lzkboo$17
Lzkboo$18:
	imulq	$391, %r9, %r12
	addq	$12, %r12
	addq	%rbp, %r12
	imulq	$185, %r9, %r13
	addq	%rbx, %r13
	addq	%rbp, %r13
	movq	(%r8,%r13), %r13
	movq	%r13, (%rax,%r12)
	incq	%rbp
Lzkboo$17:
	cmpq	$185, %rbp
	jb  	Lzkboo$18
	imulq	$8, 16(%rsp), %rbp
	imulq	%r11, %rbp
	movq	$23680, %r12
	imulq	%r11, %r12
	movq	$3072, %rbx
	addq	%r12, %rbx
	movq	$0, %r12
	jmp 	Lzkboo$15
Lzkboo$16:
	imulq	$391, %r9, %r13
	addq	$197, %r13
	addq	%r12, %r13
	imulq	$8, %r9, %r14
	addq	%rbp, %r14
	addq	%r12, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rax,%r13)
	incq	%r12
Lzkboo$15:
	cmpq	$8, %r12
	jb  	Lzkboo$16
	movq	$0, %rbp
	jmp 	Lzkboo$13
Lzkboo$14:
	imulq	$391, %r9, %r12
	addq	$205, %r12
	addq	%rbp, %r12
	imulq	$185, %r9, %r13
	addq	%rbx, %r13
	addq	%rbp, %r13
	movq	(%r8,%r13), %r13
	movq	%r13, (%rax,%r12)
	incq	%rbp
Lzkboo$13:
	cmpq	$185, %rbp
	jb  	Lzkboo$14
	movq	%r9, %rbp
	andq	%rsi, %rbp
	cmpq	$0, %rbp
	je  	Lzkboo$3
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rsi
	je  	Lzkboo$11
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	Lzkboo$12
Lzkboo$11:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbp
	andq	%rbp, %r10
Lzkboo$12:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rsi
	je  	Lzkboo$9
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbp
	andq	%rbp, %r11
	jmp 	Lzkboo$10
Lzkboo$9:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
Lzkboo$10:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rax,%r11)
	jmp 	Lzkboo$4
Lzkboo$3:
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rcx
	je  	Lzkboo$7
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	Lzkboo$8
Lzkboo$7:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbp
	andq	%rbp, %r10
Lzkboo$8:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rcx
	je  	Lzkboo$5
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbp
	andq	%rbp, %r11
	jmp 	Lzkboo$6
Lzkboo$5:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
Lzkboo$6:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rax,%r11)
Lzkboo$4:
	incq	%r9
Lzkboo$1:
	cmpq	16(%rsp), %r9
	jb  	Lzkboo$2
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
