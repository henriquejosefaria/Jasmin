	.text
	.p2align	5
	.globl	_test
	.globl	test
_test:
test:
	movq	%rsp, %rax
	leaq	-1432(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 1416(%rsp)
	movq	%rbp, 1424(%rsp)
	movq	$0, %rcx
	movq	$0, %r8
	movq	$0, (%rsp)
	movq	$128, 8(%rsp)
	movl	$1732584193, 180(%rsp)
	movl	$-271733879, 184(%rsp)
	movl	$-1732584194, 188(%rsp)
	movl	$271733878, 192(%rsp)
	movl	$-1009589776, 196(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movq	$0, %rax
	movq	%rcx, %r9
	shrq	$3, %r9
	movq	$0, 16(%rsp)
	jmp 	Ltest$223
Ltest$224:
	imulq	$16, 16(%rsp), %r11
	imulq	8(%rsp), %r11
	movq	$16, %r10
	imulq	(%rsp), %r10
	addq	$6144, %r10
	addq	%r11, %r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 260(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 261(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 262(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 263(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 264(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 265(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 266(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 267(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 268(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 269(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 270(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 271(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 272(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 273(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r11b
	movb	%r11b, 274(%rsp)
	incq	%r10
	movb	(%rdi,%r10), %r10b
	movb	%r10b, 275(%rsp)
	movq	16(%rsp), %r10
	imulq	$64, %r10, %r10
	addq	%r9, %r10
	movb	$-128, 260(%rsp,%r10)
	imulq	$64, 16(%rsp), %r10
	addq	$62, %r10
	movb	%cl, 260(%rsp,%r10)
	shrb	$8, 260(%rsp,%r10)
	incq	%r10
	movb	%cl, 260(%rsp,%r10)
	imulq	$64, 16(%rsp), %r10
	movq	16(%rsp), %r11
	imulq	8(%rsp), %r11
	imulq	$64, %r11, %r11
	imulq	$64, (%rsp), %rbp
	addq	%r11, %rbp
	movq	$0, 24(%rsp)
	jmp 	Ltest$227
Ltest$228:
	movb	260(%rsp,%r10), %r11b
	movb	%r11b, (%rdx,%rbp)
	incq	%rbp
	incq	%r10
	incq	24(%rsp)
Ltest$227:
	cmpq	$64, 24(%rsp)
	jb  	Ltest$228
	movq	$0, 24(%rsp)
	jmp 	Ltest$225
Ltest$226:
	movq	24(%rsp), %r10
	movl	260(%rsp,%r10,4), %r10d
	movq	16(%rsp), %r11
	imulq	$80, %r11, %r11
	addq	24(%rsp), %r11
	movl	%r10d, 452(%rsp,%r11,4)
	incq	24(%rsp)
Ltest$225:
	cmpq	$16, 24(%rsp)
	jb  	Ltest$226
	incq	16(%rsp)
Ltest$223:
	cmpq	$3, 16(%rsp)
	jb  	Ltest$224
	movq	$16, 16(%rsp)
	jmp 	Ltest$217
Ltest$218:
	movq	$0, 24(%rsp)
	jmp 	Ltest$219
Ltest$220:
	movq	24(%rsp), %rcx
	imulq	$80, %rcx, %rdi
	addq	16(%rsp), %rdi
	movl	440(%rsp,%rdi,4), %ecx
	movl	420(%rsp,%rdi,4), %r9d
	movl	%ecx, 36(%rsp)
	xorl	%r9d, 36(%rsp)
	movl	396(%rsp,%rdi,4), %ecx
	xorl	%ecx, 36(%rsp)
	movl	388(%rsp,%rdi,4), %ecx
	xorl	%ecx, 36(%rsp)
	movq	$1, %rcx
	movl	36(%rsp), %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	movl	36(%rsp), %ecx
	jmp 	Ltest$221
Ltest$222:
	shrl	$1, %ecx
	addq	$-1, %r10
Ltest$221:
	cmpq	$0, %r10
	jnbe	Ltest$222
	orl 	%ecx, %r9d
	movl	%r9d, 452(%rsp,%rdi,4)
	incq	24(%rsp)
Ltest$219:
	cmpq	$3, 24(%rsp)
	jb  	Ltest$220
	incq	16(%rsp)
Ltest$217:
	cmpq	$80, 16(%rsp)
	jb  	Ltest$218
	movl	180(%rsp), %ecx
	movl	%ecx, 48(%rsp)
	movl	%ecx, 52(%rsp)
	movl	%ecx, 56(%rsp)
	movl	184(%rsp), %ecx
	movl	%ecx, 60(%rsp)
	movl	%ecx, 64(%rsp)
	movl	%ecx, 68(%rsp)
	movl	188(%rsp), %ecx
	movl	%ecx, 72(%rsp)
	movl	%ecx, 76(%rsp)
	movl	%ecx, 80(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 84(%rsp)
	movl	%ecx, 88(%rsp)
	movl	%ecx, 92(%rsp)
	movl	196(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	%ecx, 100(%rsp)
	movl	%ecx, 104(%rsp)
	movq	$0, 16(%rsp)
	jmp 	Ltest$111
Ltest$112:
	cmpq	$19, 16(%rsp)
	jnbe	Ltest$212
	movl	72(%rsp), %ecx
	xorl	84(%rsp), %ecx
	movl	%ecx, 108(%rsp)
	movl	76(%rsp), %ecx
	xorl	88(%rsp), %ecx
	movl	%ecx, 112(%rsp)
	movl	80(%rsp), %ecx
	xorl	92(%rsp), %ecx
	movl	%ecx, 116(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$215
Ltest$216:
	imulq	$4, %rcx, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movq	%rcx, %r9
	movl	(%rsi,%rdi), %edi
	movl	%edi, 120(%rsp,%r9,4)
	incq	%rcx
Ltest$215:
	cmpq	$3, %rcx
	jb  	Ltest$216
	incq	%rax
	movl	108(%rsp), %ecx
	movl	60(%rsp), %edi
	andl	112(%rsp), %edi
	movl	64(%rsp), %r9d
	andl	108(%rsp), %r9d
	movl	60(%rsp), %r10d
	andl	108(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	120(%rsp), %r9d
	movl	124(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	%edi, 108(%rsp)
	movl	64(%rsp), %edi
	andl	116(%rsp), %edi
	movl	68(%rsp), %r9d
	andl	112(%rsp), %r9d
	movl	64(%rsp), %r10d
	andl	112(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	124(%rsp), %r9d
	movl	128(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	%edi, 112(%rsp)
	movl	68(%rsp), %edi
	andl	%ecx, %edi
	movl	60(%rsp), %ecx
	andl	116(%rsp), %ecx
	movl	68(%rsp), %r9d
	andl	116(%rsp), %r9d
	xorl	%ecx, %edi
	xorl	%r9d, %edi
	movl	128(%rsp), %ecx
	movl	120(%rsp), %r9d
	xorl	%ecx, %edi
	xorl	%r9d, %edi
	movl	%edi, 116(%rsp)
	movq	$0, %rcx
	imulq	$370, (%rsp), %rdi
	jmp 	Ltest$213
Ltest$214:
	movq	%rcx, %r9
	imulq	8(%rsp), %r9
	imulq	$370, %r9, %r9
	addq	$6144, %r9
	addq	%rdi, %r9
	addq	%r8, %r9
	movl	108(%rsp,%rcx,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rcx
Ltest$213:
	cmpq	$3, %rcx
	jb  	Ltest$214
	incq	%r8
	movl	84(%rsp), %ecx
	xorl	108(%rsp), %ecx
	movl	%ecx, 108(%rsp)
	movl	88(%rsp), %ecx
	xorl	112(%rsp), %ecx
	movl	%ecx, 112(%rsp)
	movl	92(%rsp), %ecx
	xorl	116(%rsp), %ecx
	movl	%ecx, 116(%rsp)
Ltest$212:
	cmpq	$39, 16(%rsp)
	jbe 	Ltest$211
Ltest$211:
	cmpq	$59, 16(%rsp)
	jbe 	Ltest$205
	movl	$-899497514, 32(%rsp)
	jmp 	Ltest$206
Ltest$205:
	movl	$0, 120(%rsp)
	movl	$0, 124(%rsp)
	movl	$0, 128(%rsp)
	movl	$0, 132(%rsp)
	movl	$0, 136(%rsp)
	movl	$0, 140(%rsp)
	movl	60(%rsp), %ecx
	xorl	72(%rsp), %ecx
	movl	%ecx, 120(%rsp)
	movl	64(%rsp), %ecx
	xorl	76(%rsp), %ecx
	movl	%ecx, 124(%rsp)
	movl	68(%rsp), %ecx
	xorl	80(%rsp), %ecx
	movl	%ecx, 128(%rsp)
	movl	60(%rsp), %ecx
	xorl	84(%rsp), %ecx
	movl	%ecx, 132(%rsp)
	movl	64(%rsp), %ecx
	xorl	88(%rsp), %ecx
	movl	%ecx, 136(%rsp)
	movl	68(%rsp), %ecx
	xorl	92(%rsp), %ecx
	movl	%ecx, 140(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$209
Ltest$210:
	imulq	$4, %rcx, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movq	%rcx, %r9
	movl	(%rsi,%rdi), %edi
	movl	%edi, 144(%rsp,%r9,4)
	incq	%rcx
Ltest$209:
	cmpq	$3, %rcx
	jb  	Ltest$210
	incq	%rax
	movl	132(%rsp), %ecx
	movl	120(%rsp), %edi
	andl	136(%rsp), %edi
	movl	124(%rsp), %r9d
	andl	132(%rsp), %r9d
	movl	120(%rsp), %r10d
	andl	132(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	144(%rsp), %r9d
	movl	148(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	%edi, 108(%rsp)
	movl	124(%rsp), %edi
	andl	140(%rsp), %edi
	movl	128(%rsp), %r9d
	andl	136(%rsp), %r9d
	movl	124(%rsp), %r10d
	andl	136(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	148(%rsp), %r9d
	movl	152(%rsp), %r10d
	xorl	%r9d, %edi
	xorl	%r10d, %edi
	movl	%edi, 112(%rsp)
	movl	128(%rsp), %edi
	andl	%ecx, %edi
	movl	120(%rsp), %ecx
	andl	140(%rsp), %ecx
	movl	128(%rsp), %r9d
	andl	140(%rsp), %r9d
	xorl	%ecx, %edi
	xorl	%r9d, %edi
	movl	152(%rsp), %ecx
	movl	144(%rsp), %r9d
	xorl	%ecx, %edi
	xorl	%r9d, %edi
	movl	%edi, 116(%rsp)
	movq	$0, %rcx
	imulq	$370, (%rsp), %rdi
	jmp 	Ltest$207
Ltest$208:
	movq	%rcx, %r9
	imulq	8(%rsp), %r9
	imulq	$370, %r9, %r9
	addq	$6144, %r9
	addq	%rdi, %r9
	addq	%r8, %r9
	movl	108(%rsp,%rcx,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rcx
Ltest$207:
	cmpq	$3, %rcx
	jb  	Ltest$208
	incq	%r8
	movl	108(%rsp), %ecx
	xorl	60(%rsp), %ecx
	movl	%ecx, 108(%rsp)
	movl	112(%rsp), %ecx
	xorl	64(%rsp), %ecx
	movl	%ecx, 112(%rsp)
	movl	116(%rsp), %ecx
	xorl	68(%rsp), %ecx
	movl	%ecx, 116(%rsp)
	movl	$-1894007588, 32(%rsp)
Ltest$206:
	movq	$5, %rcx
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	48(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$203
Ltest$204:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$203:
	cmpq	$0, %r10
	jnbe	Ltest$204
	orl 	%edi, %r9d
	movl	%r9d, 36(%rsp)
	movl	52(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$201
Ltest$202:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$201:
	cmpq	$0, %r10
	jnbe	Ltest$202
	orl 	%edi, %r9d
	movl	%r9d, 40(%rsp)
	movl	56(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$199
Ltest$200:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$199:
	cmpq	$0, %r10
	jnbe	Ltest$200
	orl 	%edi, %r9d
	movl	%r9d, 44(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 148(%rsp)
	movl	$0, 152(%rsp)
	movl	36(%rsp), %ecx
	movl	%ecx, 132(%rsp)
	movl	40(%rsp), %ecx
	movl	%ecx, 136(%rsp)
	movl	44(%rsp), %ecx
	movl	%ecx, 140(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$197
Ltest$198:
	movq	%rcx, %rdi
	imulq	$368, %rdi, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movl	(%rsi,%rdi), %edi
	movl	%edi, 120(%rsp,%rcx,4)
	incq	%rcx
Ltest$197:
	cmpq	$3, %rcx
	jb  	Ltest$198
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$181
Ltest$182:
	movq	$0, %rdi
	jmp 	Ltest$195
Ltest$196:
	movl	108(%rsp,%rdi,4), %r9d
	movl	36(%rsp,%rdi,4), %r10d
	movl	144(%rsp,%rdi,4), %r11d
	xorl	%r11d, %r9d
	xorl	%r11d, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r9d, 168(%rsp,%rdi,4)
	movl	%r10d, 156(%rsp,%rdi,4)
	incq	%rdi
Ltest$195:
	cmpq	$3, %rdi
	jb  	Ltest$196
	movq	$1, %rdi
	movq	$0, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	168(%rsp), %r11d
	andl	160(%rsp), %r11d
	xorl	%edi, %r11d
	movl	172(%rsp), %edi
	andl	156(%rsp), %edi
	xorl	%edi, %r11d
	movl	168(%rsp), %edi
	andl	156(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$0, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$193
Ltest$194:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$193:
	cmpq	$0, %r9
	jnbe	Ltest$194
	cmpl	$1, %r10d
	je  	Ltest$191
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$192
Ltest$191:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$192:
	movq	$2, %rdi
	movq	$1, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	172(%rsp), %r11d
	andl	164(%rsp), %r11d
	xorl	%edi, %r11d
	movl	176(%rsp), %edi
	andl	160(%rsp), %edi
	xorl	%edi, %r11d
	movl	172(%rsp), %edi
	andl	160(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$1, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$189
Ltest$190:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$189:
	cmpq	$0, %r9
	jnbe	Ltest$190
	cmpl	$1, %r10d
	je  	Ltest$187
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$188
Ltest$187:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$188:
	movq	$0, %rdi
	movq	$2, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	176(%rsp), %r11d
	andl	156(%rsp), %r11d
	xorl	%edi, %r11d
	movl	168(%rsp), %edi
	andl	164(%rsp), %edi
	xorl	%edi, %r11d
	movl	176(%rsp), %edi
	andl	164(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$2, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$185
Ltest$186:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$185:
	cmpq	$0, %r9
	jnbe	Ltest$186
	cmpl	$1, %r10d
	je  	Ltest$183
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$184
Ltest$183:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$184:
	incq	%rcx
Ltest$181:
	cmpq	$31, %rcx
	jb  	Ltest$182
	movq	$0, %rcx
	imulq	$370, (%rsp), %rdi
	jmp 	Ltest$179
Ltest$180:
	movl	132(%rsp,%rcx,4), %r9d
	xorl	108(%rsp,%rcx,4), %r9d
	xorl	144(%rsp,%rcx,4), %r9d
	movl	%r9d, 36(%rsp,%rcx,4)
	movq	%rcx, %r9
	imulq	$370, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rdi, %r9
	addq	$6144, %r9
	addq	%r8, %r9
	movl	144(%rsp,%rcx,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rcx
Ltest$179:
	cmpq	$3, %rcx
	jb  	Ltest$180
	incq	%r8
	movl	$0, 144(%rsp)
	movl	$0, 148(%rsp)
	movl	$0, 152(%rsp)
	movl	36(%rsp), %ecx
	movl	%ecx, 132(%rsp)
	movl	40(%rsp), %ecx
	movl	%ecx, 136(%rsp)
	movl	44(%rsp), %ecx
	movl	%ecx, 140(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$177
Ltest$178:
	movq	%rcx, %rdi
	imulq	$368, %rdi, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movl	(%rsi,%rdi), %edi
	movl	%edi, 120(%rsp,%rcx,4)
	incq	%rcx
Ltest$177:
	cmpq	$3, %rcx
	jb  	Ltest$178
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$161
Ltest$162:
	movq	$0, %rdi
	jmp 	Ltest$175
Ltest$176:
	movl	96(%rsp,%rdi,4), %r9d
	movl	36(%rsp,%rdi,4), %r10d
	movl	144(%rsp,%rdi,4), %r11d
	xorl	%r11d, %r9d
	xorl	%r11d, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r9d, 156(%rsp,%rdi,4)
	movl	%r10d, 168(%rsp,%rdi,4)
	incq	%rdi
Ltest$175:
	cmpq	$3, %rdi
	jb  	Ltest$176
	movq	$1, %rdi
	movq	$0, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	156(%rsp), %r11d
	andl	172(%rsp), %r11d
	xorl	%edi, %r11d
	movl	160(%rsp), %edi
	andl	168(%rsp), %edi
	xorl	%edi, %r11d
	movl	156(%rsp), %edi
	andl	168(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$0, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$173
Ltest$174:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$173:
	cmpq	$0, %r9
	jnbe	Ltest$174
	cmpl	$1, %r10d
	je  	Ltest$171
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$172
Ltest$171:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$172:
	movq	$2, %rdi
	movq	$1, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	160(%rsp), %r11d
	andl	176(%rsp), %r11d
	xorl	%edi, %r11d
	movl	164(%rsp), %edi
	andl	172(%rsp), %edi
	xorl	%edi, %r11d
	movl	160(%rsp), %edi
	andl	172(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$1, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$169
Ltest$170:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$169:
	cmpq	$0, %r9
	jnbe	Ltest$170
	cmpl	$1, %r10d
	je  	Ltest$167
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$168
Ltest$167:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$168:
	movq	$0, %rdi
	movq	$2, %r9
	movl	120(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	120(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	164(%rsp), %r11d
	andl	168(%rsp), %r11d
	xorl	%edi, %r11d
	movl	156(%rsp), %edi
	andl	176(%rsp), %edi
	xorl	%edi, %r11d
	movl	164(%rsp), %edi
	andl	176(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$2, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$165
Ltest$166:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$165:
	cmpq	$0, %r9
	jnbe	Ltest$166
	cmpl	$1, %r10d
	je  	Ltest$163
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$164
Ltest$163:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$164:
	incq	%rcx
Ltest$161:
	cmpq	$31, %rcx
	jb  	Ltest$162
	movq	$0, %rcx
	imulq	$370, (%rsp), %rdi
	jmp 	Ltest$159
Ltest$160:
	movl	132(%rsp,%rcx,4), %r9d
	xorl	96(%rsp,%rcx,4), %r9d
	xorl	144(%rsp,%rcx,4), %r9d
	movl	%r9d, 36(%rsp,%rcx,4)
	movq	%rcx, %r9
	imulq	$370, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rdi, %r9
	addq	$6144, %r9
	addq	%r8, %r9
	movl	144(%rsp,%rcx,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rcx
Ltest$159:
	cmpq	$3, %rcx
	jb  	Ltest$160
	incq	%r8
	movl	$0, 144(%rsp)
	movl	$0, 148(%rsp)
	movl	$0, 152(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$157
Ltest$158:
	movq	%rcx, %rdi
	imulq	$4, %rdi, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movl	(%rsi,%rdi), %edi
	movl	%edi, 132(%rsp,%rcx,4)
	incq	%rcx
Ltest$157:
	cmpq	$3, %rcx
	jb  	Ltest$158
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$141
Ltest$142:
	movq	%rcx, %rdi
	incq	%rdi
	movq	$0, %r9
	jmp 	Ltest$155
Ltest$156:
	movl	36(%rsp,%r9,4), %r10d
	movl	144(%rsp,%r9,4), %r11d
	movl	32(%rsp), %ebp
	xorl	%r11d, %r10d
	xorl	%r11d, %ebp
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 156(%rsp,%r9,4)
	shrl	%cl, %ebp
	andl	$1, %ebp
	movl	%ebp, 120(%rsp,%r9,4)
	incq	%r9
Ltest$155:
	cmpq	$3, %r9
	jb  	Ltest$156
	movq	$1, %r9
	movq	$0, %r10
	movl	132(%rsp,%r9,4), %r9d
	movl	144(%rsp,%r10,4), %r11d
	movl	132(%rsp,%r10,4), %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	156(%rsp), %ebp
	andl	124(%rsp), %ebp
	xorl	%r9d, %ebp
	movl	160(%rsp), %r9d
	andl	120(%rsp), %r9d
	xorl	%r9d, %ebp
	movl	156(%rsp), %r9d
	andl	120(%rsp), %r9d
	xorl	%r9d, %ebp
	xorl	%r11d, %ebp
	xorl	%r10d, %ebp
	movq	$0, %r9
	movq	%rdi, %r10
	movl	$1, %r11d
	andl	%ebp, %r11d
	movl	$1, %ebp
	jmp 	Ltest$153
Ltest$154:
	shll	$1, %ebp
	addq	$-1, %r10
Ltest$153:
	cmpq	$0, %r10
	jnbe	Ltest$154
	cmpl	$1, %r11d
	je  	Ltest$151
	xorl	$-1, %ebp
	andl	%ebp, 144(%rsp,%r9,4)
	jmp 	Ltest$152
Ltest$151:
	orl 	%ebp, 144(%rsp,%r9,4)
Ltest$152:
	movq	$2, %r9
	movq	$1, %r10
	movl	132(%rsp,%r9,4), %r9d
	movl	144(%rsp,%r10,4), %r11d
	movl	132(%rsp,%r10,4), %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	160(%rsp), %ebp
	andl	128(%rsp), %ebp
	xorl	%r9d, %ebp
	movl	164(%rsp), %r9d
	andl	124(%rsp), %r9d
	xorl	%r9d, %ebp
	movl	160(%rsp), %r9d
	andl	124(%rsp), %r9d
	xorl	%r9d, %ebp
	xorl	%r11d, %ebp
	xorl	%r10d, %ebp
	movq	$1, %r9
	movq	%rdi, %r10
	movl	$1, %r11d
	andl	%ebp, %r11d
	movl	$1, %ebp
	jmp 	Ltest$149
Ltest$150:
	shll	$1, %ebp
	addq	$-1, %r10
Ltest$149:
	cmpq	$0, %r10
	jnbe	Ltest$150
	cmpl	$1, %r11d
	je  	Ltest$147
	xorl	$-1, %ebp
	andl	%ebp, 144(%rsp,%r9,4)
	jmp 	Ltest$148
Ltest$147:
	orl 	%ebp, 144(%rsp,%r9,4)
Ltest$148:
	movq	$0, %r9
	movq	$2, %r10
	movl	132(%rsp,%r9,4), %r9d
	movl	144(%rsp,%r10,4), %r11d
	movl	132(%rsp,%r10,4), %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	164(%rsp), %ebp
	andl	120(%rsp), %ebp
	xorl	%r9d, %ebp
	movl	156(%rsp), %r9d
	andl	128(%rsp), %r9d
	xorl	%r9d, %ebp
	movl	164(%rsp), %r9d
	andl	128(%rsp), %r9d
	xorl	%r9d, %ebp
	xorl	%r11d, %ebp
	xorl	%r10d, %ebp
	movq	$2, %r9
	movl	$1, %r10d
	andl	%ebp, %r10d
	movl	$1, %r11d
	jmp 	Ltest$145
Ltest$146:
	shll	$1, %r11d
	addq	$-1, %rdi
Ltest$145:
	cmpq	$0, %rdi
	jnbe	Ltest$146
	cmpl	$1, %r10d
	je  	Ltest$143
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%r9,4)
	jmp 	Ltest$144
Ltest$143:
	orl 	%r11d, 144(%rsp,%r9,4)
Ltest$144:
	incq	%rcx
Ltest$141:
	cmpq	$31, %rcx
	jb  	Ltest$142
	movq	$0, %rcx
	jmp 	Ltest$139
Ltest$140:
	movl	36(%rsp,%rcx,4), %edi
	movl	144(%rsp,%rcx,4), %r9d
	xorl	%r9d, %edi
	xorl	32(%rsp), %edi
	movl	%edi, 36(%rsp,%rcx,4)
	movq	%rcx, %rdi
	imulq	$365, %rdi, %rdi
	imulq	8(%rsp), %rdi
	addq	$768, %rdi
	addq	%r8, %rdi
	movl	144(%rsp,%rcx,4), %r9d
	movl	%r9d, (%rdx,%rdi)
	incq	%rcx
Ltest$139:
	cmpq	$3, %rcx
	jb  	Ltest$140
	incq	%r8
	movl	$0, 144(%rsp)
	movl	$0, 148(%rsp)
	movl	$0, 152(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$137
Ltest$138:
	movq	%rcx, %rdi
	imulq	$368, %rdi, %rdi
	imulq	8(%rsp), %rdi
	addq	%rax, %rdi
	movl	(%rsi,%rdi), %edi
	movl	%edi, 132(%rsp,%rcx,4)
	incq	%rcx
Ltest$137:
	cmpq	$3, %rcx
	jb  	Ltest$138
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$121
Ltest$122:
	movq	$0, %rdi
	jmp 	Ltest$135
Ltest$136:
	imulq	$80, %rdi, %r9
	addq	16(%rsp), %r9
	movl	452(%rsp,%r9,4), %r9d
	movl	144(%rsp,%rdi,4), %r10d
	movl	36(%rsp,%rdi,4), %r11d
	xorl	%r10d, %r9d
	xorl	%r10d, %r11d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	%r9d, 120(%rsp,%rdi,4)
	shrl	%cl, %r11d
	andl	$1, %r11d
	movl	%r11d, 156(%rsp,%rdi,4)
	incq	%rdi
Ltest$135:
	cmpq	$3, %rdi
	jb  	Ltest$136
	movq	$1, %rdi
	movq	$0, %r9
	movl	132(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	132(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	120(%rsp), %r11d
	andl	160(%rsp), %r11d
	andl	%edi, %r11d
	movl	124(%rsp), %edi
	andl	156(%rsp), %edi
	xorl	%edi, %r11d
	movl	120(%rsp), %edi
	andl	156(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$0, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$133
Ltest$134:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$133:
	cmpq	$0, %r9
	jnbe	Ltest$134
	cmpl	$1, %r10d
	je  	Ltest$131
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$132
Ltest$131:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$132:
	movq	$2, %rdi
	movq	$1, %r9
	movl	132(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	132(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	124(%rsp), %r11d
	andl	164(%rsp), %r11d
	andl	%edi, %r11d
	movl	128(%rsp), %edi
	andl	160(%rsp), %edi
	xorl	%edi, %r11d
	movl	124(%rsp), %edi
	andl	160(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$1, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$129
Ltest$130:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$129:
	cmpq	$0, %r9
	jnbe	Ltest$130
	cmpl	$1, %r10d
	je  	Ltest$127
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$128
Ltest$127:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$128:
	movq	$0, %rdi
	movq	$2, %r9
	movl	132(%rsp,%rdi,4), %edi
	movl	144(%rsp,%r9,4), %r10d
	movl	132(%rsp,%r9,4), %r9d
	shrl	%cl, %edi
	andl	$1, %edi
	shrl	%cl, %r10d
	andl	$1, %r10d
	shrl	%cl, %r9d
	andl	$1, %r9d
	movl	128(%rsp), %r11d
	andl	156(%rsp), %r11d
	andl	%edi, %r11d
	movl	120(%rsp), %edi
	andl	164(%rsp), %edi
	xorl	%edi, %r11d
	movl	128(%rsp), %edi
	andl	164(%rsp), %edi
	xorl	%edi, %r11d
	xorl	%r10d, %r11d
	xorl	%r9d, %r11d
	movq	$2, %rdi
	movq	%rcx, %r9
	incq	%r9
	movl	$1, %r10d
	andl	%r11d, %r10d
	movl	$1, %r11d
	jmp 	Ltest$125
Ltest$126:
	shll	$1, %r11d
	addq	$-1, %r9
Ltest$125:
	cmpq	$0, %r9
	jnbe	Ltest$126
	cmpl	$1, %r10d
	je  	Ltest$123
	xorl	$-1, %r11d
	andl	%r11d, 144(%rsp,%rdi,4)
	jmp 	Ltest$124
Ltest$123:
	orl 	%r11d, 144(%rsp,%rdi,4)
Ltest$124:
	incq	%rcx
Ltest$121:
	cmpq	$31, %rcx
	jb  	Ltest$122
	movq	$0, %rcx
	imulq	$370, (%rsp), %rdi
	jmp 	Ltest$119
Ltest$120:
	movq	%rcx, %r9
	imulq	$370, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rdi, %r9
	addq	$6144, %r9
	addq	%r8, %r9
	movl	144(%rsp,%rcx,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rcx
Ltest$119:
	cmpq	$3, %rcx
	jb  	Ltest$120
	incq	%r8
	movl	84(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	88(%rsp), %ecx
	movl	%ecx, 100(%rsp)
	movl	92(%rsp), %ecx
	movl	%ecx, 104(%rsp)
	movl	72(%rsp), %ecx
	movl	%ecx, 84(%rsp)
	movl	76(%rsp), %ecx
	movl	%ecx, 88(%rsp)
	movl	80(%rsp), %ecx
	movl	%ecx, 92(%rsp)
	movq	$30, %rcx
	movl	60(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$117
Ltest$118:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$117:
	cmpq	$0, %r10
	jnbe	Ltest$118
	orl 	%edi, %r9d
	movl	%r9d, 72(%rsp)
	movl	64(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$115
Ltest$116:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$115:
	cmpq	$0, %r10
	jnbe	Ltest$116
	orl 	%edi, %r9d
	movl	%r9d, 76(%rsp)
	movl	68(%rsp), %edi
	movl	%edi, %r9d
	shll	%cl, %r9d
	movq	$32, %r10
	subq	%rcx, %r10
	jmp 	Ltest$113
Ltest$114:
	shrl	$1, %edi
	addq	$-1, %r10
Ltest$113:
	cmpq	$0, %r10
	jnbe	Ltest$114
	orl 	%edi, %r9d
	movl	%r9d, 80(%rsp)
	movl	48(%rsp), %ecx
	movl	%ecx, 60(%rsp)
	movl	52(%rsp), %ecx
	movl	%ecx, 64(%rsp)
	movl	56(%rsp), %ecx
	movl	%ecx, 68(%rsp)
	movl	36(%rsp), %ecx
	movl	%ecx, 48(%rsp)
	movl	40(%rsp), %ecx
	movl	%ecx, 52(%rsp)
	movl	44(%rsp), %ecx
	movl	%ecx, 56(%rsp)
	incq	16(%rsp)
Ltest$111:
	cmpq	$80, 16(%rsp)
	jb  	Ltest$112
	movl	180(%rsp), %ecx
	movl	%ecx, 200(%rsp)
	movl	180(%rsp), %ecx
	movl	%ecx, 204(%rsp)
	movl	180(%rsp), %ecx
	movl	%ecx, 208(%rsp)
	movl	184(%rsp), %ecx
	movl	%ecx, 212(%rsp)
	movl	184(%rsp), %ecx
	movl	%ecx, 216(%rsp)
	movl	184(%rsp), %ecx
	movl	%ecx, 220(%rsp)
	movl	188(%rsp), %ecx
	movl	%ecx, 224(%rsp)
	movl	188(%rsp), %ecx
	movl	%ecx, 228(%rsp)
	movl	188(%rsp), %ecx
	movl	%ecx, 232(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 236(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 240(%rsp)
	movl	192(%rsp), %ecx
	movl	%ecx, 244(%rsp)
	movl	196(%rsp), %ecx
	movl	%ecx, 248(%rsp)
	movl	196(%rsp), %ecx
	movl	%ecx, 252(%rsp)
	movl	196(%rsp), %ecx
	movl	%ecx, 256(%rsp)
	movq	$0, %rdi
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	200(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	204(%rsp), %ecx
	movl	%ecx, 100(%rsp)
	movl	208(%rsp), %ecx
	movl	%ecx, 104(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$109
Ltest$110:
	movq	%rcx, %r9
	imulq	$4, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rax, %r9
	movl	(%rsi,%r9), %r9d
	movl	%r9d, 108(%rsp,%rcx,4)
	incq	%rcx
Ltest$109:
	cmpq	$3, %rcx
	jb  	Ltest$110
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$93
Ltest$94:
	movq	$0, %r9
	jmp 	Ltest$107
Ltest$108:
	movl	200(%rsp,%rdi,4), %r10d
	movl	36(%rsp,%r9,4), %r11d
	xorl	%r11d, %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 132(%rsp,%r9,4)
	movl	%r10d, 144(%rsp,%r9,4)
	incq	%r9
Ltest$107:
	cmpq	$3, %r9
	jb  	Ltest$108
	movq	$1, %r9
	movq	$0, %r10
	movl	108(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	108(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	132(%rsp), %r9d
	andl	148(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	144(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	144(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$0, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$105
Ltest$106:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$105:
	cmpq	$0, %r11
	jnbe	Ltest$106
	cmpl	$1, %ebp
	je  	Ltest$103
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$104
Ltest$103:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$104:
	movq	$2, %r9
	movq	$1, %r10
	movl	108(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	108(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	136(%rsp), %r9d
	andl	152(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	148(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	148(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$1, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$101
Ltest$102:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$101:
	cmpq	$0, %r11
	jnbe	Ltest$102
	cmpl	$1, %ebp
	je  	Ltest$99
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$100
Ltest$99:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$100:
	movq	$0, %r9
	movq	$2, %r10
	movl	108(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	108(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	140(%rsp), %r9d
	andl	144(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	152(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	152(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$2, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$97
Ltest$98:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$97:
	cmpq	$0, %r11
	jnbe	Ltest$98
	cmpl	$1, %ebp
	je  	Ltest$95
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$96
Ltest$95:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$96:
	incq	%rcx
Ltest$93:
	cmpq	$31, %rcx
	jb  	Ltest$94
	movq	$0, %rdi
	jmp 	Ltest$91
Ltest$92:
	movl	96(%rsp,%rcx,4), %r9d
	xorl	48(%rsp,%rcx,4), %r9d
	xorl	36(%rsp,%rcx,4), %r9d
	movl	%r9d, 200(%rsp,%rcx,4)
	movq	%rdi, %r9
	imulq	$365, %r9, %r9
	imulq	8(%rsp), %r9
	addq	$768, %r9
	addq	%r8, %r9
	movl	36(%rsp,%rdi,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rdi
Ltest$91:
	cmpq	$3, %rdi
	jb  	Ltest$92
	incq	%r8
	movq	$1, %rdi
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	200(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	204(%rsp), %ecx
	movl	%ecx, 100(%rsp)
	movl	208(%rsp), %ecx
	movl	%ecx, 104(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$89
Ltest$90:
	movq	%rcx, %r9
	imulq	$4, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rax, %r9
	movl	(%rsi,%r9), %r9d
	movl	%r9d, 48(%rsp,%rcx,4)
	incq	%rcx
Ltest$89:
	cmpq	$3, %rcx
	jb  	Ltest$90
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$73
Ltest$74:
	movq	$0, %r9
	jmp 	Ltest$87
Ltest$88:
	movl	200(%rsp,%rdi,4), %r10d
	movl	36(%rsp,%r9,4), %r11d
	xorl	%r11d, %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 132(%rsp,%r9,4)
	movl	%r10d, 108(%rsp,%r9,4)
	incq	%r9
Ltest$87:
	cmpq	$3, %r9
	jb  	Ltest$88
	movq	$1, %r9
	movq	$0, %r10
	movl	48(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	48(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	132(%rsp), %r9d
	andl	112(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	108(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	108(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$0, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$85
Ltest$86:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$85:
	cmpq	$0, %r11
	jnbe	Ltest$86
	cmpl	$1, %ebp
	je  	Ltest$83
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$84
Ltest$83:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$84:
	movq	$2, %r9
	movq	$1, %r10
	movl	48(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	48(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	136(%rsp), %r9d
	andl	116(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	112(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	112(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$1, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$81
Ltest$82:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$81:
	cmpq	$0, %r11
	jnbe	Ltest$82
	cmpl	$1, %ebp
	je  	Ltest$79
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$80
Ltest$79:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$80:
	movq	$0, %r9
	movq	$2, %r10
	movl	48(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	48(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	140(%rsp), %r9d
	andl	108(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	116(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	116(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$2, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$77
Ltest$78:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$77:
	cmpq	$0, %r11
	jnbe	Ltest$78
	cmpl	$1, %ebp
	je  	Ltest$75
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$76
Ltest$75:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$76:
	incq	%rcx
Ltest$73:
	cmpq	$31, %rcx
	jb  	Ltest$74
	movq	$0, %rdi
	jmp 	Ltest$71
Ltest$72:
	movl	96(%rsp,%rcx,4), %r9d
	xorl	60(%rsp,%rcx,4), %r9d
	xorl	36(%rsp,%rcx,4), %r9d
	movl	%r9d, 200(%rsp,%rcx,4)
	movq	%rdi, %r9
	imulq	$365, %r9, %r9
	imulq	8(%rsp), %r9
	addq	$768, %r9
	addq	%r8, %r9
	movl	36(%rsp,%rdi,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rdi
Ltest$71:
	cmpq	$3, %rdi
	jb  	Ltest$72
	incq	%r8
	movq	$2, %rdi
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	200(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	204(%rsp), %ecx
	movl	%ecx, 100(%rsp)
	movl	208(%rsp), %ecx
	movl	%ecx, 104(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$69
Ltest$70:
	movq	%rcx, %r9
	imulq	$4, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rax, %r9
	movl	(%rsi,%r9), %r9d
	movl	%r9d, 60(%rsp,%rcx,4)
	incq	%rcx
Ltest$69:
	cmpq	$3, %rcx
	jb  	Ltest$70
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$53
Ltest$54:
	movq	$0, %r9
	jmp 	Ltest$67
Ltest$68:
	movl	200(%rsp,%rdi,4), %r10d
	movl	36(%rsp,%r9,4), %r11d
	xorl	%r11d, %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 132(%rsp,%r9,4)
	movl	%r10d, 48(%rsp,%r9,4)
	incq	%r9
Ltest$67:
	cmpq	$3, %r9
	jb  	Ltest$68
	movq	$1, %r9
	movq	$0, %r10
	movl	60(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	60(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	132(%rsp), %r9d
	andl	52(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	48(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	48(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$0, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$65
Ltest$66:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$65:
	cmpq	$0, %r11
	jnbe	Ltest$66
	cmpl	$1, %ebp
	je  	Ltest$63
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$64
Ltest$63:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$64:
	movq	$2, %r9
	movq	$1, %r10
	movl	60(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	60(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	136(%rsp), %r9d
	andl	56(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	52(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	52(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$1, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$61
Ltest$62:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$61:
	cmpq	$0, %r11
	jnbe	Ltest$62
	cmpl	$1, %ebp
	je  	Ltest$59
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$60
Ltest$59:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$60:
	movq	$0, %r9
	movq	$2, %r10
	movl	60(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	60(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	140(%rsp), %r9d
	andl	48(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	56(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	56(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$2, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$57
Ltest$58:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$57:
	cmpq	$0, %r11
	jnbe	Ltest$58
	cmpl	$1, %ebp
	je  	Ltest$55
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$56
Ltest$55:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$56:
	incq	%rcx
Ltest$53:
	cmpq	$31, %rcx
	jb  	Ltest$54
	movq	$0, %rdi
	jmp 	Ltest$51
Ltest$52:
	movl	96(%rsp,%rcx,4), %r9d
	xorl	72(%rsp,%rcx,4), %r9d
	xorl	36(%rsp,%rcx,4), %r9d
	movl	%r9d, 200(%rsp,%rcx,4)
	movq	%rdi, %r9
	imulq	$365, %r9, %r9
	imulq	8(%rsp), %r9
	addq	$768, %r9
	addq	%r8, %r9
	movl	36(%rsp,%rdi,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rdi
Ltest$51:
	cmpq	$3, %rdi
	jb  	Ltest$52
	incq	%r8
	movq	$3, %rdi
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movl	200(%rsp), %ecx
	movl	%ecx, 96(%rsp)
	movl	204(%rsp), %ecx
	movl	%ecx, 100(%rsp)
	movl	208(%rsp), %ecx
	movl	%ecx, 104(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$49
Ltest$50:
	movq	%rcx, %r9
	imulq	$4, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rax, %r9
	movl	(%rsi,%r9), %r9d
	movl	%r9d, 72(%rsp,%rcx,4)
	incq	%rcx
Ltest$49:
	cmpq	$3, %rcx
	jb  	Ltest$50
	incq	%rax
	movq	$0, %rcx
	jmp 	Ltest$33
Ltest$34:
	movq	$0, %r9
	jmp 	Ltest$47
Ltest$48:
	movl	200(%rsp,%rdi,4), %r10d
	movl	36(%rsp,%r9,4), %r11d
	xorl	%r11d, %r10d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	%r10d, 132(%rsp,%r9,4)
	movl	%r10d, 60(%rsp,%r9,4)
	incq	%r9
Ltest$47:
	cmpq	$3, %r9
	jb  	Ltest$48
	movq	$1, %r9
	movq	$0, %r10
	movl	72(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	72(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	132(%rsp), %r9d
	andl	64(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	60(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	60(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$0, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$45
Ltest$46:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$45:
	cmpq	$0, %r11
	jnbe	Ltest$46
	cmpl	$1, %ebp
	je  	Ltest$43
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$44
Ltest$43:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$44:
	movq	$2, %r9
	movq	$1, %r10
	movl	72(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	72(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	136(%rsp), %r9d
	andl	68(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	64(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	136(%rsp), %ebp
	andl	64(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$1, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$41
Ltest$42:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$41:
	cmpq	$0, %r11
	jnbe	Ltest$42
	cmpl	$1, %ebp
	je  	Ltest$39
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$40
Ltest$39:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$40:
	movq	$0, %r9
	movq	$2, %r10
	movl	72(%rsp,%r9,4), %r9d
	movl	36(%rsp,%r10,4), %r11d
	movl	72(%rsp,%r10,4), %r10d
	movl	%r9d, %ebp
	shrl	%cl, %ebp
	andl	$1, %ebp
	shrl	%cl, %r11d
	andl	$1, %r11d
	shrl	%cl, %r10d
	andl	$1, %r10d
	movl	140(%rsp), %r9d
	andl	60(%rsp), %r9d
	xorl	%ebp, %r9d
	movl	132(%rsp), %ebp
	andl	68(%rsp), %ebp
	xorl	%ebp, %r9d
	movl	140(%rsp), %ebp
	andl	68(%rsp), %ebp
	xorl	%ebp, %r9d
	xorl	%r11d, %r9d
	xorl	%r10d, %r9d
	movq	$2, %r10
	movq	%rcx, %r11
	incq	%r11
	movl	$1, %ebp
	andl	%r9d, %ebp
	movl	$1, %r9d
	jmp 	Ltest$37
Ltest$38:
	shll	$1, %r9d
	addq	$-1, %r11
Ltest$37:
	cmpq	$0, %r11
	jnbe	Ltest$38
	cmpl	$1, %ebp
	je  	Ltest$35
	xorl	$-1, %r9d
	andl	%r9d, 36(%rsp,%r10,4)
	jmp 	Ltest$36
Ltest$35:
	orl 	%r9d, 36(%rsp,%r10,4)
Ltest$36:
	incq	%rcx
Ltest$33:
	cmpq	$31, %rcx
	jb  	Ltest$34
	movq	$0, %rdi
	jmp 	Ltest$31
Ltest$32:
	movl	96(%rsp,%rcx,4), %r9d
	xorl	84(%rsp,%rcx,4), %r9d
	xorl	36(%rsp,%rcx,4), %r9d
	movl	%r9d, 200(%rsp,%rcx,4)
	movq	%rdi, %r9
	imulq	$365, %r9, %r9
	imulq	8(%rsp), %r9
	addq	$768, %r9
	addq	%r8, %r9
	movl	36(%rsp,%rdi,4), %r10d
	movl	%r10d, (%rdx,%r9)
	incq	%rdi
Ltest$31:
	cmpq	$3, %rdi
	jb  	Ltest$32
	incq	%r8
	movq	$4, %rdi
	movl	$0, 36(%rsp)
	movl	$0, 40(%rsp)
	movl	$0, 44(%rsp)
	movq	$0, %rcx
	jmp 	Ltest$29
Ltest$30:
	movq	%rcx, %r9
	imulq	$4, %r9, %r9
	imulq	8(%rsp), %r9
	addq	%rax, %r9
	movl	(%rsi,%r9), %r9d
	movl	%r9d, 96(%rsp,%rcx,4)
	incq	%rcx
Ltest$29:
	cmpq	$3, %rcx
	jb  	Ltest$30
	movq	$0, %rcx
	jmp 	Ltest$13
Ltest$14:
	movq	$0, %rax
	jmp 	Ltest$27
Ltest$28:
	movl	200(%rsp,%rdi,4), %esi
	movl	36(%rsp,%rax,4), %r9d
	xorl	%r9d, %esi
	shrl	%cl, %esi
	andl	$1, %esi
	movl	%esi, 72(%rsp,%rax,4)
	movl	%esi, 84(%rsp,%rax,4)
	incq	%rax
Ltest$27:
	cmpq	$3, %rax
	jb  	Ltest$28
	movq	$1, %rax
	movq	$0, %rsi
	movl	96(%rsp,%rax,4), %eax
	movl	36(%rsp,%rsi,4), %r9d
	movl	96(%rsp,%rsi,4), %esi
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %esi
	andl	$1, %esi
	movl	72(%rsp), %r10d
	andl	88(%rsp), %r10d
	xorl	%eax, %r10d
	movl	76(%rsp), %eax
	andl	84(%rsp), %eax
	xorl	%eax, %r10d
	movl	72(%rsp), %eax
	andl	84(%rsp), %eax
	xorl	%eax, %r10d
	xorl	%r9d, %r10d
	xorl	%esi, %r10d
	movq	$0, %rax
	movq	%rcx, %rsi
	incq	%rsi
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$25
Ltest$26:
	shll	$1, %r10d
	addq	$-1, %rsi
Ltest$25:
	cmpq	$0, %rsi
	jnbe	Ltest$26
	cmpl	$1, %r9d
	je  	Ltest$23
	xorl	$-1, %r10d
	andl	%r10d, 36(%rsp,%rax,4)
	jmp 	Ltest$24
Ltest$23:
	orl 	%r10d, 36(%rsp,%rax,4)
Ltest$24:
	movq	$2, %rax
	movq	$1, %rsi
	movl	96(%rsp,%rax,4), %eax
	movl	36(%rsp,%rsi,4), %r9d
	movl	96(%rsp,%rsi,4), %esi
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %esi
	andl	$1, %esi
	movl	76(%rsp), %r10d
	andl	92(%rsp), %r10d
	xorl	%eax, %r10d
	movl	80(%rsp), %eax
	andl	88(%rsp), %eax
	xorl	%eax, %r10d
	movl	76(%rsp), %eax
	andl	88(%rsp), %eax
	xorl	%eax, %r10d
	xorl	%r9d, %r10d
	xorl	%esi, %r10d
	movq	$1, %rax
	movq	%rcx, %rsi
	incq	%rsi
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$21
Ltest$22:
	shll	$1, %r10d
	addq	$-1, %rsi
Ltest$21:
	cmpq	$0, %rsi
	jnbe	Ltest$22
	cmpl	$1, %r9d
	je  	Ltest$19
	xorl	$-1, %r10d
	andl	%r10d, 36(%rsp,%rax,4)
	jmp 	Ltest$20
Ltest$19:
	orl 	%r10d, 36(%rsp,%rax,4)
Ltest$20:
	movq	$0, %rax
	movq	$2, %rsi
	movl	96(%rsp,%rax,4), %eax
	movl	36(%rsp,%rsi,4), %r9d
	movl	96(%rsp,%rsi,4), %esi
	shrl	%cl, %eax
	andl	$1, %eax
	shrl	%cl, %r9d
	andl	$1, %r9d
	shrl	%cl, %esi
	andl	$1, %esi
	movl	80(%rsp), %r10d
	andl	84(%rsp), %r10d
	xorl	%eax, %r10d
	movl	72(%rsp), %eax
	andl	92(%rsp), %eax
	xorl	%eax, %r10d
	movl	80(%rsp), %eax
	andl	92(%rsp), %eax
	xorl	%eax, %r10d
	xorl	%r9d, %r10d
	xorl	%esi, %r10d
	movq	$2, %rax
	movq	%rcx, %rsi
	incq	%rsi
	movl	$1, %r9d
	andl	%r10d, %r9d
	movl	$1, %r10d
	jmp 	Ltest$17
Ltest$18:
	shll	$1, %r10d
	addq	$-1, %rsi
Ltest$17:
	cmpq	$0, %rsi
	jnbe	Ltest$18
	cmpl	$1, %r9d
	je  	Ltest$15
	xorl	$-1, %r10d
	andl	%r10d, 36(%rsp,%rax,4)
	jmp 	Ltest$16
Ltest$15:
	orl 	%r10d, 36(%rsp,%rax,4)
Ltest$16:
	incq	%rcx
Ltest$13:
	cmpq	$31, %rcx
	jb  	Ltest$14
	movq	$0, %rax
	jmp 	Ltest$11
Ltest$12:
	movq	%rax, %rcx
	imulq	$365, %rcx, %rcx
	imulq	8(%rsp), %rcx
	addq	$768, %rcx
	addq	%r8, %rcx
	movl	36(%rsp,%rax,4), %esi
	movl	%esi, (%rdx,%rcx)
	incq	%rax
Ltest$11:
	cmpq	$3, %rax
	jb  	Ltest$12
	movq	$0, 8(%rsp)
	jmp 	Ltest$1
Ltest$2:
	movq	$0, %rax
	jmp 	Ltest$9
Ltest$10:
	incq	%rax
Ltest$9:
	cmpq	$3, %rax
	jb  	Ltest$10
	movq	$0, %rax
	jmp 	Ltest$7
Ltest$8:
	incq	%rax
Ltest$7:
	cmpq	$3, %rax
	jb  	Ltest$8
	movq	$0, %rax
	jmp 	Ltest$5
Ltest$6:
	incq	%rax
Ltest$5:
	cmpq	$3, %rax
	jb  	Ltest$6
	movq	$0, 16(%rsp)
	jmp 	Ltest$3
Ltest$4:
	incq	16(%rsp)
Ltest$3:
	cmpq	$3, 16(%rsp)
	jb  	Ltest$4
	incq	8(%rsp)
Ltest$1:
	cmpq	$5, 8(%rsp)
	jb  	Ltest$2
	movq	1424(%rsp), %rbp
	movq	1416(%rsp), %rsp
	ret 
