	.text
	.p2align	5
	.globl	_zkboo_decrypt
	.globl	zkboo_decrypt
_zkboo_decrypt:
zkboo_decrypt:
	movq	%rsp, %rax
	leaq	-1633416(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 1633376(%rsp)
	movq	%rbx, 1633384(%rsp)
	movq	%rbp, 1633392(%rsp)
	movq	%r12, 1633400(%rsp)
	movq	%r13, 1633408(%rsp)
	movq	$136, (%rsp)
	movq	$0, %rax
	movq	$0, %r9
	jmp 	Lzkboo_decrypt$678
Lzkboo_decrypt$679:
	movq	$0, %r10
	jmp 	Lzkboo_decrypt$680
Lzkboo_decrypt$681:
	movb	(%rdx,%r9), %r11b
	movb	%r11b, 803440(%rsp,%r9)
	movb	(%rcx,%r9), %r11b
	movb	%r11b, 2672(%rsp,%r9)
	incq	%r9
	incq	%r10
Lzkboo_decrypt$680:
	cmpq	$1472, %r10
	jb  	Lzkboo_decrypt$681
	incq	%rax
Lzkboo_decrypt$678:
	cmpq	(%rsp), %rax
	jb  	Lzkboo_decrypt$679
	movq	$32, %rax
	imulq	(%rsp), %rax
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$676
Lzkboo_decrypt$677:
	movq	%rcx, %rdx
	movb	(%rsi,%rdx), %r9b
	addq	%rax, %rdx
	xorb	(%rsi,%rdx), %r9b
	addq	%rax, %rdx
	xorb	(%rsi,%rdx), %r9b
	movb	%r9b, 1296(%rsp,%rcx)
	incq	%rcx
Lzkboo_decrypt$676:
	cmpq	$32, %rcx
	jb  	Lzkboo_decrypt$677
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$1779033703, 1328(%rsp)
	movl	$-1150833019, 1332(%rsp)
	movl	$1013904242, 1336(%rsp)
	movl	$-1521486534, 1340(%rsp)
	movl	$1359893119, 1344(%rsp)
	movl	$-1694144372, 1348(%rsp)
	movl	$528734635, 1352(%rsp)
	movl	$1541459225, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$674
Lzkboo_decrypt$675:
	movb	1296(%rsp,%rax), %cl
	movb	%cl, 1360(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$674:
	cmpq	$20, %rax
	jb  	Lzkboo_decrypt$675
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$672
Lzkboo_decrypt$673:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$672:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$673
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$651
Lzkboo_decrypt$652:
	movb	1360(%rsp,%rcx), %al
	movq	%rcx, 24(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1392(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$653
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$670
Lzkboo_decrypt$671:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$670:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$671
	jmp 	Lzkboo_decrypt$664
Lzkboo_decrypt$665:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$669(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$669:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$668(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$668:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$667(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$667:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$666(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$666:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$664:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$665
	movl	1328(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$656
Lzkboo_decrypt$657:
	movl	1196(%rsp), %ecx
	movl	1184(%rsp), %r12d
	leaq	Lzkboo_decrypt$663(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$663:
	movl	1184(%rsp), %ebx
	leaq	Lzkboo_decrypt$662(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$662:
	movl	1184(%rsp), %r11d
	leaq	Lzkboo_decrypt$661(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$661:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1184(%rsp), %edx
	andl	1188(%rsp), %edx
	movl	1184(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1192(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$660(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$660:
	movl	%r9d, 1200(%rsp)
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$659(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$659:
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	leaq	Lzkboo_decrypt$658(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$658:
	movl	%r10d, 1208(%rsp)
	movl	1200(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1172(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1192(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1168(%rsp)
	incq	%rax
Lzkboo_decrypt$656:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$657
	movl	1328(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$512, %rax
	movl	16(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$654
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp 	Lzkboo_decrypt$655
Lzkboo_decrypt$654:
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
Lzkboo_decrypt$655:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$653:
	movq	24(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$651:
	cmpq	$20, %rcx
	jb  	Lzkboo_decrypt$652
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$643
Lzkboo_decrypt$644:
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$645
Lzkboo_decrypt$646:
	imulq	$192, %rax, %rdx
	imulq	$32, %rcx, %r9
	addq	%r9, %rdx
	imulq	$32, (%rsp), %r9
	imulq	%rcx, %r9
	imulq	$32, %rax, %r10
	addq	%r10, %r9
	movq	$0, %r10
	jmp 	Lzkboo_decrypt$649
Lzkboo_decrypt$650:
	movb	(%rsi,%r9), %r11b
	movb	%r11b, 1607264(%rsp,%rdx)
	incq	%rdx
	incq	%r9
	incq	%r10
Lzkboo_decrypt$649:
	cmpq	$32, %r10
	jb  	Lzkboo_decrypt$650
	imulq	$192, %rax, %rdx
	movq	$96, %r9
	addq	%r9, %rdx
	imulq	$32, %rcx, %r9
	addq	%r9, %rdx
	imulq	$32, (%rsp), %r9
	imulq	$3, %r9, %r9
	imulq	$32, (%rsp), %r10
	imulq	%rcx, %r10
	addq	%r10, %r9
	imulq	$32, %rax, %r10
	addq	%r10, %r9
	movq	$0, %r10
	jmp 	Lzkboo_decrypt$647
Lzkboo_decrypt$648:
	movb	(%rsi,%r9), %r11b
	movb	%r11b, 1607264(%rsp,%rdx)
	incq	%rdx
	incq	%r9
	incq	%r10
Lzkboo_decrypt$647:
	cmpq	$32, %r10
	jb  	Lzkboo_decrypt$648
	incq	%rcx
Lzkboo_decrypt$645:
	cmpq	$3, %rcx
	jb  	Lzkboo_decrypt$646
	incq	%rax
Lzkboo_decrypt$643:
	cmpq	(%rsp), %rax
	jb  	Lzkboo_decrypt$644
	imulq	$192, (%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$622
Lzkboo_decrypt$623:
	movb	1607264(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1392(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_decrypt$624
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$641
Lzkboo_decrypt$642:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$641:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$642
	jmp 	Lzkboo_decrypt$635
Lzkboo_decrypt$636:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$640(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$640:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$639(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$639:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$638(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$638:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$637(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$637:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$635:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$636
	movl	1328(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$627
Lzkboo_decrypt$628:
	movl	1168(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$634(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$634:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$633(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$633:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$632(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$632:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1176(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1172(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$631(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$631:
	movl	%r9d, 1208(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$630(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$630:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$629(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$629:
	movl	%r10d, 1200(%rsp)
	movl	1208(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	1192(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1192(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1192(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1196(%rsp)
	incq	%rax
Lzkboo_decrypt$627:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$628
	movl	1328(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$512, %rax
	movl	16(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$625
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp 	Lzkboo_decrypt$626
Lzkboo_decrypt$625:
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
Lzkboo_decrypt$626:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$624:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$622:
	cmpq	24(%rsp), %rcx
	jb  	Lzkboo_decrypt$623
	movq	8(%rsp), %rax
	jmp 	Lzkboo_decrypt$620
Lzkboo_decrypt$621:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$620:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$621
	movq	8(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$596
	movb	$-128, 1392(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$618
Lzkboo_decrypt$619:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$618:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$619
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$616
Lzkboo_decrypt$617:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$616:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$617
	jmp 	Lzkboo_decrypt$610
Lzkboo_decrypt$611:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$615(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$615:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$614(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$614:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$613(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$613:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$612(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$612:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$610:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$611
	movl	1328(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$602
Lzkboo_decrypt$603:
	movl	1196(%rsp), %ecx
	movl	1184(%rsp), %r12d
	leaq	Lzkboo_decrypt$609(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$609:
	movl	1184(%rsp), %ebx
	leaq	Lzkboo_decrypt$608(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$608:
	movl	1184(%rsp), %r11d
	leaq	Lzkboo_decrypt$607(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$607:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1184(%rsp), %edx
	andl	1188(%rsp), %edx
	movl	1184(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1192(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$606(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$606:
	movl	%r9d, 1200(%rsp)
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$605(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$605:
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	leaq	Lzkboo_decrypt$604(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$604:
	movl	%r10d, 1208(%rsp)
	movl	1200(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1172(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1192(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1168(%rsp)
	incq	%rax
Lzkboo_decrypt$602:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$603
	movl	1328(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$600
Lzkboo_decrypt$601:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$600:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$601
	jmp 	Lzkboo_decrypt$597
Lzkboo_decrypt$596:
	movb	$-128, 1392(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$598
Lzkboo_decrypt$599:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$598:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$599
Lzkboo_decrypt$597:
	movq	8(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	16(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$594
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp 	Lzkboo_decrypt$595
Lzkboo_decrypt$594:
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
Lzkboo_decrypt$595:
	movl	16(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1452(%rsp)
	movl	20(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1448(%rsp)
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$592
Lzkboo_decrypt$593:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$592:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$593
	jmp 	Lzkboo_decrypt$586
Lzkboo_decrypt$587:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$591(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$591:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$590(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$590:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$589(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$589:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$588(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$588:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$586:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$587
	movl	1328(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$578
Lzkboo_decrypt$579:
	movl	1168(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$585(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$585:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$584(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$584:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$583(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$583:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1176(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1172(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$582(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$582:
	movl	%r9d, 1208(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$581(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$581:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$580(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$580:
	movl	%r10d, 1200(%rsp)
	movl	1208(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	1192(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1192(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1192(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1196(%rsp)
	incq	%rax
Lzkboo_decrypt$578:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$579
	movl	1328(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$576
Lzkboo_decrypt$577:
	movl	1328(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1296(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$576:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$577
	movq	$0, %rbp
	movq	$0, 8(%rsp)
	movq	8(%rsp), %rax
	jmp 	Lzkboo_decrypt$493
Lzkboo_decrypt$494:
	cmpq	$256, 8(%rsp)
	jb  	Lzkboo_decrypt$508
	movq	$0, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$1779033703, 1328(%rsp)
	movl	$-1150833019, 1332(%rsp)
	movl	$1013904242, 1336(%rsp)
	movl	$-1521486534, 1340(%rsp)
	movl	$1359893119, 1344(%rsp)
	movl	$-1694144372, 1348(%rsp)
	movl	$528734635, 1352(%rsp)
	movl	$1541459225, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$574
Lzkboo_decrypt$575:
	movb	1296(%rsp,%rax), %cl
	movb	%cl, 1360(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$574:
	cmpq	$32, %rax
	jb  	Lzkboo_decrypt$575
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$553
Lzkboo_decrypt$554:
	movb	1360(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	24(%rsp), %rcx
	movb	%al, 1392(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 24(%rsp)
	cmpq	$64, 24(%rsp)
	jne 	Lzkboo_decrypt$555
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$572
Lzkboo_decrypt$573:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$572:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$573
	jmp 	Lzkboo_decrypt$566
Lzkboo_decrypt$567:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$571(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$571:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$570(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$570:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$569(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$569:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$568(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$568:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$566:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$567
	movl	1328(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$558
Lzkboo_decrypt$559:
	movl	1196(%rsp), %ecx
	movl	1184(%rsp), %r12d
	leaq	Lzkboo_decrypt$565(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$565:
	movl	1184(%rsp), %ebx
	leaq	Lzkboo_decrypt$564(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$564:
	movl	1184(%rsp), %r11d
	leaq	Lzkboo_decrypt$563(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$563:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1184(%rsp), %edx
	andl	1188(%rsp), %edx
	movl	1184(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1192(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$562(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$562:
	movl	%r9d, 1200(%rsp)
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$561(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$561:
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	leaq	Lzkboo_decrypt$560(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$560:
	movl	%r10d, 1208(%rsp)
	movl	1200(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1172(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1192(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1168(%rsp)
	incq	%rax
Lzkboo_decrypt$558:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$559
	movl	1328(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$512, %rax
	movl	16(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$556
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp 	Lzkboo_decrypt$557
Lzkboo_decrypt$556:
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
Lzkboo_decrypt$557:
	movq	$0, 24(%rsp)
Lzkboo_decrypt$555:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$553:
	cmpq	$32, %rcx
	jb  	Lzkboo_decrypt$554
	movq	24(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$529
	movb	$-128, 1392(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$551
Lzkboo_decrypt$552:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$551:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$552
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$549
Lzkboo_decrypt$550:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$549:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$550
	jmp 	Lzkboo_decrypt$543
Lzkboo_decrypt$544:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$548(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$548:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$547(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$547:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$546(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$546:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$545(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$545:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$543:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$544
	movl	1328(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$535
Lzkboo_decrypt$536:
	movl	1168(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$542(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$542:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$541(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$541:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$540(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$540:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1176(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1172(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$539(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$539:
	movl	%r9d, 1208(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$538(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$538:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$537(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$537:
	movl	%r10d, 1200(%rsp)
	movl	1208(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	1192(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1192(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1192(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1196(%rsp)
	incq	%rax
Lzkboo_decrypt$535:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$536
	movl	1328(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$533
Lzkboo_decrypt$534:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$533:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$534
	jmp 	Lzkboo_decrypt$530
Lzkboo_decrypt$529:
	movb	$-128, 1392(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$531
Lzkboo_decrypt$532:
	movb	$0, 1392(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$531:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$532
Lzkboo_decrypt$530:
	movq	24(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	16(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$527
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	jmp 	Lzkboo_decrypt$528
Lzkboo_decrypt$527:
	movl	20(%rsp), %eax
	incl	%eax
	movl	%eax, 20(%rsp)
Lzkboo_decrypt$528:
	movl	16(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1452(%rsp)
	movl	20(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1448(%rsp)
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$525
Lzkboo_decrypt$526:
	movl	1392(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$525:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$526
	jmp 	Lzkboo_decrypt$519
Lzkboo_decrypt$520:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$524(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$524:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$523(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$523:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$522(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$522:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$521(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$521:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$519:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$520
	movl	1328(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1332(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1336(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1340(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1344(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1348(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1352(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1356(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$511
Lzkboo_decrypt$512:
	movl	1196(%rsp), %ecx
	movl	1184(%rsp), %r12d
	leaq	Lzkboo_decrypt$518(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$518:
	movl	1184(%rsp), %ebx
	leaq	Lzkboo_decrypt$517(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$517:
	movl	1184(%rsp), %r11d
	leaq	Lzkboo_decrypt$516(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$516:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1184(%rsp), %edx
	andl	1188(%rsp), %edx
	movl	1184(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1192(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$515(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$515:
	movl	%r9d, 1200(%rsp)
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$514(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$514:
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	leaq	Lzkboo_decrypt$513(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$513:
	movl	%r10d, 1208(%rsp)
	movl	1200(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1172(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1192(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1168(%rsp)
	incq	%rax
Lzkboo_decrypt$511:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$512
	movl	1328(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1328(%rsp)
	movl	1332(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1332(%rsp)
	movl	1336(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1336(%rsp)
	movl	1340(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1340(%rsp)
	movl	1344(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1344(%rsp)
	movl	1348(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1348(%rsp)
	movl	1352(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1352(%rsp)
	movl	1356(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1356(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$509
Lzkboo_decrypt$510:
	movl	1328(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1296(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$509:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$510
	movq	$0, %rax
Lzkboo_decrypt$508:
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$506
Lzkboo_decrypt$507:
	incq	%rcx
	addq	$-8, %rax
Lzkboo_decrypt$506:
	cmpq	$8, %rax
	jnb 	Lzkboo_decrypt$507
	movb	1296(%rsp,%rcx), %cl
	jmp 	Lzkboo_decrypt$504
Lzkboo_decrypt$505:
	shrb	$1, %cl
	addq	$-1, %rax
Lzkboo_decrypt$504:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$505
	andb	$1, %cl
	movq	24(%rsp), %rax
	incq	%rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$502
Lzkboo_decrypt$503:
	incq	%rdx
	addq	$-8, %rax
Lzkboo_decrypt$502:
	cmpq	$8, %rax
	jnb 	Lzkboo_decrypt$503
	movb	1296(%rsp,%rdx), %dl
	jmp 	Lzkboo_decrypt$500
Lzkboo_decrypt$501:
	shrb	$1, %dl
	addq	$-1, %rax
Lzkboo_decrypt$500:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$501
	andb	$1, %dl
	cmpb	$0, %cl
	je  	Lzkboo_decrypt$495
	cmpb	$0, %dl
	jne 	Lzkboo_decrypt$496
	movq	$2, 80(%rsp,%rbp,8)
	incq	%rbp
Lzkboo_decrypt$499:
	jmp 	Lzkboo_decrypt$496
Lzkboo_decrypt$495:
	cmpb	$0, %dl
	je  	Lzkboo_decrypt$497
	movq	$1, 80(%rsp,%rbp,8)
	incq	%rbp
	jmp 	Lzkboo_decrypt$496
Lzkboo_decrypt$497:
	movq	$0, 80(%rsp,%rbp,8)
	incq	%rbp
Lzkboo_decrypt$498:
Lzkboo_decrypt$496:
	movq	8(%rsp), %rax
	incq	%rax
Lzkboo_decrypt$493:
	cmpq	(%rsp), %rbp
	jb  	Lzkboo_decrypt$494
	movq	$0, 16(%rsp)
	movq	$0, %rbp
	jmp 	Lzkboo_decrypt$1
Lzkboo_decrypt$2:
	movl	$1732584193, 1276(%rsp)
	movl	$-271733879, 1280(%rsp)
	movl	$-1732584194, 1284(%rsp)
	movl	$271733878, 1288(%rsp)
	movl	$-1009589776, 1292(%rsp)
	imulq	$3128, %rbp, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$491
Lzkboo_decrypt$492:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1604208(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$491:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$492
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$489
Lzkboo_decrypt$490:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1604224(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$489:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$490
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$487
Lzkboo_decrypt$488:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1392(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$487:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$488
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$485
Lzkboo_decrypt$486:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1604304(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$485:
	cmpq	$1480, %rcx
	jb  	Lzkboo_decrypt$486
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$483
Lzkboo_decrypt$484:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1604240(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$483:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$484
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$481
Lzkboo_decrypt$482:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1605784(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$481:
	cmpq	$1480, %rcx
	jb  	Lzkboo_decrypt$482
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$479
Lzkboo_decrypt$480:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1196(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$479:
	cmpq	$4, %rcx
	jb  	Lzkboo_decrypt$480
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$477
Lzkboo_decrypt$478:
	movb	(%rdi,%rax), %dl
	movb	%dl, 1192(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$477:
	cmpq	$4, %rcx
	jb  	Lzkboo_decrypt$478
	movq	$0, 8(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$1779033703, 1360(%rsp)
	movl	$-1150833019, 1364(%rsp)
	movl	$1013904242, 1368(%rsp)
	movl	$-1521486534, 1372(%rsp)
	movl	$1359893119, 1376(%rsp)
	movl	$-1694144372, 1380(%rsp)
	movl	$528734635, 1384(%rsp)
	movl	$1541459225, 1388(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$456
Lzkboo_decrypt$457:
	movb	1604208(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$458
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$475
Lzkboo_decrypt$476:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$475:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$476
	jmp 	Lzkboo_decrypt$469
Lzkboo_decrypt$470:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$474(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$474:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$473(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$473:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$472(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$472:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$471(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$471:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$469:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$470
	movl	1360(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1204(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$461
Lzkboo_decrypt$462:
	movl	1204(%rsp), %ecx
	movl	1172(%rsp), %r12d
	leaq	Lzkboo_decrypt$468(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$468:
	movl	1172(%rsp), %ebx
	leaq	Lzkboo_decrypt$467(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$467:
	movl	1172(%rsp), %r11d
	leaq	Lzkboo_decrypt$466(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$466:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1172(%rsp), %edx
	andl	1168(%rsp), %edx
	movl	1172(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1188(%rsp), %r9d
	leaq	Lzkboo_decrypt$465(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$465:
	movl	%r9d, 1200(%rsp)
	movl	1188(%rsp), %r9d
	leaq	Lzkboo_decrypt$464(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$464:
	movl	%r9d, 1212(%rsp)
	movl	1188(%rsp), %r10d
	leaq	Lzkboo_decrypt$463(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$463:
	movl	%r10d, 1216(%rsp)
	movl	1200(%rsp), %edx
	movl	1212(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1216(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1188(%rsp), %r9d
	movl	1184(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1188(%rsp), %r10d
	movl	1180(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1184(%rsp), %r10d
	movl	1180(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1208(%rsp), %r9d
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1208(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1188(%rsp)
	incq	%rax
Lzkboo_decrypt$461:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$462
	movl	1360(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1204(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$459
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$460
Lzkboo_decrypt$459:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$460:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$458:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$456:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$457
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$435
Lzkboo_decrypt$436:
	movq	%rax, 32(%rsp)
	movb	1392(%rsp,%rax), %al
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$437
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$454
Lzkboo_decrypt$455:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$454:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$455
	jmp 	Lzkboo_decrypt$448
Lzkboo_decrypt$449:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$453(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$453:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$452(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$452:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$451(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$451:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$450(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$450:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$448:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$449
	movl	1360(%rsp), %eax
	movl	%eax, 1204(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$440
Lzkboo_decrypt$441:
	movl	1188(%rsp), %ecx
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_decrypt$447(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$447:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_decrypt$446(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$446:
	movl	1176(%rsp), %r11d
	leaq	Lzkboo_decrypt$445(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$445:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1176(%rsp), %edx
	andl	1180(%rsp), %edx
	movl	1176(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1184(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1204(%rsp), %r9d
	leaq	Lzkboo_decrypt$444(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$444:
	movl	%r9d, 1216(%rsp)
	movl	1204(%rsp), %r9d
	leaq	Lzkboo_decrypt$443(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$443:
	movl	%r9d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	leaq	Lzkboo_decrypt$442(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$442:
	movl	%r10d, 1200(%rsp)
	movl	1216(%rsp), %edx
	movl	1212(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1204(%rsp), %r9d
	movl	1208(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1204(%rsp), %r10d
	movl	1168(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	1168(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1208(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1204(%rsp), %r9d
	movl	%r9d, 1208(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1204(%rsp)
	incq	%rax
Lzkboo_decrypt$440:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$441
	movl	1360(%rsp), %eax
	addl	1204(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$438
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$439
Lzkboo_decrypt$438:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$439:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$437:
	movq	32(%rsp), %rax
	incq	%rax
Lzkboo_decrypt$435:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$436
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$414
Lzkboo_decrypt$415:
	movb	1604304(%rsp,%rax), %cl
	movq	8(%rsp), %rdx
	movb	%cl, 1456(%rsp,%rdx)
	incq	%rdx
	movq	%rdx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$416
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$433
Lzkboo_decrypt$434:
	movl	1456(%rsp,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, 1520(%rsp,%rcx,4)
	incq	%rcx
Lzkboo_decrypt$433:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$434
	jmp 	Lzkboo_decrypt$427
Lzkboo_decrypt$428:
	movq	%rcx, %rdx
	addq	$-2, %rdx
	movl	1520(%rsp,%rdx,4), %ebx
	movl	%ebx, %edx
	leaq	Lzkboo_decrypt$432(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$432:
	movl	%ebx, %edx
	leaq	Lzkboo_decrypt$431(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$431:
	shrl	$10, %ebx
	xorl	%r9d, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-7, %rdx
	movl	1520(%rsp,%rdx,4), %edx
	addl	%edx, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-15, %rdx
	movl	1520(%rsp,%rdx,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_decrypt$430(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$430:
	movl	%ebx, %r9d
	leaq	Lzkboo_decrypt$429(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$429:
	shrl	$3, %ebx
	xorl	%r9d, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-16, %rdx
	movl	1520(%rsp,%rdx,4), %edx
	addl	%edx, 1520(%rsp,%rcx,4)
	incq	%rcx
Lzkboo_decrypt$427:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$428
	movl	1360(%rsp), %ecx
	movl	%ecx, 1188(%rsp)
	movl	1364(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	movl	1368(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1372(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1376(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1380(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1384(%rsp), %ecx
	movl	%ecx, 1208(%rsp)
	movl	1388(%rsp), %ecx
	movl	%ecx, 1204(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$419
Lzkboo_decrypt$420:
	movl	1204(%rsp), %edx
	movl	1172(%rsp), %r12d
	leaq	Lzkboo_decrypt$426(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$426:
	movl	1172(%rsp), %ebx
	leaq	Lzkboo_decrypt$425(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$425:
	movl	1172(%rsp), %r11d
	leaq	Lzkboo_decrypt$424(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$424:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %edx
	movl	1172(%rsp), %r9d
	andl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	xorl	$-1, %r10d
	andl	1208(%rsp), %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1776(%rsp,%rcx,4), %r9d
	addl	%r9d, %edx
	movl	1520(%rsp,%rcx,4), %r9d
	addl	%r9d, %edx
	movl	1188(%rsp), %r9d
	leaq	Lzkboo_decrypt$423(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$423:
	movl	%r9d, 1200(%rsp)
	movl	1188(%rsp), %r9d
	leaq	Lzkboo_decrypt$422(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$422:
	movl	%r9d, 1212(%rsp)
	movl	1188(%rsp), %r10d
	leaq	Lzkboo_decrypt$421(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$421:
	movl	%r10d, 1216(%rsp)
	movl	1200(%rsp), %r9d
	movl	1212(%rsp), %r10d
	xorl	%r10d, %r9d
	movl	1216(%rsp), %r10d
	xorl	%r10d, %r9d
	movl	1188(%rsp), %r10d
	movl	1184(%rsp), %r11d
	andl	%r11d, %r10d
	movl	1188(%rsp), %r11d
	movl	1180(%rsp), %ebx
	andl	%ebx, %r11d
	xorl	%r11d, %r10d
	movl	1184(%rsp), %r11d
	movl	1180(%rsp), %ebx
	andl	%ebx, %r11d
	xorl	%r11d, %r10d
	addl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	movl	%r10d, 1208(%rsp)
	movl	1172(%rsp), %r10d
	movl	%r10d, 1168(%rsp)
	movl	1176(%rsp), %r10d
	addl	%edx, %r10d
	movl	%r10d, 1172(%rsp)
	movl	1180(%rsp), %r10d
	movl	%r10d, 1176(%rsp)
	movl	1184(%rsp), %r10d
	movl	%r10d, 1180(%rsp)
	movl	1188(%rsp), %r10d
	movl	%r10d, 1184(%rsp)
	addl	%r9d, %edx
	movl	%edx, 1188(%rsp)
	incq	%rcx
Lzkboo_decrypt$419:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$420
	movl	1360(%rsp), %ecx
	addl	1188(%rsp), %ecx
	movl	%ecx, 1360(%rsp)
	movl	1364(%rsp), %ecx
	addl	1184(%rsp), %ecx
	movl	%ecx, 1364(%rsp)
	movl	1368(%rsp), %ecx
	addl	1180(%rsp), %ecx
	movl	%ecx, 1368(%rsp)
	movl	1372(%rsp), %ecx
	addl	1176(%rsp), %ecx
	movl	%ecx, 1372(%rsp)
	movl	1376(%rsp), %ecx
	addl	1172(%rsp), %ecx
	movl	%ecx, 1376(%rsp)
	movl	1380(%rsp), %ecx
	addl	1168(%rsp), %ecx
	movl	%ecx, 1380(%rsp)
	movl	1384(%rsp), %ecx
	addl	1208(%rsp), %ecx
	movl	%ecx, 1384(%rsp)
	movl	1388(%rsp), %ecx
	addl	1204(%rsp), %ecx
	movl	%ecx, 1388(%rsp)
	movq	$512, %rcx
	movl	24(%rsp), %edx
	movl	$-1, %r9d
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jnbe	Lzkboo_decrypt$417
	addl	%ecx, %edx
	movl	%edx, 24(%rsp)
	jmp 	Lzkboo_decrypt$418
Lzkboo_decrypt$417:
	movl	28(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 28(%rsp)
Lzkboo_decrypt$418:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$416:
	incq	%rax
Lzkboo_decrypt$414:
	cmpq	$1480, %rax
	jb  	Lzkboo_decrypt$415
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$393
Lzkboo_decrypt$394:
	movb	1196(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_decrypt$395
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$412
Lzkboo_decrypt$413:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$412:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$413
	jmp 	Lzkboo_decrypt$406
Lzkboo_decrypt$407:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$411(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$411:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$410(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$410:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$409(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$409:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$408(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$408:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$406:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$407
	movl	1360(%rsp), %eax
	movl	%eax, 1204(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$398
Lzkboo_decrypt$399:
	movl	1188(%rsp), %ecx
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_decrypt$405(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$405:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_decrypt$404(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$404:
	movl	1176(%rsp), %r11d
	leaq	Lzkboo_decrypt$403(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$403:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1176(%rsp), %edx
	andl	1180(%rsp), %edx
	movl	1176(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1184(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1204(%rsp), %r9d
	leaq	Lzkboo_decrypt$402(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$402:
	movl	%r9d, 1216(%rsp)
	movl	1204(%rsp), %r9d
	leaq	Lzkboo_decrypt$401(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$401:
	movl	%r9d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	leaq	Lzkboo_decrypt$400(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$400:
	movl	%r10d, 1200(%rsp)
	movl	1216(%rsp), %edx
	movl	1212(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1204(%rsp), %r9d
	movl	1208(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1204(%rsp), %r10d
	movl	1168(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	1168(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1208(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1204(%rsp), %r9d
	movl	%r9d, 1208(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1204(%rsp)
	incq	%rax
Lzkboo_decrypt$398:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$399
	movl	1360(%rsp), %eax
	addl	1204(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$396
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$397
Lzkboo_decrypt$396:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$397:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$395:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$393:
	cmpq	$4, %rcx
	jb  	Lzkboo_decrypt$394
	movq	8(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$369
	movb	$-128, 1456(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$391
Lzkboo_decrypt$392:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$391:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$392
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$389
Lzkboo_decrypt$390:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$389:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$390
	jmp 	Lzkboo_decrypt$383
Lzkboo_decrypt$384:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$388(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$388:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$387(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$387:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$386(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$386:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$385(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$385:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$383:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$384
	movl	1360(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$375
Lzkboo_decrypt$376:
	movl	1208(%rsp), %ecx
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_decrypt$382(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$382:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_decrypt$381(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$381:
	movl	1176(%rsp), %r11d
	leaq	Lzkboo_decrypt$380(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$380:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1176(%rsp), %edx
	andl	1172(%rsp), %edx
	movl	1176(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1168(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$379(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$379:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$378(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$378:
	movl	%r9d, 1200(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$377(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$377:
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1212(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	1188(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1184(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1188(%rsp), %r10d
	movl	1184(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	%r9d, 1208(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1196(%rsp)
	incq	%rax
Lzkboo_decrypt$375:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$376
	movl	1360(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$373
Lzkboo_decrypt$374:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$373:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$374
	jmp 	Lzkboo_decrypt$370
Lzkboo_decrypt$369:
	movb	$-128, 1456(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$371
Lzkboo_decrypt$372:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$371:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$372
Lzkboo_decrypt$370:
	movq	8(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$367
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$368
Lzkboo_decrypt$367:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$368:
	movl	24(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1516(%rsp)
	movl	28(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1512(%rsp)
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$365
Lzkboo_decrypt$366:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$365:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$366
	jmp 	Lzkboo_decrypt$359
Lzkboo_decrypt$360:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$364(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$364:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$363(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$363:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$362(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$362:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$361(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$361:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$359:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$360
	movl	1360(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$351
Lzkboo_decrypt$352:
	movl	1196(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$358(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$358:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$357(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$357:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$356(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$356:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1184(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1188(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$355(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$355:
	movl	%r9d, 1212(%rsp)
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$354(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$354:
	movl	%r9d, 1200(%rsp)
	movl	1208(%rsp), %r10d
	leaq	Lzkboo_decrypt$353(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$353:
	movl	%r10d, 1204(%rsp)
	movl	1212(%rsp), %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	movl	1168(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1188(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1208(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1208(%rsp)
	incq	%rax
Lzkboo_decrypt$351:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$352
	movl	1360(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$349
Lzkboo_decrypt$350:
	movl	1360(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1328(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$349:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$350
	movq	$0, 8(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$1779033703, 1360(%rsp)
	movl	$-1150833019, 1364(%rsp)
	movl	$1013904242, 1368(%rsp)
	movl	$-1521486534, 1372(%rsp)
	movl	$1359893119, 1376(%rsp)
	movl	$-1694144372, 1380(%rsp)
	movl	$528734635, 1384(%rsp)
	movl	$1541459225, 1388(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$328
Lzkboo_decrypt$329:
	movb	1604224(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$330
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$347
Lzkboo_decrypt$348:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$347:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$348
	jmp 	Lzkboo_decrypt$341
Lzkboo_decrypt$342:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$346(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$346:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$345(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$345:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$344(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$344:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$343(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$343:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$341:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$342
	movl	1360(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$333
Lzkboo_decrypt$334:
	movl	1208(%rsp), %ecx
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_decrypt$340(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$340:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_decrypt$339(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$339:
	movl	1176(%rsp), %r11d
	leaq	Lzkboo_decrypt$338(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$338:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1176(%rsp), %edx
	andl	1172(%rsp), %edx
	movl	1176(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1168(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$337(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$337:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$336(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$336:
	movl	%r9d, 1200(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$335(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$335:
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1212(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	1188(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1184(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1188(%rsp), %r10d
	movl	1184(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	%r9d, 1208(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1196(%rsp)
	incq	%rax
Lzkboo_decrypt$333:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$334
	movl	1360(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$331
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$332
Lzkboo_decrypt$331:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$332:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$330:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$328:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$329
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$307
Lzkboo_decrypt$308:
	movq	%rax, 32(%rsp)
	movb	1604240(%rsp,%rax), %al
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$309
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$326
Lzkboo_decrypt$327:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$326:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$327
	jmp 	Lzkboo_decrypt$320
Lzkboo_decrypt$321:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$325(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$325:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$324(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$324:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$323(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$323:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$322(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$322:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$320:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$321
	movl	1360(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$312
Lzkboo_decrypt$313:
	movl	1196(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$319(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$319:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$318(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$318:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$317(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$317:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1184(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1188(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$316(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$316:
	movl	%r9d, 1212(%rsp)
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$315(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$315:
	movl	%r9d, 1200(%rsp)
	movl	1208(%rsp), %r10d
	leaq	Lzkboo_decrypt$314(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$314:
	movl	%r10d, 1204(%rsp)
	movl	1212(%rsp), %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	movl	1168(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1188(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1208(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1208(%rsp)
	incq	%rax
Lzkboo_decrypt$312:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$313
	movl	1360(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$310
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$311
Lzkboo_decrypt$310:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$311:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$309:
	movq	32(%rsp), %rax
	incq	%rax
Lzkboo_decrypt$307:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$308
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$286
Lzkboo_decrypt$287:
	movb	1605784(%rsp,%rax), %cl
	movq	8(%rsp), %rdx
	movb	%cl, 1456(%rsp,%rdx)
	incq	%rdx
	movq	%rdx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_decrypt$288
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$305
Lzkboo_decrypt$306:
	movl	1456(%rsp,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, 1520(%rsp,%rcx,4)
	incq	%rcx
Lzkboo_decrypt$305:
	cmpq	$16, %rcx
	jb  	Lzkboo_decrypt$306
	jmp 	Lzkboo_decrypt$299
Lzkboo_decrypt$300:
	movq	%rcx, %rdx
	addq	$-2, %rdx
	movl	1520(%rsp,%rdx,4), %ebx
	movl	%ebx, %edx
	leaq	Lzkboo_decrypt$304(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$304:
	movl	%ebx, %edx
	leaq	Lzkboo_decrypt$303(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$303:
	shrl	$10, %ebx
	xorl	%r9d, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-7, %rdx
	movl	1520(%rsp,%rdx,4), %edx
	addl	%edx, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-15, %rdx
	movl	1520(%rsp,%rdx,4), %ebx
	movl	%ebx, %r11d
	leaq	Lzkboo_decrypt$302(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$302:
	movl	%ebx, %r9d
	leaq	Lzkboo_decrypt$301(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$301:
	shrl	$3, %ebx
	xorl	%r9d, %r11d
	xorl	%ebx, %r11d
	addl	%r11d, 1520(%rsp,%rcx,4)
	movq	%rcx, %rdx
	addq	$-16, %rdx
	movl	1520(%rsp,%rdx,4), %edx
	addl	%edx, 1520(%rsp,%rcx,4)
	incq	%rcx
Lzkboo_decrypt$299:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$300
	movl	1360(%rsp), %ecx
	movl	%ecx, 1196(%rsp)
	movl	1364(%rsp), %ecx
	movl	%ecx, 1188(%rsp)
	movl	1368(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	movl	1372(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1376(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1380(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1384(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1388(%rsp), %ecx
	movl	%ecx, 1208(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$291
Lzkboo_decrypt$292:
	movl	1208(%rsp), %edx
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_decrypt$298(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$298:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_decrypt$297(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$297:
	movl	1176(%rsp), %r11d
	leaq	Lzkboo_decrypt$296(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$296:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %edx
	movl	1176(%rsp), %r9d
	andl	1172(%rsp), %r9d
	movl	1176(%rsp), %r10d
	xorl	$-1, %r10d
	andl	1168(%rsp), %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1776(%rsp,%rcx,4), %r9d
	addl	%r9d, %edx
	movl	1520(%rsp,%rcx,4), %r9d
	addl	%r9d, %edx
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$295(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$295:
	movl	%r9d, 1204(%rsp)
	movl	1196(%rsp), %r9d
	leaq	Lzkboo_decrypt$294(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$294:
	movl	%r9d, 1200(%rsp)
	movl	1196(%rsp), %r10d
	leaq	Lzkboo_decrypt$293(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$293:
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r9d
	movl	1200(%rsp), %r10d
	xorl	%r10d, %r9d
	movl	1212(%rsp), %r10d
	xorl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	movl	1196(%rsp), %r11d
	movl	1184(%rsp), %ebx
	andl	%ebx, %r11d
	xorl	%r11d, %r10d
	movl	1188(%rsp), %r11d
	movl	1184(%rsp), %ebx
	andl	%ebx, %r11d
	xorl	%r11d, %r10d
	addl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	%r10d, 1208(%rsp)
	movl	1172(%rsp), %r10d
	movl	%r10d, 1168(%rsp)
	movl	1176(%rsp), %r10d
	movl	%r10d, 1172(%rsp)
	movl	1180(%rsp), %r10d
	addl	%edx, %r10d
	movl	%r10d, 1176(%rsp)
	movl	1184(%rsp), %r10d
	movl	%r10d, 1180(%rsp)
	movl	1188(%rsp), %r10d
	movl	%r10d, 1184(%rsp)
	movl	1196(%rsp), %r10d
	movl	%r10d, 1188(%rsp)
	addl	%r9d, %edx
	movl	%edx, 1196(%rsp)
	incq	%rcx
Lzkboo_decrypt$291:
	cmpq	$64, %rcx
	jb  	Lzkboo_decrypt$292
	movl	1360(%rsp), %ecx
	addl	1196(%rsp), %ecx
	movl	%ecx, 1360(%rsp)
	movl	1364(%rsp), %ecx
	addl	1188(%rsp), %ecx
	movl	%ecx, 1364(%rsp)
	movl	1368(%rsp), %ecx
	addl	1184(%rsp), %ecx
	movl	%ecx, 1368(%rsp)
	movl	1372(%rsp), %ecx
	addl	1180(%rsp), %ecx
	movl	%ecx, 1372(%rsp)
	movl	1376(%rsp), %ecx
	addl	1176(%rsp), %ecx
	movl	%ecx, 1376(%rsp)
	movl	1380(%rsp), %ecx
	addl	1172(%rsp), %ecx
	movl	%ecx, 1380(%rsp)
	movl	1384(%rsp), %ecx
	addl	1168(%rsp), %ecx
	movl	%ecx, 1384(%rsp)
	movl	1388(%rsp), %ecx
	addl	1208(%rsp), %ecx
	movl	%ecx, 1388(%rsp)
	movq	$512, %rcx
	movl	24(%rsp), %edx
	movl	$-1, %r9d
	subl	%ecx, %r9d
	cmpl	%r9d, %edx
	jnbe	Lzkboo_decrypt$289
	addl	%ecx, %edx
	movl	%edx, 24(%rsp)
	jmp 	Lzkboo_decrypt$290
Lzkboo_decrypt$289:
	movl	28(%rsp), %ecx
	incl	%ecx
	movl	%ecx, 28(%rsp)
Lzkboo_decrypt$290:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$288:
	incq	%rax
Lzkboo_decrypt$286:
	cmpq	$1480, %rax
	jb  	Lzkboo_decrypt$287
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$265
Lzkboo_decrypt$266:
	movb	1192(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1456(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_decrypt$267
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$284
Lzkboo_decrypt$285:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$284:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$285
	jmp 	Lzkboo_decrypt$278
Lzkboo_decrypt$279:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$283(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$283:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$282(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$282:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$281(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$281:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$280(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$280:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$278:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$279
	movl	1360(%rsp), %eax
	movl	%eax, 1208(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$270
Lzkboo_decrypt$271:
	movl	1196(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$277(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$277:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$276(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$276:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$275(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$275:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1184(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1188(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$274(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$274:
	movl	%r9d, 1212(%rsp)
	movl	1208(%rsp), %r9d
	leaq	Lzkboo_decrypt$273(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$273:
	movl	%r9d, 1200(%rsp)
	movl	1208(%rsp), %r10d
	leaq	Lzkboo_decrypt$272(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$272:
	movl	%r10d, 1204(%rsp)
	movl	1212(%rsp), %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	movl	1168(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1208(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1188(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1208(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1208(%rsp)
	incq	%rax
Lzkboo_decrypt$270:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$271
	movl	1360(%rsp), %eax
	addl	1208(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$268
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$269
Lzkboo_decrypt$268:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$269:
	movq	$0, 8(%rsp)
Lzkboo_decrypt$267:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_decrypt$265:
	cmpq	$4, %rcx
	jb  	Lzkboo_decrypt$266
	movq	8(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$241
	movb	$-128, 1456(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$263
Lzkboo_decrypt$264:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$263:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$264
	movl	$1116352408, 1776(%rsp)
	movl	$1899447441, 1780(%rsp)
	movl	$-1245643825, 1784(%rsp)
	movl	$-373957723, 1788(%rsp)
	movl	$961987163, 1792(%rsp)
	movl	$1508970993, 1796(%rsp)
	movl	$-1841331548, 1800(%rsp)
	movl	$-1424204075, 1804(%rsp)
	movl	$-670586216, 1808(%rsp)
	movl	$310598401, 1812(%rsp)
	movl	$607225278, 1816(%rsp)
	movl	$1426881987, 1820(%rsp)
	movl	$1925078388, 1824(%rsp)
	movl	$-2132889090, 1828(%rsp)
	movl	$-1680079193, 1832(%rsp)
	movl	$-1046744716, 1836(%rsp)
	movl	$-459576895, 1840(%rsp)
	movl	$-272742522, 1844(%rsp)
	movl	$264347078, 1848(%rsp)
	movl	$604807628, 1852(%rsp)
	movl	$770255983, 1856(%rsp)
	movl	$1249150122, 1860(%rsp)
	movl	$1555081692, 1864(%rsp)
	movl	$1996064986, 1868(%rsp)
	movl	$-1740746414, 1872(%rsp)
	movl	$-1473132947, 1876(%rsp)
	movl	$-1341970488, 1880(%rsp)
	movl	$-1084653625, 1884(%rsp)
	movl	$-958395405, 1888(%rsp)
	movl	$-710438585, 1892(%rsp)
	movl	$113926993, 1896(%rsp)
	movl	$338241895, 1900(%rsp)
	movl	$666307205, 1904(%rsp)
	movl	$773529912, 1908(%rsp)
	movl	$1294757372, 1912(%rsp)
	movl	$1396182291, 1916(%rsp)
	movl	$1695183700, 1920(%rsp)
	movl	$1986661051, 1924(%rsp)
	movl	$-2117940946, 1928(%rsp)
	movl	$-1838011259, 1932(%rsp)
	movl	$-1564481375, 1936(%rsp)
	movl	$-1474664885, 1940(%rsp)
	movl	$-1035236496, 1944(%rsp)
	movl	$-949202525, 1948(%rsp)
	movl	$-778901479, 1952(%rsp)
	movl	$-694614492, 1956(%rsp)
	movl	$-200395387, 1960(%rsp)
	movl	$275423344, 1964(%rsp)
	movl	$430227734, 1968(%rsp)
	movl	$506948616, 1972(%rsp)
	movl	$659060556, 1976(%rsp)
	movl	$883997877, 1980(%rsp)
	movl	$958139571, 1984(%rsp)
	movl	$1322822218, 1988(%rsp)
	movl	$1537002063, 1992(%rsp)
	movl	$1747873779, 1996(%rsp)
	movl	$1955562222, 2000(%rsp)
	movl	$2024104815, 2004(%rsp)
	movl	$-2067236844, 2008(%rsp)
	movl	$-1933114872, 2012(%rsp)
	movl	$-1866530822, 2016(%rsp)
	movl	$-1538233109, 2020(%rsp)
	movl	$-1090935817, 2024(%rsp)
	movl	$-965641998, 2028(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$261
Lzkboo_decrypt$262:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$261:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$262
	jmp 	Lzkboo_decrypt$255
Lzkboo_decrypt$256:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$260(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$260:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$259(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$259:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$258(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$258:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$257(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$257:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1520(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1520(%rsp,%rcx,4), %ecx
	addl	%ecx, 1520(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$255:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$256
	movl	1360(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$247
Lzkboo_decrypt$248:
	movl	1168(%rsp), %ecx
	movl	1180(%rsp), %r12d
	leaq	Lzkboo_decrypt$254(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$254:
	movl	1180(%rsp), %ebx
	leaq	Lzkboo_decrypt$253(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$253:
	movl	1180(%rsp), %r11d
	leaq	Lzkboo_decrypt$252(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$252:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1180(%rsp), %edx
	andl	1176(%rsp), %edx
	movl	1180(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1172(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1192(%rsp), %r9d
	leaq	Lzkboo_decrypt$251(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$251:
	movl	%r9d, 1208(%rsp)
	movl	1192(%rsp), %r9d
	leaq	Lzkboo_decrypt$250(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$250:
	movl	%r9d, 1204(%rsp)
	movl	1192(%rsp), %r10d
	leaq	Lzkboo_decrypt$249(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$249:
	movl	%r10d, 1200(%rsp)
	movl	1208(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1200(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1192(%rsp), %r9d
	movl	1196(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1192(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1196(%rsp), %r10d
	movl	1188(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1172(%rsp), %r9d
	movl	%r9d, 1168(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	movl	1180(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1184(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1180(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1184(%rsp)
	movl	1196(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1192(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1192(%rsp)
	incq	%rax
Lzkboo_decrypt$247:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$248
	movl	1360(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$245
Lzkboo_decrypt$246:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$245:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$246
	jmp 	Lzkboo_decrypt$242
Lzkboo_decrypt$241:
	movb	$-128, 1456(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_decrypt$243
Lzkboo_decrypt$244:
	movb	$0, 1456(%rsp,%rax)
	incq	%rax
Lzkboo_decrypt$243:
	cmpq	$56, %rax
	jb  	Lzkboo_decrypt$244
Lzkboo_decrypt$242:
	movq	8(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jnbe	Lzkboo_decrypt$239
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_decrypt$240
Lzkboo_decrypt$239:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_decrypt$240:
	movl	24(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1516(%rsp)
	movl	28(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1512(%rsp)
	movl	$1116352408, 1520(%rsp)
	movl	$1899447441, 1524(%rsp)
	movl	$-1245643825, 1528(%rsp)
	movl	$-373957723, 1532(%rsp)
	movl	$961987163, 1536(%rsp)
	movl	$1508970993, 1540(%rsp)
	movl	$-1841331548, 1544(%rsp)
	movl	$-1424204075, 1548(%rsp)
	movl	$-670586216, 1552(%rsp)
	movl	$310598401, 1556(%rsp)
	movl	$607225278, 1560(%rsp)
	movl	$1426881987, 1564(%rsp)
	movl	$1925078388, 1568(%rsp)
	movl	$-2132889090, 1572(%rsp)
	movl	$-1680079193, 1576(%rsp)
	movl	$-1046744716, 1580(%rsp)
	movl	$-459576895, 1584(%rsp)
	movl	$-272742522, 1588(%rsp)
	movl	$264347078, 1592(%rsp)
	movl	$604807628, 1596(%rsp)
	movl	$770255983, 1600(%rsp)
	movl	$1249150122, 1604(%rsp)
	movl	$1555081692, 1608(%rsp)
	movl	$1996064986, 1612(%rsp)
	movl	$-1740746414, 1616(%rsp)
	movl	$-1473132947, 1620(%rsp)
	movl	$-1341970488, 1624(%rsp)
	movl	$-1084653625, 1628(%rsp)
	movl	$-958395405, 1632(%rsp)
	movl	$-710438585, 1636(%rsp)
	movl	$113926993, 1640(%rsp)
	movl	$338241895, 1644(%rsp)
	movl	$666307205, 1648(%rsp)
	movl	$773529912, 1652(%rsp)
	movl	$1294757372, 1656(%rsp)
	movl	$1396182291, 1660(%rsp)
	movl	$1695183700, 1664(%rsp)
	movl	$1986661051, 1668(%rsp)
	movl	$-2117940946, 1672(%rsp)
	movl	$-1838011259, 1676(%rsp)
	movl	$-1564481375, 1680(%rsp)
	movl	$-1474664885, 1684(%rsp)
	movl	$-1035236496, 1688(%rsp)
	movl	$-949202525, 1692(%rsp)
	movl	$-778901479, 1696(%rsp)
	movl	$-694614492, 1700(%rsp)
	movl	$-200395387, 1704(%rsp)
	movl	$275423344, 1708(%rsp)
	movl	$430227734, 1712(%rsp)
	movl	$506948616, 1716(%rsp)
	movl	$659060556, 1720(%rsp)
	movl	$883997877, 1724(%rsp)
	movl	$958139571, 1728(%rsp)
	movl	$1322822218, 1732(%rsp)
	movl	$1537002063, 1736(%rsp)
	movl	$1747873779, 1740(%rsp)
	movl	$1955562222, 1744(%rsp)
	movl	$2024104815, 1748(%rsp)
	movl	$-2067236844, 1752(%rsp)
	movl	$-1933114872, 1756(%rsp)
	movl	$-1866530822, 1760(%rsp)
	movl	$-1538233109, 1764(%rsp)
	movl	$-1090935817, 1768(%rsp)
	movl	$-965641998, 1772(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$237
Lzkboo_decrypt$238:
	movl	1456(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$237:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$238
	jmp 	Lzkboo_decrypt$231
Lzkboo_decrypt$232:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$236(%rip), 	%r9
	jmp 	LROTRIGHT_17$1
Lzkboo_decrypt$236:
	movl	%ecx, %edx
	leaq	Lzkboo_decrypt$235(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_decrypt$235:
	shrl	$10, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	movl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	movl	%ecx, %r11d
	leaq	Lzkboo_decrypt$234(%rip), 	%r9
	jmp 	LROTRIGHT_7$1
Lzkboo_decrypt$234:
	movl	%ecx, %r9d
	leaq	Lzkboo_decrypt$233(%rip), 	%r10
	jmp 	LROTRIGHT_18$1
Lzkboo_decrypt$233:
	shrl	$3, %ecx
	xorl	%r9d, %r11d
	xorl	%ecx, %r11d
	addl	%r11d, 1776(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1776(%rsp,%rcx,4), %ecx
	addl	%ecx, 1776(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$231:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$232
	movl	1360(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1364(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1368(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1372(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1376(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1380(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1384(%rsp), %eax
	movl	%eax, 1196(%rsp)
	movl	1388(%rsp), %eax
	movl	%eax, 1192(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$223
Lzkboo_decrypt$224:
	movl	1192(%rsp), %ecx
	movl	1184(%rsp), %r12d
	leaq	Lzkboo_decrypt$230(%rip), 	%r10
	jmp 	LROTRIGHT_6$1
Lzkboo_decrypt$230:
	movl	1184(%rsp), %ebx
	leaq	Lzkboo_decrypt$229(%rip), 	%r10
	jmp 	LROTRIGHT_11$1
Lzkboo_decrypt$229:
	movl	1184(%rsp), %r11d
	leaq	Lzkboo_decrypt$228(%rip), 	%r10
	jmp 	LROTRIGHT_25$1
Lzkboo_decrypt$228:
	xorl	%ebx, %r12d
	xorl	%r11d, %r12d
	addl	%r12d, %ecx
	movl	1184(%rsp), %edx
	andl	1188(%rsp), %edx
	movl	1184(%rsp), %r9d
	xorl	$-1, %r9d
	andl	1196(%rsp), %r9d
	xorl	%r9d, %edx
	addl	%edx, %ecx
	movl	1520(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1776(%rsp,%rax,4), %edx
	addl	%edx, %ecx
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$227(%rip), 	%r10
	jmp 	LROTRIGHT_2$1
Lzkboo_decrypt$227:
	movl	%r9d, 1200(%rsp)
	movl	1168(%rsp), %r9d
	leaq	Lzkboo_decrypt$226(%rip), 	%r10
	jmp 	LROTRIGHT_13$1
Lzkboo_decrypt$226:
	movl	%r9d, 1204(%rsp)
	movl	1168(%rsp), %r10d
	leaq	Lzkboo_decrypt$225(%rip), 	%r11
	jmp 	LROTRIGHT_22$1
Lzkboo_decrypt$225:
	movl	%r10d, 1208(%rsp)
	movl	1200(%rsp), %edx
	movl	1204(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1208(%rsp), %r9d
	xorl	%r9d, %edx
	movl	1168(%rsp), %r9d
	movl	1172(%rsp), %r10d
	andl	%r10d, %r9d
	movl	1168(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	movl	1172(%rsp), %r10d
	movl	1176(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %r9d
	addl	%r9d, %edx
	movl	1196(%rsp), %r9d
	movl	%r9d, 1192(%rsp)
	movl	1188(%rsp), %r9d
	movl	%r9d, 1196(%rsp)
	movl	1184(%rsp), %r9d
	movl	%r9d, 1188(%rsp)
	movl	1180(%rsp), %r9d
	addl	%ecx, %r9d
	movl	%r9d, 1184(%rsp)
	movl	1176(%rsp), %r9d
	movl	%r9d, 1180(%rsp)
	movl	1172(%rsp), %r9d
	movl	%r9d, 1176(%rsp)
	movl	1168(%rsp), %r9d
	movl	%r9d, 1172(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 1168(%rsp)
	incq	%rax
Lzkboo_decrypt$223:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$224
	movl	1360(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1360(%rsp)
	movl	1364(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1364(%rsp)
	movl	1368(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1368(%rsp)
	movl	1372(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1372(%rsp)
	movl	1376(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1376(%rsp)
	movl	1380(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1380(%rsp)
	movl	1384(%rsp), %eax
	addl	1196(%rsp), %eax
	movl	%eax, 1384(%rsp)
	movl	1388(%rsp), %eax
	addl	1192(%rsp), %eax
	movl	%eax, 1388(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$221
Lzkboo_decrypt$222:
	movl	1360(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1296(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$221:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$222
	movq	80(%rsp,%rbp,8), %r10
	movq	%r10, %rax
	imulq	(%rsp), %rax
	imulq	$32, %rax, %rax
	imulq	$32, (%rsp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$32, %rbp, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$218
Lzkboo_decrypt$219:
	movb	1328(%rsp,%rcx), %dl
	movb	(%rsi,%rax), %r9b
	cmpb	%r9b, %dl
	je  	Lzkboo_decrypt$220
	movb	$0, (%rsi)
	movq	$1, 16(%rsp)
Lzkboo_decrypt$220:
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$218:
	cmpq	$32, %rcx
	jb  	Lzkboo_decrypt$219
	incq	%r10
	cmpq	$3, %r10
	jne 	Lzkboo_decrypt$217
	movq	$0, %r10
Lzkboo_decrypt$217:
	imulq	(%rsp), %r10
	imulq	$32, %r10, %rax
	imulq	$32, (%rsp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	imulq	$32, %rbp, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$214
Lzkboo_decrypt$215:
	movb	1296(%rsp,%rcx), %dl
	movb	(%rsi,%rax), %r9b
	cmpb	%r9b, %dl
	je  	Lzkboo_decrypt$216
	movb	$1, 1(%rsi)
	movq	$1, 16(%rsp)
Lzkboo_decrypt$216:
	incq	%rax
	incq	%rcx
Lzkboo_decrypt$214:
	cmpq	$32, %rcx
	jb  	Lzkboo_decrypt$215
	movq	80(%rsp,%rbp,8), %r11
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1460, %rax
	imulq	$32, (%rsp), %rcx
	imulq	%r11, %rcx
	imulq	$32, %rbp, %rdx
	addq	%rdx, %rcx
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$211
Lzkboo_decrypt$212:
	movb	(%rsi,%rcx), %r9b
	movb	(%rdi,%rax), %r10b
	cmpb	%r10b, %r9b
	je  	Lzkboo_decrypt$213
	movb	$2, 2(%rsi)
	movq	$1, 16(%rsp)
Lzkboo_decrypt$213:
	incq	%rax
	incq	%rcx
	incq	%rdx
Lzkboo_decrypt$211:
	cmpq	$20, %rdx
	jb  	Lzkboo_decrypt$212
	incq	%r11
	cmpq	$3, %r11
	jne 	Lzkboo_decrypt$210
	movq	$0, %r11
Lzkboo_decrypt$210:
	addq	$64, %rax
	addq	$1460, %rax
	imulq	$32, (%rsp), %rcx
	imulq	%r11, %rcx
	imulq	$32, %rbp, %rdx
	addq	%rdx, %rcx
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$207
Lzkboo_decrypt$208:
	movb	(%rsi,%rcx), %r9b
	movb	(%rdi,%rax), %r10b
	cmpb	%r10b, %r9b
	je  	Lzkboo_decrypt$209
	movb	$3, 3(%rsi)
	movq	$1, 16(%rsp)
Lzkboo_decrypt$209:
	incq	%rax
	incq	%rcx
	incq	%rdx
Lzkboo_decrypt$207:
	cmpq	$20, %rdx
	jb  	Lzkboo_decrypt$208
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$205
Lzkboo_decrypt$206:
	movl	$0, 2032(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$205:
	cmpq	$160, %rax
	jb  	Lzkboo_decrypt$206
	movq	80(%rsp,%rbp,8), %rax
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$203
Lzkboo_decrypt$204:
	movl	(%rdi,%rcx), %r9d
	bswapl	%r9d
	movl	%r9d, 2032(%rsp,%rdx,4)
	addq	$4, %rcx
	incq	%rdx
Lzkboo_decrypt$203:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$204
	incq	%rax
	cmpq	$3, %rax
	je  	Lzkboo_decrypt$202
Lzkboo_decrypt$202:
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	movq	$80, %rcx
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$200
Lzkboo_decrypt$201:
	movl	(%rdi,%rax), %r9d
	bswapl	%r9d
	movl	%r9d, 2032(%rsp,%rcx,4)
	addq	$4, %rax
	incq	%rcx
	incq	%rdx
Lzkboo_decrypt$200:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$201
	movq	$16, %rax
	jmp 	Lzkboo_decrypt$192
Lzkboo_decrypt$193:
	movq	$0, %rcx
	jmp 	Lzkboo_decrypt$194
Lzkboo_decrypt$195:
	movq	%rcx, %rdx
	imulq	$80, %rdx, %rdx
	addq	%rax, %rdx
	movl	2020(%rsp,%rdx,4), %r9d
	movl	2000(%rsp,%rdx,4), %r10d
	movl	%r9d, 24(%rsp)
	xorl	%r10d, 24(%rsp)
	movl	1976(%rsp,%rdx,4), %r9d
	xorl	%r9d, 24(%rsp)
	movl	1968(%rsp,%rdx,4), %r9d
	xorl	%r9d, 24(%rsp)
	movq	$1, %r9
	movl	24(%rsp), %r10d
	movq	%r9, %r11
	jmp 	Lzkboo_decrypt$198
Lzkboo_decrypt$199:
	shll	$1, %r10d
	addq	$-1, %r11
Lzkboo_decrypt$198:
	cmpq	$0, %r11
	jnbe	Lzkboo_decrypt$199
	movq	$32, %r11
	subq	%r9, %r11
	movl	24(%rsp), %r9d
	jmp 	Lzkboo_decrypt$196
Lzkboo_decrypt$197:
	shrl	$1, %r9d
	addq	$-1, %r11
Lzkboo_decrypt$196:
	cmpq	$0, %r11
	jnbe	Lzkboo_decrypt$197
	orl 	%r9d, %r10d
	movl	%r10d, 2032(%rsp,%rdx,4)
	incq	%rcx
Lzkboo_decrypt$194:
	cmpq	$2, %rcx
	jb  	Lzkboo_decrypt$195
	incq	%rax
Lzkboo_decrypt$192:
	cmpq	$80, %rax
	jb  	Lzkboo_decrypt$193
	movl	1276(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	1280(%rsp), %eax
	movl	%eax, 32(%rsp)
	movl	%eax, 36(%rsp)
	movl	1284(%rsp), %eax
	movl	%eax, 1220(%rsp)
	movl	%eax, 1224(%rsp)
	movl	1288(%rsp), %eax
	movl	%eax, 1228(%rsp)
	movl	%eax, 1232(%rsp)
	movl	1292(%rsp), %eax
	movl	%eax, 1236(%rsp)
	movl	%eax, 1240(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$98
Lzkboo_decrypt$99:
	movq	%rax, 56(%rsp)
	cmpq	$19, 56(%rsp)
	jnbe	Lzkboo_decrypt$190
	movl	1220(%rsp), %eax
	xorl	1228(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	1224(%rsp), %eax
	xorl	1232(%rsp), %eax
	movl	%eax, 1264(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1268(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1272(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	movl	32(%rsp), %eax
	andl	1264(%rsp), %eax
	movl	36(%rsp), %ecx
	andl	1260(%rsp), %ecx
	xorl	%ecx, %eax
	movl	32(%rsp), %ecx
	andl	1260(%rsp), %ecx
	xorl	%ecx, %eax
	xorl	1268(%rsp), %eax
	xorl	1272(%rsp), %eax
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	48(%rsp), %rcx
	movl	(%rdi,%rcx), %ecx
	cmpl	%eax, %ecx
	je  	Lzkboo_decrypt$191
	movq	$1, 16(%rsp)
Lzkboo_decrypt$191:
	movl	%eax, 1260(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	(%rdi,%rax), %eax
	movl	%eax, 1264(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1228(%rsp), %eax
	xorl	1260(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	1232(%rsp), %eax
	xorl	1264(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	$1518500249, %r13d
Lzkboo_decrypt$190:
	cmpq	$19, 56(%rsp)
	jbe 	Lzkboo_decrypt$184
	cmpq	$39, 56(%rsp)
	jnbe	Lzkboo_decrypt$189
	movl	32(%rsp), %eax
	xorl	1220(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	36(%rsp), %eax
	xorl	1224(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	1228(%rsp), %eax
	xorl	1260(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	1232(%rsp), %eax
	xorl	1264(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	$1859775393, %r13d
Lzkboo_decrypt$189:
	cmpq	$39, 56(%rsp)
	jbe 	Lzkboo_decrypt$184
	cmpq	$59, 56(%rsp)
	jbe 	Lzkboo_decrypt$186
	movl	32(%rsp), %eax
	xorl	1220(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	36(%rsp), %eax
	xorl	1224(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	1228(%rsp), %eax
	xorl	1260(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	1232(%rsp), %eax
	xorl	1264(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	$-899497514, %r13d
	jmp 	Lzkboo_decrypt$184
Lzkboo_decrypt$186:
	movl	32(%rsp), %eax
	xorl	1220(%rsp), %eax
	movl	%eax, 1268(%rsp)
	movl	36(%rsp), %eax
	xorl	1224(%rsp), %eax
	movl	%eax, 1272(%rsp)
	movl	32(%rsp), %eax
	xorl	1228(%rsp), %eax
	movl	%eax, 64(%rsp)
	movl	36(%rsp), %eax
	xorl	1232(%rsp), %eax
	movl	%eax, 68(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 72(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 76(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	movl	1268(%rsp), %eax
	andl	68(%rsp), %eax
	movl	1272(%rsp), %ecx
	andl	64(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1268(%rsp), %ecx
	andl	64(%rsp), %ecx
	xorl	%ecx, %eax
	xorl	72(%rsp), %eax
	xorl	76(%rsp), %eax
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	48(%rsp), %rcx
	movl	(%rdi,%rcx), %ecx
	cmpl	%eax, %ecx
	je  	Lzkboo_decrypt$188
	movq	$1, 16(%rsp)
Lzkboo_decrypt$188:
	movl	%eax, 1260(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	(%rdi,%rax), %eax
	movl	%eax, 1264(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1260(%rsp), %eax
	xorl	32(%rsp), %eax
	movl	%eax, 1260(%rsp)
	movl	1264(%rsp), %eax
	xorl	36(%rsp), %eax
	movl	%eax, 1264(%rsp)
	movl	$-1894007588, %r13d
Lzkboo_decrypt$187:
Lzkboo_decrypt$185:
Lzkboo_decrypt$184:
	movl	8(%rsp), %eax
	movl	8(%rsp), %ecx
	shll	$5, %eax
	shrl	$27, %ecx
	orl 	%ecx, %eax
	movl	%eax, 24(%rsp)
	movl	12(%rsp), %eax
	movl	12(%rsp), %ecx
	shll	$5, %eax
	shrl	$27, %ecx
	orl 	%ecx, %eax
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 72(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 76(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 64(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$165
Lzkboo_decrypt$166:
	movl	1260(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$182
Lzkboo_decrypt$183:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$182:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$183
	andl	$1, %ecx
	movl	24(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$180
Lzkboo_decrypt$181:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$180:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$181
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	1264(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$178
Lzkboo_decrypt$179:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$178:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$179
	andl	$1, %r9d
	movl	28(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$176
Lzkboo_decrypt$177:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$176:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$177
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	76(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$174
Lzkboo_decrypt$175:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$174:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$175
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$172
Lzkboo_decrypt$173:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$172:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$173
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	72(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$170
Lzkboo_decrypt$171:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$170:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$171
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$168
Lzkboo_decrypt$169:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$168:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$169
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$167
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$167:
	incq	%r11
Lzkboo_decrypt$165:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$166
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	1260(%rsp), %ecx
	xorl	24(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	1264(%rsp), %ecx
	xorl	28(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 28(%rsp)
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	imulq	$368, %rbp, %rax
	addq	64(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1268(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1272(%rsp)
	movq	64(%rsp), %rax
	incq	%rax
	movq	%rax, 64(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$146
Lzkboo_decrypt$147:
	movl	1236(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$163
Lzkboo_decrypt$164:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$163:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$164
	andl	$1, %ecx
	movl	24(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$161
Lzkboo_decrypt$162:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$161:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$162
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	1240(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$159
Lzkboo_decrypt$160:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$159:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$160
	andl	$1, %r9d
	movl	28(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$157
Lzkboo_decrypt$158:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$157:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$158
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1272(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$155
Lzkboo_decrypt$156:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$155:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$156
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$153
Lzkboo_decrypt$154:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$153:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$154
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1268(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$151
Lzkboo_decrypt$152:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$151:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$152
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$149
Lzkboo_decrypt$150:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$149:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$150
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$148
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$148:
	incq	%r11
Lzkboo_decrypt$146:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$147
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	1236(%rsp), %ecx
	xorl	24(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	1240(%rsp), %ecx
	xorl	28(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 28(%rsp)
	movq	72(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	movl	%r13d, 1252(%rsp)
	movl	%r13d, 1256(%rsp)
	imulq	$368, %rbp, %rax
	addq	64(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1268(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1272(%rsp)
	movq	64(%rsp), %rax
	incq	%rax
	movq	%rax, 64(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$127
Lzkboo_decrypt$128:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$144
Lzkboo_decrypt$145:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$144:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$145
	andl	$1, %ecx
	movl	1252(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$142
Lzkboo_decrypt$143:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$142:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$143
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$140
Lzkboo_decrypt$141:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$140:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$141
	andl	$1, %r9d
	movl	1256(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$138
Lzkboo_decrypt$139:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$138:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$139
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1272(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$136
Lzkboo_decrypt$137:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$136:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$137
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$134
Lzkboo_decrypt$135:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$134:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$135
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1268(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$132
Lzkboo_decrypt$133:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$132:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$133
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$130
Lzkboo_decrypt$131:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$130:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$131
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$129
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$129:
	incq	%r11
Lzkboo_decrypt$127:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$128
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	24(%rsp), %ecx
	xorl	1252(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	72(%rsp), %rax
	movl	28(%rsp), %ecx
	xorl	1256(%rsp), %ecx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %ecx
	movl	%ecx, 28(%rsp)
	movq	72(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 72(%rsp)
	movq	56(%rsp), %rax
	movl	2032(%rsp,%rax,4), %ecx
	movl	%ecx, 1244(%rsp)
	movq	%rax, %rcx
	addq	$80, %rcx
	movl	2032(%rsp,%rcx,4), %ecx
	movl	%ecx, 1248(%rsp)
	imulq	$368, %rbp, %rcx
	addq	64(%rsp), %rcx
	movl	803440(%rsp,%rcx,4), %edx
	movl	%edx, 56(%rsp)
	movl	2672(%rsp,%rcx,4), %ecx
	movl	%ecx, 60(%rsp)
	movq	64(%rsp), %rcx
	incq	%rcx
	movq	%rcx, 40(%rsp)
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	72(%rsp), %rcx
	movq	$0, %rbx
	jmp 	Lzkboo_decrypt$108
Lzkboo_decrypt$109:
	movl	1244(%rsp), %edx
	movl	(%rdi,%rcx), %r9d
	xorl	%r9d, %edx
	movq	%rbx, %r9
	jmp 	Lzkboo_decrypt$125
Lzkboo_decrypt$126:
	shrl	$1, %edx
	addq	$-1, %r9
Lzkboo_decrypt$125:
	cmpq	$0, %r9
	jnbe	Lzkboo_decrypt$126
	andl	$1, %edx
	movl	24(%rsp), %r9d
	movl	(%rdi,%rcx), %ecx
	xorl	%ecx, %r9d
	movq	%rbx, %rcx
	jmp 	Lzkboo_decrypt$123
Lzkboo_decrypt$124:
	shrl	$1, %r9d
	addq	$-1, %rcx
Lzkboo_decrypt$123:
	cmpq	$0, %rcx
	jnbe	Lzkboo_decrypt$124
	andl	$1, %r9d
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	$1480, %rcx
	addq	$64, %rcx
	addq	72(%rsp), %rcx
	movl	1248(%rsp), %r10d
	movl	(%rdi,%rcx), %r11d
	xorl	%r11d, %r10d
	movq	%rbx, %r11
	jmp 	Lzkboo_decrypt$121
Lzkboo_decrypt$122:
	shrl	$1, %r10d
	addq	$-1, %r11
Lzkboo_decrypt$121:
	cmpq	$0, %r11
	jnbe	Lzkboo_decrypt$122
	andl	$1, %r10d
	movl	28(%rsp), %r11d
	movl	(%rdi,%rcx), %ecx
	xorl	%ecx, %r11d
	movq	%rbx, %rcx
	jmp 	Lzkboo_decrypt$119
Lzkboo_decrypt$120:
	shrl	$1, %r11d
	addq	$-1, %rcx
Lzkboo_decrypt$119:
	cmpq	$0, %rcx
	jnbe	Lzkboo_decrypt$120
	andl	$1, %r11d
	movl	%r11d, %r12d
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	72(%rsp), %rcx
	movl	%edx, %r11d
	andl	%r12d, %r11d
	andl	%r9d, %r10d
	xorl	%r10d, %r11d
	movl	60(%rsp), %r10d
	movq	%rbx, %r12
	jmp 	Lzkboo_decrypt$117
Lzkboo_decrypt$118:
	shrl	$1, %r10d
	addq	$-1, %r12
Lzkboo_decrypt$117:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$118
	andl	$1, %r10d
	xorl	%r10d, %r11d
	andl	%r9d, %edx
	xorl	%edx, %r11d
	movl	(%rdi,%rcx), %edx
	movq	%rbx, %r9
	jmp 	Lzkboo_decrypt$115
Lzkboo_decrypt$116:
	shrl	$1, %edx
	addq	$-1, %r9
Lzkboo_decrypt$115:
	cmpq	$0, %r9
	jnbe	Lzkboo_decrypt$116
	andl	$1, %edx
	xorl	%edx, %r11d
	movl	56(%rsp), %edx
	movq	%rbx, %r9
	jmp 	Lzkboo_decrypt$113
Lzkboo_decrypt$114:
	shrl	$1, %edx
	addq	$-1, %r9
Lzkboo_decrypt$113:
	cmpq	$0, %r9
	jnbe	Lzkboo_decrypt$114
	andl	$1, %edx
	xorl	%edx, %r11d
	movl	(%rdi,%rcx), %edx
	movq	%rbx, %r9
	incq	%r9
	jmp 	Lzkboo_decrypt$111
Lzkboo_decrypt$112:
	shrl	$1, %edx
	addq	$-1, %r9
Lzkboo_decrypt$111:
	cmpq	$0, %r9
	jnbe	Lzkboo_decrypt$112
	andl	$1, %edx
	cmpl	%r11d, %edx
	je  	Lzkboo_decrypt$110
	movq	$1, 16(%rsp)
	movq	$31, %rbx
Lzkboo_decrypt$110:
	incq	%rbx
Lzkboo_decrypt$108:
	cmpq	$31, %rbx
	jb  	Lzkboo_decrypt$109
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	72(%rsp), %rcx
	movl	1244(%rsp), %edx
	xorl	24(%rsp), %edx
	movl	(%rdi,%rcx), %ecx
	xorl	%ecx, %edx
	movl	%edx, 24(%rsp)
	imulq	$3128, %rbp, %rcx
	addq	$32, %rcx
	addq	$64, %rcx
	addq	$1480, %rcx
	addq	$64, %rcx
	addq	72(%rsp), %rcx
	movl	1248(%rsp), %edx
	xorl	28(%rsp), %edx
	movl	(%rdi,%rcx), %ecx
	xorl	%ecx, %edx
	movl	%edx, 28(%rsp)
	movq	72(%rsp), %rcx
	addq	$4, %rcx
	movq	%rcx, 48(%rsp)
	movl	1228(%rsp), %ecx
	movl	%ecx, 1236(%rsp)
	movl	1232(%rsp), %ecx
	movl	%ecx, 1240(%rsp)
	movl	1220(%rsp), %ecx
	movl	%ecx, 1228(%rsp)
	movl	1224(%rsp), %ecx
	movl	%ecx, 1232(%rsp)
	movq	$30, %rcx
	movl	32(%rsp), %edx
	movl	%edx, %r9d
	movq	%rcx, %r10
	jmp 	Lzkboo_decrypt$106
Lzkboo_decrypt$107:
	shll	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$106:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$107
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Lzkboo_decrypt$104
Lzkboo_decrypt$105:
	shrl	$1, %edx
	addq	$-1, %r10
Lzkboo_decrypt$104:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$105
	orl 	%edx, %r9d
	movl	%r9d, 1220(%rsp)
	movl	36(%rsp), %edx
	movl	%edx, %r9d
	movq	%rcx, %r10
	jmp 	Lzkboo_decrypt$102
Lzkboo_decrypt$103:
	shll	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$102:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$103
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Lzkboo_decrypt$100
Lzkboo_decrypt$101:
	shrl	$1, %edx
	addq	$-1, %r10
Lzkboo_decrypt$100:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$101
	orl 	%edx, %r9d
	movl	%r9d, 1224(%rsp)
	movl	8(%rsp), %ecx
	movl	%ecx, 32(%rsp)
	movl	12(%rsp), %ecx
	movl	%ecx, 36(%rsp)
	movl	24(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	28(%rsp), %ecx
	movl	%ecx, 12(%rsp)
	incq	%rax
Lzkboo_decrypt$98:
	cmpq	$80, %rax
	jb  	Lzkboo_decrypt$99
	movl	1276(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1244(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1248(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$79
Lzkboo_decrypt$80:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$96
Lzkboo_decrypt$97:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$96:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$97
	andl	$1, %ecx
	movl	8(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$94
Lzkboo_decrypt$95:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$94:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$95
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$92
Lzkboo_decrypt$93:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$92:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$93
	andl	$1, %r9d
	movl	12(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$90
Lzkboo_decrypt$91:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$90:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$91
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1248(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$88
Lzkboo_decrypt$89:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$88:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$89
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$86
Lzkboo_decrypt$87:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$86:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$87
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1244(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$84
Lzkboo_decrypt$85:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$84:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$85
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$82
Lzkboo_decrypt$83:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$82:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$83
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$81
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$81:
	incq	%r11
Lzkboo_decrypt$79:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$80
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1280(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1244(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1248(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$60
Lzkboo_decrypt$61:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$77
Lzkboo_decrypt$78:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$77:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$78
	andl	$1, %ecx
	movl	32(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$75
Lzkboo_decrypt$76:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$75:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$76
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$73
Lzkboo_decrypt$74:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$73:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$74
	andl	$1, %r9d
	movl	36(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$71
Lzkboo_decrypt$72:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$71:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$72
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1248(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$69
Lzkboo_decrypt$70:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$69:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$70
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$67
Lzkboo_decrypt$68:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$67:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$68
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1244(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$65
Lzkboo_decrypt$66:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$65:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$66
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$63
Lzkboo_decrypt$64:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$63:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$64
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$62
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$62:
	incq	%r11
Lzkboo_decrypt$60:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$61
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1284(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1244(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1248(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$41
Lzkboo_decrypt$42:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$58
Lzkboo_decrypt$59:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$58:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$59
	andl	$1, %ecx
	movl	1220(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$56
Lzkboo_decrypt$57:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$56:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$57
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$54
Lzkboo_decrypt$55:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$54:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$55
	andl	$1, %r9d
	movl	1224(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$52
Lzkboo_decrypt$53:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$52:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$53
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1248(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$50
Lzkboo_decrypt$51:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$50:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$51
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$48
Lzkboo_decrypt$49:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$48:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$49
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1244(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$46
Lzkboo_decrypt$47:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$46:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$47
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$44
Lzkboo_decrypt$45:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$44:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$45
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$43
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$43:
	incq	%r11
Lzkboo_decrypt$41:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$42
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1288(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 1244(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 1248(%rsp)
	movq	40(%rsp), %rax
	incq	%rax
	movq	%rax, 40(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$22
Lzkboo_decrypt$23:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$39
Lzkboo_decrypt$40:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$39:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$40
	andl	$1, %ecx
	movl	1228(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$37
Lzkboo_decrypt$38:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$37:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$38
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$35
Lzkboo_decrypt$36:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$35:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$36
	andl	$1, %r9d
	movl	1232(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$33
Lzkboo_decrypt$34:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$33:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$34
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	1248(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$31
Lzkboo_decrypt$32:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$31:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$32
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$29
Lzkboo_decrypt$30:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$29:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$30
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	1244(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$27
Lzkboo_decrypt$28:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$27:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$28
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$25
Lzkboo_decrypt$26:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$25:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$26
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$24
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$24:
	incq	%r11
Lzkboo_decrypt$22:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$23
	movq	48(%rsp), %rax
	addq	$4, %rax
	movq	%rax, 48(%rsp)
	movl	1292(%rsp), %eax
	movl	%eax, 24(%rsp)
	movl	%eax, 28(%rsp)
	imulq	$368, %rbp, %rax
	addq	40(%rsp), %rax
	movl	803440(%rsp,%rax,4), %ecx
	movl	%ecx, 40(%rsp)
	movl	2672(%rsp,%rax,4), %eax
	movl	%eax, 44(%rsp)
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$3
Lzkboo_decrypt$4:
	movl	24(%rsp), %ecx
	movl	(%rdi,%rax), %edx
	xorl	%edx, %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$20
Lzkboo_decrypt$21:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$20:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$21
	andl	$1, %ecx
	movl	1236(%rsp), %edx
	movl	(%rdi,%rax), %eax
	xorl	%eax, %edx
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$18
Lzkboo_decrypt$19:
	shrl	$1, %edx
	addq	$-1, %rax
Lzkboo_decrypt$18:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$19
	andl	$1, %edx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	$1480, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	28(%rsp), %r9d
	movl	(%rdi,%rax), %r10d
	xorl	%r10d, %r9d
	movq	%r11, %r10
	jmp 	Lzkboo_decrypt$16
Lzkboo_decrypt$17:
	shrl	$1, %r9d
	addq	$-1, %r10
Lzkboo_decrypt$16:
	cmpq	$0, %r10
	jnbe	Lzkboo_decrypt$17
	andl	$1, %r9d
	movl	1240(%rsp), %r10d
	movl	(%rdi,%rax), %eax
	xorl	%eax, %r10d
	movq	%r11, %rax
	jmp 	Lzkboo_decrypt$14
Lzkboo_decrypt$15:
	shrl	$1, %r10d
	addq	$-1, %rax
Lzkboo_decrypt$14:
	cmpq	$0, %rax
	jnbe	Lzkboo_decrypt$15
	andl	$1, %r10d
	movl	%r10d, %ebx
	imulq	$3128, %rbp, %rax
	addq	$32, %rax
	addq	$64, %rax
	addq	48(%rsp), %rax
	movl	%ecx, %r10d
	andl	%ebx, %r10d
	andl	%edx, %r9d
	xorl	%r9d, %r10d
	movl	44(%rsp), %r9d
	movq	%r11, %rbx
	jmp 	Lzkboo_decrypt$12
Lzkboo_decrypt$13:
	shrl	$1, %r9d
	addq	$-1, %rbx
Lzkboo_decrypt$12:
	cmpq	$0, %rbx
	jnbe	Lzkboo_decrypt$13
	andl	$1, %r9d
	xorl	%r9d, %r10d
	andl	%edx, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$10
Lzkboo_decrypt$11:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$10:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$11
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	40(%rsp), %ecx
	movq	%r11, %rdx
	jmp 	Lzkboo_decrypt$8
Lzkboo_decrypt$9:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$8:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$9
	andl	$1, %ecx
	xorl	%ecx, %r10d
	movl	(%rdi,%rax), %ecx
	movq	%r11, %rdx
	incq	%rdx
	jmp 	Lzkboo_decrypt$6
Lzkboo_decrypt$7:
	shrl	$1, %ecx
	addq	$-1, %rdx
Lzkboo_decrypt$6:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$7
	andl	$1, %ecx
	cmpl	%r10d, %ecx
	je  	Lzkboo_decrypt$5
	movq	$1, 16(%rsp)
	movq	$31, %r11
Lzkboo_decrypt$5:
	incq	%r11
Lzkboo_decrypt$3:
	cmpq	$31, %r11
	jb  	Lzkboo_decrypt$4
	incq	%rbp
Lzkboo_decrypt$1:
	cmpq	(%rsp), %rbp
	jb  	Lzkboo_decrypt$2
	movq	16(%rsp), %rax
	movq	%rax, (%r8)
	movq	1633384(%rsp), %rbx
	movq	1633392(%rsp), %rbp
	movq	1633400(%rsp), %r12
	movq	1633408(%rsp), %r13
	movq	1633376(%rsp), %rsp
	ret 
LROTRIGHT_19$1:
	movl	%edx, %r9d
	shrl	$19, %r9d
	shll	$13, %edx
	orl 	%edx, %r9d
	jmp 	*%r10
LROTRIGHT_17$1:
	movl	%edx, %r11d
	shrl	$17, %r11d
	shll	$15, %edx
	orl 	%edx, %r11d
	jmp 	*%r9
LROTRIGHT_18$1:
	movl	%r9d, %edx
	shrl	$18, %r9d
	shll	$14, %edx
	xorl	%edx, %r9d
	jmp 	*%r10
LROTRIGHT_7$1:
	movl	%r11d, %edx
	shrl	$7, %r11d
	shll	$25, %edx
	xorl	%edx, %r11d
	jmp 	*%r9
LROTRIGHT_25$1:
	movl	%r11d, %r9d
	shrl	$25, %r11d
	shll	$7, %r9d
	orl 	%r9d, %r11d
	jmp 	*%r10
LROTRIGHT_11$1:
	movl	%ebx, %r9d
	shrl	$11, %ebx
	shll	$21, %r9d
	orl 	%r9d, %ebx
	jmp 	*%r10
LROTRIGHT_6$1:
	movl	%r12d, %r9d
	shrl	$6, %r12d
	shll	$26, %r9d
	orl 	%r9d, %r12d
	jmp 	*%r10
LROTRIGHT_22$1:
	movl	%r10d, %r9d
	shrl	$22, %r10d
	shll	$10, %r9d
	orl 	%r9d, %r10d
	jmp 	*%r11
LROTRIGHT_13$1:
	movl	%r9d, %r11d
	shrl	$13, %r9d
	shll	$19, %r11d
	orl 	%r11d, %r9d
	jmp 	*%r10
LROTRIGHT_2$1:
	movl	%r9d, %r11d
	shrl	$2, %r9d
	shll	$30, %r11d
	orl 	%r11d, %r9d
	jmp 	*%r10
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
