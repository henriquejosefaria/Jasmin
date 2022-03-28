	.text
	.p2align	5
	.globl	_zkboo_encrypt
	.globl	zkboo_encrypt
_zkboo_encrypt:
zkboo_encrypt:
	movq	%rsp, %rax
	leaq	-31104(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 31048(%rsp)
	movq	%rbx, 31056(%rsp)
	movq	%rbp, 31064(%rsp)
	movq	%r12, 31072(%rsp)
	movq	%r13, 31080(%rsp)
	movq	%r14, 31088(%rsp)
	movq	%r15, 31096(%rsp)
	movq	$136, (%rsp)
	movq	$128, 8(%rsp)
	movq	%rcx, 16(%rsp)
	movq	$0, %r15
	jmp 	Lzkboo_encrypt$205
Lzkboo_encrypt$206:
	movq	$0, %rax
	movl	$1732584193, 1372(%rsp)
	movl	$-271733879, 1376(%rsp)
	movl	$-1732584194, 1380(%rsp)
	movl	$271733878, 1384(%rsp)
	movl	$-1009589776, 1388(%rsp)
	movq	$0, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3409
Lzkboo_encrypt$3410:
	movb	$0, 3260(%rsp,%r10)
	incq	%r10
Lzkboo_encrypt$3409:
	cmpq	$192, %r10
	jb  	Lzkboo_encrypt$3410
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3407
Lzkboo_encrypt$3408:
	movl	$0, 2188(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$3407:
	cmpq	$240, %r10
	jb  	Lzkboo_encrypt$3408
	movq	$0, 24(%rsp)
	jmp 	Lzkboo_encrypt$3399
Lzkboo_encrypt$3400:
	movq	$48, %r10
	imulq	(%rsp), %r10
	imulq	$16, 24(%rsp), %r11
	imulq	(%rsp), %r11
	addq	%r11, %r10
	movq	$16, %r11
	imulq	%r15, %r11
	addq	%r11, %r10
	imulq	$64, 24(%rsp), %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$3405
Lzkboo_encrypt$3406:
	movb	(%rdx,%r10), %bl
	movb	%bl, 3260(%rsp,%r11)
	incq	%r11
	incq	%r10
	incq	%rbp
Lzkboo_encrypt$3405:
	cmpq	$16, %rbp
	jb  	Lzkboo_encrypt$3406
	imulq	$64, 24(%rsp), %r10
	addq	$16, %r10
	movb	$-128, 3260(%rsp,%r10)
	imulq	$64, 24(%rsp), %r10
	addq	$62, %r10
	movq	8(%rsp), %r11
	shrq	$8, %r11
	movb	%r11b, 3260(%rsp,%r10)
	incq	%r10
	movq	8(%rsp), %r11
	movb	%r11b, 3260(%rsp,%r10)
	imulq	$64, 24(%rsp), %r10
	imulq	$64, 24(%rsp), %r11
	imulq	(%rsp), %r11
	imulq	$64, %r15, %rbp
	addq	%rbp, %r11
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$3403
Lzkboo_encrypt$3404:
	movb	3260(%rsp,%r10), %bpl
	movb	%bpl, (%r8,%r11)
	incq	%r11
	incq	%r10
	incq	32(%rsp)
Lzkboo_encrypt$3403:
	cmpq	$64, 32(%rsp)
	jb  	Lzkboo_encrypt$3404
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$3401
Lzkboo_encrypt$3402:
	imulq	$64, 24(%rsp), %r10
	imulq	$4, 32(%rsp), %r11
	addq	%r11, %r10
	movb	3260(%rsp,%r10), %r11b
	movb	%r11b, 1159(%rsp)
	incq	%r10
	movb	3260(%rsp,%r10), %r11b
	movb	%r11b, 1158(%rsp)
	incq	%r10
	movb	3260(%rsp,%r10), %r11b
	movb	%r11b, 1157(%rsp)
	incq	%r10
	movb	3260(%rsp,%r10), %r10b
	movb	%r10b, 1156(%rsp)
	movl	1156(%rsp), %r10d
	movq	24(%rsp), %r11
	imulq	$80, %r11, %r11
	addq	32(%rsp), %r11
	movl	%r10d, 2188(%rsp,%r11,4)
	incq	32(%rsp)
Lzkboo_encrypt$3401:
	cmpq	$16, 32(%rsp)
	jb  	Lzkboo_encrypt$3402
	incq	24(%rsp)
Lzkboo_encrypt$3399:
	cmpq	$3, 24(%rsp)
	jb  	Lzkboo_encrypt$3400
	movq	$16, 24(%rsp)
	jmp 	Lzkboo_encrypt$3391
Lzkboo_encrypt$3392:
	movq	$0, 32(%rsp)
	jmp 	Lzkboo_encrypt$3393
Lzkboo_encrypt$3394:
	movq	32(%rsp), %r10
	imulq	$80, %r10, %r10
	addq	24(%rsp), %r10
	movl	2176(%rsp,%r10,4), %r11d
	movl	2156(%rsp,%r10,4), %ebp
	movl	%r11d, 1204(%rsp)
	xorl	%ebp, 1204(%rsp)
	movl	2132(%rsp,%r10,4), %r11d
	xorl	%r11d, 1204(%rsp)
	movl	2124(%rsp,%r10,4), %r11d
	xorl	%r11d, 1204(%rsp)
	movq	$1, %r11
	movl	1204(%rsp), %ebp
	movq	%r11, %rbx
	jmp 	Lzkboo_encrypt$3397
Lzkboo_encrypt$3398:
	shll	$1, %ebp
	addq	$-1, %rbx
Lzkboo_encrypt$3397:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$3398
	movq	$32, %rbx
	subq	%r11, %rbx
	movl	1204(%rsp), %r11d
	jmp 	Lzkboo_encrypt$3395
Lzkboo_encrypt$3396:
	shrl	$1, %r11d
	addq	$-1, %rbx
Lzkboo_encrypt$3395:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$3396
	orl 	%r11d, %ebp
	movl	%ebp, 2188(%rsp,%r10,4)
	incq	32(%rsp)
Lzkboo_encrypt$3393:
	cmpq	$3, 32(%rsp)
	jb  	Lzkboo_encrypt$3394
	incq	24(%rsp)
Lzkboo_encrypt$3391:
	cmpq	$80, 24(%rsp)
	jb  	Lzkboo_encrypt$3392
	movl	1372(%rsp), %r10d
	movl	%r10d, 1216(%rsp)
	movl	%r10d, 1220(%rsp)
	movl	%r10d, 1224(%rsp)
	movl	1376(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	%r10d, 1232(%rsp)
	movl	%r10d, 1236(%rsp)
	movl	1380(%rsp), %r10d
	movl	%r10d, 1240(%rsp)
	movl	%r10d, 1244(%rsp)
	movl	%r10d, 1248(%rsp)
	movl	1384(%rsp), %r10d
	movl	%r10d, 1252(%rsp)
	movl	%r10d, 1256(%rsp)
	movl	%r10d, 1260(%rsp)
	movl	1388(%rsp), %r10d
	movl	%r10d, 1264(%rsp)
	movl	%r10d, 1268(%rsp)
	movl	%r10d, 1272(%rsp)
	movq	$0, 24(%rsp)
	jmp 	Lzkboo_encrypt$2217
Lzkboo_encrypt$2218:
	cmpq	$19, 24(%rsp)
	jnbe	Lzkboo_encrypt$3386
	movl	1240(%rsp), %r10d
	xorl	1252(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1244(%rsp), %r10d
	xorl	1256(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1248(%rsp), %r10d
	xorl	1260(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	1288(%rsp), %r10d
	movl	1292(%rsp), %ebp
	movl	1296(%rsp), %r11d
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$3389
Lzkboo_encrypt$3390:
	imulq	$1472, %rbx, %r12
	imulq	(%rsp), %r12
	imulq	$1472, %r15, %r13
	addq	%r13, %r12
	addq	%rcx, %r12
	movl	(%rsi,%r12), %r12d
	movl	%r12d, 1300(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$3389:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$3390
	addq	$4, %rcx
	movl	1228(%rsp), %ebx
	movl	%ebp, %r12d
	andl	%r12d, %ebx
	movl	1232(%rsp), %r12d
	movl	%r10d, %r13d
	andl	%r13d, %r12d
	movl	1228(%rsp), %r13d
	movl	%r10d, %r14d
	andl	%r14d, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1300(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	1304(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	%ebx, 1288(%rsp)
	movl	1232(%rsp), %ebx
	movl	%r11d, %r12d
	andl	%r12d, %ebx
	movl	1236(%rsp), %r12d
	movl	%ebp, %r13d
	andl	%r13d, %r12d
	movl	1232(%rsp), %r13d
	andl	%ebp, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1304(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	1308(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 1292(%rsp)
	movl	1236(%rsp), %ebp
	andl	%r10d, %ebp
	movl	1228(%rsp), %r10d
	movl	%r11d, %ebx
	andl	%ebx, %r10d
	movl	1236(%rsp), %ebx
	andl	%r11d, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	movl	1308(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	1300(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	%ebp, 1296(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3387
Lzkboo_encrypt$3388:
	imulq	$3, (%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1288(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$3387:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$3388
	addq	$4, %rax
	movl	1252(%rsp), %r10d
	xorl	1288(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1256(%rsp), %r10d
	xorl	1292(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1260(%rsp), %r10d
	xorl	1296(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$1518500249, 1152(%rsp)
Lzkboo_encrypt$3386:
	cmpq	$19, 24(%rsp)
	jbe 	Lzkboo_encrypt$3377
	cmpq	$39, 24(%rsp)
	jnbe	Lzkboo_encrypt$3385
	movl	1228(%rsp), %r10d
	xorl	1240(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1232(%rsp), %r10d
	xorl	1244(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1236(%rsp), %r10d
	xorl	1248(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	1252(%rsp), %r10d
	xorl	1288(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1256(%rsp), %r10d
	xorl	1292(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1260(%rsp), %r10d
	xorl	1296(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$1859775393, 1152(%rsp)
Lzkboo_encrypt$3385:
	cmpq	$39, 24(%rsp)
	jbe 	Lzkboo_encrypt$3377
	cmpq	$59, 24(%rsp)
	jnbe	Lzkboo_encrypt$3380
	movl	$0, 1300(%rsp)
	movl	$0, 1304(%rsp)
	movl	$0, 1308(%rsp)
	movl	$0, 1312(%rsp)
	movl	$0, 1316(%rsp)
	movl	$0, 1320(%rsp)
	movl	1228(%rsp), %r10d
	xorl	1240(%rsp), %r10d
	movl	%r10d, 1300(%rsp)
	movl	1232(%rsp), %r10d
	xorl	1244(%rsp), %r10d
	movl	%r10d, 1304(%rsp)
	movl	1236(%rsp), %r10d
	xorl	1248(%rsp), %r10d
	movl	%r10d, 1308(%rsp)
	movl	1228(%rsp), %r10d
	xorl	1252(%rsp), %r10d
	movl	%r10d, 1312(%rsp)
	movl	1232(%rsp), %r10d
	xorl	1256(%rsp), %r10d
	movl	%r10d, 1316(%rsp)
	movl	1236(%rsp), %r10d
	xorl	1260(%rsp), %r10d
	movl	%r10d, 1320(%rsp)
	movl	1312(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1316(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1320(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	1312(%rsp), %r10d
	movl	1316(%rsp), %ebp
	movl	1320(%rsp), %r11d
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$3383
Lzkboo_encrypt$3384:
	imulq	$1472, %rbx, %r12
	imulq	(%rsp), %r12
	imulq	$1472, %r15, %r13
	addq	%r13, %r12
	addq	%rcx, %r12
	movl	(%rsi,%r12), %r12d
	movl	%r12d, 1312(%rsp,%rbx,4)
	incq	%rbx
Lzkboo_encrypt$3383:
	cmpq	$3, %rbx
	jb  	Lzkboo_encrypt$3384
	addq	$4, %rcx
	movl	1300(%rsp), %ebx
	movl	%ebp, %r12d
	andl	%r12d, %ebx
	movl	1304(%rsp), %r12d
	movl	%r10d, %r13d
	andl	%r13d, %r12d
	movl	1300(%rsp), %r13d
	movl	%r10d, %r14d
	andl	%r14d, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1312(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	1316(%rsp), %r12d
	xorl	%r12d, %ebx
	movl	%ebx, 1288(%rsp)
	movl	1304(%rsp), %ebx
	movl	%r11d, %r12d
	andl	%r12d, %ebx
	movl	1308(%rsp), %r12d
	movl	%ebp, %r13d
	andl	%r13d, %r12d
	movl	1304(%rsp), %r13d
	andl	%ebp, %r13d
	xorl	%r12d, %ebx
	xorl	%r13d, %ebx
	movl	1316(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	1320(%rsp), %ebp
	xorl	%ebp, %ebx
	movl	%ebx, 1292(%rsp)
	movl	1308(%rsp), %ebp
	andl	%r10d, %ebp
	movl	1300(%rsp), %r10d
	movl	%r11d, %ebx
	andl	%ebx, %r10d
	movl	1308(%rsp), %ebx
	andl	%r11d, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	movl	1320(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	1312(%rsp), %r10d
	xorl	%r10d, %ebp
	movl	%ebp, 1296(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3381
Lzkboo_encrypt$3382:
	imulq	$3, (%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1288(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$3381:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$3382
	addq	$4, %rax
	movl	1288(%rsp), %r10d
	xorl	1228(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1292(%rsp), %r10d
	xorl	1232(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1296(%rsp), %r10d
	xorl	1236(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$-1894007588, 1152(%rsp)
Lzkboo_encrypt$3380:
	cmpq	$59, 24(%rsp)
	jbe 	Lzkboo_encrypt$3377
	movl	1228(%rsp), %r10d
	xorl	1240(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1232(%rsp), %r10d
	xorl	1244(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1236(%rsp), %r10d
	xorl	1248(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	1252(%rsp), %r10d
	xorl	1288(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1256(%rsp), %r10d
	xorl	1292(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1260(%rsp), %r10d
	xorl	1296(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$-899497514, 1152(%rsp)
Lzkboo_encrypt$3379:
Lzkboo_encrypt$3378:
Lzkboo_encrypt$3377:
	movl	1216(%rsp), %r10d
	movl	1216(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1204(%rsp)
	movl	1220(%rsp), %r10d
	movl	1220(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1208(%rsp)
	movl	1224(%rsp), %r10d
	movl	1224(%rsp), %r11d
	shll	$5, %r10d
	shrl	$27, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1212(%rsp)
	movl	1288(%rsp), %r10d
	movl	%r10d, 1312(%rsp)
	movl	1292(%rsp), %r10d
	movl	%r10d, 1316(%rsp)
	movl	1296(%rsp), %r10d
	movl	%r10d, 1320(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1300(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1304(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1308(%rsp)
	movl	$0, 1324(%rsp)
	movl	$0, 1328(%rsp)
	movl	$0, 1332(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3375
Lzkboo_encrypt$3376:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1336(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$3375:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$3376
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3007
Lzkboo_encrypt$3008:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$3309
Lzkboo_encrypt$3310:
	movl	1288(%rsp,%rbp,4), %ebx
	xorl	1324(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3374
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3374:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3373
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3373:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3372
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3372:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3371
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3371:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3370
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3370:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3369
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3369:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3368
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3368:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3367
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3367:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3366
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3366:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3365
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3365:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3364
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3364:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3363
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3363:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3362
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3362:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3361
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3361:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3360
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3360:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3359
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3359:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3358
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3358:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3357
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3357:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3356
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3356:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3355
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3355:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3354
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3354:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3353
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3353:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3352
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3352:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3351
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3351:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3350
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3350:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3349
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3349:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3348
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3348:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3347
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3347:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3346
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3346:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3345
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3345:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3344
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3344:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3343
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3343:
	movl	%ebx, 1360(%rsp,%rbp,4)
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1324(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3342
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3342:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3341
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3341:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3340
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3340:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3339
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3339:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3338
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3338:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3337
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3337:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3336
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3336:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3335
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3335:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3334
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3334:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3333
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3333:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3332
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3332:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3331
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3331:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3330
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3330:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3329
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3329:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3328
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3328:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3327
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3327:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3326
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3326:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3325
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3325:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3324
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3324:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3323
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3323:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3322
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3322:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3321
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3321:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3320
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3320:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3319
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3319:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3318
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3318:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3317
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3317:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3316
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3316:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3315
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3315:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3314
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3314:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3313
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3313:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3312
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3312:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3311
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3311:
	movl	%ebx, 1348(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$3309:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$3310
	movl	1360(%rsp), %ebp
	andl	1352(%rsp), %ebp
	movl	1364(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3308
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3308:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3307
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3307:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3306
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3306:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3305
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3305:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3304
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3304:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3303
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3303:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3302
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3302:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3301
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3301:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3300
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3300:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3299
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3299:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3298
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3298:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3297
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3297:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3296
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3296:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3295
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3295:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3294
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3294:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3293
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3293:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3292
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3292:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3291
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3291:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3290
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3290:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3289
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3289:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3288
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3288:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3287
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3287:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3286
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3286:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3285
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3285:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3284
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3284:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3283
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3283:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3282
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3282:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3281
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3281:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3280
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3280:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3279
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3279:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3278
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3278:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3277
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3277:
	xorl	%ebx, %ebp
	movl	1324(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3276
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3276:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3275
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3275:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3274
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3274:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3273
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3273:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3272
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3272:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3271
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3271:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3270
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3270:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3269
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3269:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3268
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3268:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3267
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3267:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3266
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3266:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3265
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3265:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3264
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3264:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3263
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3263:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3262
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3262:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3261
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3261:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3260
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3260:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3259
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3259:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3258
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3258:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3257
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3257:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3256
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3256:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3255
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3255:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3254
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3254:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3253
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3253:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3252
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3252:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3251
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3251:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3250
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3250:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3249
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3249:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3248
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3248:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3247
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3247:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3246
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3246:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3245
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3245:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3244
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3244:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3243
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3243:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3242
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3242:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3241
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3241:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3240
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3240:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3239
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3239:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3238
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3238:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3237
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3237:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3236
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3236:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3235
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3235:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3234
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3234:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3233
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3233:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3232
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3232:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3231
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3231:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3230
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3230:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3229
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3229:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3228
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3228:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3227
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3227:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3226
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3226:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3225
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3225:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3224
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3224:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3223
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3223:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3222
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3222:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3221
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3221:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3220
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3220:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3219
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3219:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3218
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3218:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3217
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3217:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3216
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3216:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3215
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3215:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3214
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3214:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3213
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3213:
	xorl	%ebx, %ebp
	movl	1324(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$3211
Lzkboo_encrypt$3212:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$3211:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$3212
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$3209
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$3210
Lzkboo_encrypt$3209:
	orl 	%r13d, %ebx
Lzkboo_encrypt$3210:
	movl	%ebx, 1324(%rsp)
	movl	1364(%rsp), %ebp
	andl	1356(%rsp), %ebp
	movl	1368(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3208
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3208:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3207
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3207:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3206
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3206:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3205
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3205:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3204
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3204:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3203
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3203:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3202
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3202:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3201
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3201:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3200
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3200:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3199
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3199:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3198
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3198:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3197
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3197:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3196
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3196:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3195
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3195:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3194
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3194:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3193
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3193:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3192
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3192:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3191
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3191:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3190
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3190:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3189
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3189:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3188
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3188:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3187
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3187:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3186
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3186:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3185
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3185:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3184
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3184:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3183
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3183:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3182
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3182:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3181
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3181:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3180
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3180:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3179
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3179:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3178
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3178:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3177
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3177:
	xorl	%ebx, %ebp
	movl	1328(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3176
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3176:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3175
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3175:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3174
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3174:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3173
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3173:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3172
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3172:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3171
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3171:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3170
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3170:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3169
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3169:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3168
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3168:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3167
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3167:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3166
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3166:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3165
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3165:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3164
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3164:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3163
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3163:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3162
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3162:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3161
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3161:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3160
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3160:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3159
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3159:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3158
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3158:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3157
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3157:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3156
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3156:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3155
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3155:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3154
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3154:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3153
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3153:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3152
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3152:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3151
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3151:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3150
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3150:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3149
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3149:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3148
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3148:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3147
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3147:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3146
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3146:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3145
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3145:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3144
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3144:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3143
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3143:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3142
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3142:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3141
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3141:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3140
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3140:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3139
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3139:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3138
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3138:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3137
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3137:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3136
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3136:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3135
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3135:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3134
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3134:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3133
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3133:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3132
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3132:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3131
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3131:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3130
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3130:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3129
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3129:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3128
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3128:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3127
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3127:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3126
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3126:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3125
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3125:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3124
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3124:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3123
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3123:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3122
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3122:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3121
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3121:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3120
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3120:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3119
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3119:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3118
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3118:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3117
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3117:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3116
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3116:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3115
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3115:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3114
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3114:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3113
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3113:
	xorl	%ebx, %ebp
	movl	1328(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$3111
Lzkboo_encrypt$3112:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$3111:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$3112
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$3109
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$3110
Lzkboo_encrypt$3109:
	orl 	%r13d, %ebx
Lzkboo_encrypt$3110:
	movl	%ebx, 1328(%rsp)
	movl	1368(%rsp), %ebp
	andl	1348(%rsp), %ebp
	movl	1360(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3108
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3108:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3107
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3107:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3106
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3106:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3105
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3105:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3104
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3104:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3103
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3103:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3102
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3102:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3101
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3101:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3100
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3100:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3099
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3099:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3098
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3098:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3097
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3097:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3096
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3096:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3095
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3095:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3094
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3094:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3093
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3093:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3092
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3092:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3091
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3091:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3090
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3090:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3089
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3089:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3088
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3088:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3087
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3087:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3086
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3086:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3085
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3085:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3084
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3084:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3083
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3083:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3082
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3082:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3081
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3081:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3080
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3080:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3079
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3079:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3078
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3078:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3077
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3077:
	xorl	%ebx, %ebp
	movl	1332(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3076
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3076:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3075
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3075:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3074
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3074:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3073
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3073:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3072
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3072:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3071
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3071:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3070
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3070:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3069
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3069:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3068
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3068:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3067
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3067:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3066
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3066:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3065
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3065:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3064
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3064:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3063
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3063:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3062
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3062:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3061
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3061:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3060
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3060:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3059
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3059:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3058
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3058:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3057
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3057:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3056
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3056:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3055
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3055:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3054
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3054:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3053
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3053:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3052
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3052:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3051
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3051:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3050
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3050:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3049
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3049:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3048
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3048:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3047
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3047:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3046
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3046:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3045
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3045:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3044
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3044:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3043
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3043:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3042
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3042:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$3041
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3041:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$3040
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3040:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$3039
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3039:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$3038
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3038:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$3037
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3037:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$3036
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3036:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$3035
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3035:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$3034
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3034:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$3033
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3033:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$3032
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3032:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$3031
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3031:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$3030
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3030:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$3029
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3029:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$3028
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3028:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$3027
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3027:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$3026
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3026:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$3025
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3025:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$3024
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3024:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$3023
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3023:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$3022
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3022:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$3021
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3021:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$3020
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3020:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$3019
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3019:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$3018
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3018:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$3017
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3017:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$3016
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3016:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$3015
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3015:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$3014
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3014:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$3013
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3013:
	xorl	%ebx, %ebp
	movl	1332(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$3011
Lzkboo_encrypt$3012:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$3011:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$3012
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$3009
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$3010
Lzkboo_encrypt$3009:
	orl 	%r12d, %ebx
Lzkboo_encrypt$3010:
	movl	%ebx, 1332(%rsp)
	incq	%r10
Lzkboo_encrypt$3007:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$3008
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3005
Lzkboo_encrypt$3006:
	movl	1312(%rsp,%r10,4), %r11d
	movl	1300(%rsp,%r10,4), %ebp
	movl	1324(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1324(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$3005:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$3006
	addq	$4, %rax
	movl	1264(%rsp), %r10d
	movl	%r10d, 1324(%rsp)
	movl	1268(%rsp), %r10d
	movl	%r10d, 1328(%rsp)
	movl	1272(%rsp), %r10d
	movl	%r10d, 1332(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1300(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1304(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1308(%rsp)
	movl	$0, 1312(%rsp)
	movl	$0, 1316(%rsp)
	movl	$0, 1320(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3003
Lzkboo_encrypt$3004:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1360(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$3003:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$3004
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2635
Lzkboo_encrypt$2636:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$2937
Lzkboo_encrypt$2938:
	movl	1264(%rsp,%rbp,4), %ebx
	xorl	1312(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$3002
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3002:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$3001
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3001:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$3000
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$3000:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2999
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2999:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2998
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2998:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2997
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2997:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2996
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2996:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2995
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2995:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2994
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2994:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2993
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2993:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2992
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2992:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2991
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2991:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2990
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2990:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2989
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2989:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2988
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2988:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2987
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2987:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2986
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2986:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2985
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2985:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2984
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2984:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2983
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2983:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2982
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2982:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2981
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2981:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2980
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2980:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2979
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2979:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2978
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2978:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2977
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2977:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2976
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2976:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2975
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2975:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2974
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2974:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2973
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2973:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2972
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2972:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2971
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2971:
	movl	%ebx, 1336(%rsp,%rbp,4)
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1312(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2970
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2970:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2969
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2969:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2968
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2968:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2967
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2967:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2966
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2966:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2965
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2965:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2964
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2964:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2963
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2963:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2962
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2962:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2961
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2961:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2960
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2960:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2959
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2959:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2958
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2958:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2957
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2957:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2956
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2956:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2955
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2955:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2954
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2954:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2953
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2953:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2952
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2952:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2951
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2951:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2950
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2950:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2949
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2949:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2948
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2948:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2947
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2947:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2946
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2946:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2945
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2945:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2944
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2944:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2943
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2943:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2942
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2942:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2941
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2941:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2940
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2940:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2939
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2939:
	movl	%ebx, 1348(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$2937:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$2938
	movl	1336(%rsp), %ebp
	andl	1352(%rsp), %ebp
	movl	1340(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2936
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2936:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2935
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2935:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2934
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2934:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2933
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2933:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2932
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2932:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2931
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2931:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2930
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2930:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2929
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2929:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2928
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2928:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2927
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2927:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2926
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2926:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2925
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2925:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2924
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2924:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2923
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2923:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2922
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2922:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2921
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2921:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2920
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2920:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2919
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2919:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2918
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2918:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2917
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2917:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2916
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2916:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2915
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2915:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2914
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2914:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2913
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2913:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2912
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2912:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2911
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2911:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2910
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2910:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2909
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2909:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2908
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2908:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2907
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2907:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2906
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2906:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2905
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2905:
	xorl	%ebx, %ebp
	movl	1312(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2904
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2904:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2903
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2903:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2902
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2902:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2901
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2901:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2900
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2900:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2899
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2899:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2898
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2898:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2897
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2897:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2896
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2896:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2895
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2895:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2894
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2894:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2893
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2893:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2892
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2892:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2891
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2891:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2890
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2890:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2889
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2889:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2888
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2888:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2887
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2887:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2886
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2886:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2885
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2885:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2884
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2884:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2883
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2883:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2882
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2882:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2881
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2881:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2880
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2880:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2879
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2879:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2878
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2878:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2877
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2877:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2876
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2876:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2875
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2875:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2874
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2874:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2873
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2873:
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2872
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2872:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2871
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2871:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2870
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2870:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2869
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2869:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2868
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2868:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2867
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2867:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2866
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2866:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2865
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2865:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2864
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2864:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2863
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2863:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2862
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2862:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2861
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2861:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2860
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2860:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2859
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2859:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2858
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2858:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2857
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2857:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2856
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2856:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2855
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2855:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2854
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2854:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2853
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2853:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2852
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2852:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2851
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2851:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2850
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2850:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2849
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2849:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2848
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2848:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2847
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2847:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2846
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2846:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2845
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2845:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2844
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2844:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2843
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2843:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2842
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2842:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2841
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2841:
	xorl	%ebx, %ebp
	movl	1312(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$2839
Lzkboo_encrypt$2840:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$2839:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2840
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2837
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$2838
Lzkboo_encrypt$2837:
	orl 	%r13d, %ebx
Lzkboo_encrypt$2838:
	movl	%ebx, 1312(%rsp)
	movl	1340(%rsp), %ebp
	andl	1356(%rsp), %ebp
	movl	1344(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2836
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2836:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2835
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2835:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2834
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2834:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2833
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2833:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2832
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2832:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2831
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2831:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2830
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2830:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2829
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2829:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2828
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2828:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2827
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2827:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2826
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2826:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2825
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2825:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2824
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2824:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2823
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2823:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2822
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2822:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2821
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2821:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2820
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2820:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2819
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2819:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2818
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2818:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2817
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2817:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2816
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2816:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2815
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2815:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2814
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2814:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2813
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2813:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2812
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2812:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2811
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2811:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2810
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2810:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2809
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2809:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2808
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2808:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2807
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2807:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2806
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2806:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2805
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2805:
	xorl	%ebx, %ebp
	movl	1316(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2804
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2804:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2803
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2803:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2802
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2802:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2801
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2801:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2800
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2800:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2799
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2799:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2798
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2798:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2797
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2797:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2796
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2796:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2795
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2795:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2794
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2794:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2793
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2793:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2792
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2792:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2791
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2791:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2790
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2790:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2789
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2789:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2788
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2788:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2787
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2787:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2786
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2786:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2785
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2785:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2784
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2784:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2783
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2783:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2782
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2782:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2781
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2781:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2780
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2780:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2779
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2779:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2778
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2778:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2777
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2777:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2776
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2776:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2775
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2775:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2774
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2774:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2773
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2773:
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2772
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2772:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2771
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2771:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2770
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2770:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2769
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2769:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2768
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2768:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2767
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2767:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2766
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2766:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2765
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2765:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2764
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2764:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2763
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2763:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2762
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2762:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2761
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2761:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2760
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2760:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2759
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2759:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2758
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2758:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2757
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2757:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2756
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2756:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2755
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2755:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2754
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2754:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2753
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2753:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2752
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2752:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2751
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2751:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2750
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2750:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2749
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2749:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2748
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2748:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2747
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2747:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2746
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2746:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2745
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2745:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2744
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2744:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2743
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2743:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2742
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2742:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2741
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2741:
	xorl	%ebx, %ebp
	movl	1316(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$2739
Lzkboo_encrypt$2740:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$2739:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2740
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2737
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$2738
Lzkboo_encrypt$2737:
	orl 	%r13d, %ebx
Lzkboo_encrypt$2738:
	movl	%ebx, 1316(%rsp)
	movl	1344(%rsp), %ebp
	andl	1348(%rsp), %ebp
	movl	1336(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2736
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2736:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2735
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2735:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2734
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2734:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2733
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2733:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2732
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2732:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2731
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2731:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2730
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2730:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2729
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2729:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2728
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2728:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2727
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2727:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2726
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2726:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2725
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2725:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2724
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2724:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2723
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2723:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2722
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2722:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2721
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2721:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2720
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2720:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2719
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2719:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2718
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2718:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2717
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2717:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2716
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2716:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2715
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2715:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2714
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2714:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2713
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2713:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2712
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2712:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2711
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2711:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2710
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2710:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2709
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2709:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2708
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2708:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2707
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2707:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2706
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2706:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2705
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2705:
	xorl	%ebx, %ebp
	movl	1320(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2704
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2704:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2703
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2703:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2702
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2702:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2701
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2701:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2700
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2700:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2699
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2699:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2698
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2698:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2697
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2697:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2696
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2696:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2695
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2695:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2694
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2694:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2693
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2693:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2692
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2692:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2691
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2691:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2690
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2690:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2689
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2689:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2688
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2688:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2687
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2687:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2686
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2686:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2685
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2685:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2684
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2684:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2683
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2683:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2682
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2682:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2681
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2681:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2680
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2680:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2679
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2679:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2678
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2678:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2677
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2677:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2676
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2676:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2675
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2675:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2674
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2674:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2673
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2673:
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2672
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2672:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2671
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2671:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2670
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2670:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2669
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2669:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2668
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2668:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2667
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2667:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2666
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2666:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2665
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2665:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2664
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2664:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2663
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2663:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2662
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2662:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2661
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2661:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2660
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2660:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2659
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2659:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2658
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2658:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2657
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2657:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2656
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2656:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2655
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2655:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2654
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2654:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2653
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2653:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2652
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2652:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2651
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2651:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2650
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2650:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2649
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2649:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2648
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2648:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2647
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2647:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2646
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2646:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2645
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2645:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2644
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2644:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2643
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2643:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2642
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2642:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2641
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2641:
	xorl	%ebx, %ebp
	movl	1320(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$2639
Lzkboo_encrypt$2640:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$2639:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$2640
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2637
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$2638
Lzkboo_encrypt$2637:
	orl 	%r12d, %ebx
Lzkboo_encrypt$2638:
	movl	%ebx, 1320(%rsp)
	incq	%r10
Lzkboo_encrypt$2635:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$2636
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2633
Lzkboo_encrypt$2634:
	movl	1324(%rsp,%r10,4), %r11d
	movl	1300(%rsp,%r10,4), %ebp
	movl	1312(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1312(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$2633:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2634
	addq	$4, %rax
	movl	$0, 1312(%rsp)
	movl	$0, 1316(%rsp)
	movl	$0, 1320(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2631
Lzkboo_encrypt$2632:
	imulq	$1472, %r10, %r11
	imulq	(%rsp), %r11
	imulq	$1472, %r15, %rbp
	addq	%rbp, %r11
	addq	%rcx, %r11
	movl	(%rsi,%r11), %r11d
	movl	%r11d, 1300(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$2631:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2632
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2593
Lzkboo_encrypt$2594:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$2625
Lzkboo_encrypt$2626:
	movl	1204(%rsp,%rbp,4), %r12d
	movl	1312(%rsp,%rbp,4), %r13d
	movl	1152(%rsp), %ebx
	xorl	%r13d, %r12d
	xorl	%r13d, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2629
Lzkboo_encrypt$2630:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$2629:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2630
	andl	$1, %r12d
	movl	%r12d, 1336(%rsp,%rbp,4)
	movq	%r10, %r12
	jmp 	Lzkboo_encrypt$2627
Lzkboo_encrypt$2628:
	shrl	$1, %ebx
	addq	$-1, %r12
Lzkboo_encrypt$2627:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2628
	andl	$1, %ebx
	movl	%ebx, 1324(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$2625:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$2626
	movq	$1, %rbp
	movq	$0, %r12
	movl	1300(%rsp,%rbp,4), %ebp
	movl	1312(%rsp,%r12,4), %ebx
	movl	1300(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2623
Lzkboo_encrypt$2624:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$2623:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2624
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2621
Lzkboo_encrypt$2622:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$2621:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2622
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2619
Lzkboo_encrypt$2620:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$2619:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2620
	andl	$1, %r12d
	movl	1336(%rsp), %r13d
	andl	1328(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1340(%rsp), %ebp
	andl	1324(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1336(%rsp), %ebp
	andl	1324(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$0, %rbp
	movq	%r11, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$2617
Lzkboo_encrypt$2618:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$2617:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$2618
	movl	1312(%rsp,%rbp,4), %ebx
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$2615
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$2616
Lzkboo_encrypt$2615:
	orl 	%r12d, %ebx
Lzkboo_encrypt$2616:
	movl	%ebx, 1312(%rsp,%rbp,4)
	movq	$2, %rbp
	movq	$1, %r12
	movl	1300(%rsp,%rbp,4), %ebp
	movl	1312(%rsp,%r12,4), %ebx
	movl	1300(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2613
Lzkboo_encrypt$2614:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$2613:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2614
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2611
Lzkboo_encrypt$2612:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$2611:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2612
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2609
Lzkboo_encrypt$2610:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$2609:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2610
	andl	$1, %r12d
	movl	1340(%rsp), %r13d
	andl	1332(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1344(%rsp), %ebp
	andl	1328(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1340(%rsp), %ebp
	andl	1328(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$1, %rbp
	movq	%r11, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$2607
Lzkboo_encrypt$2608:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$2607:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$2608
	movl	1312(%rsp,%rbp,4), %ebx
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$2605
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$2606
Lzkboo_encrypt$2605:
	orl 	%r12d, %ebx
Lzkboo_encrypt$2606:
	movl	%ebx, 1312(%rsp,%rbp,4)
	movq	$0, %rbp
	movq	$2, %r12
	movl	1300(%rsp,%rbp,4), %ebp
	movl	1312(%rsp,%r12,4), %ebx
	movl	1300(%rsp,%r12,4), %r12d
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2603
Lzkboo_encrypt$2604:
	shrl	$1, %ebp
	addq	$-1, %r13
Lzkboo_encrypt$2603:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2604
	andl	$1, %ebp
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2601
Lzkboo_encrypt$2602:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_encrypt$2601:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2602
	andl	$1, %ebx
	movq	%r10, %r13
	jmp 	Lzkboo_encrypt$2599
Lzkboo_encrypt$2600:
	shrl	$1, %r12d
	addq	$-1, %r13
Lzkboo_encrypt$2599:
	cmpq	$0, %r13
	jnbe	Lzkboo_encrypt$2600
	andl	$1, %r12d
	movl	1344(%rsp), %r13d
	andl	1324(%rsp), %r13d
	xorl	%ebp, %r13d
	movl	1336(%rsp), %ebp
	andl	1332(%rsp), %ebp
	xorl	%ebp, %r13d
	movl	1344(%rsp), %ebp
	andl	1332(%rsp), %ebp
	xorl	%ebp, %r13d
	xorl	%ebx, %r13d
	xorl	%r12d, %r13d
	movq	$2, %rbp
	movl	$1, %ebx
	jmp 	Lzkboo_encrypt$2597
Lzkboo_encrypt$2598:
	shll	$1, %ebx
	addq	$-1, %r11
Lzkboo_encrypt$2597:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$2598
	movl	1312(%rsp,%rbp,4), %r11d
	cmpl	$1, %r13d
	je  	Lzkboo_encrypt$2595
	xorl	$-1, %ebx
	andl	%ebx, %r11d
	jmp 	Lzkboo_encrypt$2596
Lzkboo_encrypt$2595:
	orl 	%ebx, %r11d
Lzkboo_encrypt$2596:
	movl	%r11d, 1312(%rsp,%rbp,4)
	incq	%r10
Lzkboo_encrypt$2593:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$2594
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2591
Lzkboo_encrypt$2592:
	imulq	$3, (%rsp), %r11
	imulq	$64, %r11, %r11
	movq	%r10, %rbp
	imulq	(%rsp), %rbp
	imulq	$1480, %rbp, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1204(%rsp,%r10,4), %ebp
	movl	1312(%rsp,%r10,4), %ebx
	xorl	%ebx, %ebp
	xorl	1152(%rsp), %ebp
	movl	%ebp, 1204(%rsp,%r10,4)
	movl	1312(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$2591:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2592
	addq	$4, %rax
	movq	24(%rsp), %r10
	movl	2188(%rsp,%r10,4), %r11d
	movl	%r11d, 1276(%rsp)
	addq	$80, %r10
	movl	2188(%rsp,%r10,4), %r11d
	movl	%r11d, 1276(%rsp)
	addq	$80, %r10
	movl	2188(%rsp,%r10,4), %r10d
	movl	%r10d, 1276(%rsp)
	movl	1276(%rsp), %r10d
	movl	%r10d, 1312(%rsp)
	movl	1280(%rsp), %r10d
	movl	%r10d, 1316(%rsp)
	movl	1284(%rsp), %r10d
	movl	%r10d, 1320(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1300(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1304(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1308(%rsp)
	movl	$0, 1336(%rsp)
	movl	$0, 1340(%rsp)
	movl	$0, 1344(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2589
Lzkboo_encrypt$2590:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1324(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$2589:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2590
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2221
Lzkboo_encrypt$2222:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$2523
Lzkboo_encrypt$2524:
	movl	1276(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2588
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2588:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2587
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2587:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2586
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2586:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2585
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2585:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2584
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2584:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2583
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2583:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2582
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2582:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2581
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2581:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2580
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2580:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2579
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2579:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2578
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2578:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2577
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2577:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2576
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2576:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2575
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2575:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2574
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2574:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2573
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2573:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2572
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2572:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2571
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2571:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2570
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2570:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2569
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2569:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2568
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2568:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2567
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2567:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2566
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2566:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2565
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2565:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2564
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2564:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2563
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2563:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2562
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2562:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2561
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2561:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2560
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2560:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2559
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2559:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2558
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2558:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2557
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2557:
	movl	%ebx, 1360(%rsp,%rbp,4)
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2556
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2556:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2555
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2555:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2554
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2554:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2553
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2553:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2552
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2552:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2551
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2551:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2550
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2550:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2549
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2549:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2548
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2548:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2547
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2547:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2546
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2546:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2545
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2545:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2544
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2544:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2543
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2543:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2542
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2542:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2541
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2541:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2540
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2540:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2539
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2539:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2538
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2538:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2537
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2537:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2536
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2536:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2535
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2535:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2534
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2534:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2533
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2533:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2532
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2532:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2531
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2531:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2530
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2530:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2529
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2529:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2528
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2528:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2527
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2527:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2526
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2526:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2525
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2525:
	movl	%ebx, 1348(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$2523:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$2524
	movl	1360(%rsp), %ebp
	andl	1352(%rsp), %ebp
	movl	1364(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	movl	1348(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1328(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2522
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2522:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2521
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2521:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2520
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2520:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2519
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2519:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2518
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2518:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2517
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2517:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2516
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2516:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2515
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2515:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2514
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2514:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2513
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2513:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2512
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2512:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2511
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2511:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2510
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2510:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2509
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2509:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2508
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2508:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2507
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2507:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2506
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2506:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2505
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2505:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2504
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2504:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2503
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2503:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2502
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2502:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2501
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2501:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2500
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2500:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2499
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2499:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2498
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2498:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2497
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2497:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2496
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2496:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2495
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2495:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2494
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2494:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2493
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2493:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2492
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2492:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2491
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2491:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2490
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2490:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2489
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2489:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2488
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2488:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2487
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2487:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2486
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2486:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2485
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2485:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2484
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2484:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2483
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2483:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2482
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2482:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2481
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2481:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2480
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2480:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2479
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2479:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2478
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2478:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2477
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2477:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2476
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2476:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2475
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2475:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2474
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2474:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2473
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2473:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2472
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2472:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2471
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2471:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2470
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2470:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2469
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2469:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2468
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2468:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2467
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2467:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2466
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2466:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2465
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2465:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2464
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2464:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2463
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2463:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2462
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2462:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2461
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2461:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2460
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2460:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2459
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2459:
	xorl	%ebx, %ebp
	movl	1324(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2458
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2458:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2457
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2457:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2456
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2456:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2455
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2455:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2454
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2454:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2453
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2453:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2452
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2452:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2451
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2451:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2450
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2450:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2449
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2449:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2448
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2448:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2447
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2447:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2446
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2446:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2445
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2445:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2444
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2444:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2443
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2443:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2442
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2442:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2441
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2441:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2440
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2440:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2439
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2439:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2438
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2438:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2437
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2437:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2436
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2436:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2435
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2435:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2434
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2434:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2433
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2433:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2432
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2432:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2431
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2431:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2430
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2430:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2429
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2429:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2428
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2428:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2427
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2427:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$2425
Lzkboo_encrypt$2426:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$2425:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2426
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2423
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$2424
Lzkboo_encrypt$2423:
	orl 	%r13d, %ebx
Lzkboo_encrypt$2424:
	movl	%ebx, 1336(%rsp)
	movl	1364(%rsp), %ebp
	andl	1356(%rsp), %ebp
	movl	1368(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	movl	1352(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1332(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2422
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2422:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2421
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2421:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2420
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2420:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2419
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2419:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2418
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2418:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2417
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2417:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2416
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2416:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2415
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2415:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2414
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2414:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2413
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2413:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2412
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2412:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2411
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2411:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2410
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2410:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2409
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2409:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2408
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2408:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2407
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2407:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2406
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2406:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2405
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2405:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2404
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2404:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2403
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2403:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2402
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2402:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2401
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2401:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2400
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2400:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2399
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2399:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2398
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2398:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2397
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2397:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2396
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2396:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2395
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2395:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2394
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2394:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2393
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2393:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2392
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2392:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2391
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2391:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2390
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2390:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2389
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2389:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2388
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2388:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2387
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2387:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2386
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2386:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2385
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2385:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2384
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2384:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2383
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2383:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2382
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2382:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2381
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2381:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2380
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2380:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2379
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2379:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2378
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2378:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2377
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2377:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2376
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2376:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2375
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2375:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2374
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2374:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2373
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2373:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2372
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2372:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2371
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2371:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2370
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2370:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2369
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2369:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2368
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2368:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2367
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2367:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2366
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2366:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2365
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2365:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2364
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2364:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2363
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2363:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2362
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2362:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2361
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2361:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2360
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2360:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2359
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2359:
	xorl	%ebx, %ebp
	movl	1328(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2358
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2358:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2357
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2357:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2356
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2356:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2355
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2355:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2354
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2354:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2353
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2353:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2352
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2352:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2351
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2351:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2350
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2350:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2349
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2349:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2348
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2348:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2347
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2347:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2346
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2346:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2345
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2345:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2344
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2344:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2343
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2343:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2342
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2342:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2341
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2341:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2340
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2340:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2339
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2339:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2338
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2338:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2337
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2337:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2336
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2336:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2335
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2335:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2334
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2334:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2333
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2333:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2332
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2332:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2331
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2331:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2330
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2330:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2329
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2329:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2328
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2328:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2327
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2327:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$2325
Lzkboo_encrypt$2326:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$2325:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2326
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2323
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$2324
Lzkboo_encrypt$2323:
	orl 	%r13d, %ebx
Lzkboo_encrypt$2324:
	movl	%ebx, 1340(%rsp)
	movl	1368(%rsp), %ebp
	andl	1348(%rsp), %ebp
	movl	1360(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	movl	1356(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1324(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2322
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2322:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2321
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2321:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2320
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2320:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2319
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2319:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2318
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2318:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2317
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2317:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2316
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2316:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2315
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2315:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2314
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2314:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2313
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2313:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2312
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2312:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2311
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2311:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2310
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2310:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2309
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2309:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2308
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2308:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2307
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2307:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2306
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2306:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2305
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2305:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2304
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2304:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2303
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2303:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2302
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2302:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2301
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2301:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2300
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2300:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2299
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2299:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2298
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2298:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2297
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2297:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2296
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2296:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2295
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2295:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2294
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2294:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2293
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2293:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2292
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2292:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2291
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2291:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2290
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2290:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2289
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2289:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2288
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2288:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2287
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2287:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2286
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2286:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2285
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2285:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2284
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2284:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2283
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2283:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2282
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2282:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2281
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2281:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2280
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2280:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2279
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2279:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2278
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2278:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2277
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2277:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2276
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2276:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2275
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2275:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2274
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2274:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2273
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2273:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2272
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2272:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2271
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2271:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2270
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2270:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2269
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2269:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2268
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2268:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2267
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2267:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2266
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2266:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2265
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2265:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2264
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2264:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2263
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2263:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2262
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2262:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2261
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2261:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2260
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2260:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2259
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2259:
	xorl	%ebx, %ebp
	movl	1332(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2258
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2258:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2257
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2257:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2256
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2256:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2255
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2255:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2254
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2254:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2253
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2253:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2252
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2252:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2251
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2251:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2250
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2250:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2249
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2249:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2248
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2248:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2247
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2247:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2246
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2246:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2245
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2245:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2244
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2244:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2243
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2243:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2242
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2242:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2241
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2241:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2240
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2240:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2239
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2239:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2238
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2238:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2237
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2237:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2236
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2236:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2235
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2235:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2234
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2234:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2233
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2233:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2232
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2232:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2231
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2231:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2230
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2230:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2229
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2229:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2228
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2228:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2227
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2227:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$2225
Lzkboo_encrypt$2226:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$2225:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$2226
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2223
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$2224
Lzkboo_encrypt$2223:
	orl 	%r12d, %ebx
Lzkboo_encrypt$2224:
	movl	%ebx, 1344(%rsp)
	incq	%r10
Lzkboo_encrypt$2221:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$2222
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2219
Lzkboo_encrypt$2220:
	movl	1312(%rsp,%r10,4), %r11d
	movl	1300(%rsp,%r10,4), %ebp
	movl	1336(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1336(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$2219:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2220
	addq	$4, %rax
	movl	1252(%rsp), %r10d
	movl	%r10d, 1264(%rsp)
	movl	1256(%rsp), %r10d
	movl	%r10d, 1268(%rsp)
	movl	1260(%rsp), %r10d
	movl	%r10d, 1272(%rsp)
	movl	1240(%rsp), %r10d
	movl	%r10d, 1252(%rsp)
	movl	1244(%rsp), %r10d
	movl	%r10d, 1256(%rsp)
	movl	1248(%rsp), %r10d
	movl	%r10d, 1260(%rsp)
	movl	1228(%rsp), %r10d
	movl	1228(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1240(%rsp)
	movl	1232(%rsp), %r10d
	movl	1232(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1244(%rsp)
	movl	1236(%rsp), %r10d
	movl	1236(%rsp), %r11d
	shll	$30, %r10d
	shrl	$2, %r11d
	orl 	%r11d, %r10d
	movl	%r10d, 1248(%rsp)
	movl	1216(%rsp), %r10d
	movl	%r10d, 1228(%rsp)
	movl	1220(%rsp), %r10d
	movl	%r10d, 1232(%rsp)
	movl	1224(%rsp), %r10d
	movl	%r10d, 1236(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1216(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1220(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1224(%rsp)
	incq	24(%rsp)
Lzkboo_encrypt$2217:
	cmpq	$80, 24(%rsp)
	jb  	Lzkboo_encrypt$2218
	movl	1372(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1276(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1280(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1284(%rsp)
	movl	1216(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1220(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1224(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$0, 1336(%rsp)
	movl	$0, 1340(%rsp)
	movl	$0, 1344(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$2215
Lzkboo_encrypt$2216:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1300(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$2215:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$2216
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1847
Lzkboo_encrypt$1848:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$2149
Lzkboo_encrypt$2150:
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2214
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2214:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2213
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2213:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2212
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2212:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2211
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2211:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2210
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2210:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2209
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2209:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2208
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2208:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2207
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2207:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2206
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2206:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2205
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2205:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2204
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2204:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2203
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2203:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2202
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2202:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2201
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2201:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2200
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2200:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2199
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2199:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2198
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2198:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2197
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2197:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2196
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2196:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2195
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2195:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2194
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2194:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2193
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2193:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2192
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2192:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2191
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2191:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2190
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2190:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2189
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2189:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2188
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2188:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2187
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2187:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2186
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2186:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2185
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2185:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2184
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2184:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2183
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2183:
	movl	%ebx, 1360(%rsp,%rbp,4)
	movl	1216(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2182
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2182:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2181
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2181:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2180
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2180:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2179
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2179:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2178
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2178:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2177
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2177:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2176
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2176:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2175
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2175:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2174
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2174:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2173
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2173:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2172
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2172:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2171
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2171:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2170
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2170:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2169
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2169:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2168
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2168:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2167
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2167:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2166
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2166:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2165
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2165:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2164
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2164:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2163
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2163:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2162
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2162:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2161
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2161:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2160
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2160:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2159
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2159:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2158
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2158:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2157
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2157:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2156
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2156:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2155
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2155:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2154
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2154:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2153
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2153:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2152
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2152:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2151
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2151:
	movl	%ebx, 1312(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$2149:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$2150
	movl	1360(%rsp), %ebp
	andl	1316(%rsp), %ebp
	movl	1364(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2148
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2148:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2147
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2147:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2146
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2146:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2145
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2145:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2144
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2144:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2143
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2143:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2142
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2142:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2141
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2141:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2140
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2140:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2139
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2139:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2138
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2138:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2137
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2137:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2136
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2136:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2135
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2135:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2134
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2134:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2133
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2133:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2132
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2132:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2131
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2131:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2130
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2130:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2129
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2129:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2128
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2128:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2127
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2127:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2126
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2126:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2125
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2125:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2124
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2124:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2123
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2123:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2122
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2122:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2121
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2121:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2120
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2120:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2119
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2119:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2118
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2118:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2117
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2117:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2116
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2116:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2115
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2115:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2114
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2114:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2113
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2113:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2112
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2112:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2111
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2111:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2110
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2110:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2109
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2109:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2108
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2108:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2107
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2107:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2106
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2106:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2105
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2105:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2104
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2104:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2103
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2103:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2102
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2102:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2101
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2101:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2100
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2100:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2099
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2099:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2098
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2098:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2097
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2097:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2096
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2096:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2095
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2095:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2094
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2094:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2093
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2093:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2092
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2092:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2091
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2091:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2090
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2090:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2089
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2089:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2088
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2088:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2087
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2087:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2086
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2086:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2085
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2085:
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2084
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2084:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2083
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2083:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2082
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2082:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2081
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2081:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2080
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2080:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2079
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2079:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2078
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2078:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2077
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2077:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2076
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2076:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2075
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2075:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2074
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2074:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2073
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2073:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2072
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2072:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2071
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2071:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2070
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2070:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2069
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2069:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2068
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2068:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2067
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2067:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2066
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2066:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2065
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2065:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2064
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2064:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2063
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2063:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2062
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2062:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2061
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2061:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2060
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2060:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2059
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2059:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2058
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2058:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2057
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2057:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2056
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2056:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2055
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2055:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2054
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2054:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2053
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2053:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$2051
Lzkboo_encrypt$2052:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$2051:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$2052
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$2049
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$2050
Lzkboo_encrypt$2049:
	orl 	%r13d, %ebx
Lzkboo_encrypt$2050:
	movl	%ebx, 1336(%rsp)
	movl	1364(%rsp), %ebp
	andl	1320(%rsp), %ebp
	movl	1368(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2048
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2048:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2047
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2047:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2046
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2046:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2045
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2045:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2044
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2044:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2043
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2043:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2042
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2042:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2041
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2041:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2040
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2040:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2039
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2039:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2038
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2038:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2037
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2037:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2036
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2036:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2035
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2035:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2034
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2034:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2033
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2033:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2032
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2032:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$2031
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2031:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$2030
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2030:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$2029
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2029:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$2028
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2028:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$2027
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2027:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$2026
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2026:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$2025
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2025:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$2024
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2024:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$2023
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2023:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$2022
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2022:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$2021
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2021:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$2020
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2020:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$2019
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2019:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$2018
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2018:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$2017
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2017:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$2016
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2016:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$2015
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2015:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$2014
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2014:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$2013
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2013:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$2012
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2012:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$2011
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2011:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$2010
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2010:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$2009
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2009:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$2008
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2008:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$2007
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2007:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$2006
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2006:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$2005
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2005:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$2004
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2004:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$2003
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2003:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$2002
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2002:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$2001
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2001:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$2000
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$2000:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1999
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1999:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1998
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1998:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1997
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1997:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1996
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1996:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1995
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1995:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1994
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1994:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1993
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1993:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1992
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1992:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1991
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1991:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1990
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1990:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1989
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1989:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1988
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1988:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1987
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1987:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1986
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1986:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1985
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1985:
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1984
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1984:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1983
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1983:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1982
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1982:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1981
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1981:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1980
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1980:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1979
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1979:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1978
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1978:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1977
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1977:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1976
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1976:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1975
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1975:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1974
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1974:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1973
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1973:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1972
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1972:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1971
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1971:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1970
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1970:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1969
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1969:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1968
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1968:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1967
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1967:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1966
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1966:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1965
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1965:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1964
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1964:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1963
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1963:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1962
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1962:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1961
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1961:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1960
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1960:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1959
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1959:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1958
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1958:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1957
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1957:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1956
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1956:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1955
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1955:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1954
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1954:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1953
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1953:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$1951
Lzkboo_encrypt$1952:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$1951:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$1952
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1949
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$1950
Lzkboo_encrypt$1949:
	orl 	%r13d, %ebx
Lzkboo_encrypt$1950:
	movl	%ebx, 1340(%rsp)
	movl	1368(%rsp), %ebp
	andl	1312(%rsp), %ebp
	movl	1360(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1948
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1948:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1947
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1947:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1946
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1946:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1945
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1945:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1944
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1944:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1943
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1943:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1942
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1942:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1941
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1941:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1940
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1940:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1939
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1939:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1938
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1938:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1937
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1937:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1936
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1936:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1935
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1935:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1934
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1934:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1933
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1933:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1932
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1932:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1931
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1931:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1930
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1930:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1929
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1929:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1928
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1928:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1927
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1927:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1926
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1926:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1925
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1925:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1924
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1924:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1923
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1923:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1922
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1922:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1921
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1921:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1920
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1920:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1919
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1919:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1918
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1918:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1917
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1917:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1916
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1916:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1915
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1915:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1914
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1914:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1913
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1913:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1912
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1912:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1911
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1911:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1910
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1910:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1909
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1909:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1908
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1908:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1907
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1907:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1906
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1906:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1905
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1905:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1904
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1904:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1903
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1903:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1902
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1902:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1901
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1901:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1900
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1900:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1899
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1899:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1898
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1898:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1897
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1897:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1896
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1896:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1895
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1895:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1894
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1894:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1893
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1893:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1892
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1892:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1891
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1891:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1890
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1890:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1889
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1889:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1888
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1888:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1887
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1887:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1886
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1886:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1885
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1885:
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1884
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1884:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1883
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1883:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1882
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1882:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1881
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1881:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1880
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1880:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1879
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1879:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1878
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1878:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1877
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1877:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1876
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1876:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1875
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1875:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1874
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1874:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1873
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1873:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1872
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1872:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1871
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1871:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1870
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1870:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1869
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1869:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1868
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1868:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1867
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1867:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1866
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1866:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1865
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1865:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1864
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1864:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1863
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1863:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1862
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1862:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1861
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1861:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1860
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1860:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1859
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1859:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1858
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1858:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1857
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1857:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1856
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1856:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1855
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1855:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1854
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1854:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1853
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1853:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$1851
Lzkboo_encrypt$1852:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$1851:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$1852
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1849
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$1850
Lzkboo_encrypt$1849:
	orl 	%r12d, %ebx
Lzkboo_encrypt$1850:
	movl	%ebx, 1344(%rsp)
	incq	%r10
Lzkboo_encrypt$1847:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$1848
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1845
Lzkboo_encrypt$1846:
	movl	1276(%rsp,%r10,4), %r11d
	movl	1288(%rsp,%r10,4), %ebp
	movl	1336(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1336(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$1845:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1846
	addq	$4, %rax
	movl	1204(%rsp), %r10d
	movl	%r10d, 1456(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1460(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1464(%rsp)
	movl	1376(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1336(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1340(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1344(%rsp)
	movl	1228(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1232(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1236(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$0, 1276(%rsp)
	movl	$0, 1280(%rsp)
	movl	$0, 1284(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1843
Lzkboo_encrypt$1844:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1360(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$1843:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1844
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1475
Lzkboo_encrypt$1476:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$1777
Lzkboo_encrypt$1778:
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1276(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1842
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1842:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1841
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1841:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1840
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1840:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1839
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1839:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1838
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1838:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1837
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1837:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1836
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1836:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1835
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1835:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1834
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1834:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1833
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1833:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1832
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1832:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1831
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1831:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1830
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1830:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1829
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1829:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1828
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1828:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1827
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1827:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1826
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1826:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1825
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1825:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1824
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1824:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1823
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1823:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1822
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1822:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1821
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1821:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1820
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1820:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1819
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1819:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1818
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1818:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1817
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1817:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1816
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1816:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1815
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1815:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1814
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1814:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1813
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1813:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1812
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1812:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1811
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1811:
	movl	%ebx, 1300(%rsp,%rbp,4)
	movl	1228(%rsp,%rbp,4), %ebx
	xorl	1276(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1810
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1810:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1809
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1809:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1808
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1808:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1807
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1807:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1806
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1806:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1805
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1805:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1804
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1804:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1803
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1803:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1802
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1802:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1801
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1801:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1800
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1800:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1799
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1799:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1798
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1798:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1797
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1797:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1796
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1796:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1795
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1795:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1794
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1794:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1793
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1793:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1792
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1792:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1791
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1791:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1790
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1790:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1789
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1789:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1788
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1788:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1787
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1787:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1786
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1786:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1785
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1785:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1784
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1784:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1783
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1783:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1782
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1782:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1781
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1781:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1780
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1780:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1779
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1779:
	movl	%ebx, 1312(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$1777:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$1778
	movl	1300(%rsp), %ebp
	andl	1316(%rsp), %ebp
	movl	1304(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1776
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1776:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1775
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1775:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1774
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1774:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1773
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1773:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1772
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1772:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1771
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1771:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1770
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1770:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1769
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1769:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1768
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1768:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1767
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1767:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1766
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1766:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1765
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1765:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1764
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1764:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1763
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1763:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1762
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1762:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1761
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1761:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1760
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1760:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1759
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1759:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1758
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1758:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1757
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1757:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1756
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1756:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1755
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1755:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1754
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1754:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1753
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1753:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1752
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1752:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1751
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1751:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1750
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1750:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1749
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1749:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1748
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1748:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1747
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1747:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1746
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1746:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1745
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1745:
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1744
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1744:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1743
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1743:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1742
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1742:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1741
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1741:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1740
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1740:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1739
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1739:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1738
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1738:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1737
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1737:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1736
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1736:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1735
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1735:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1734
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1734:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1733
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1733:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1732
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1732:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1731
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1731:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1730
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1730:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1729
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1729:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1728
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1728:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1727
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1727:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1726
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1726:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1725
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1725:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1724
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1724:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1723
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1723:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1722
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1722:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1721
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1721:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1720
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1720:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1719
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1719:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1718
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1718:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1717
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1717:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1716
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1716:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1715
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1715:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1714
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1714:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1713
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1713:
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1712
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1712:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1711
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1711:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1710
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1710:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1709
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1709:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1708
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1708:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1707
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1707:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1706
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1706:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1705
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1705:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1704
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1704:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1703
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1703:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1702
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1702:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1701
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1701:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1700
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1700:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1699
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1699:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1698
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1698:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1697
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1697:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1696
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1696:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1695
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1695:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1694
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1694:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1693
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1693:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1692
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1692:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1691
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1691:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1690
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1690:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1689
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1689:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1688
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1688:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1687
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1687:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1686
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1686:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1685
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1685:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1684
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1684:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1683
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1683:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1682
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1682:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1681
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1681:
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$1679
Lzkboo_encrypt$1680:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$1679:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$1680
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1677
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$1678
Lzkboo_encrypt$1677:
	orl 	%r13d, %ebx
Lzkboo_encrypt$1678:
	movl	%ebx, 1276(%rsp)
	movl	1304(%rsp), %ebp
	andl	1320(%rsp), %ebp
	movl	1308(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1676
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1676:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1675
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1675:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1674
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1674:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1673
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1673:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1672
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1672:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1671
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1671:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1670
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1670:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1669
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1669:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1668
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1668:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1667
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1667:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1666
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1666:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1665
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1665:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1664
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1664:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1663
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1663:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1662
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1662:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1661
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1661:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1660
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1660:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1659
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1659:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1658
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1658:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1657
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1657:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1656
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1656:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1655
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1655:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1654
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1654:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1653
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1653:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1652
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1652:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1651
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1651:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1650
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1650:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1649
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1649:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1648
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1648:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1647
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1647:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1646
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1646:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1645
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1645:
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1644
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1644:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1643
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1643:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1642
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1642:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1641
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1641:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1640
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1640:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1639
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1639:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1638
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1638:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1637
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1637:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1636
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1636:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1635
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1635:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1634
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1634:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1633
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1633:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1632
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1632:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1631
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1631:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1630
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1630:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1629
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1629:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1628
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1628:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1627
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1627:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1626
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1626:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1625
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1625:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1624
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1624:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1623
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1623:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1622
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1622:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1621
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1621:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1620
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1620:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1619
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1619:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1618
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1618:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1617
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1617:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1616
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1616:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1615
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1615:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1614
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1614:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1613
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1613:
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1612
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1612:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1611
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1611:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1610
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1610:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1609
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1609:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1608
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1608:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1607
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1607:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1606
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1606:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1605
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1605:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1604
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1604:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1603
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1603:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1602
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1602:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1601
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1601:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1600
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1600:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1599
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1599:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1598
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1598:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1597
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1597:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1596
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1596:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1595
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1595:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1594
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1594:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1593
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1593:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1592
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1592:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1591
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1591:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1590
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1590:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1589
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1589:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1588
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1588:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1587
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1587:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1586
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1586:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1585
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1585:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1584
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1584:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1583
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1583:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1582
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1582:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1581
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1581:
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$1579
Lzkboo_encrypt$1580:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$1579:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$1580
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1577
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$1578
Lzkboo_encrypt$1577:
	orl 	%r13d, %ebx
Lzkboo_encrypt$1578:
	movl	%ebx, 1280(%rsp)
	movl	1308(%rsp), %ebp
	andl	1312(%rsp), %ebp
	movl	1300(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1576
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1576:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1575
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1575:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1574
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1574:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1573
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1573:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1572
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1572:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1571
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1571:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1570
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1570:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1569
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1569:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1568
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1568:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1567
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1567:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1566
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1566:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1565
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1565:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1564
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1564:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1563
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1563:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1562
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1562:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1561
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1561:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1560
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1560:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1559
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1559:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1558
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1558:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1557
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1557:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1556
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1556:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1555
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1555:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1554
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1554:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1553
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1553:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1552
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1552:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1551
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1551:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1550
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1550:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1549
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1549:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1548
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1548:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1547
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1547:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1546
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1546:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1545
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1545:
	xorl	%ebx, %ebp
	movl	1284(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1544
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1544:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1543
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1543:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1542
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1542:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1541
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1541:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1540
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1540:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1539
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1539:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1538
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1538:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1537
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1537:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1536
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1536:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1535
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1535:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1534
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1534:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1533
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1533:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1532
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1532:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1531
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1531:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1530
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1530:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1529
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1529:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1528
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1528:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1527
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1527:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1526
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1526:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1525
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1525:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1524
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1524:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1523
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1523:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1522
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1522:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1521
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1521:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1520
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1520:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1519
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1519:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1518
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1518:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1517
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1517:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1516
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1516:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1515
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1515:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1514
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1514:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1513
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1513:
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1512
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1512:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1511
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1511:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1510
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1510:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1509
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1509:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1508
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1508:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1507
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1507:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1506
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1506:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1505
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1505:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1504
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1504:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1503
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1503:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1502
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1502:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1501
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1501:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1500
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1500:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1499
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1499:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1498
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1498:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1497
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1497:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1496
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1496:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1495
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1495:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1494
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1494:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1493
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1493:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1492
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1492:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1491
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1491:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1490
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1490:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1489
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1489:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1488
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1488:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1487
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1487:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1486
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1486:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1485
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1485:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1484
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1484:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1483
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1483:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1482
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1482:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1481
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1481:
	xorl	%ebx, %ebp
	movl	1284(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$1479
Lzkboo_encrypt$1480:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$1479:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$1480
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1477
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$1478
Lzkboo_encrypt$1477:
	orl 	%r12d, %ebx
Lzkboo_encrypt$1478:
	movl	%ebx, 1284(%rsp)
	incq	%r10
Lzkboo_encrypt$1475:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$1476
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1473
Lzkboo_encrypt$1474:
	movl	1336(%rsp,%r10,4), %r11d
	movl	1288(%rsp,%r10,4), %ebp
	movl	1276(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1276(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$1473:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1474
	addq	$4, %rax
	movl	1204(%rsp), %r10d
	movl	%r10d, 1468(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1472(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1476(%rsp)
	movl	1380(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1276(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1280(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1284(%rsp)
	movl	1240(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1244(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1248(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$0, 1336(%rsp)
	movl	$0, 1340(%rsp)
	movl	$0, 1344(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1471
Lzkboo_encrypt$1472:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1300(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$1471:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1472
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1103
Lzkboo_encrypt$1104:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$1405
Lzkboo_encrypt$1406:
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1470
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1470:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1469
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1469:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1468
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1468:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1467
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1467:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1466
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1466:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1465
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1465:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1464
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1464:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1463
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1463:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1462
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1462:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1461
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1461:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1460
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1460:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1459
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1459:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1458
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1458:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1457
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1457:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1456
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1456:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1455
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1455:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1454
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1454:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1453
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1453:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1452
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1452:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1451
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1451:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1450
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1450:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1449
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1449:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1448
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1448:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1447
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1447:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1446
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1446:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1445
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1445:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1444
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1444:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1443
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1443:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1442
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1442:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1441
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1441:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1440
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1440:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1439
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1439:
	movl	%ebx, 1360(%rsp,%rbp,4)
	movl	1240(%rsp,%rbp,4), %ebx
	xorl	1336(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1438
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1438:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1437
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1437:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1436
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1436:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1435
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1435:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1434
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1434:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1433
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1433:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1432
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1432:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1431
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1431:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1430
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1430:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1429
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1429:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1428
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1428:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1427
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1427:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1426
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1426:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1425
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1425:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1424
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1424:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1423
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1423:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1422
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1422:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1421
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1421:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1420
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1420:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1419
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1419:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1418
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1418:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1417
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1417:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1416
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1416:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1415
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1415:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1414
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1414:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1413
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1413:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1412
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1412:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1411
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1411:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1410
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1410:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1409
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1409:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1408
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1408:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1407
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1407:
	movl	%ebx, 1312(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$1405:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$1406
	movl	1360(%rsp), %ebp
	andl	1316(%rsp), %ebp
	movl	1364(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1404
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1404:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1403
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1403:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1402
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1402:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1401
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1401:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1400
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1400:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1399
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1399:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1398
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1398:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1397
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1397:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1396
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1396:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1395
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1395:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1394
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1394:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1393
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1393:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1392
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1392:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1391
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1391:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1390
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1390:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1389
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1389:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1388
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1388:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1387
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1387:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1386
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1386:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1385
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1385:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1384
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1384:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1383
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1383:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1382
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1382:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1381
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1381:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1380
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1380:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1379
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1379:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1378
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1378:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1377
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1377:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1376
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1376:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1375
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1375:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1374
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1374:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1373
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1373:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1372
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1372:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1371
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1371:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1370
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1370:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1369
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1369:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1368
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1368:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1367
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1367:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1366
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1366:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1365
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1365:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1364
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1364:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1363
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1363:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1362
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1362:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1361
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1361:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1360
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1360:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1359
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1359:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1358
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1358:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1357
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1357:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1356
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1356:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1355
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1355:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1354
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1354:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1353
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1353:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1352
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1352:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1351
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1351:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1350
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1350:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1349
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1349:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1348
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1348:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1347
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1347:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1346
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1346:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1345
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1345:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1344
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1344:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1343
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1343:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1342
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1342:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1341
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1341:
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1340
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1340:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1339
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1339:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1338
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1338:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1337
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1337:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1336
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1336:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1335
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1335:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1334
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1334:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1333
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1333:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1332
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1332:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1331
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1331:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1330
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1330:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1329
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1329:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1328
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1328:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1327
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1327:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1326
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1326:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1325
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1325:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1324
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1324:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1323
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1323:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1322
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1322:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1321
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1321:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1320
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1320:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1319
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1319:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1318
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1318:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1317
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1317:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1316
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1316:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1315
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1315:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1314
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1314:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1313
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1313:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1312
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1312:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1311
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1311:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1310
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1310:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1309
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1309:
	xorl	%ebx, %ebp
	movl	1336(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$1307
Lzkboo_encrypt$1308:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$1307:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$1308
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1305
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$1306
Lzkboo_encrypt$1305:
	orl 	%r13d, %ebx
Lzkboo_encrypt$1306:
	movl	%ebx, 1336(%rsp)
	movl	1364(%rsp), %ebp
	andl	1320(%rsp), %ebp
	movl	1368(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1304
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1304:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1303
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1303:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1302
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1302:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1301
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1301:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1300
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1300:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1299
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1299:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1298
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1298:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1297
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1297:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1296
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1296:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1295
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1295:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1294
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1294:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1293
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1293:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1292
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1292:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1291
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1291:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1290
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1290:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1289
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1289:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1288
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1288:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1287
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1287:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1286
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1286:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1285
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1285:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1284
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1284:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1283
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1283:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1282
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1282:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1281
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1281:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1280
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1280:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1279
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1279:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1278
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1278:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1277
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1277:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1276
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1276:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1275
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1275:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1274
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1274:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1273
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1273:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1272
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1272:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1271
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1271:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1270
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1270:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1269
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1269:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1268
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1268:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1267
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1267:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1266
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1266:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1265
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1265:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1264
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1264:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1263
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1263:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1262
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1262:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1261
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1261:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1260
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1260:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1259
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1259:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1258
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1258:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1257
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1257:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1256
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1256:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1255
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1255:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1254
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1254:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1253
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1253:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1252
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1252:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1251
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1251:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1250
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1250:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1249
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1249:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1248
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1248:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1247
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1247:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1246
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1246:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1245
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1245:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1244
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1244:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1243
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1243:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1242
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1242:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1241
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1241:
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1240
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1240:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1239
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1239:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1238
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1238:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1237
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1237:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1236
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1236:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1235
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1235:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1234
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1234:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1233
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1233:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1232
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1232:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1231
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1231:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1230
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1230:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1229
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1229:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1228
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1228:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1227
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1227:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1226
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1226:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1225
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1225:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1224
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1224:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1223
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1223:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1222
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1222:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1221
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1221:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1220
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1220:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1219
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1219:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1218
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1218:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1217
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1217:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1216
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1216:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1215
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1215:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1214
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1214:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1213
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1213:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1212
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1212:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1211
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1211:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1210
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1210:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1209
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1209:
	xorl	%ebx, %ebp
	movl	1340(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$1207
Lzkboo_encrypt$1208:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$1207:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$1208
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1205
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$1206
Lzkboo_encrypt$1205:
	orl 	%r13d, %ebx
Lzkboo_encrypt$1206:
	movl	%ebx, 1340(%rsp)
	movl	1368(%rsp), %ebp
	andl	1312(%rsp), %ebp
	movl	1360(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1204
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1204:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1203
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1203:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1202
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1202:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1201
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1201:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1200
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1200:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1199
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1199:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1198
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1198:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1197
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1197:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1196
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1196:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1195
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1195:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1194
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1194:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1193
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1193:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1192
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1192:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1191
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1191:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1190
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1190:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1189
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1189:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1188
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1188:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1187
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1187:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1186
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1186:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1185
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1185:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1184
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1184:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1183
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1183:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1182
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1182:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1181
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1181:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1180
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1180:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1179
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1179:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1178
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1178:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1177
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1177:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1176
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1176:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1175
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1175:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1174
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1174:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1173
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1173:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1172
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1172:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1171
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1171:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1170
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1170:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1169
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1169:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1168
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1168:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1167
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1167:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1166
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1166:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1165
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1165:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1164
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1164:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1163
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1163:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1162
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1162:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1161
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1161:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1160
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1160:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1159
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1159:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1158
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1158:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1157
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1157:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1156
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1156:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1155
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1155:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1154
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1154:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1153
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1153:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1152
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1152:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1151
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1151:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1150
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1150:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1149
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1149:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1148
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1148:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1147
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1147:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1146
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1146:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1145
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1145:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1144
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1144:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1143
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1143:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1142
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1142:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1141
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1141:
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1140
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1140:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1139
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1139:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1138
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1138:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1137
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1137:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1136
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1136:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1135
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1135:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1134
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1134:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1133
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1133:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1132
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1132:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1131
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1131:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1130
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1130:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1129
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1129:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1128
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1128:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1127
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1127:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1126
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1126:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1125
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1125:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1124
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1124:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1123
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1123:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1122
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1122:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1121
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1121:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1120
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1120:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1119
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1119:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1118
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1118:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1117
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1117:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1116
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1116:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1115
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1115:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1114
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1114:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1113
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1113:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1112
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1112:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1111
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1111:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1110
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1110:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1109
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1109:
	xorl	%ebx, %ebp
	movl	1344(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$1107
Lzkboo_encrypt$1108:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$1107:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$1108
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$1105
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$1106
Lzkboo_encrypt$1105:
	orl 	%r12d, %ebx
Lzkboo_encrypt$1106:
	movl	%ebx, 1344(%rsp)
	incq	%r10
Lzkboo_encrypt$1103:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$1104
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1101
Lzkboo_encrypt$1102:
	movl	1276(%rsp,%r10,4), %r11d
	movl	1288(%rsp,%r10,4), %ebp
	movl	1336(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1336(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$1101:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1102
	addq	$4, %rax
	movl	1204(%rsp), %r10d
	movl	%r10d, 1480(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1484(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1488(%rsp)
	movl	1384(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1336(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1340(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1344(%rsp)
	movl	1252(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1256(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1260(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$0, 1276(%rsp)
	movl	$0, 1280(%rsp)
	movl	$0, 1284(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$1099
Lzkboo_encrypt$1100:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1360(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$1099:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$1100
	addq	$4, %rcx
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$731
Lzkboo_encrypt$732:
	movq	%r10, %r11
	incq	%r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$1033
Lzkboo_encrypt$1034:
	movl	1204(%rsp,%rbp,4), %ebx
	xorl	1276(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1098
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1098:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1097
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1097:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1096
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1096:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1095
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1095:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1094
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1094:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1093
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1093:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1092
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1092:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1091
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1091:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1090
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1090:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1089
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1089:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1088
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1088:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1087
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1087:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1086
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1086:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1085
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1085:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1084
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1084:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1083
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1083:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1082
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1082:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1081
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1081:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1080
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1080:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1079
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1079:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1078
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1078:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1077
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1077:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1076
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1076:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1075
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1075:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1074
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1074:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1073
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1073:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1072
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1072:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1071
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1071:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1070
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1070:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1069
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1069:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1068
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1068:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1067
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1067:
	movl	%ebx, 1300(%rsp,%rbp,4)
	movl	1252(%rsp,%rbp,4), %ebx
	xorl	1276(%rsp,%rbp,4), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1066
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1066:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1065
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1065:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1064
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1064:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1063
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1063:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1062
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1062:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1061
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1061:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1060
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1060:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1059
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1059:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1058
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1058:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1057
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1057:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1056
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1056:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1055
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1055:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1054
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1054:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1053
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1053:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1052
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1052:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1051
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1051:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1050
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1050:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1049
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1049:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1048
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1048:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1047
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1047:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1046
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1046:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1045
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1045:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1044
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1044:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1043
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1043:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1042
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1042:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1041
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1041:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1040
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1040:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1039
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1039:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1038
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1038:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1037
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1037:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1036
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1036:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1035
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1035:
	movl	%ebx, 1312(%rsp,%rbp,4)
	incq	%rbp
Lzkboo_encrypt$1033:
	cmpq	$3, %rbp
	jb  	Lzkboo_encrypt$1034
	movl	1300(%rsp), %ebp
	andl	1316(%rsp), %ebp
	movl	1304(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1300(%rsp), %ebx
	movl	1312(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1032
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1032:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$1031
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1031:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$1030
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1030:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$1029
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1029:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$1028
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1028:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$1027
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1027:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$1026
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1026:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$1025
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1025:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$1024
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1024:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$1023
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1023:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$1022
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1022:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$1021
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1021:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$1020
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1020:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$1019
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1019:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$1018
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1018:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$1017
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1017:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$1016
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1016:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$1015
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1015:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$1014
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1014:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$1013
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1013:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$1012
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1012:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$1011
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1011:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$1010
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1010:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$1009
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1009:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$1008
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1008:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$1007
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1007:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$1006
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1006:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$1005
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1005:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$1004
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1004:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$1003
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1003:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$1002
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1002:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$1001
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1001:
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$1000
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$1000:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$999
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$999:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$998
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$998:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$997
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$997:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$996
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$996:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$995
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$995:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$994
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$994:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$993
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$993:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$992
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$992:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$991
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$991:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$990
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$990:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$989
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$989:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$988
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$988:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$987
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$987:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$986
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$986:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$985
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$985:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$984
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$984:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$983
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$983:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$982
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$982:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$981
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$981:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$980
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$980:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$979
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$979:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$978
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$978:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$977
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$977:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$976
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$976:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$975
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$975:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$974
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$974:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$973
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$973:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$972
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$972:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$971
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$971:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$970
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$970:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$969
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$969:
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$968
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$968:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$967
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$967:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$966
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$966:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$965
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$965:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$964
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$964:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$963
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$963:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$962
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$962:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$961
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$961:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$960
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$960:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$959
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$959:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$958
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$958:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$957
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$957:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$956
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$956:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$955
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$955:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$954
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$954:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$953
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$953:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$952
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$952:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$951
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$951:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$950
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$950:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$949
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$949:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$948
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$948:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$947
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$947:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$946
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$946:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$945
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$945:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$944
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$944:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$943
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$943:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$942
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$942:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$941
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$941:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$940
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$940:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$939
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$939:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$938
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$938:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$937
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$937:
	xorl	%ebx, %ebp
	movl	1276(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$935
Lzkboo_encrypt$936:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$935:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$936
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$933
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$934
Lzkboo_encrypt$933:
	orl 	%r13d, %ebx
Lzkboo_encrypt$934:
	movl	%ebx, 1276(%rsp)
	movl	1304(%rsp), %ebp
	andl	1320(%rsp), %ebp
	movl	1308(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1304(%rsp), %ebx
	movl	1316(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$932
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$932:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$931
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$931:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$930
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$930:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$929
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$929:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$928
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$928:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$927
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$927:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$926
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$926:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$925
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$925:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$924
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$924:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$923
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$923:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$922
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$922:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$921
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$921:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$920
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$920:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$919
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$919:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$918
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$918:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$917
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$917:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$916
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$916:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$915
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$915:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$914
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$914:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$913
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$913:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$912
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$912:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$911
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$911:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$910
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$910:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$909
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$909:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$908
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$908:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$907
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$907:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$906
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$906:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$905
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$905:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$904
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$904:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$903
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$903:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$902
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$902:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$901
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$901:
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$900
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$900:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$899
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$899:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$898
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$898:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$897
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$897:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$896
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$896:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$895
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$895:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$894
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$894:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$893
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$893:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$892
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$892:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$891
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$891:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$890
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$890:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$889
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$889:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$888
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$888:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$887
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$887:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$886
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$886:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$885
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$885:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$884
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$884:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$883
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$883:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$882
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$882:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$881
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$881:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$880
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$880:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$879
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$879:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$878
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$878:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$877
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$877:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$876
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$876:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$875
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$875:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$874
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$874:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$873
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$873:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$872
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$872:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$871
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$871:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$870
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$870:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$869
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$869:
	xorl	%ebx, %ebp
	movl	1364(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$868
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$868:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$867
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$867:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$866
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$866:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$865
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$865:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$864
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$864:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$863
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$863:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$862
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$862:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$861
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$861:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$860
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$860:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$859
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$859:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$858
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$858:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$857
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$857:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$856
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$856:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$855
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$855:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$854
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$854:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$853
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$853:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$852
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$852:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$851
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$851:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$850
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$850:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$849
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$849:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$848
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$848:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$847
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$847:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$846
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$846:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$845
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$845:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$844
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$844:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$843
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$843:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$842
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$842:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$841
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$841:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$840
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$840:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$839
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$839:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$838
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$838:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$837
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$837:
	xorl	%ebx, %ebp
	movl	1280(%rsp), %ebx
	movq	%r11, %r12
	movl	$1, %r13d
	jmp 	Lzkboo_encrypt$835
Lzkboo_encrypt$836:
	shll	$1, %r13d
	addq	$-1, %r12
Lzkboo_encrypt$835:
	cmpq	$0, %r12
	jnbe	Lzkboo_encrypt$836
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$833
	xorl	$-1, %r13d
	andl	%r13d, %ebx
	jmp 	Lzkboo_encrypt$834
Lzkboo_encrypt$833:
	orl 	%r13d, %ebx
Lzkboo_encrypt$834:
	movl	%ebx, 1280(%rsp)
	movl	1308(%rsp), %ebp
	andl	1312(%rsp), %ebp
	movl	1300(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1308(%rsp), %ebx
	movl	1320(%rsp), %r12d
	andl	%r12d, %ebx
	xorl	%ebx, %ebp
	movl	1360(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$832
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$832:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$831
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$831:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$830
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$830:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$829
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$829:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$828
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$828:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$827
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$827:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$826
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$826:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$825
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$825:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$824
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$824:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$823
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$823:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$822
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$822:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$821
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$821:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$820
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$820:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$819
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$819:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$818
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$818:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$817
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$817:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$816
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$816:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$815
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$815:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$814
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$814:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$813
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$813:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$812
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$812:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$811
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$811:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$810
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$810:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$809
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$809:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$808
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$808:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$807
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$807:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$806
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$806:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$805
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$805:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$804
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$804:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$803
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$803:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$802
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$802:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$801
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$801:
	xorl	%ebx, %ebp
	movl	1284(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$800
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$800:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$799
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$799:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$798
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$798:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$797
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$797:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$796
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$796:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$795
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$795:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$794
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$794:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$793
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$793:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$792
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$792:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$791
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$791:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$790
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$790:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$789
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$789:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$788
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$788:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$787
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$787:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$786
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$786:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$785
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$785:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$784
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$784:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$783
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$783:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$782
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$782:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$781
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$781:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$780
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$780:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$779
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$779:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$778
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$778:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$777
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$777:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$776
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$776:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$775
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$775:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$774
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$774:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$773
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$773:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$772
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$772:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$771
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$771:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$770
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$770:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$769
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$769:
	xorl	%ebx, %ebp
	movl	1368(%rsp), %ebx
	cmpq	$0, %r10
	jne 	Lzkboo_encrypt$768
	shrl	$0, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$768:
	cmpq	$1, %r10
	jne 	Lzkboo_encrypt$767
	shrl	$1, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$767:
	cmpq	$2, %r10
	jne 	Lzkboo_encrypt$766
	shrl	$2, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$766:
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$765
	shrl	$3, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$765:
	cmpq	$4, %r10
	jne 	Lzkboo_encrypt$764
	shrl	$4, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$764:
	cmpq	$5, %r10
	jne 	Lzkboo_encrypt$763
	shrl	$5, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$763:
	cmpq	$6, %r10
	jne 	Lzkboo_encrypt$762
	shrl	$6, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$762:
	cmpq	$7, %r10
	jne 	Lzkboo_encrypt$761
	shrl	$7, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$761:
	cmpq	$8, %r10
	jne 	Lzkboo_encrypt$760
	shrl	$8, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$760:
	cmpq	$9, %r10
	jne 	Lzkboo_encrypt$759
	shrl	$9, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$759:
	cmpq	$10, %r10
	jne 	Lzkboo_encrypt$758
	shrl	$10, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$758:
	cmpq	$11, %r10
	jne 	Lzkboo_encrypt$757
	shrl	$11, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$757:
	cmpq	$12, %r10
	jne 	Lzkboo_encrypt$756
	shrl	$12, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$756:
	cmpq	$13, %r10
	jne 	Lzkboo_encrypt$755
	shrl	$13, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$755:
	cmpq	$14, %r10
	jne 	Lzkboo_encrypt$754
	shrl	$14, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$754:
	cmpq	$15, %r10
	jne 	Lzkboo_encrypt$753
	shrl	$15, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$753:
	cmpq	$16, %r10
	jne 	Lzkboo_encrypt$752
	shrl	$16, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$752:
	cmpq	$17, %r10
	jne 	Lzkboo_encrypt$751
	shrl	$17, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$751:
	cmpq	$18, %r10
	jne 	Lzkboo_encrypt$750
	shrl	$18, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$750:
	cmpq	$19, %r10
	jne 	Lzkboo_encrypt$749
	shrl	$19, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$749:
	cmpq	$20, %r10
	jne 	Lzkboo_encrypt$748
	shrl	$20, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$748:
	cmpq	$21, %r10
	jne 	Lzkboo_encrypt$747
	shrl	$21, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$747:
	cmpq	$22, %r10
	jne 	Lzkboo_encrypt$746
	shrl	$22, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$746:
	cmpq	$23, %r10
	jne 	Lzkboo_encrypt$745
	shrl	$23, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$745:
	cmpq	$24, %r10
	jne 	Lzkboo_encrypt$744
	shrl	$24, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$744:
	cmpq	$25, %r10
	jne 	Lzkboo_encrypt$743
	shrl	$25, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$743:
	cmpq	$26, %r10
	jne 	Lzkboo_encrypt$742
	shrl	$26, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$742:
	cmpq	$27, %r10
	jne 	Lzkboo_encrypt$741
	shrl	$27, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$741:
	cmpq	$28, %r10
	jne 	Lzkboo_encrypt$740
	shrl	$28, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$740:
	cmpq	$29, %r10
	jne 	Lzkboo_encrypt$739
	shrl	$29, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$739:
	cmpq	$30, %r10
	jne 	Lzkboo_encrypt$738
	shrl	$30, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$738:
	cmpq	$31, %r10
	jne 	Lzkboo_encrypt$737
	shrl	$31, %ebx
	andl	$1, %ebx
Lzkboo_encrypt$737:
	xorl	%ebx, %ebp
	movl	1284(%rsp), %ebx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$735
Lzkboo_encrypt$736:
	shll	$1, %r12d
	addq	$-1, %r11
Lzkboo_encrypt$735:
	cmpq	$0, %r11
	jnbe	Lzkboo_encrypt$736
	andl	$1, %ebp
	cmpl	$1, %ebp
	je  	Lzkboo_encrypt$733
	xorl	$-1, %r12d
	andl	%r12d, %ebx
	jmp 	Lzkboo_encrypt$734
Lzkboo_encrypt$733:
	orl 	%r12d, %ebx
Lzkboo_encrypt$734:
	movl	%ebx, 1284(%rsp)
	incq	%r10
Lzkboo_encrypt$731:
	cmpq	$31, %r10
	jb  	Lzkboo_encrypt$732
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$729
Lzkboo_encrypt$730:
	movl	1336(%rsp,%r10,4), %r11d
	movl	1288(%rsp,%r10,4), %ebp
	movl	1276(%rsp,%r10,4), %ebx
	xorl	%ebp, %r11d
	xorl	%ebx, %r11d
	movl	%r11d, 1204(%rsp,%r10,4)
	imulq	$64, (%rsp), %r11
	imulq	$3, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %r15, %rbp
	addq	%rbp, %r11
	addq	%rax, %r11
	movl	1276(%rsp,%r10,4), %ebp
	movl	%ebp, (%r8,%r11)
	incq	%r10
Lzkboo_encrypt$729:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$730
	addq	$4, %rax
	movl	1204(%rsp), %r10d
	movl	%r10d, 1492(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1496(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1500(%rsp)
	movl	1388(%rsp), %r10d
	movl	%r10d, 1204(%rsp)
	movl	%r10d, 1208(%rsp)
	movl	%r10d, 1212(%rsp)
	movl	1204(%rsp), %r10d
	movl	%r10d, 1276(%rsp)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1280(%rsp)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1284(%rsp)
	movl	1264(%rsp), %r10d
	movl	%r10d, 1288(%rsp)
	movl	1268(%rsp), %r10d
	movl	%r10d, 1292(%rsp)
	movl	1272(%rsp), %r10d
	movl	%r10d, 1296(%rsp)
	movl	$0, 1336(%rsp)
	movl	$0, 1340(%rsp)
	movl	$0, 1344(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$727
Lzkboo_encrypt$728:
	imulq	$1472, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$1472, %r15, %rbp
	addq	%r11, %rbp
	addq	%rcx, %rbp
	movl	(%rsi,%rbp), %r11d
	movl	%r11d, 1300(%rsp,%r10,4)
	incq	%r10
Lzkboo_encrypt$727:
	cmpq	$3, %r10
	jb  	Lzkboo_encrypt$728
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$359
Lzkboo_encrypt$360:
	movq	%rcx, %r10
	incq	%r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$661
Lzkboo_encrypt$662:
	movl	1204(%rsp,%r11,4), %ebp
	xorl	1336(%rsp,%r11,4), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$726
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$726:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$725
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$725:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$724
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$724:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$723
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$723:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$722
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$722:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$721
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$721:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$720
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$720:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$719
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$719:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$718
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$718:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$717
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$717:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$716
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$716:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$715
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$715:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$714
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$714:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$713
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$713:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$712
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$712:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$711
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$711:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$710
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$710:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$709
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$709:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$708
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$708:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$707
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$707:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$706
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$706:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$705
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$705:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$704
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$704:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$703
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$703:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$702
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$702:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$701
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$701:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$700
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$700:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$699
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$699:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$698
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$698:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$697
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$697:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$696
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$696:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$695
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$695:
	movl	%ebp, 1360(%rsp,%r11,4)
	movl	1264(%rsp,%r11,4), %ebp
	xorl	1336(%rsp,%r11,4), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$694
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$694:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$693
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$693:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$692
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$692:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$691
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$691:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$690
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$690:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$689
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$689:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$688
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$688:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$687
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$687:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$686
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$686:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$685
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$685:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$684
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$684:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$683
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$683:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$682
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$682:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$681
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$681:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$680
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$680:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$679
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$679:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$678
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$678:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$677
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$677:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$676
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$676:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$675
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$675:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$674
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$674:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$673
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$673:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$672
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$672:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$671
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$671:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$670
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$670:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$669
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$669:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$668
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$668:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$667
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$667:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$666
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$666:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$665
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$665:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$664
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$664:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$663
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$663:
	movl	%ebp, 1312(%rsp,%r11,4)
	incq	%r11
Lzkboo_encrypt$661:
	cmpq	$3, %r11
	jb  	Lzkboo_encrypt$662
	movl	1360(%rsp), %r11d
	andl	1316(%rsp), %r11d
	movl	1364(%rsp), %ebp
	movl	1312(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1360(%rsp), %ebp
	movl	1312(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1304(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$660
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$660:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$659
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$659:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$658
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$658:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$657
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$657:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$656
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$656:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$655
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$655:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$654
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$654:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$653
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$653:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$652
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$652:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$651
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$651:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$650
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$650:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$649
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$649:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$648
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$648:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$647
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$647:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$646
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$646:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$645
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$645:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$644
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$644:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$643
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$643:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$642
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$642:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$641
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$641:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$640
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$640:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$639
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$639:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$638
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$638:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$637
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$637:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$636
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$636:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$635
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$635:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$634
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$634:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$633
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$633:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$632
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$632:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$631
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$631:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$630
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$630:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$629
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$629:
	xorl	%ebp, %r11d
	movl	1336(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$628
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$628:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$627
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$627:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$626
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$626:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$625
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$625:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$624
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$624:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$623
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$623:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$622
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$622:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$621
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$621:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$620
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$620:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$619
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$619:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$618
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$618:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$617
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$617:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$616
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$616:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$615
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$615:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$614
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$614:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$613
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$613:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$612
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$612:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$611
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$611:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$610
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$610:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$609
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$609:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$608
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$608:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$607
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$607:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$606
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$606:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$605
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$605:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$604
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$604:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$603
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$603:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$602
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$602:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$601
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$601:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$600
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$600:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$599
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$599:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$598
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$598:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$597
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$597:
	xorl	%ebp, %r11d
	movl	1300(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$596
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$596:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$595
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$595:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$594
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$594:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$593
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$593:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$592
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$592:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$591
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$591:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$590
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$590:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$589
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$589:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$588
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$588:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$587
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$587:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$586
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$586:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$585
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$585:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$584
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$584:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$583
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$583:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$582
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$582:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$581
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$581:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$580
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$580:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$579
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$579:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$578
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$578:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$577
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$577:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$576
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$576:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$575
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$575:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$574
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$574:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$573
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$573:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$572
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$572:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$571
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$571:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$570
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$570:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$569
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$569:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$568
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$568:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$567
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$567:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$566
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$566:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$565
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$565:
	xorl	%ebp, %r11d
	movl	1336(%rsp), %ebp
	movq	%r10, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$563
Lzkboo_encrypt$564:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$563:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$564
	andl	$1, %r11d
	cmpl	$1, %r11d
	je  	Lzkboo_encrypt$561
	xorl	$-1, %r12d
	andl	%r12d, %ebp
	jmp 	Lzkboo_encrypt$562
Lzkboo_encrypt$561:
	orl 	%r12d, %ebp
Lzkboo_encrypt$562:
	movl	%ebp, 1336(%rsp)
	movl	1364(%rsp), %r11d
	andl	1320(%rsp), %r11d
	movl	1368(%rsp), %ebp
	movl	1316(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1364(%rsp), %ebp
	movl	1316(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1308(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$560
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$560:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$559
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$559:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$558
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$558:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$557
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$557:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$556
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$556:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$555
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$555:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$554
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$554:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$553
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$553:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$552
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$552:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$551
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$551:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$550
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$550:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$549
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$549:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$548
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$548:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$547
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$547:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$546
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$546:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$545
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$545:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$544
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$544:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$543
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$543:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$542
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$542:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$541
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$541:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$540
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$540:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$539
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$539:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$538
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$538:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$537
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$537:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$536
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$536:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$535
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$535:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$534
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$534:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$533
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$533:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$532
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$532:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$531
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$531:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$530
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$530:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$529
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$529:
	xorl	%ebp, %r11d
	movl	1340(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$528
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$528:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$527
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$527:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$526
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$526:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$525
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$525:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$524
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$524:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$523
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$523:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$522
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$522:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$521
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$521:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$520
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$520:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$519
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$519:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$518
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$518:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$517
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$517:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$516
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$516:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$515
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$515:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$514
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$514:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$513
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$513:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$512
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$512:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$511
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$511:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$510
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$510:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$509
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$509:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$508
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$508:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$507
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$507:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$506
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$506:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$505
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$505:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$504
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$504:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$503
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$503:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$502
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$502:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$501
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$501:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$500
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$500:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$499
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$499:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$498
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$498:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$497
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$497:
	xorl	%ebp, %r11d
	movl	1304(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$496
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$496:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$495
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$495:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$494
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$494:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$493
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$493:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$492
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$492:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$491
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$491:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$490
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$490:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$489
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$489:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$488
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$488:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$487
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$487:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$486
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$486:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$485
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$485:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$484
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$484:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$483
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$483:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$482
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$482:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$481
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$481:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$480
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$480:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$479
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$479:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$478
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$478:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$477
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$477:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$476
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$476:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$475
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$475:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$474
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$474:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$473
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$473:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$472
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$472:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$471
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$471:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$470
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$470:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$469
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$469:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$468
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$468:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$467
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$467:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$466
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$466:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$465
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$465:
	xorl	%ebp, %r11d
	movl	1340(%rsp), %ebp
	movq	%r10, %rbx
	movl	$1, %r12d
	jmp 	Lzkboo_encrypt$463
Lzkboo_encrypt$464:
	shll	$1, %r12d
	addq	$-1, %rbx
Lzkboo_encrypt$463:
	cmpq	$0, %rbx
	jnbe	Lzkboo_encrypt$464
	andl	$1, %r11d
	cmpl	$1, %r11d
	je  	Lzkboo_encrypt$461
	xorl	$-1, %r12d
	andl	%r12d, %ebp
	jmp 	Lzkboo_encrypt$462
Lzkboo_encrypt$461:
	orl 	%r12d, %ebp
Lzkboo_encrypt$462:
	movl	%ebp, 1340(%rsp)
	movl	1368(%rsp), %r11d
	andl	1312(%rsp), %r11d
	movl	1360(%rsp), %ebp
	movl	1320(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1368(%rsp), %ebp
	movl	1320(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %r11d
	movl	1300(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$460
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$460:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$459
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$459:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$458
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$458:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$457
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$457:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$456
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$456:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$455
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$455:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$454
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$454:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$453
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$453:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$452
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$452:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$451
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$451:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$450
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$450:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$449
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$449:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$448
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$448:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$447
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$447:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$446
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$446:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$445
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$445:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$444
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$444:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$443
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$443:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$442
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$442:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$441
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$441:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$440
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$440:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$439
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$439:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$438
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$438:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$437
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$437:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$436
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$436:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$435
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$435:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$434
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$434:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$433
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$433:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$432
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$432:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$431
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$431:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$430
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$430:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$429
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$429:
	xorl	%ebp, %r11d
	movl	1344(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$428
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$428:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$427
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$427:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$426
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$426:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$425
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$425:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$424
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$424:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$423
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$423:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$422
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$422:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$421
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$421:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$420
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$420:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$419
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$419:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$418
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$418:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$417
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$417:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$416
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$416:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$415
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$415:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$414
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$414:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$413
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$413:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$412
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$412:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$411
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$411:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$410
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$410:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$409
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$409:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$408
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$408:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$407
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$407:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$406
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$406:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$405
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$405:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$404
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$404:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$403
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$403:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$402
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$402:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$401
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$401:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$400
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$400:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$399
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$399:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$398
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$398:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$397
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$397:
	xorl	%ebp, %r11d
	movl	1308(%rsp), %ebp
	cmpq	$0, %rcx
	jne 	Lzkboo_encrypt$396
	shrl	$0, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$396:
	cmpq	$1, %rcx
	jne 	Lzkboo_encrypt$395
	shrl	$1, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$395:
	cmpq	$2, %rcx
	jne 	Lzkboo_encrypt$394
	shrl	$2, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$394:
	cmpq	$3, %rcx
	jne 	Lzkboo_encrypt$393
	shrl	$3, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$393:
	cmpq	$4, %rcx
	jne 	Lzkboo_encrypt$392
	shrl	$4, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$392:
	cmpq	$5, %rcx
	jne 	Lzkboo_encrypt$391
	shrl	$5, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$391:
	cmpq	$6, %rcx
	jne 	Lzkboo_encrypt$390
	shrl	$6, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$390:
	cmpq	$7, %rcx
	jne 	Lzkboo_encrypt$389
	shrl	$7, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$389:
	cmpq	$8, %rcx
	jne 	Lzkboo_encrypt$388
	shrl	$8, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$388:
	cmpq	$9, %rcx
	jne 	Lzkboo_encrypt$387
	shrl	$9, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$387:
	cmpq	$10, %rcx
	jne 	Lzkboo_encrypt$386
	shrl	$10, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$386:
	cmpq	$11, %rcx
	jne 	Lzkboo_encrypt$385
	shrl	$11, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$385:
	cmpq	$12, %rcx
	jne 	Lzkboo_encrypt$384
	shrl	$12, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$384:
	cmpq	$13, %rcx
	jne 	Lzkboo_encrypt$383
	shrl	$13, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$383:
	cmpq	$14, %rcx
	jne 	Lzkboo_encrypt$382
	shrl	$14, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$382:
	cmpq	$15, %rcx
	jne 	Lzkboo_encrypt$381
	shrl	$15, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$381:
	cmpq	$16, %rcx
	jne 	Lzkboo_encrypt$380
	shrl	$16, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$380:
	cmpq	$17, %rcx
	jne 	Lzkboo_encrypt$379
	shrl	$17, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$379:
	cmpq	$18, %rcx
	jne 	Lzkboo_encrypt$378
	shrl	$18, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$378:
	cmpq	$19, %rcx
	jne 	Lzkboo_encrypt$377
	shrl	$19, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$377:
	cmpq	$20, %rcx
	jne 	Lzkboo_encrypt$376
	shrl	$20, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$376:
	cmpq	$21, %rcx
	jne 	Lzkboo_encrypt$375
	shrl	$21, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$375:
	cmpq	$22, %rcx
	jne 	Lzkboo_encrypt$374
	shrl	$22, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$374:
	cmpq	$23, %rcx
	jne 	Lzkboo_encrypt$373
	shrl	$23, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$373:
	cmpq	$24, %rcx
	jne 	Lzkboo_encrypt$372
	shrl	$24, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$372:
	cmpq	$25, %rcx
	jne 	Lzkboo_encrypt$371
	shrl	$25, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$371:
	cmpq	$26, %rcx
	jne 	Lzkboo_encrypt$370
	shrl	$26, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$370:
	cmpq	$27, %rcx
	jne 	Lzkboo_encrypt$369
	shrl	$27, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$369:
	cmpq	$28, %rcx
	jne 	Lzkboo_encrypt$368
	shrl	$28, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$368:
	cmpq	$29, %rcx
	jne 	Lzkboo_encrypt$367
	shrl	$29, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$367:
	cmpq	$30, %rcx
	jne 	Lzkboo_encrypt$366
	shrl	$30, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$366:
	cmpq	$31, %rcx
	jne 	Lzkboo_encrypt$365
	shrl	$31, %ebp
	andl	$1, %ebp
Lzkboo_encrypt$365:
	xorl	%ebp, %r11d
	movl	1344(%rsp), %ebp
	movl	$1, %ebx
	jmp 	Lzkboo_encrypt$363
Lzkboo_encrypt$364:
	shll	$1, %ebx
	addq	$-1, %r10
Lzkboo_encrypt$363:
	cmpq	$0, %r10
	jnbe	Lzkboo_encrypt$364
	andl	$1, %r11d
	cmpl	$1, %r11d
	je  	Lzkboo_encrypt$361
	xorl	$-1, %ebx
	andl	%ebx, %ebp
	jmp 	Lzkboo_encrypt$362
Lzkboo_encrypt$361:
	orl 	%ebx, %ebp
Lzkboo_encrypt$362:
	movl	%ebp, 1344(%rsp)
	incq	%rcx
Lzkboo_encrypt$359:
	cmpq	$31, %rcx
	jb  	Lzkboo_encrypt$360
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$357
Lzkboo_encrypt$358:
	movl	1276(%rsp,%rcx,4), %r10d
	movl	1288(%rsp,%rcx,4), %r11d
	movl	1336(%rsp,%rcx,4), %ebp
	xorl	%r11d, %r10d
	xorl	%ebp, %r10d
	movl	%r10d, 1204(%rsp,%rcx,4)
	imulq	$64, (%rsp), %r10
	imulq	$3, %r10, %r10
	imulq	$1480, (%rsp), %r11
	imulq	%rcx, %r11
	addq	%r11, %r10
	imulq	$1480, %r15, %r11
	addq	%r11, %r10
	addq	%rax, %r10
	movl	1336(%rsp,%rcx,4), %r11d
	movl	%r11d, (%r8,%r10)
	incq	%rcx
Lzkboo_encrypt$357:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$358
	addq	$4, %rax
	movl	1204(%rsp), %ecx
	movl	%ecx, 1504(%rsp)
	movl	1208(%rsp), %ecx
	movl	%ecx, 1508(%rsp)
	movl	1212(%rsp), %ecx
	movl	%ecx, 1512(%rsp)
	movq	$0, 24(%rsp)
	jmp 	Lzkboo_encrypt$355
Lzkboo_encrypt$356:
	movq	24(%rsp), %rcx
	imulq	$3, %rcx, %rcx
	movl	1456(%rsp,%rcx,4), %r10d
	incq	%rcx
	movl	%r10d, 1204(%rsp)
	movl	1456(%rsp,%rcx,4), %r10d
	movl	%r10d, 1208(%rsp)
	incq	%rcx
	movl	1456(%rsp,%rcx,4), %ecx
	movl	%ecx, 1212(%rsp)
	movq	24(%rsp), %rcx
	movl	1204(%rsp), %r10d
	movl	%r10d, 1580(%rsp,%rcx,4)
	movl	1208(%rsp), %r10d
	movl	%r10d, 1612(%rsp,%rcx,4)
	movl	1212(%rsp), %r10d
	movl	%r10d, 1644(%rsp,%rcx,4)
	incq	24(%rsp)
Lzkboo_encrypt$355:
	cmpq	$5, 24(%rsp)
	jb  	Lzkboo_encrypt$356
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$351
Lzkboo_encrypt$352:
	movq	$64, %r10
	imulq	(%rsp), %r10
	imulq	$3, %r10, %r10
	imulq	$1480, (%rsp), %r11
	imulq	%rcx, %r11
	addq	%r11, %r10
	imulq	$1480, %r15, %r11
	addq	%r11, %r10
	addq	%rax, %r10
	imulq	$8, %rcx, %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$353
Lzkboo_encrypt$354:
	movl	1580(%rsp,%r11,4), %ebx
	movl	%ebx, (%r8,%r10)
	addq	$4, %r10
	incq	%r11
	incq	%rbp
Lzkboo_encrypt$353:
	cmpq	$5, %rbp
	jb  	Lzkboo_encrypt$354
	incq	%rcx
Lzkboo_encrypt$351:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$352
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$347
Lzkboo_encrypt$348:
	imulq	$32, %rax, %rcx
	imulq	(%rsp), %rcx
	imulq	$32, %r15, %r10
	addq	%r10, %rcx
	movq	$64, %r10
	imulq	(%rsp), %r10
	imulq	$3, %r10, %r10
	imulq	$1480, (%rsp), %r11
	imulq	%rax, %r11
	addq	%r11, %r10
	imulq	$1480, %r15, %r11
	addq	%r11, %r10
	addq	$1460, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$349
Lzkboo_encrypt$350:
	movl	(%r8,%r10), %ebp
	movl	%ebp, (%r9,%rcx)
	addq	$4, %rcx
	addq	$4, %r10
	incq	%r11
Lzkboo_encrypt$349:
	cmpq	$5, %r11
	jb  	Lzkboo_encrypt$350
	incq	%rax
Lzkboo_encrypt$347:
	cmpq	$3, %rax
	jb  	Lzkboo_encrypt$348
	movq	$0, %r13
	jmp 	Lzkboo_encrypt$207
Lzkboo_encrypt$208:
	movq	$0, %r14
	jmp 	Lzkboo_encrypt$209
Lzkboo_encrypt$210:
	movq	$0, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$1779033703, 1392(%rsp)
	movl	$-1150833019, 1396(%rsp)
	movl	$1013904242, 1400(%rsp)
	movl	$-1521486534, 1404(%rsp)
	movl	$1359893119, 1408(%rsp)
	movl	$-1694144372, 1412(%rsp)
	movl	$528734635, 1416(%rsp)
	movl	$1541459225, 1420(%rsp)
	imulq	$16, %r14, %rax
	imulq	(%rsp), %rax
	imulq	$16, %r13, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$345
Lzkboo_encrypt$346:
	movb	(%rdx,%rax), %r10b
	movb	%r10b, 3148(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$345:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$346
	movq	%r14, %rax
	imulq	$64, %rax, %rax
	imulq	(%rsp), %rax
	movq	%r13, %rcx
	imulq	$64, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$343
Lzkboo_encrypt$344:
	movb	(%r8,%rax), %r10b
	movb	%r10b, 3196(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$343:
	cmpq	$64, %rcx
	jb  	Lzkboo_encrypt$344
	movq	%r14, %rax
	imulq	$1480, %rax, %rax
	imulq	(%rsp), %rax
	imulq	$64, (%rsp), %rcx
	imulq	$3, %rcx, %rcx
	addq	%rcx, %rax
	movq	%r13, %rcx
	imulq	$1480, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$341
Lzkboo_encrypt$342:
	movb	(%r8,%rax), %r10b
	movb	%r10b, 3452(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$341:
	cmpq	$1480, %rcx
	jb  	Lzkboo_encrypt$342
	movq	%r14, %rax
	imulq	$4, %rax, %rax
	imulq	(%rsp), %rax
	movq	%r13, %rcx
	imulq	$4, %rcx, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$339
Lzkboo_encrypt$340:
	movb	(%rdi,%rax), %r10b
	movb	%r10b, 1156(%rsp,%rcx)
	incq	%rax
	incq	%rcx
Lzkboo_encrypt$339:
	cmpq	$4, %rcx
	jb  	Lzkboo_encrypt$340
	movq	%r13, 40(%rsp)
	movq	%r14, 48(%rsp)
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$318
Lzkboo_encrypt$319:
	movb	3148(%rsp,%rcx), %al
	movq	%rcx, 56(%rsp)
	movq	32(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 32(%rsp)
	cmpq	$64, 32(%rsp)
	jne 	Lzkboo_encrypt$320
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$337
Lzkboo_encrypt$338:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$337:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$338
	jmp 	Lzkboo_encrypt$331
Lzkboo_encrypt$332:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$336(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$336:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$335(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$335:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$334(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$334:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$333(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$333:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$331:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$332
	movl	1392(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$323
Lzkboo_encrypt$324:
	movl	1188(%rsp), %r11d
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_encrypt$330(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$330:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_encrypt$329(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$329:
	movl	1176(%rsp), %ebp
	leaq	Lzkboo_encrypt$328(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$328:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1176(%rsp), %eax
	andl	1180(%rsp), %eax
	movl	1176(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$327(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$327:
	movl	%ebp, 1192(%rsp)
	movl	1160(%rsp), %eax
	leaq	Lzkboo_encrypt$326(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$326:
	movl	%eax, 1196(%rsp)
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$325(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$325:
	movl	%ebp, 1200(%rsp)
	movl	1192(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1200(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1160(%rsp), %ecx
	movl	1164(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1160(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1164(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1184(%rsp), %ecx
	movl	%ecx, 1188(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1160(%rsp)
	incq	%r10
Lzkboo_encrypt$323:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$324
	movl	1392(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1420(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$321
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$322
Lzkboo_encrypt$321:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$322:
	movq	$0, 32(%rsp)
Lzkboo_encrypt$320:
	movq	56(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$318:
	cmpq	$16, %rcx
	jb  	Lzkboo_encrypt$319
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$297
Lzkboo_encrypt$298:
	movq	%rax, 56(%rsp)
	movb	3196(%rsp,%rax), %al
	movq	32(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 32(%rsp)
	cmpq	$64, 32(%rsp)
	jne 	Lzkboo_encrypt$299
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$316
Lzkboo_encrypt$317:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$316:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$317
	jmp 	Lzkboo_encrypt$310
Lzkboo_encrypt$311:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$315(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$315:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$314(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$314:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$313(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$313:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$312(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$312:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$310:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$311
	movl	1392(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$302
Lzkboo_encrypt$303:
	movl	1160(%rsp), %r11d
	movl	1172(%rsp), %r12d
	leaq	Lzkboo_encrypt$309(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$309:
	movl	1172(%rsp), %ebx
	leaq	Lzkboo_encrypt$308(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$308:
	movl	1172(%rsp), %ebp
	leaq	Lzkboo_encrypt$307(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$307:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1172(%rsp), %eax
	andl	1168(%rsp), %eax
	movl	1172(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1164(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$306(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$306:
	movl	%ebp, 1200(%rsp)
	movl	1188(%rsp), %eax
	leaq	Lzkboo_encrypt$305(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$305:
	movl	%eax, 1196(%rsp)
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$304(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$304:
	movl	%ebp, 1192(%rsp)
	movl	1200(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1188(%rsp), %ecx
	movl	1184(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1188(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1184(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1184(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1188(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1188(%rsp)
	incq	%r10
Lzkboo_encrypt$302:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$303
	movl	1392(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1420(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$300
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$301
Lzkboo_encrypt$300:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$301:
	movq	$0, 32(%rsp)
Lzkboo_encrypt$299:
	movq	56(%rsp), %rax
	incq	%rax
Lzkboo_encrypt$297:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$298
	movq	$0, %r13
	jmp 	Lzkboo_encrypt$276
Lzkboo_encrypt$277:
	movb	3452(%rsp,%r13), %al
	movq	32(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 32(%rsp)
	cmpq	$64, 32(%rsp)
	jne 	Lzkboo_encrypt$278
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$295
Lzkboo_encrypt$296:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$295:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$296
	jmp 	Lzkboo_encrypt$289
Lzkboo_encrypt$290:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$294(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$294:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$293(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$293:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$292(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$292:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$291(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$291:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$289:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$290
	movl	1392(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$281
Lzkboo_encrypt$282:
	movl	1188(%rsp), %r11d
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_encrypt$288(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$288:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_encrypt$287(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$287:
	movl	1176(%rsp), %ebp
	leaq	Lzkboo_encrypt$286(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$286:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1176(%rsp), %eax
	andl	1180(%rsp), %eax
	movl	1176(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$285(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$285:
	movl	%ebp, 1192(%rsp)
	movl	1160(%rsp), %eax
	leaq	Lzkboo_encrypt$284(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$284:
	movl	%eax, 1196(%rsp)
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$283(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$283:
	movl	%ebp, 1200(%rsp)
	movl	1192(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1200(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1160(%rsp), %ecx
	movl	1164(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1160(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1164(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1184(%rsp), %ecx
	movl	%ecx, 1188(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1160(%rsp)
	incq	%r10
Lzkboo_encrypt$281:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$282
	movl	1392(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1420(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$279
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$280
Lzkboo_encrypt$279:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$280:
	movq	$0, 32(%rsp)
Lzkboo_encrypt$278:
	incq	%r13
Lzkboo_encrypt$276:
	cmpq	$1480, %r13
	jb  	Lzkboo_encrypt$277
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$255
Lzkboo_encrypt$256:
	movb	1156(%rsp,%rcx), %al
	movq	%rcx, 56(%rsp)
	movq	32(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 32(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_encrypt$257
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$274
Lzkboo_encrypt$275:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$274:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$275
	jmp 	Lzkboo_encrypt$268
Lzkboo_encrypt$269:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$273(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$273:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$272(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$272:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$271(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$271:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$270(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$270:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$268:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$269
	movl	1392(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$260
Lzkboo_encrypt$261:
	movl	1160(%rsp), %r11d
	movl	1172(%rsp), %r12d
	leaq	Lzkboo_encrypt$267(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$267:
	movl	1172(%rsp), %ebx
	leaq	Lzkboo_encrypt$266(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$266:
	movl	1172(%rsp), %ebp
	leaq	Lzkboo_encrypt$265(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$265:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1172(%rsp), %eax
	andl	1168(%rsp), %eax
	movl	1172(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1164(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$264(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$264:
	movl	%ebp, 1200(%rsp)
	movl	1188(%rsp), %eax
	leaq	Lzkboo_encrypt$263(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$263:
	movl	%eax, 1196(%rsp)
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$262(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$262:
	movl	%ebp, 1192(%rsp)
	movl	1200(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1188(%rsp), %ecx
	movl	1184(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1188(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1184(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1184(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1188(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1188(%rsp)
	incq	%r10
Lzkboo_encrypt$260:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$261
	movl	1392(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1420(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$258
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$259
Lzkboo_encrypt$258:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$259:
	movq	$0, 32(%rsp)
Lzkboo_encrypt$257:
	movq	56(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$255:
	cmpq	$4, %rcx
	jb  	Lzkboo_encrypt$256
	movq	40(%rsp), %r13
	movq	48(%rsp), %r14
	movq	32(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$231
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$253
Lzkboo_encrypt$254:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$253:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$254
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$251
Lzkboo_encrypt$252:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$251:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$252
	jmp 	Lzkboo_encrypt$245
Lzkboo_encrypt$246:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$250(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$250:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$249(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$249:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$248(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$248:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$247(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$247:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$245:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$246
	movl	1392(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$237
Lzkboo_encrypt$238:
	movl	1188(%rsp), %r11d
	movl	1176(%rsp), %r12d
	leaq	Lzkboo_encrypt$244(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$244:
	movl	1176(%rsp), %ebx
	leaq	Lzkboo_encrypt$243(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$243:
	movl	1176(%rsp), %ebp
	leaq	Lzkboo_encrypt$242(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$242:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1176(%rsp), %eax
	andl	1180(%rsp), %eax
	movl	1176(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$241(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$241:
	movl	%ebp, 1192(%rsp)
	movl	1160(%rsp), %eax
	leaq	Lzkboo_encrypt$240(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$240:
	movl	%eax, 1196(%rsp)
	movl	1160(%rsp), %ebp
	leaq	Lzkboo_encrypt$239(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$239:
	movl	%ebp, 1200(%rsp)
	movl	1192(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1200(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1160(%rsp), %ecx
	movl	1164(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1160(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1164(%rsp), %ebp
	movl	1168(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1184(%rsp), %ecx
	movl	%ecx, 1188(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1160(%rsp)
	incq	%r10
Lzkboo_encrypt$237:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$238
	movl	1392(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1420(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$235
Lzkboo_encrypt$236:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$235:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$236
	jmp 	Lzkboo_encrypt$232
Lzkboo_encrypt$231:
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$233
Lzkboo_encrypt$234:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$233:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$234
Lzkboo_encrypt$232:
	movq	32(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %r10d
	subl	%eax, %r10d
	cmpl	%r10d, %ecx
	jnbe	Lzkboo_encrypt$229
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$230
Lzkboo_encrypt$229:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$230:
	movl	24(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1576(%rsp)
	movl	28(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1572(%rsp)
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$227
Lzkboo_encrypt$228:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$227:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$228
	jmp 	Lzkboo_encrypt$221
Lzkboo_encrypt$222:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$226(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$226:
	movl	%ebx, %ecx
	leaq	Lzkboo_encrypt$225(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$225:
	shrl	$10, %ebx
	xorl	%r11d, %ebp
	xorl	%ebx, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %ebx
	movl	%ebx, %ebp
	leaq	Lzkboo_encrypt$224(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$224:
	movl	%ebx, %r10d
	leaq	Lzkboo_encrypt$223(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$223:
	shrl	$3, %ebx
	xorl	%r10d, %ebp
	xorl	%ebx, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$221:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$222
	movl	1392(%rsp), %eax
	movl	%eax, 1188(%rsp)
	movl	1396(%rsp), %eax
	movl	%eax, 1184(%rsp)
	movl	1400(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1404(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1408(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1412(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1416(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1420(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$213
Lzkboo_encrypt$214:
	movl	1160(%rsp), %r11d
	movl	1172(%rsp), %r12d
	leaq	Lzkboo_encrypt$220(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$220:
	movl	1172(%rsp), %ebx
	leaq	Lzkboo_encrypt$219(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$219:
	movl	1172(%rsp), %ebp
	leaq	Lzkboo_encrypt$218(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$218:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r11d
	movl	1172(%rsp), %eax
	andl	1168(%rsp), %eax
	movl	1172(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1164(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r11d
	movl	1932(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1676(%rsp,%r10,4), %eax
	addl	%eax, %r11d
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$217(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$217:
	movl	%ebp, 1200(%rsp)
	movl	1188(%rsp), %eax
	leaq	Lzkboo_encrypt$216(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$216:
	movl	%eax, 1196(%rsp)
	movl	1188(%rsp), %ebp
	leaq	Lzkboo_encrypt$215(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$215:
	movl	%ebp, 1192(%rsp)
	movl	1200(%rsp), %eax
	movl	1196(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1188(%rsp), %ecx
	movl	1184(%rsp), %ebp
	andl	%ebp, %ecx
	movl	1188(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	movl	1184(%rsp), %ebp
	movl	1180(%rsp), %ebx
	andl	%ebx, %ebp
	xorl	%ebp, %ecx
	addl	%ecx, %eax
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	addl	%r11d, %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1184(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1188(%rsp), %ecx
	movl	%ecx, 1184(%rsp)
	addl	%eax, %r11d
	movl	%r11d, 1188(%rsp)
	incq	%r10
Lzkboo_encrypt$213:
	cmpq	$64, %r10
	jb  	Lzkboo_encrypt$214
	movl	1392(%rsp), %eax
	addl	1188(%rsp), %eax
	movl	%eax, 1392(%rsp)
	movl	1396(%rsp), %eax
	addl	1184(%rsp), %eax
	movl	%eax, 1396(%rsp)
	movl	1400(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1400(%rsp)
	movl	1404(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1404(%rsp)
	movl	1408(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1408(%rsp)
	movl	1412(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1412(%rsp)
	movl	1416(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1416(%rsp)
	movl	1420(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1420(%rsp)
	imulq	$32, (%rsp), %rax
	imulq	$3, %rax, %rax
	movq	%r14, %rcx
	imulq	$32, %rcx, %rcx
	imulq	(%rsp), %rcx
	addq	%rcx, %rax
	imulq	$32, %r13, %rcx
	addq	%rcx, %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$211
Lzkboo_encrypt$212:
	movl	1392(%rsp,%rcx,4), %r10d
	bswapl	%r10d
	movl	%r10d, (%r9,%rax)
	addq	$4, %rax
	incq	%rcx
Lzkboo_encrypt$211:
	cmpq	$8, %rcx
	jb  	Lzkboo_encrypt$212
	incq	%r14
Lzkboo_encrypt$209:
	cmpq	$3, %r14
	jb  	Lzkboo_encrypt$210
	incq	%r13
Lzkboo_encrypt$207:
	cmpq	(%rsp), %r13
	jb  	Lzkboo_encrypt$208
	incq	%r15
Lzkboo_encrypt$205:
	cmpq	(%rsp), %r15
	jb  	Lzkboo_encrypt$206
	movq	$32, %rax
	imulq	(%rsp), %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$203
Lzkboo_encrypt$204:
	imulq	$4, %rcx, %rsi
	movl	(%r9,%rsi), %r10d
	addq	%rax, %rsi
	xorl	(%r9,%rsi), %r10d
	addq	%rax, %rsi
	xorl	(%r9,%rsi), %r10d
	movl	%r10d, 1392(%rsp,%rcx,4)
	incq	%rcx
Lzkboo_encrypt$203:
	cmpq	$8, %rcx
	jb  	Lzkboo_encrypt$204
	movq	$0, 8(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$1779033703, 1424(%rsp)
	movl	$-1150833019, 1428(%rsp)
	movl	$1013904242, 1432(%rsp)
	movl	$-1521486534, 1436(%rsp)
	movl	$1359893119, 1440(%rsp)
	movl	$-1694144372, 1444(%rsp)
	movl	$528734635, 1448(%rsp)
	movl	$1541459225, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$201
Lzkboo_encrypt$202:
	movb	1392(%rsp,%rax), %cl
	movb	%cl, 3164(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$201:
	cmpq	$20, %rax
	jb  	Lzkboo_encrypt$202
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$199
Lzkboo_encrypt$200:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$199:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$200
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$178
Lzkboo_encrypt$179:
	movb	3164(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, 8(%rsp)
	jne 	Lzkboo_encrypt$180
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$197
Lzkboo_encrypt$198:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$197:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$198
	jmp 	Lzkboo_encrypt$191
Lzkboo_encrypt$192:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$196(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$196:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$195(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$195:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$194(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$194:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$193(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$193:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$191:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$192
	movl	1424(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$183
Lzkboo_encrypt$184:
	movl	1180(%rsp), %r10d
	movl	1168(%rsp), %r12d
	leaq	Lzkboo_encrypt$190(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$190:
	movl	1168(%rsp), %ebx
	leaq	Lzkboo_encrypt$189(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$189:
	movl	1168(%rsp), %ebp
	leaq	Lzkboo_encrypt$188(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$188:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r10d
	movl	1168(%rsp), %eax
	andl	1172(%rsp), %eax
	movl	1168(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1176(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r10d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r10d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r10d
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$187(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$187:
	movl	%ebp, 1184(%rsp)
	movl	1152(%rsp), %eax
	leaq	Lzkboo_encrypt$186(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$186:
	movl	%eax, 1188(%rsp)
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$185(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$185:
	movl	%ebp, 1192(%rsp)
	movl	1184(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1152(%rsp), %ecx
	movl	1156(%rsp), %r11d
	andl	%r11d, %ecx
	movl	1152(%rsp), %r11d
	movl	1160(%rsp), %ebp
	andl	%ebp, %r11d
	xorl	%r11d, %ecx
	movl	1156(%rsp), %r11d
	movl	1160(%rsp), %ebp
	andl	%ebp, %r11d
	xorl	%r11d, %ecx
	addl	%ecx, %eax
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	addl	%r10d, %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1156(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1152(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	addl	%eax, %r10d
	movl	%r10d, 1152(%rsp)
	incq	%rsi
Lzkboo_encrypt$183:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$184
	movl	1424(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %esi
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jnbe	Lzkboo_encrypt$181
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$182
Lzkboo_encrypt$181:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$182:
	movq	$0, 8(%rsp)
Lzkboo_encrypt$180:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$178:
	cmpq	$20, %rcx
	jb  	Lzkboo_encrypt$179
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$170
Lzkboo_encrypt$171:
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$172
Lzkboo_encrypt$173:
	imulq	$192, %rax, %rsi
	imulq	$32, %rcx, %r10
	addq	%r10, %rsi
	imulq	$32, (%rsp), %r10
	imulq	%rcx, %r10
	imulq	$32, %rax, %r11
	addq	%r11, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$176
Lzkboo_encrypt$177:
	movb	(%r9,%r10), %bpl
	movb	%bpl, 4932(%rsp,%rsi)
	incq	%rsi
	incq	%r10
	incq	%r11
Lzkboo_encrypt$176:
	cmpq	$32, %r11
	jb  	Lzkboo_encrypt$177
	imulq	$192, %rax, %rsi
	movq	$96, %r10
	addq	%r10, %rsi
	imulq	$32, %rcx, %r10
	addq	%r10, %rsi
	imulq	$32, (%rsp), %r10
	imulq	$3, %r10, %r10
	imulq	$32, (%rsp), %r11
	imulq	%rcx, %r11
	addq	%r11, %r10
	imulq	$32, %rax, %r11
	addq	%r11, %r10
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$174
Lzkboo_encrypt$175:
	movb	(%r9,%r10), %bpl
	movb	%bpl, 4932(%rsp,%rsi)
	incq	%rsi
	incq	%r10
	incq	%r11
Lzkboo_encrypt$174:
	cmpq	$32, %r11
	jb  	Lzkboo_encrypt$175
	incq	%rcx
Lzkboo_encrypt$172:
	cmpq	$3, %rcx
	jb  	Lzkboo_encrypt$173
	incq	%rax
Lzkboo_encrypt$170:
	cmpq	(%rsp), %rax
	jb  	Lzkboo_encrypt$171
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$149
Lzkboo_encrypt$150:
	movb	4932(%rsp,%rcx), %al
	movq	%rcx, 32(%rsp)
	movq	8(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 8(%rsp)
	cmpq	$64, %rcx
	jne 	Lzkboo_encrypt$151
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$168
Lzkboo_encrypt$169:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$168:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$169
	jmp 	Lzkboo_encrypt$162
Lzkboo_encrypt$163:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$167(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$167:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$166(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$166:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$165(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$165:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$164(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$164:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$162:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$163
	movl	1424(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$154
Lzkboo_encrypt$155:
	movl	1152(%rsp), %r9d
	movl	1164(%rsp), %r12d
	leaq	Lzkboo_encrypt$161(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$161:
	movl	1164(%rsp), %ebx
	leaq	Lzkboo_encrypt$160(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$160:
	movl	1164(%rsp), %ebp
	leaq	Lzkboo_encrypt$159(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$159:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1164(%rsp), %eax
	andl	1160(%rsp), %eax
	movl	1164(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1156(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$158(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$158:
	movl	%ebp, 1192(%rsp)
	movl	1180(%rsp), %eax
	leaq	Lzkboo_encrypt$157(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$157:
	movl	%eax, 1188(%rsp)
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$156(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$156:
	movl	%ebp, 1184(%rsp)
	movl	1192(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1180(%rsp), %ecx
	movl	1176(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1180(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1176(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1156(%rsp), %ecx
	movl	%ecx, 1152(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1180(%rsp)
	incq	%rsi
Lzkboo_encrypt$154:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$155
	movl	1424(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %esi
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jnbe	Lzkboo_encrypt$152
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$153
Lzkboo_encrypt$152:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$153:
	movq	$0, 8(%rsp)
Lzkboo_encrypt$151:
	movq	32(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$149:
	cmpq	$26112, %rcx
	jb  	Lzkboo_encrypt$150
	movq	8(%rsp), %rax
	jmp 	Lzkboo_encrypt$147
Lzkboo_encrypt$148:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$147:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$148
	movq	8(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$123
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$145
Lzkboo_encrypt$146:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$145:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$146
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$143
Lzkboo_encrypt$144:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$143:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$144
	jmp 	Lzkboo_encrypt$137
Lzkboo_encrypt$138:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$142(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$142:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$141(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$141:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$140(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$140:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$139(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$139:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$137:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$138
	movl	1424(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$129
Lzkboo_encrypt$130:
	movl	1180(%rsp), %r9d
	movl	1168(%rsp), %r12d
	leaq	Lzkboo_encrypt$136(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$136:
	movl	1168(%rsp), %ebx
	leaq	Lzkboo_encrypt$135(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$135:
	movl	1168(%rsp), %ebp
	leaq	Lzkboo_encrypt$134(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$134:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1168(%rsp), %eax
	andl	1172(%rsp), %eax
	movl	1168(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1176(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$133(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$133:
	movl	%ebp, 1184(%rsp)
	movl	1152(%rsp), %eax
	leaq	Lzkboo_encrypt$132(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$132:
	movl	%eax, 1188(%rsp)
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$131(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$131:
	movl	%ebp, 1192(%rsp)
	movl	1184(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1152(%rsp), %ecx
	movl	1156(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1152(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1156(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1156(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1152(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1152(%rsp)
	incq	%rsi
Lzkboo_encrypt$129:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$130
	movl	1424(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$127
Lzkboo_encrypt$128:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$127:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$128
	jmp 	Lzkboo_encrypt$124
Lzkboo_encrypt$123:
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$125
Lzkboo_encrypt$126:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$125:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$126
Lzkboo_encrypt$124:
	movq	8(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %esi
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jnbe	Lzkboo_encrypt$121
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$122
Lzkboo_encrypt$121:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$122:
	movl	24(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1576(%rsp)
	movl	28(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1572(%rsp)
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$119
Lzkboo_encrypt$120:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$119:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$120
	jmp 	Lzkboo_encrypt$113
Lzkboo_encrypt$114:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$118(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$118:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$117(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$117:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$116(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$116:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$115(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$115:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$113:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$114
	movl	1424(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$105
Lzkboo_encrypt$106:
	movl	1152(%rsp), %r9d
	movl	1164(%rsp), %r12d
	leaq	Lzkboo_encrypt$112(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$112:
	movl	1164(%rsp), %ebx
	leaq	Lzkboo_encrypt$111(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$111:
	movl	1164(%rsp), %ebp
	leaq	Lzkboo_encrypt$110(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$110:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1164(%rsp), %eax
	andl	1160(%rsp), %eax
	movl	1164(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1156(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$109(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$109:
	movl	%ebp, 1192(%rsp)
	movl	1180(%rsp), %eax
	leaq	Lzkboo_encrypt$108(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$108:
	movl	%eax, 1188(%rsp)
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$107(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$107:
	movl	%ebp, 1184(%rsp)
	movl	1192(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1180(%rsp), %ecx
	movl	1176(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1180(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1176(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1156(%rsp), %ecx
	movl	%ecx, 1152(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1180(%rsp)
	incq	%rsi
Lzkboo_encrypt$105:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$106
	movl	1424(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$103
Lzkboo_encrypt$104:
	movl	1424(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1392(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$103:
	cmpq	$8, %rax
	jb  	Lzkboo_encrypt$104
	movq	$0, %r13
	movq	$0, 8(%rsp)
	movq	8(%rsp), %rax
	jmp 	Lzkboo_encrypt$20
Lzkboo_encrypt$21:
	cmpq	$256, 8(%rsp)
	jb  	Lzkboo_encrypt$35
	movq	$0, 32(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 28(%rsp)
	movl	$1779033703, 1424(%rsp)
	movl	$-1150833019, 1428(%rsp)
	movl	$1013904242, 1432(%rsp)
	movl	$-1521486534, 1436(%rsp)
	movl	$1359893119, 1440(%rsp)
	movl	$-1694144372, 1444(%rsp)
	movl	$528734635, 1448(%rsp)
	movl	$1541459225, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$101
Lzkboo_encrypt$102:
	movb	1392(%rsp,%rax), %cl
	movb	%cl, 3164(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$101:
	cmpq	$32, %rax
	jb  	Lzkboo_encrypt$102
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$80
Lzkboo_encrypt$81:
	movb	3164(%rsp,%rcx), %al
	movq	%rcx, 48(%rsp)
	movq	32(%rsp), %rcx
	movb	%al, 1516(%rsp,%rcx)
	incq	%rcx
	movq	%rcx, 32(%rsp)
	cmpq	$64, 32(%rsp)
	jne 	Lzkboo_encrypt$82
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$99
Lzkboo_encrypt$100:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$99:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$100
	jmp 	Lzkboo_encrypt$93
Lzkboo_encrypt$94:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$98(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$98:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$97(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$97:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$96(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$96:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$95(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$95:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$93:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$94
	movl	1424(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$85
Lzkboo_encrypt$86:
	movl	1180(%rsp), %r9d
	movl	1168(%rsp), %r12d
	leaq	Lzkboo_encrypt$92(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$92:
	movl	1168(%rsp), %ebx
	leaq	Lzkboo_encrypt$91(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$91:
	movl	1168(%rsp), %ebp
	leaq	Lzkboo_encrypt$90(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$90:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1168(%rsp), %eax
	andl	1172(%rsp), %eax
	movl	1168(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1176(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$89(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$89:
	movl	%ebp, 1184(%rsp)
	movl	1152(%rsp), %eax
	leaq	Lzkboo_encrypt$88(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$88:
	movl	%eax, 1188(%rsp)
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$87(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$87:
	movl	%ebp, 1192(%rsp)
	movl	1184(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1152(%rsp), %ecx
	movl	1156(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1152(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1156(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1156(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1152(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1152(%rsp)
	incq	%rsi
Lzkboo_encrypt$85:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$86
	movl	1424(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$512, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %esi
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jnbe	Lzkboo_encrypt$83
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$84
Lzkboo_encrypt$83:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$84:
	movq	$0, 32(%rsp)
Lzkboo_encrypt$82:
	movq	48(%rsp), %rcx
	incq	%rcx
Lzkboo_encrypt$80:
	cmpq	$32, %rcx
	jb  	Lzkboo_encrypt$81
	movq	32(%rsp), %rax
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$56
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$78
Lzkboo_encrypt$79:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$78:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$79
	movl	$1116352408, 1932(%rsp)
	movl	$1899447441, 1936(%rsp)
	movl	$-1245643825, 1940(%rsp)
	movl	$-373957723, 1944(%rsp)
	movl	$961987163, 1948(%rsp)
	movl	$1508970993, 1952(%rsp)
	movl	$-1841331548, 1956(%rsp)
	movl	$-1424204075, 1960(%rsp)
	movl	$-670586216, 1964(%rsp)
	movl	$310598401, 1968(%rsp)
	movl	$607225278, 1972(%rsp)
	movl	$1426881987, 1976(%rsp)
	movl	$1925078388, 1980(%rsp)
	movl	$-2132889090, 1984(%rsp)
	movl	$-1680079193, 1988(%rsp)
	movl	$-1046744716, 1992(%rsp)
	movl	$-459576895, 1996(%rsp)
	movl	$-272742522, 2000(%rsp)
	movl	$264347078, 2004(%rsp)
	movl	$604807628, 2008(%rsp)
	movl	$770255983, 2012(%rsp)
	movl	$1249150122, 2016(%rsp)
	movl	$1555081692, 2020(%rsp)
	movl	$1996064986, 2024(%rsp)
	movl	$-1740746414, 2028(%rsp)
	movl	$-1473132947, 2032(%rsp)
	movl	$-1341970488, 2036(%rsp)
	movl	$-1084653625, 2040(%rsp)
	movl	$-958395405, 2044(%rsp)
	movl	$-710438585, 2048(%rsp)
	movl	$113926993, 2052(%rsp)
	movl	$338241895, 2056(%rsp)
	movl	$666307205, 2060(%rsp)
	movl	$773529912, 2064(%rsp)
	movl	$1294757372, 2068(%rsp)
	movl	$1396182291, 2072(%rsp)
	movl	$1695183700, 2076(%rsp)
	movl	$1986661051, 2080(%rsp)
	movl	$-2117940946, 2084(%rsp)
	movl	$-1838011259, 2088(%rsp)
	movl	$-1564481375, 2092(%rsp)
	movl	$-1474664885, 2096(%rsp)
	movl	$-1035236496, 2100(%rsp)
	movl	$-949202525, 2104(%rsp)
	movl	$-778901479, 2108(%rsp)
	movl	$-694614492, 2112(%rsp)
	movl	$-200395387, 2116(%rsp)
	movl	$275423344, 2120(%rsp)
	movl	$430227734, 2124(%rsp)
	movl	$506948616, 2128(%rsp)
	movl	$659060556, 2132(%rsp)
	movl	$883997877, 2136(%rsp)
	movl	$958139571, 2140(%rsp)
	movl	$1322822218, 2144(%rsp)
	movl	$1537002063, 2148(%rsp)
	movl	$1747873779, 2152(%rsp)
	movl	$1955562222, 2156(%rsp)
	movl	$2024104815, 2160(%rsp)
	movl	$-2067236844, 2164(%rsp)
	movl	$-1933114872, 2168(%rsp)
	movl	$-1866530822, 2172(%rsp)
	movl	$-1538233109, 2176(%rsp)
	movl	$-1090935817, 2180(%rsp)
	movl	$-965641998, 2184(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$76
Lzkboo_encrypt$77:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$76:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$77
	jmp 	Lzkboo_encrypt$70
Lzkboo_encrypt$71:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$75(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$75:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$74(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$74:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1676(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$73(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$73:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$72(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$72:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1676(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1676(%rsp,%rcx,4), %ecx
	addl	%ecx, 1676(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$70:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$71
	movl	1424(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$62
Lzkboo_encrypt$63:
	movl	1152(%rsp), %r9d
	movl	1164(%rsp), %r12d
	leaq	Lzkboo_encrypt$69(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$69:
	movl	1164(%rsp), %ebx
	leaq	Lzkboo_encrypt$68(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$68:
	movl	1164(%rsp), %ebp
	leaq	Lzkboo_encrypt$67(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$67:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1164(%rsp), %eax
	andl	1160(%rsp), %eax
	movl	1164(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1156(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$66(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$66:
	movl	%ebp, 1192(%rsp)
	movl	1180(%rsp), %eax
	leaq	Lzkboo_encrypt$65(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$65:
	movl	%eax, 1188(%rsp)
	movl	1180(%rsp), %ebp
	leaq	Lzkboo_encrypt$64(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$64:
	movl	%ebp, 1184(%rsp)
	movl	1192(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1184(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1180(%rsp), %ecx
	movl	1176(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1180(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1176(%rsp), %r10d
	movl	1172(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1156(%rsp), %ecx
	movl	%ecx, 1152(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	movl	1164(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1168(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1164(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1168(%rsp)
	movl	1176(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1180(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1180(%rsp)
	incq	%rsi
Lzkboo_encrypt$62:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$63
	movl	1424(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$60
Lzkboo_encrypt$61:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$60:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$61
	jmp 	Lzkboo_encrypt$57
Lzkboo_encrypt$56:
	movb	$-128, 1516(%rsp,%rax)
	incq	%rax
	jmp 	Lzkboo_encrypt$58
Lzkboo_encrypt$59:
	movb	$0, 1516(%rsp,%rax)
	incq	%rax
Lzkboo_encrypt$58:
	cmpq	$56, %rax
	jb  	Lzkboo_encrypt$59
Lzkboo_encrypt$57:
	movq	32(%rsp), %rax
	imulq	$8, %rax, %rax
	movl	24(%rsp), %ecx
	movl	$-1, %esi
	subl	%eax, %esi
	cmpl	%esi, %ecx
	jnbe	Lzkboo_encrypt$54
	addl	%eax, %ecx
	movl	%ecx, 24(%rsp)
	jmp 	Lzkboo_encrypt$55
Lzkboo_encrypt$54:
	movl	28(%rsp), %eax
	incl	%eax
	movl	%eax, 28(%rsp)
Lzkboo_encrypt$55:
	movl	24(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1576(%rsp)
	movl	28(%rsp), %eax
	bswapl	%eax
	movl	%eax, 1572(%rsp)
	movl	$1116352408, 1676(%rsp)
	movl	$1899447441, 1680(%rsp)
	movl	$-1245643825, 1684(%rsp)
	movl	$-373957723, 1688(%rsp)
	movl	$961987163, 1692(%rsp)
	movl	$1508970993, 1696(%rsp)
	movl	$-1841331548, 1700(%rsp)
	movl	$-1424204075, 1704(%rsp)
	movl	$-670586216, 1708(%rsp)
	movl	$310598401, 1712(%rsp)
	movl	$607225278, 1716(%rsp)
	movl	$1426881987, 1720(%rsp)
	movl	$1925078388, 1724(%rsp)
	movl	$-2132889090, 1728(%rsp)
	movl	$-1680079193, 1732(%rsp)
	movl	$-1046744716, 1736(%rsp)
	movl	$-459576895, 1740(%rsp)
	movl	$-272742522, 1744(%rsp)
	movl	$264347078, 1748(%rsp)
	movl	$604807628, 1752(%rsp)
	movl	$770255983, 1756(%rsp)
	movl	$1249150122, 1760(%rsp)
	movl	$1555081692, 1764(%rsp)
	movl	$1996064986, 1768(%rsp)
	movl	$-1740746414, 1772(%rsp)
	movl	$-1473132947, 1776(%rsp)
	movl	$-1341970488, 1780(%rsp)
	movl	$-1084653625, 1784(%rsp)
	movl	$-958395405, 1788(%rsp)
	movl	$-710438585, 1792(%rsp)
	movl	$113926993, 1796(%rsp)
	movl	$338241895, 1800(%rsp)
	movl	$666307205, 1804(%rsp)
	movl	$773529912, 1808(%rsp)
	movl	$1294757372, 1812(%rsp)
	movl	$1396182291, 1816(%rsp)
	movl	$1695183700, 1820(%rsp)
	movl	$1986661051, 1824(%rsp)
	movl	$-2117940946, 1828(%rsp)
	movl	$-1838011259, 1832(%rsp)
	movl	$-1564481375, 1836(%rsp)
	movl	$-1474664885, 1840(%rsp)
	movl	$-1035236496, 1844(%rsp)
	movl	$-949202525, 1848(%rsp)
	movl	$-778901479, 1852(%rsp)
	movl	$-694614492, 1856(%rsp)
	movl	$-200395387, 1860(%rsp)
	movl	$275423344, 1864(%rsp)
	movl	$430227734, 1868(%rsp)
	movl	$506948616, 1872(%rsp)
	movl	$659060556, 1876(%rsp)
	movl	$883997877, 1880(%rsp)
	movl	$958139571, 1884(%rsp)
	movl	$1322822218, 1888(%rsp)
	movl	$1537002063, 1892(%rsp)
	movl	$1747873779, 1896(%rsp)
	movl	$1955562222, 1900(%rsp)
	movl	$2024104815, 1904(%rsp)
	movl	$-2067236844, 1908(%rsp)
	movl	$-1933114872, 1912(%rsp)
	movl	$-1866530822, 1916(%rsp)
	movl	$-1538233109, 1920(%rsp)
	movl	$-1090935817, 1924(%rsp)
	movl	$-965641998, 1928(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$52
Lzkboo_encrypt$53:
	movl	1516(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$52:
	cmpq	$16, %rax
	jb  	Lzkboo_encrypt$53
	jmp 	Lzkboo_encrypt$46
Lzkboo_encrypt$47:
	movq	%rax, %rcx
	addq	$-2, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$51(%rip), 	%r10
	jmp 	LROTRIGHT_17$1
Lzkboo_encrypt$51:
	movl	%esi, %ecx
	leaq	Lzkboo_encrypt$50(%rip), 	%r10
	jmp 	LROTRIGHT_19$1
Lzkboo_encrypt$50:
	shrl	$10, %esi
	xorl	%r11d, %ebp
	xorl	%esi, %ebp
	movl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-7, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-15, %rcx
	movl	1932(%rsp,%rcx,4), %esi
	movl	%esi, %ebp
	leaq	Lzkboo_encrypt$49(%rip), 	%r10
	jmp 	LROTRIGHT_7$1
Lzkboo_encrypt$49:
	movl	%esi, %r10d
	leaq	Lzkboo_encrypt$48(%rip), 	%r11
	jmp 	LROTRIGHT_18$1
Lzkboo_encrypt$48:
	shrl	$3, %esi
	xorl	%r10d, %ebp
	xorl	%esi, %ebp
	addl	%ebp, 1932(%rsp,%rax,4)
	movq	%rax, %rcx
	addq	$-16, %rcx
	movl	1932(%rsp,%rcx,4), %ecx
	addl	%ecx, 1932(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$46:
	cmpq	$64, %rax
	jb  	Lzkboo_encrypt$47
	movl	1424(%rsp), %eax
	movl	%eax, 1152(%rsp)
	movl	1428(%rsp), %eax
	movl	%eax, 1156(%rsp)
	movl	1432(%rsp), %eax
	movl	%eax, 1160(%rsp)
	movl	1436(%rsp), %eax
	movl	%eax, 1164(%rsp)
	movl	1440(%rsp), %eax
	movl	%eax, 1168(%rsp)
	movl	1444(%rsp), %eax
	movl	%eax, 1172(%rsp)
	movl	1448(%rsp), %eax
	movl	%eax, 1176(%rsp)
	movl	1452(%rsp), %eax
	movl	%eax, 1180(%rsp)
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$38
Lzkboo_encrypt$39:
	movl	1180(%rsp), %r9d
	movl	1168(%rsp), %r12d
	leaq	Lzkboo_encrypt$45(%rip), 	%rcx
	jmp 	LROTRIGHT_6$1
Lzkboo_encrypt$45:
	movl	1168(%rsp), %ebx
	leaq	Lzkboo_encrypt$44(%rip), 	%rax
	jmp 	LROTRIGHT_11$1
Lzkboo_encrypt$44:
	movl	1168(%rsp), %ebp
	leaq	Lzkboo_encrypt$43(%rip), 	%rax
	jmp 	LROTRIGHT_25$1
Lzkboo_encrypt$43:
	xorl	%ebx, %r12d
	xorl	%ebp, %r12d
	addl	%r12d, %r9d
	movl	1168(%rsp), %eax
	andl	1172(%rsp), %eax
	movl	1168(%rsp), %ecx
	xorl	$-1, %ecx
	andl	1176(%rsp), %ecx
	xorl	%ecx, %eax
	addl	%eax, %r9d
	movl	1676(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1932(%rsp,%rsi,4), %eax
	addl	%eax, %r9d
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$42(%rip), 	%rcx
	jmp 	LROTRIGHT_2$1
Lzkboo_encrypt$42:
	movl	%ebp, 1184(%rsp)
	movl	1152(%rsp), %eax
	leaq	Lzkboo_encrypt$41(%rip), 	%rbp
	jmp 	LROTRIGHT_13$1
Lzkboo_encrypt$41:
	movl	%eax, 1188(%rsp)
	movl	1152(%rsp), %ebp
	leaq	Lzkboo_encrypt$40(%rip), 	%rcx
	jmp 	LROTRIGHT_22$1
Lzkboo_encrypt$40:
	movl	%ebp, 1192(%rsp)
	movl	1184(%rsp), %eax
	movl	1188(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1192(%rsp), %ecx
	xorl	%ecx, %eax
	movl	1152(%rsp), %ecx
	movl	1156(%rsp), %r10d
	andl	%r10d, %ecx
	movl	1152(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	movl	1156(%rsp), %r10d
	movl	1160(%rsp), %r11d
	andl	%r11d, %r10d
	xorl	%r10d, %ecx
	addl	%ecx, %eax
	movl	1176(%rsp), %ecx
	movl	%ecx, 1180(%rsp)
	movl	1172(%rsp), %ecx
	movl	%ecx, 1176(%rsp)
	movl	1168(%rsp), %ecx
	movl	%ecx, 1172(%rsp)
	movl	1164(%rsp), %ecx
	addl	%r9d, %ecx
	movl	%ecx, 1168(%rsp)
	movl	1160(%rsp), %ecx
	movl	%ecx, 1164(%rsp)
	movl	1156(%rsp), %ecx
	movl	%ecx, 1160(%rsp)
	movl	1152(%rsp), %ecx
	movl	%ecx, 1156(%rsp)
	addl	%eax, %r9d
	movl	%r9d, 1152(%rsp)
	incq	%rsi
Lzkboo_encrypt$38:
	cmpq	$64, %rsi
	jb  	Lzkboo_encrypt$39
	movl	1424(%rsp), %eax
	addl	1152(%rsp), %eax
	movl	%eax, 1424(%rsp)
	movl	1428(%rsp), %eax
	addl	1156(%rsp), %eax
	movl	%eax, 1428(%rsp)
	movl	1432(%rsp), %eax
	addl	1160(%rsp), %eax
	movl	%eax, 1432(%rsp)
	movl	1436(%rsp), %eax
	addl	1164(%rsp), %eax
	movl	%eax, 1436(%rsp)
	movl	1440(%rsp), %eax
	addl	1168(%rsp), %eax
	movl	%eax, 1440(%rsp)
	movl	1444(%rsp), %eax
	addl	1172(%rsp), %eax
	movl	%eax, 1444(%rsp)
	movl	1448(%rsp), %eax
	addl	1176(%rsp), %eax
	movl	%eax, 1448(%rsp)
	movl	1452(%rsp), %eax
	addl	1180(%rsp), %eax
	movl	%eax, 1452(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_encrypt$36
Lzkboo_encrypt$37:
	movl	1424(%rsp,%rax,4), %ecx
	bswapl	%ecx
	movl	%ecx, 1392(%rsp,%rax,4)
	incq	%rax
Lzkboo_encrypt$36:
	cmpq	$8, %rax
	jb  	Lzkboo_encrypt$37
	movq	$0, %rax
Lzkboo_encrypt$35:
	movq	%rax, 32(%rsp)
	movq	32(%rsp), %rax
	movq	$0, %rcx
	jmp 	Lzkboo_encrypt$33
Lzkboo_encrypt$34:
	incq	%rcx
	addq	$-8, %rax
Lzkboo_encrypt$33:
	cmpq	$8, %rax
	jnb 	Lzkboo_encrypt$34
	movb	1392(%rsp,%rcx), %cl
	jmp 	Lzkboo_encrypt$31
Lzkboo_encrypt$32:
	shrb	$1, %cl
	addq	$-1, %rax
Lzkboo_encrypt$31:
	cmpq	$0, %rax
	jnbe	Lzkboo_encrypt$32
	andb	$1, %cl
	movq	32(%rsp), %rax
	incq	%rax
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$29
Lzkboo_encrypt$30:
	incq	%rsi
	addq	$-8, %rax
Lzkboo_encrypt$29:
	cmpq	$8, %rax
	jnb 	Lzkboo_encrypt$30
	movb	1392(%rsp,%rsi), %sil
	jmp 	Lzkboo_encrypt$27
Lzkboo_encrypt$28:
	shrb	$1, %sil
	addq	$-1, %rax
Lzkboo_encrypt$27:
	cmpq	$0, %rax
	jnbe	Lzkboo_encrypt$28
	andb	$1, %sil
	cmpb	$0, %cl
	je  	Lzkboo_encrypt$22
	cmpb	$0, %sil
	jne 	Lzkboo_encrypt$23
	movq	$2, 64(%rsp,%r13,8)
	incq	%r13
Lzkboo_encrypt$26:
	jmp 	Lzkboo_encrypt$23
Lzkboo_encrypt$22:
	cmpb	$0, %sil
	je  	Lzkboo_encrypt$24
	movq	$1, 64(%rsp,%r13,8)
	incq	%r13
	jmp 	Lzkboo_encrypt$23
Lzkboo_encrypt$24:
	movq	$0, 64(%rsp,%r13,8)
	incq	%r13
Lzkboo_encrypt$25:
Lzkboo_encrypt$23:
	movq	8(%rsp), %rax
	incq	%rax
Lzkboo_encrypt$20:
	cmpq	(%rsp), %r13
	jb  	Lzkboo_encrypt$21
	movq	16(%rsp), %rax
	movq	$0, %rcx
	movq	$0, %rsi
	jmp 	Lzkboo_encrypt$1
Lzkboo_encrypt$2:
	movq	64(%rsp,%rcx,8), %r9
	movq	64(%rsp,%rcx,8), %r10
	incq	%r10
	cmpq	$3, %r10
	jne 	Lzkboo_encrypt$19
	movq	$0, %r10
Lzkboo_encrypt$19:
	imulq	$16, %rcx, %r11
	imulq	$16, %r9, %rbp
	imulq	(%rsp), %rbp
	addq	%r11, %rbp
	movq	$0, %rbx
	jmp 	Lzkboo_encrypt$17
Lzkboo_encrypt$18:
	movb	(%rdx,%rbp), %r12b
	movb	%r12b, (%rax,%rsi)
	incq	%rsi
	incq	%rbp
	incq	%rbx
Lzkboo_encrypt$17:
	cmpq	$16, %rbx
	jb  	Lzkboo_encrypt$18
	imulq	$16, %r10, %rbp
	imulq	(%rsp), %rbp
	addq	%r11, %rbp
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$15
Lzkboo_encrypt$16:
	movb	(%rdx,%rbp), %bl
	movb	%bl, (%rax,%rsi)
	incq	%rsi
	incq	%rbp
	incq	%r11
Lzkboo_encrypt$15:
	cmpq	$16, %r11
	jb  	Lzkboo_encrypt$16
	imulq	$64, (%rsp), %r11
	imulq	%r9, %r11
	imulq	$64, %rcx, %rbp
	addq	%r11, %rbp
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$13
Lzkboo_encrypt$14:
	movb	(%r8,%rbp), %bl
	movb	%bl, (%rax,%rsi)
	incq	%rbp
	incq	%rsi
	incq	%r11
Lzkboo_encrypt$13:
	cmpq	$64, %r11
	jb  	Lzkboo_encrypt$14
	imulq	$3, (%rsp), %r11
	imulq	$64, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r9, %rbp
	addq	%rbp, %r11
	imulq	$1480, %rcx, %rbp
	addq	%rbp, %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$11
Lzkboo_encrypt$12:
	movb	(%r8,%r11), %bl
	movb	%bl, (%rax,%rsi)
	incq	%rsi
	incq	%r11
	incq	%rbp
Lzkboo_encrypt$11:
	cmpq	$1480, %rbp
	jb  	Lzkboo_encrypt$12
	imulq	$64, (%rsp), %r11
	imulq	%r10, %r11
	imulq	$64, %rcx, %rbp
	addq	%r11, %rbp
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$9
Lzkboo_encrypt$10:
	movb	(%r8,%rbp), %bl
	movb	%bl, (%rax,%rsi)
	incq	%rbp
	incq	%rsi
	incq	%r11
Lzkboo_encrypt$9:
	cmpq	$64, %r11
	jb  	Lzkboo_encrypt$10
	imulq	$3, (%rsp), %r11
	imulq	$64, %r11, %r11
	imulq	$1480, (%rsp), %rbp
	imulq	%r10, %rbp
	addq	%rbp, %r11
	imulq	$1480, %rcx, %rbp
	addq	%rbp, %r11
	movq	$0, %rbp
	jmp 	Lzkboo_encrypt$7
Lzkboo_encrypt$8:
	movb	(%r8,%r11), %bl
	movb	%bl, (%rax,%rsi)
	incq	%r11
	incq	%rsi
	incq	%rbp
Lzkboo_encrypt$7:
	cmpq	$1480, %rbp
	jb  	Lzkboo_encrypt$8
	imulq	$4, %r9, %r9
	imulq	(%rsp), %r9
	imulq	$4, %rcx, %r11
	addq	%r11, %r9
	movq	$0, %r11
	jmp 	Lzkboo_encrypt$5
Lzkboo_encrypt$6:
	movb	(%rdi,%r9), %bpl
	movb	%bpl, (%rax,%rsi)
	incq	%rsi
	incq	%r9
	incq	%r11
Lzkboo_encrypt$5:
	cmpq	$4, %r11
	jb  	Lzkboo_encrypt$6
	imulq	$4, %r10, %r9
	imulq	(%rsp), %r9
	imulq	$4, %rcx, %r10
	addq	%r10, %r9
	movq	$0, %r10
	jmp 	Lzkboo_encrypt$3
Lzkboo_encrypt$4:
	movb	(%rdi,%r9), %r11b
	movb	%r11b, (%rax,%rsi)
	incq	%rsi
	incq	%r9
	incq	%r10
Lzkboo_encrypt$3:
	cmpq	$4, %r10
	jb  	Lzkboo_encrypt$4
	incq	%rcx
Lzkboo_encrypt$1:
	cmpq	(%rsp), %rcx
	jb  	Lzkboo_encrypt$2
	movq	31056(%rsp), %rbx
	movq	31064(%rsp), %rbp
	movq	31072(%rsp), %r12
	movq	31080(%rsp), %r13
	movq	31088(%rsp), %r14
	movq	31096(%rsp), %r15
	movq	31048(%rsp), %rsp
	ret 
LROTRIGHT_19$1:
	movl	%ecx, %r11d
	shrl	$19, %r11d
	shll	$13, %ecx
	orl 	%ecx, %r11d
	jmp 	*%r10
LROTRIGHT_17$1:
	movl	%ecx, %ebp
	shrl	$17, %ebp
	shll	$15, %ecx
	orl 	%ecx, %ebp
	jmp 	*%r10
LROTRIGHT_18$1:
	movl	%r10d, %ecx
	shrl	$18, %r10d
	shll	$14, %ecx
	xorl	%ecx, %r10d
	jmp 	*%r11
LROTRIGHT_7$1:
	movl	%ebp, %ecx
	shrl	$7, %ebp
	shll	$25, %ecx
	xorl	%ecx, %ebp
	jmp 	*%r10
LROTRIGHT_25$1:
	movl	%ebp, %ecx
	shrl	$25, %ebp
	shll	$7, %ecx
	orl 	%ecx, %ebp
	jmp 	*%rax
LROTRIGHT_11$1:
	movl	%ebx, %ecx
	shrl	$11, %ebx
	shll	$21, %ecx
	orl 	%ecx, %ebx
	jmp 	*%rax
LROTRIGHT_6$1:
	movl	%r12d, %eax
	shrl	$6, %r12d
	shll	$26, %eax
	orl 	%eax, %r12d
	jmp 	*%rcx
LROTRIGHT_22$1:
	movl	%ebp, %eax
	shrl	$22, %ebp
	shll	$10, %eax
	orl 	%eax, %ebp
	jmp 	*%rcx
LROTRIGHT_13$1:
	movl	%eax, %ecx
	shrl	$13, %eax
	shll	$19, %ecx
	orl 	%ecx, %eax
	jmp 	*%rbp
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
