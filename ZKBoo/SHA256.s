	.text
	.p2align	5
	.globl	_my_H
	.globl	my_H
_my_H:
my_H:
	movq	%rsp, %rax
	leaq	-2272(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 2232(%rsp)
	movq	%rbx, 2240(%rsp)
	movq	%rbp, 2248(%rsp)
	movq	%r12, 2256(%rsp)
	movq	%r13, 2264(%rsp)
	movq	$1, (%rsp)
	movq	$0, %r13
	jmp 	Lmy_H$1
Lmy_H$2:
	movq	$0, %r12
	jmp 	Lmy_H$3
Lmy_H$4:
	movq	$0, 8(%rsp)
	movl	$0, 68(%rsp)
	movl	$0, 72(%rsp)
	movl	$1779033703, 76(%rsp)
	movl	$-1150833019, 80(%rsp)
	movl	$1013904242, 84(%rsp)
	movl	$-1521486534, 88(%rsp)
	movl	$1359893119, 92(%rsp)
	movl	$-1694144372, 96(%rsp)
	movl	$528734635, 100(%rsp)
	movl	$1541459225, 104(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$99
Lmy_H$100:
	incq	%rax
Lmy_H$99:
	cmpq	$16, %rax
	jb  	Lmy_H$100
	movq	%r12, %rax
	imulq	$64, %rax, %rax
	imulq	(%rsp), %rax
	movq	%r13, %rdx
	imulq	$64, %rdx, %rdx
	addq	%rdx, %rax
	movq	$0, %rdx
	jmp 	Lmy_H$97
Lmy_H$98:
	movb	(%rsi,%rax), %dil
	movb	%dil, 684(%rsp,%rdx)
	movb	(%rsi,%rax), %dil
	movb	%dil, (%r8,%rdx)
	incq	%rax
	incq	%rdx
Lmy_H$97:
	cmpq	$64, %rdx
	jb  	Lmy_H$98
	movq	%r12, %rax
	imulq	$1480, %rax, %rax
	imulq	(%rsp), %rax
	imulq	$64, (%rsp), %rdx
	imulq	$3, %rdx, %rdx
	addq	%rdx, %rax
	movq	%r13, %rdx
	imulq	$1480, %rdx, %rdx
	addq	%rdx, %rax
	movq	$0, %rdx
	jmp 	Lmy_H$95
Lmy_H$96:
	movb	(%rsi,%rax), %dil
	movb	%dil, 748(%rsp,%rdx)
	incq	%rax
	incq	%rdx
Lmy_H$95:
	cmpq	$1480, %rdx
	jb  	Lmy_H$96
	movq	$0, %rax
	jmp 	Lmy_H$93
Lmy_H$94:
	incq	%rax
Lmy_H$93:
	cmpq	$4, %rax
	jb  	Lmy_H$94
	movq	8(%rsp), %rax
	jmp 	Lmy_H$72
Lmy_H$73:
	movq	%rax, 16(%rsp)
	movb	684(%rsp,%rax), %al
	movq	8(%rsp), %rdx
	movb	%al, 108(%rsp,%rdx)
	incq	%rdx
	movq	%rdx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lmy_H$74
	movl	$1116352408, 172(%rsp)
	movl	$1899447441, 176(%rsp)
	movl	$-1245643825, 180(%rsp)
	movl	$-373957723, 184(%rsp)
	movl	$961987163, 188(%rsp)
	movl	$1508970993, 192(%rsp)
	movl	$-1841331548, 196(%rsp)
	movl	$-1424204075, 200(%rsp)
	movl	$-670586216, 204(%rsp)
	movl	$310598401, 208(%rsp)
	movl	$607225278, 212(%rsp)
	movl	$1426881987, 216(%rsp)
	movl	$1925078388, 220(%rsp)
	movl	$-2132889090, 224(%rsp)
	movl	$-1680079193, 228(%rsp)
	movl	$-1046744716, 232(%rsp)
	movl	$-459576895, 236(%rsp)
	movl	$-272742522, 240(%rsp)
	movl	$264347078, 244(%rsp)
	movl	$604807628, 248(%rsp)
	movl	$770255983, 252(%rsp)
	movl	$1249150122, 256(%rsp)
	movl	$1555081692, 260(%rsp)
	movl	$1996064986, 264(%rsp)
	movl	$-1740746414, 268(%rsp)
	movl	$-1473132947, 272(%rsp)
	movl	$-1341970488, 276(%rsp)
	movl	$-1084653625, 280(%rsp)
	movl	$-958395405, 284(%rsp)
	movl	$-710438585, 288(%rsp)
	movl	$113926993, 292(%rsp)
	movl	$338241895, 296(%rsp)
	movl	$666307205, 300(%rsp)
	movl	$773529912, 304(%rsp)
	movl	$1294757372, 308(%rsp)
	movl	$1396182291, 312(%rsp)
	movl	$1695183700, 316(%rsp)
	movl	$1986661051, 320(%rsp)
	movl	$-2117940946, 324(%rsp)
	movl	$-1838011259, 328(%rsp)
	movl	$-1564481375, 332(%rsp)
	movl	$-1474664885, 336(%rsp)
	movl	$-1035236496, 340(%rsp)
	movl	$-949202525, 344(%rsp)
	movl	$-778901479, 348(%rsp)
	movl	$-694614492, 352(%rsp)
	movl	$-200395387, 356(%rsp)
	movl	$275423344, 360(%rsp)
	movl	$430227734, 364(%rsp)
	movl	$506948616, 368(%rsp)
	movl	$659060556, 372(%rsp)
	movl	$883997877, 376(%rsp)
	movl	$958139571, 380(%rsp)
	movl	$1322822218, 384(%rsp)
	movl	$1537002063, 388(%rsp)
	movl	$1747873779, 392(%rsp)
	movl	$1955562222, 396(%rsp)
	movl	$2024104815, 400(%rsp)
	movl	$-2067236844, 404(%rsp)
	movl	$-1933114872, 408(%rsp)
	movl	$-1866530822, 412(%rsp)
	movl	$-1538233109, 416(%rsp)
	movl	$-1090935817, 420(%rsp)
	movl	$-965641998, 424(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$91
Lmy_H$92:
	movl	108(%rsp,%rax,4), %edx
	bswapl	%edx
	movl	%edx, 428(%rsp,%rax,4)
	incq	%rax
Lmy_H$91:
	cmpq	$16, %rax
	jb  	Lmy_H$92
	jmp 	Lmy_H$85
Lmy_H$86:
	movq	%rax, %rdx
	addq	$-2, %rdx
	movl	428(%rsp,%rdx,4), %edx
	movl	%edx, %edi
	leaq	Lmy_H$90(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lmy_H$90:
	movl	%edx, %ebp
	leaq	Lmy_H$89(%rip), 	%r9
	jmp 	LROTRIGHT_19$1
Lmy_H$89:
	shrl	$10, %edx
	xorl	%edi, %r10d
	xorl	%edx, %r10d
	movl	%r10d, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-7, %rdx
	movl	428(%rsp,%rdx,4), %edx
	addl	%edx, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-15, %rdx
	movl	428(%rsp,%rdx,4), %r11d
	movl	%r11d, %edx
	leaq	Lmy_H$88(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lmy_H$88:
	movl	%r11d, %r9d
	leaq	Lmy_H$87(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lmy_H$87:
	shrl	$3, %r11d
	xorl	%r9d, %edx
	xorl	%r11d, %edx
	addl	%edx, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-16, %rdx
	movl	428(%rsp,%rdx,4), %edx
	addl	%edx, 428(%rsp,%rax,4)
	incq	%rax
Lmy_H$85:
	cmpq	$64, %rax
	jb  	Lmy_H$86
	movl	76(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	84(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	92(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	104(%rsp), %eax
	movl	%eax, 52(%rsp)
	movq	$0, %r11
	jmp 	Lmy_H$77
Lmy_H$78:
	movl	52(%rsp), %ebp
	movl	40(%rsp), %r10d
	leaq	Lmy_H$84(%rip), 	%rdx
	jmp 	LROTRIGHT_6$1
Lmy_H$84:
	movl	40(%rsp), %r9d
	leaq	Lmy_H$83(%rip), 	%rdx
	jmp 	LROTRIGHT_11$1
Lmy_H$83:
	movl	40(%rsp), %edx
	leaq	Lmy_H$82(%rip), 	%rdi
	jmp 	LROTRIGHT_25$1
Lmy_H$82:
	xorl	%r9d, %r10d
	xorl	%edx, %r10d
	addl	%r10d, %ebp
	movl	40(%rsp), %eax
	andl	44(%rsp), %eax
	movl	40(%rsp), %edx
	xorl	$-1, %edx
	andl	48(%rsp), %edx
	xorl	%edx, %eax
	addl	%eax, %ebp
	movl	172(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	428(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	24(%rsp), %edx
	leaq	Lmy_H$81(%rip), 	%rdi
	jmp 	LROTRIGHT_2$1
Lmy_H$81:
	movl	%edx, 56(%rsp)
	movl	24(%rsp), %edx
	leaq	Lmy_H$80(%rip), 	%rdi
	jmp 	LROTRIGHT_13$1
Lmy_H$80:
	movl	%edx, 60(%rsp)
	movl	24(%rsp), %edx
	leaq	Lmy_H$79(%rip), 	%rdi
	jmp 	LROTRIGHT_22$1
Lmy_H$79:
	movl	%edx, 64(%rsp)
	movl	56(%rsp), %eax
	movl	60(%rsp), %edx
	xorl	%edx, %eax
	movl	64(%rsp), %edx
	xorl	%edx, %eax
	movl	24(%rsp), %edx
	movl	28(%rsp), %edi
	andl	%edi, %edx
	movl	24(%rsp), %edi
	movl	32(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	movl	28(%rsp), %edi
	movl	32(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	addl	%edx, %eax
	movl	48(%rsp), %edx
	movl	%edx, 52(%rsp)
	movl	44(%rsp), %edx
	movl	%edx, 48(%rsp)
	movl	40(%rsp), %edx
	movl	%edx, 44(%rsp)
	movl	36(%rsp), %edx
	addl	%ebp, %edx
	movl	%edx, 40(%rsp)
	movl	32(%rsp), %edx
	movl	%edx, 36(%rsp)
	movl	28(%rsp), %edx
	movl	%edx, 32(%rsp)
	movl	24(%rsp), %edx
	movl	%edx, 28(%rsp)
	addl	%eax, %ebp
	movl	%ebp, 24(%rsp)
	incq	%r11
Lmy_H$77:
	cmpq	$64, %r11
	jb  	Lmy_H$78
	movl	76(%rsp), %eax
	addl	24(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	80(%rsp), %eax
	addl	28(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	84(%rsp), %eax
	addl	32(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	88(%rsp), %eax
	addl	36(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	92(%rsp), %eax
	addl	40(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	96(%rsp), %eax
	addl	44(%rsp), %eax
	movl	%eax, 96(%rsp)
	movl	100(%rsp), %eax
	addl	48(%rsp), %eax
	movl	%eax, 100(%rsp)
	movl	104(%rsp), %eax
	addl	52(%rsp), %eax
	movl	%eax, 104(%rsp)
	movq	$512, %rax
	movl	68(%rsp), %edx
	movl	$-1, %edi
	subl	%eax, %edi
	cmpl	%edi, %edx
	jnbe	Lmy_H$75
	addl	%eax, %edx
	movl	%edx, 68(%rsp)
	jmp 	Lmy_H$76
Lmy_H$75:
	movl	72(%rsp), %eax
	incl	%eax
	movl	%eax, 72(%rsp)
Lmy_H$76:
	movq	$0, 8(%rsp)
Lmy_H$74:
	movq	16(%rsp), %rax
	incq	%rax
Lmy_H$72:
	cmpq	$64, %rax
	jb  	Lmy_H$73
	movq	$0, %rax
	jmp 	Lmy_H$70
Lmy_H$71:
	movb	748(%rsp,%rax), %dl
	movb	%dl, (%r8,%rax)
	incq	%rax
Lmy_H$70:
	cmpq	$64, %rax
	jb  	Lmy_H$71
	movq	$0, %r11
	jmp 	Lmy_H$49
Lmy_H$50:
	movb	748(%rsp,%r11), %al
	movq	8(%rsp), %rdx
	movb	%al, 108(%rsp,%rdx)
	incq	%rdx
	movq	%rdx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lmy_H$51
	movl	$1116352408, 428(%rsp)
	movl	$1899447441, 432(%rsp)
	movl	$-1245643825, 436(%rsp)
	movl	$-373957723, 440(%rsp)
	movl	$961987163, 444(%rsp)
	movl	$1508970993, 448(%rsp)
	movl	$-1841331548, 452(%rsp)
	movl	$-1424204075, 456(%rsp)
	movl	$-670586216, 460(%rsp)
	movl	$310598401, 464(%rsp)
	movl	$607225278, 468(%rsp)
	movl	$1426881987, 472(%rsp)
	movl	$1925078388, 476(%rsp)
	movl	$-2132889090, 480(%rsp)
	movl	$-1680079193, 484(%rsp)
	movl	$-1046744716, 488(%rsp)
	movl	$-459576895, 492(%rsp)
	movl	$-272742522, 496(%rsp)
	movl	$264347078, 500(%rsp)
	movl	$604807628, 504(%rsp)
	movl	$770255983, 508(%rsp)
	movl	$1249150122, 512(%rsp)
	movl	$1555081692, 516(%rsp)
	movl	$1996064986, 520(%rsp)
	movl	$-1740746414, 524(%rsp)
	movl	$-1473132947, 528(%rsp)
	movl	$-1341970488, 532(%rsp)
	movl	$-1084653625, 536(%rsp)
	movl	$-958395405, 540(%rsp)
	movl	$-710438585, 544(%rsp)
	movl	$113926993, 548(%rsp)
	movl	$338241895, 552(%rsp)
	movl	$666307205, 556(%rsp)
	movl	$773529912, 560(%rsp)
	movl	$1294757372, 564(%rsp)
	movl	$1396182291, 568(%rsp)
	movl	$1695183700, 572(%rsp)
	movl	$1986661051, 576(%rsp)
	movl	$-2117940946, 580(%rsp)
	movl	$-1838011259, 584(%rsp)
	movl	$-1564481375, 588(%rsp)
	movl	$-1474664885, 592(%rsp)
	movl	$-1035236496, 596(%rsp)
	movl	$-949202525, 600(%rsp)
	movl	$-778901479, 604(%rsp)
	movl	$-694614492, 608(%rsp)
	movl	$-200395387, 612(%rsp)
	movl	$275423344, 616(%rsp)
	movl	$430227734, 620(%rsp)
	movl	$506948616, 624(%rsp)
	movl	$659060556, 628(%rsp)
	movl	$883997877, 632(%rsp)
	movl	$958139571, 636(%rsp)
	movl	$1322822218, 640(%rsp)
	movl	$1537002063, 644(%rsp)
	movl	$1747873779, 648(%rsp)
	movl	$1955562222, 652(%rsp)
	movl	$2024104815, 656(%rsp)
	movl	$-2067236844, 660(%rsp)
	movl	$-1933114872, 664(%rsp)
	movl	$-1866530822, 668(%rsp)
	movl	$-1538233109, 672(%rsp)
	movl	$-1090935817, 676(%rsp)
	movl	$-965641998, 680(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$68
Lmy_H$69:
	movl	108(%rsp,%rax,4), %edx
	bswapl	%edx
	movl	%edx, 172(%rsp,%rax,4)
	incq	%rax
Lmy_H$68:
	cmpq	$16, %rax
	jb  	Lmy_H$69
	jmp 	Lmy_H$62
Lmy_H$63:
	movq	%rax, %rdx
	addq	$-2, %rdx
	movl	172(%rsp,%rdx,4), %edx
	movl	%edx, %edi
	leaq	Lmy_H$67(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lmy_H$67:
	movl	%edx, %ebp
	leaq	Lmy_H$66(%rip), 	%r9
	jmp 	LROTRIGHT_19$1
Lmy_H$66:
	shrl	$10, %edx
	xorl	%edi, %r10d
	xorl	%edx, %r10d
	movl	%r10d, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-7, %rdx
	movl	172(%rsp,%rdx,4), %edx
	addl	%edx, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-15, %rdx
	movl	172(%rsp,%rdx,4), %ebp
	movl	%ebp, %edx
	leaq	Lmy_H$65(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lmy_H$65:
	movl	%ebp, %r9d
	leaq	Lmy_H$64(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lmy_H$64:
	shrl	$3, %ebp
	xorl	%r9d, %edx
	xorl	%ebp, %edx
	addl	%edx, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-16, %rdx
	movl	172(%rsp,%rdx,4), %edx
	addl	%edx, 172(%rsp,%rax,4)
	incq	%rax
Lmy_H$62:
	cmpq	$64, %rax
	jb  	Lmy_H$63
	movl	76(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	84(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	92(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	104(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	$0, %rbp
	jmp 	Lmy_H$54
Lmy_H$55:
	movl	24(%rsp), %ebx
	movl	36(%rsp), %r10d
	leaq	Lmy_H$61(%rip), 	%rdx
	jmp 	LROTRIGHT_6$1
Lmy_H$61:
	movl	36(%rsp), %r9d
	leaq	Lmy_H$60(%rip), 	%rdx
	jmp 	LROTRIGHT_11$1
Lmy_H$60:
	movl	36(%rsp), %edx
	leaq	Lmy_H$59(%rip), 	%rdi
	jmp 	LROTRIGHT_25$1
Lmy_H$59:
	xorl	%r9d, %r10d
	xorl	%edx, %r10d
	addl	%r10d, %ebx
	movl	36(%rsp), %eax
	andl	32(%rsp), %eax
	movl	36(%rsp), %edx
	xorl	$-1, %edx
	andl	28(%rsp), %edx
	xorl	%edx, %eax
	addl	%eax, %ebx
	movl	428(%rsp,%rbp,4), %eax
	addl	%eax, %ebx
	movl	172(%rsp,%rbp,4), %eax
	addl	%eax, %ebx
	movl	52(%rsp), %edx
	leaq	Lmy_H$58(%rip), 	%rdi
	jmp 	LROTRIGHT_2$1
Lmy_H$58:
	movl	%edx, 64(%rsp)
	movl	52(%rsp), %edx
	leaq	Lmy_H$57(%rip), 	%rdi
	jmp 	LROTRIGHT_13$1
Lmy_H$57:
	movl	%edx, 60(%rsp)
	movl	52(%rsp), %edx
	leaq	Lmy_H$56(%rip), 	%rdi
	jmp 	LROTRIGHT_22$1
Lmy_H$56:
	movl	%edx, 56(%rsp)
	movl	64(%rsp), %eax
	movl	60(%rsp), %edx
	xorl	%edx, %eax
	movl	56(%rsp), %edx
	xorl	%edx, %eax
	movl	52(%rsp), %edx
	movl	48(%rsp), %edi
	andl	%edi, %edx
	movl	52(%rsp), %edi
	movl	44(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	movl	48(%rsp), %edi
	movl	44(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	addl	%edx, %eax
	movl	28(%rsp), %edx
	movl	%edx, 24(%rsp)
	movl	32(%rsp), %edx
	movl	%edx, 28(%rsp)
	movl	36(%rsp), %edx
	movl	%edx, 32(%rsp)
	movl	40(%rsp), %edx
	addl	%ebx, %edx
	movl	%edx, 36(%rsp)
	movl	44(%rsp), %edx
	movl	%edx, 40(%rsp)
	movl	48(%rsp), %edx
	movl	%edx, 44(%rsp)
	movl	52(%rsp), %edx
	movl	%edx, 48(%rsp)
	addl	%eax, %ebx
	movl	%ebx, 52(%rsp)
	incq	%rbp
Lmy_H$54:
	cmpq	$64, %rbp
	jb  	Lmy_H$55
	movl	76(%rsp), %eax
	addl	52(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	80(%rsp), %eax
	addl	48(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	84(%rsp), %eax
	addl	44(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	88(%rsp), %eax
	addl	40(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	92(%rsp), %eax
	addl	36(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	96(%rsp), %eax
	addl	32(%rsp), %eax
	movl	%eax, 96(%rsp)
	movl	100(%rsp), %eax
	addl	28(%rsp), %eax
	movl	%eax, 100(%rsp)
	movl	104(%rsp), %eax
	addl	24(%rsp), %eax
	movl	%eax, 104(%rsp)
	movq	$512, %rax
	movl	68(%rsp), %edx
	movl	$-1, %edi
	subl	%eax, %edi
	cmpl	%edi, %edx
	jnbe	Lmy_H$52
	addl	%eax, %edx
	movl	%edx, 68(%rsp)
	jmp 	Lmy_H$53
Lmy_H$52:
	movl	72(%rsp), %eax
	incl	%eax
	movl	%eax, 72(%rsp)
Lmy_H$53:
	movq	$0, 8(%rsp)
Lmy_H$51:
	incq	%r11
Lmy_H$49:
	cmpq	$1480, %r11
	jb  	Lmy_H$50
	movq	8(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lmy_H$25
	movb	$-128, 108(%rsp,%rax)
	incq	%rax
	jmp 	Lmy_H$47
Lmy_H$48:
	movb	$0, 108(%rsp,%rax)
	incq	%rax
Lmy_H$47:
	cmpq	$64, %rax
	jb  	Lmy_H$48
	movl	$1116352408, 172(%rsp)
	movl	$1899447441, 176(%rsp)
	movl	$-1245643825, 180(%rsp)
	movl	$-373957723, 184(%rsp)
	movl	$961987163, 188(%rsp)
	movl	$1508970993, 192(%rsp)
	movl	$-1841331548, 196(%rsp)
	movl	$-1424204075, 200(%rsp)
	movl	$-670586216, 204(%rsp)
	movl	$310598401, 208(%rsp)
	movl	$607225278, 212(%rsp)
	movl	$1426881987, 216(%rsp)
	movl	$1925078388, 220(%rsp)
	movl	$-2132889090, 224(%rsp)
	movl	$-1680079193, 228(%rsp)
	movl	$-1046744716, 232(%rsp)
	movl	$-459576895, 236(%rsp)
	movl	$-272742522, 240(%rsp)
	movl	$264347078, 244(%rsp)
	movl	$604807628, 248(%rsp)
	movl	$770255983, 252(%rsp)
	movl	$1249150122, 256(%rsp)
	movl	$1555081692, 260(%rsp)
	movl	$1996064986, 264(%rsp)
	movl	$-1740746414, 268(%rsp)
	movl	$-1473132947, 272(%rsp)
	movl	$-1341970488, 276(%rsp)
	movl	$-1084653625, 280(%rsp)
	movl	$-958395405, 284(%rsp)
	movl	$-710438585, 288(%rsp)
	movl	$113926993, 292(%rsp)
	movl	$338241895, 296(%rsp)
	movl	$666307205, 300(%rsp)
	movl	$773529912, 304(%rsp)
	movl	$1294757372, 308(%rsp)
	movl	$1396182291, 312(%rsp)
	movl	$1695183700, 316(%rsp)
	movl	$1986661051, 320(%rsp)
	movl	$-2117940946, 324(%rsp)
	movl	$-1838011259, 328(%rsp)
	movl	$-1564481375, 332(%rsp)
	movl	$-1474664885, 336(%rsp)
	movl	$-1035236496, 340(%rsp)
	movl	$-949202525, 344(%rsp)
	movl	$-778901479, 348(%rsp)
	movl	$-694614492, 352(%rsp)
	movl	$-200395387, 356(%rsp)
	movl	$275423344, 360(%rsp)
	movl	$430227734, 364(%rsp)
	movl	$506948616, 368(%rsp)
	movl	$659060556, 372(%rsp)
	movl	$883997877, 376(%rsp)
	movl	$958139571, 380(%rsp)
	movl	$1322822218, 384(%rsp)
	movl	$1537002063, 388(%rsp)
	movl	$1747873779, 392(%rsp)
	movl	$1955562222, 396(%rsp)
	movl	$2024104815, 400(%rsp)
	movl	$-2067236844, 404(%rsp)
	movl	$-1933114872, 408(%rsp)
	movl	$-1866530822, 412(%rsp)
	movl	$-1538233109, 416(%rsp)
	movl	$-1090935817, 420(%rsp)
	movl	$-965641998, 424(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$45
Lmy_H$46:
	movl	108(%rsp,%rax,4), %edx
	bswapl	%edx
	movl	%edx, 428(%rsp,%rax,4)
	incq	%rax
Lmy_H$45:
	cmpq	$16, %rax
	jb  	Lmy_H$46
	jmp 	Lmy_H$39
Lmy_H$40:
	movq	%rax, %rdx
	addq	$-2, %rdx
	movl	428(%rsp,%rdx,4), %edx
	movl	%edx, %edi
	leaq	Lmy_H$44(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lmy_H$44:
	movl	%edx, %ebp
	leaq	Lmy_H$43(%rip), 	%r9
	jmp 	LROTRIGHT_19$1
Lmy_H$43:
	shrl	$10, %edx
	xorl	%edi, %r10d
	xorl	%edx, %r10d
	movl	%r10d, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-7, %rdx
	movl	428(%rsp,%rdx,4), %edx
	addl	%edx, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-15, %rdx
	movl	428(%rsp,%rdx,4), %r11d
	movl	%r11d, %edx
	leaq	Lmy_H$42(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lmy_H$42:
	movl	%r11d, %r9d
	leaq	Lmy_H$41(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lmy_H$41:
	shrl	$3, %r11d
	xorl	%r9d, %edx
	xorl	%r11d, %edx
	addl	%edx, 428(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-16, %rdx
	movl	428(%rsp,%rdx,4), %edx
	addl	%edx, 428(%rsp,%rax,4)
	incq	%rax
Lmy_H$39:
	cmpq	$64, %rax
	jb  	Lmy_H$40
	movl	76(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	84(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	92(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	104(%rsp), %eax
	movl	%eax, 52(%rsp)
	movq	$0, %r11
	jmp 	Lmy_H$31
Lmy_H$32:
	movl	52(%rsp), %ebp
	movl	40(%rsp), %r10d
	leaq	Lmy_H$38(%rip), 	%rdx
	jmp 	LROTRIGHT_6$1
Lmy_H$38:
	movl	40(%rsp), %r9d
	leaq	Lmy_H$37(%rip), 	%rdx
	jmp 	LROTRIGHT_11$1
Lmy_H$37:
	movl	40(%rsp), %edx
	leaq	Lmy_H$36(%rip), 	%rdi
	jmp 	LROTRIGHT_25$1
Lmy_H$36:
	xorl	%r9d, %r10d
	xorl	%edx, %r10d
	addl	%r10d, %ebp
	movl	40(%rsp), %eax
	andl	44(%rsp), %eax
	movl	40(%rsp), %edx
	xorl	$-1, %edx
	andl	48(%rsp), %edx
	xorl	%edx, %eax
	addl	%eax, %ebp
	movl	172(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	428(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	24(%rsp), %edx
	leaq	Lmy_H$35(%rip), 	%rdi
	jmp 	LROTRIGHT_2$1
Lmy_H$35:
	movl	%edx, 56(%rsp)
	movl	24(%rsp), %edx
	leaq	Lmy_H$34(%rip), 	%rdi
	jmp 	LROTRIGHT_13$1
Lmy_H$34:
	movl	%edx, 60(%rsp)
	movl	24(%rsp), %edx
	leaq	Lmy_H$33(%rip), 	%rdi
	jmp 	LROTRIGHT_22$1
Lmy_H$33:
	movl	%edx, 64(%rsp)
	movl	56(%rsp), %eax
	movl	60(%rsp), %edx
	xorl	%edx, %eax
	movl	64(%rsp), %edx
	xorl	%edx, %eax
	movl	24(%rsp), %edx
	movl	28(%rsp), %edi
	andl	%edi, %edx
	movl	24(%rsp), %edi
	movl	32(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	movl	28(%rsp), %edi
	movl	32(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	addl	%edx, %eax
	movl	48(%rsp), %edx
	movl	%edx, 52(%rsp)
	movl	44(%rsp), %edx
	movl	%edx, 48(%rsp)
	movl	40(%rsp), %edx
	movl	%edx, 44(%rsp)
	movl	36(%rsp), %edx
	addl	%ebp, %edx
	movl	%edx, 40(%rsp)
	movl	32(%rsp), %edx
	movl	%edx, 36(%rsp)
	movl	28(%rsp), %edx
	movl	%edx, 32(%rsp)
	movl	24(%rsp), %edx
	movl	%edx, 28(%rsp)
	addl	%eax, %ebp
	movl	%ebp, 24(%rsp)
	incq	%r11
Lmy_H$31:
	cmpq	$64, %r11
	jb  	Lmy_H$32
	movl	76(%rsp), %eax
	addl	24(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	80(%rsp), %eax
	addl	28(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	84(%rsp), %eax
	addl	32(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	88(%rsp), %eax
	addl	36(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	92(%rsp), %eax
	addl	40(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	96(%rsp), %eax
	addl	44(%rsp), %eax
	movl	%eax, 96(%rsp)
	movl	100(%rsp), %eax
	addl	48(%rsp), %eax
	movl	%eax, 100(%rsp)
	movl	104(%rsp), %eax
	addl	52(%rsp), %eax
	movl	%eax, 104(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$29
Lmy_H$30:
	movb	$0, 108(%rsp,%rax)
	incq	%rax
Lmy_H$29:
	cmpq	$56, %rax
	jb  	Lmy_H$30
	jmp 	Lmy_H$26
Lmy_H$25:
	movb	$-128, 108(%rsp,%rax)
	incq	%rax
	jmp 	Lmy_H$27
Lmy_H$28:
	movb	$0, 108(%rsp,%rax)
	incq	%rax
Lmy_H$27:
	cmpq	$56, %rax
	jb  	Lmy_H$28
Lmy_H$26:
	movq	8(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	68(%rsp), %edx
	movl	$-1, %edi
	subl	%eax, %edi
	cmpl	%edi, %edx
	jnbe	Lmy_H$23
	addl	%eax, %edx
	movl	%edx, 68(%rsp)
	jmp 	Lmy_H$24
Lmy_H$23:
	movl	72(%rsp), %eax
	incl	%eax
	movl	%eax, 72(%rsp)
Lmy_H$24:
	movl	68(%rsp), %eax
	bswapl	%eax
	movl	%eax, 168(%rsp)
	movl	72(%rsp), %eax
	bswapl	%eax
	movl	%eax, 164(%rsp)
	movl	$1116352408, 428(%rsp)
	movl	$1899447441, 432(%rsp)
	movl	$-1245643825, 436(%rsp)
	movl	$-373957723, 440(%rsp)
	movl	$961987163, 444(%rsp)
	movl	$1508970993, 448(%rsp)
	movl	$-1841331548, 452(%rsp)
	movl	$-1424204075, 456(%rsp)
	movl	$-670586216, 460(%rsp)
	movl	$310598401, 464(%rsp)
	movl	$607225278, 468(%rsp)
	movl	$1426881987, 472(%rsp)
	movl	$1925078388, 476(%rsp)
	movl	$-2132889090, 480(%rsp)
	movl	$-1680079193, 484(%rsp)
	movl	$-1046744716, 488(%rsp)
	movl	$-459576895, 492(%rsp)
	movl	$-272742522, 496(%rsp)
	movl	$264347078, 500(%rsp)
	movl	$604807628, 504(%rsp)
	movl	$770255983, 508(%rsp)
	movl	$1249150122, 512(%rsp)
	movl	$1555081692, 516(%rsp)
	movl	$1996064986, 520(%rsp)
	movl	$-1740746414, 524(%rsp)
	movl	$-1473132947, 528(%rsp)
	movl	$-1341970488, 532(%rsp)
	movl	$-1084653625, 536(%rsp)
	movl	$-958395405, 540(%rsp)
	movl	$-710438585, 544(%rsp)
	movl	$113926993, 548(%rsp)
	movl	$338241895, 552(%rsp)
	movl	$666307205, 556(%rsp)
	movl	$773529912, 560(%rsp)
	movl	$1294757372, 564(%rsp)
	movl	$1396182291, 568(%rsp)
	movl	$1695183700, 572(%rsp)
	movl	$1986661051, 576(%rsp)
	movl	$-2117940946, 580(%rsp)
	movl	$-1838011259, 584(%rsp)
	movl	$-1564481375, 588(%rsp)
	movl	$-1474664885, 592(%rsp)
	movl	$-1035236496, 596(%rsp)
	movl	$-949202525, 600(%rsp)
	movl	$-778901479, 604(%rsp)
	movl	$-694614492, 608(%rsp)
	movl	$-200395387, 612(%rsp)
	movl	$275423344, 616(%rsp)
	movl	$430227734, 620(%rsp)
	movl	$506948616, 624(%rsp)
	movl	$659060556, 628(%rsp)
	movl	$883997877, 632(%rsp)
	movl	$958139571, 636(%rsp)
	movl	$1322822218, 640(%rsp)
	movl	$1537002063, 644(%rsp)
	movl	$1747873779, 648(%rsp)
	movl	$1955562222, 652(%rsp)
	movl	$2024104815, 656(%rsp)
	movl	$-2067236844, 660(%rsp)
	movl	$-1933114872, 664(%rsp)
	movl	$-1866530822, 668(%rsp)
	movl	$-1538233109, 672(%rsp)
	movl	$-1090935817, 676(%rsp)
	movl	$-965641998, 680(%rsp)
	movq	$0, %rax
	jmp 	Lmy_H$21
Lmy_H$22:
	movl	108(%rsp,%rax,4), %edx
	bswapl	%edx
	movl	%edx, 172(%rsp,%rax,4)
	incq	%rax
Lmy_H$21:
	cmpq	$16, %rax
	jb  	Lmy_H$22
	jmp 	Lmy_H$15
Lmy_H$16:
	movq	%rax, %rdx
	addq	$-2, %rdx
	movl	172(%rsp,%rdx,4), %edx
	movl	%edx, %edi
	leaq	Lmy_H$20(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lmy_H$20:
	movl	%edx, %ebp
	leaq	Lmy_H$19(%rip), 	%r9
	jmp 	LROTRIGHT_19$1
Lmy_H$19:
	shrl	$10, %edx
	xorl	%edi, %r10d
	xorl	%edx, %r10d
	movl	%r10d, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-7, %rdx
	movl	172(%rsp,%rdx,4), %edx
	addl	%edx, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-15, %rdx
	movl	172(%rsp,%rdx,4), %r11d
	movl	%r11d, %edx
	leaq	Lmy_H$18(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lmy_H$18:
	movl	%r11d, %r9d
	leaq	Lmy_H$17(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lmy_H$17:
	shrl	$3, %r11d
	xorl	%r9d, %edx
	xorl	%r11d, %edx
	addl	%edx, 172(%rsp,%rax,4)
	movq	%rax, %rdx
	addq	$-16, %rdx
	movl	172(%rsp,%rdx,4), %edx
	addl	%edx, 172(%rsp,%rax,4)
	incq	%rax
Lmy_H$15:
	cmpq	$64, %rax
	jb  	Lmy_H$16
	movl	76(%rsp), %eax
	movl	%eax, 52(%rsp)
	movl	80(%rsp), %eax
	movl	%eax, 48(%rsp)
	movl	84(%rsp), %eax
	movl	%eax, 44(%rsp)
	movl	88(%rsp), %eax
	movl	%eax, 40(%rsp)
	movl	92(%rsp), %eax
	movl	%eax, 36(%rsp)
	movl	96(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	100(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	104(%rsp), %eax
	movl	%eax, 24(%rsp)
	movq	$0, %r11
	jmp 	Lmy_H$7
Lmy_H$8:
	movl	24(%rsp), %ebp
	movl	36(%rsp), %r10d
	leaq	Lmy_H$14(%rip), 	%rdx
	jmp 	LROTRIGHT_6$1
Lmy_H$14:
	movl	36(%rsp), %r9d
	leaq	Lmy_H$13(%rip), 	%rdx
	jmp 	LROTRIGHT_11$1
Lmy_H$13:
	movl	36(%rsp), %edx
	leaq	Lmy_H$12(%rip), 	%rdi
	jmp 	LROTRIGHT_25$1
Lmy_H$12:
	xorl	%r9d, %r10d
	xorl	%edx, %r10d
	addl	%r10d, %ebp
	movl	36(%rsp), %eax
	andl	32(%rsp), %eax
	movl	36(%rsp), %edx
	xorl	$-1, %edx
	andl	28(%rsp), %edx
	xorl	%edx, %eax
	addl	%eax, %ebp
	movl	428(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	172(%rsp,%r11,4), %eax
	addl	%eax, %ebp
	movl	52(%rsp), %edx
	leaq	Lmy_H$11(%rip), 	%rdi
	jmp 	LROTRIGHT_2$1
Lmy_H$11:
	movl	%edx, 64(%rsp)
	movl	52(%rsp), %edx
	leaq	Lmy_H$10(%rip), 	%rdi
	jmp 	LROTRIGHT_13$1
Lmy_H$10:
	movl	%edx, 60(%rsp)
	movl	52(%rsp), %edx
	leaq	Lmy_H$9(%rip), 	%rdi
	jmp 	LROTRIGHT_22$1
Lmy_H$9:
	movl	%edx, 56(%rsp)
	movl	64(%rsp), %eax
	movl	60(%rsp), %edx
	xorl	%edx, %eax
	movl	56(%rsp), %edx
	xorl	%edx, %eax
	movl	52(%rsp), %edx
	movl	48(%rsp), %edi
	andl	%edi, %edx
	movl	52(%rsp), %edi
	movl	44(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	movl	48(%rsp), %edi
	movl	44(%rsp), %r9d
	andl	%r9d, %edi
	xorl	%edi, %edx
	addl	%edx, %eax
	movl	28(%rsp), %edx
	movl	%edx, 24(%rsp)
	movl	32(%rsp), %edx
	movl	%edx, 28(%rsp)
	movl	36(%rsp), %edx
	movl	%edx, 32(%rsp)
	movl	40(%rsp), %edx
	addl	%ebp, %edx
	movl	%edx, 36(%rsp)
	movl	44(%rsp), %edx
	movl	%edx, 40(%rsp)
	movl	48(%rsp), %edx
	movl	%edx, 44(%rsp)
	movl	52(%rsp), %edx
	movl	%edx, 48(%rsp)
	addl	%eax, %ebp
	movl	%ebp, 52(%rsp)
	incq	%r11
Lmy_H$7:
	cmpq	$64, %r11
	jb  	Lmy_H$8
	movl	76(%rsp), %eax
	addl	52(%rsp), %eax
	movl	%eax, 76(%rsp)
	movl	80(%rsp), %eax
	addl	48(%rsp), %eax
	movl	%eax, 80(%rsp)
	movl	84(%rsp), %eax
	addl	44(%rsp), %eax
	movl	%eax, 84(%rsp)
	movl	88(%rsp), %eax
	addl	40(%rsp), %eax
	movl	%eax, 88(%rsp)
	movl	92(%rsp), %eax
	addl	36(%rsp), %eax
	movl	%eax, 92(%rsp)
	movl	96(%rsp), %eax
	addl	32(%rsp), %eax
	movl	%eax, 96(%rsp)
	movl	100(%rsp), %eax
	addl	28(%rsp), %eax
	movl	%eax, 100(%rsp)
	movl	104(%rsp), %eax
	addl	24(%rsp), %eax
	movl	%eax, 104(%rsp)
	imulq	$32, (%rsp), %rax
	imulq	$3, %rax, %rax
	movq	%r12, %rdx
	imulq	$32, %rdx, %rdx
	imulq	(%rsp), %rdx
	addq	%rdx, %rax
	imulq	$32, %r13, %rdx
	addq	%rdx, %rax
	movq	$0, %rdx
	jmp 	Lmy_H$5
Lmy_H$6:
	movl	76(%rsp,%rdx,4), %edi
	bswapl	%edi
	movl	%edi, (%rcx,%rax)
	addq	$4, %rax
	incq	%rdx
Lmy_H$5:
	cmpq	$8, %rdx
	jb  	Lmy_H$6
	incq	%r12
Lmy_H$3:
	cmpq	$1, %r12
	jb  	Lmy_H$4
	incq	%r13
Lmy_H$1:
	cmpq	(%rsp), %r13
	jb  	Lmy_H$2
	movq	2240(%rsp), %rbx
	movq	2248(%rsp), %rbp
	movq	2256(%rsp), %r12
	movq	2264(%rsp), %r13
	movq	2232(%rsp), %rsp
	ret 
LROTRIGHT_19$1:
	movl	%ebp, %edi
	shrl	$19, %edi
	shll	$13, %ebp
	orl 	%ebp, %edi
	jmp 	*%r9
LROTRIGHT_17$1:
	movl	%edi, %r10d
	shrl	$17, %r10d
	shll	$15, %edi
	orl 	%edi, %r10d
	jmp 	*%r9
LROTRIGHT_18$1:
	movl	%r9d, %edi
	shrl	$18, %r9d
	shll	$14, %edi
	xorl	%edi, %r9d
	jmp 	*%r10
LROTRIGHT_7$1:
	movl	%edx, %edi
	shrl	$7, %edx
	shll	$25, %edi
	xorl	%edi, %edx
	jmp 	*%r9
LROTRIGHT_25$1:
	movl	%edx, %eax
	shrl	$25, %edx
	shll	$7, %eax
	orl 	%eax, %edx
	jmp 	*%rdi
LROTRIGHT_11$1:
	movl	%r9d, %eax
	shrl	$11, %r9d
	shll	$21, %eax
	orl 	%eax, %r9d
	jmp 	*%rdx
LROTRIGHT_6$1:
	movl	%r10d, %eax
	shrl	$6, %r10d
	shll	$26, %eax
	orl 	%eax, %r10d
	jmp 	*%rdx
LROTRIGHT_22$1:
	movl	%edx, %eax
	shrl	$22, %edx
	shll	$10, %eax
	orl 	%eax, %edx
	jmp 	*%rdi
LROTRIGHT_13$1:
	movl	%edx, %eax
	shrl	$13, %edx
	shll	$19, %eax
	orl 	%eax, %edx
	jmp 	*%rdi
LROTRIGHT_2$1:
	movl	%edx, %eax
	shrl	$2, %edx
	shll	$30, %eax
	orl 	%eax, %edx
	jmp 	*%rdi
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
