	.text
	.p2align	5
	.globl	_zkboo_decrypt
	.globl	zkboo_decrypt
_zkboo_decrypt:
zkboo_decrypt:
	movq	%rsp, %rax
	leaq	-4936(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, 4880(%rsp)
	movq	%rbx, 4888(%rsp)
	movq	%rbp, 4896(%rsp)
	movq	%r12, 4904(%rsp)
	movq	%r13, 4912(%rsp)
	movq	%r14, 4920(%rsp)
	movq	%r15, 4928(%rsp)
	movq	$128, 24(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$347
Lzkboo_decrypt$348:
	incq	%rax
Lzkboo_decrypt$347:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$348
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$338
Lzkboo_decrypt$339:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_decrypt$340
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$345
Lzkboo_decrypt$346:
	incq	%rdx
Lzkboo_decrypt$345:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$346
	jmp 	Lzkboo_decrypt$343
Lzkboo_decrypt$344:
	incq	%rdx
Lzkboo_decrypt$343:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$344
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$341
Lzkboo_decrypt$342:
	incq	%rdx
Lzkboo_decrypt$341:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$342
	movq	$0, (%rsp)
Lzkboo_decrypt$340:
	incq	%rax
Lzkboo_decrypt$338:
	cmpq	$20, %rax
	jb  	Lzkboo_decrypt$339
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$329
Lzkboo_decrypt$330:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_decrypt$331
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$336
Lzkboo_decrypt$337:
	incq	%rdx
Lzkboo_decrypt$336:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$337
	jmp 	Lzkboo_decrypt$334
Lzkboo_decrypt$335:
	incq	%rdx
Lzkboo_decrypt$334:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$335
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$332
Lzkboo_decrypt$333:
	incq	%rdx
Lzkboo_decrypt$332:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$333
	movq	$0, (%rsp)
Lzkboo_decrypt$331:
	incq	%rax
Lzkboo_decrypt$329:
	cmpq	$3072, %rax
	jb  	Lzkboo_decrypt$330
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$320
Lzkboo_decrypt$321:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_decrypt$322
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$327
Lzkboo_decrypt$328:
	incq	%rdx
Lzkboo_decrypt$327:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$328
	jmp 	Lzkboo_decrypt$325
Lzkboo_decrypt$326:
	incq	%rdx
Lzkboo_decrypt$325:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$326
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$323
Lzkboo_decrypt$324:
	incq	%rdx
Lzkboo_decrypt$323:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$324
	movq	$0, (%rsp)
Lzkboo_decrypt$322:
	incq	%rax
Lzkboo_decrypt$320:
	cmpq	$3072, %rax
	jb  	Lzkboo_decrypt$321
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	Lzkboo_decrypt$306
	incq	%rax
	jmp 	Lzkboo_decrypt$318
Lzkboo_decrypt$319:
	incq	%rax
Lzkboo_decrypt$318:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$319
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$316
Lzkboo_decrypt$317:
	incq	%rax
Lzkboo_decrypt$316:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$317
	jmp 	Lzkboo_decrypt$314
Lzkboo_decrypt$315:
	incq	%rax
Lzkboo_decrypt$314:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$315
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$312
Lzkboo_decrypt$313:
	incq	%rax
Lzkboo_decrypt$312:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$313
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$310
Lzkboo_decrypt$311:
	incq	%rax
Lzkboo_decrypt$310:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$311
	jmp 	Lzkboo_decrypt$307
Lzkboo_decrypt$306:
	incq	%rax
	jmp 	Lzkboo_decrypt$308
Lzkboo_decrypt$309:
	incq	%rax
Lzkboo_decrypt$308:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$309
Lzkboo_decrypt$307:
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$304
Lzkboo_decrypt$305:
	incq	%rax
Lzkboo_decrypt$304:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$305
	jmp 	Lzkboo_decrypt$302
Lzkboo_decrypt$303:
	incq	%rax
Lzkboo_decrypt$302:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$303
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$300
Lzkboo_decrypt$301:
	incq	%rax
Lzkboo_decrypt$300:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$301
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$298
Lzkboo_decrypt$299:
	incq	%rax
Lzkboo_decrypt$298:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$299
	movq	$0, %rax
	movl	$0, 1064(%rsp)
	jmp 	Lzkboo_decrypt$258
Lzkboo_decrypt$259:
	cmpl	$256, 1064(%rsp)
	jb  	Lzkboo_decrypt$266
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$289
Lzkboo_decrypt$290:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	Lzkboo_decrypt$291
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$296
Lzkboo_decrypt$297:
	incq	%r11
Lzkboo_decrypt$296:
	cmpq	$16, %r11
	jb  	Lzkboo_decrypt$297
	jmp 	Lzkboo_decrypt$294
Lzkboo_decrypt$295:
	incq	%r11
Lzkboo_decrypt$294:
	cmpq	$64, %r11
	jb  	Lzkboo_decrypt$295
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$292
Lzkboo_decrypt$293:
	incq	%r11
Lzkboo_decrypt$292:
	cmpq	$64, %r11
	jb  	Lzkboo_decrypt$293
	movq	$0, (%rsp)
Lzkboo_decrypt$291:
	incq	%rdx
Lzkboo_decrypt$289:
	cmpq	$32, %rdx
	jb  	Lzkboo_decrypt$290
	movq	(%rsp), %rdx
	cmpq	$14, (%rsp)
	jb  	Lzkboo_decrypt$275
	incq	%rdx
	jmp 	Lzkboo_decrypt$287
Lzkboo_decrypt$288:
	incq	%rdx
Lzkboo_decrypt$287:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$288
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$285
Lzkboo_decrypt$286:
	incq	%rdx
Lzkboo_decrypt$285:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$286
	jmp 	Lzkboo_decrypt$283
Lzkboo_decrypt$284:
	incq	%rdx
Lzkboo_decrypt$283:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$284
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$281
Lzkboo_decrypt$282:
	incq	%rdx
Lzkboo_decrypt$281:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$282
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$279
Lzkboo_decrypt$280:
	incq	%rdx
Lzkboo_decrypt$279:
	cmpq	$14, %rdx
	jb  	Lzkboo_decrypt$280
	jmp 	Lzkboo_decrypt$276
Lzkboo_decrypt$275:
	incq	%rdx
	jmp 	Lzkboo_decrypt$277
Lzkboo_decrypt$278:
	incq	%rdx
Lzkboo_decrypt$277:
	cmpq	$14, %rdx
	jb  	Lzkboo_decrypt$278
Lzkboo_decrypt$276:
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$273
Lzkboo_decrypt$274:
	incq	%rdx
Lzkboo_decrypt$273:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$274
	jmp 	Lzkboo_decrypt$271
Lzkboo_decrypt$272:
	incq	%rdx
Lzkboo_decrypt$271:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$272
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$269
Lzkboo_decrypt$270:
	incq	%rdx
Lzkboo_decrypt$269:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$270
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$267
Lzkboo_decrypt$268:
	incq	%rdx
Lzkboo_decrypt$267:
	cmpq	$8, %rdx
	jb  	Lzkboo_decrypt$268
	movl	$0, 1064(%rsp)
Lzkboo_decrypt$266:
	movl	$0, %edx
	movl	1064(%rsp), %r11d
	incl	%r11d
	movl	%r11d, 1068(%rsp)
	movl	$0, %r11d
	cmpl	$0, %edx
	je  	Lzkboo_decrypt$260
	cmpl	$0, %r11d
	je  	Lzkboo_decrypt$264
	movl	1068(%rsp), %edx
	incl	%edx
	movl	%edx, 1064(%rsp)
	jmp 	Lzkboo_decrypt$258
Lzkboo_decrypt$264:
	movl	1068(%rsp), %edx
	incl	%edx
	movl	%edx, 1064(%rsp)
	incq	%rax
Lzkboo_decrypt$265:
	jmp 	Lzkboo_decrypt$258
Lzkboo_decrypt$260:
	cmpl	$0, %r11d
	je  	Lzkboo_decrypt$262
	movl	1068(%rsp), %edx
	incl	%edx
	movl	%edx, 1064(%rsp)
	incq	%rax
	jmp 	Lzkboo_decrypt$258
Lzkboo_decrypt$262:
	movl	1068(%rsp), %edx
	incl	%edx
	movl	%edx, 1064(%rsp)
	incq	%rax
Lzkboo_decrypt$263:
Lzkboo_decrypt$261:
Lzkboo_decrypt$258:
	cmpq	24(%rsp), %rax
	jb  	Lzkboo_decrypt$259
	movq	$0, %r11
	jmp 	Lzkboo_decrypt$1
Lzkboo_decrypt$2:
	movq	$3, (%rsp)
	movl	$1732584193, 1160(%rsp)
	movl	$-271733879, 1164(%rsp)
	movl	$-1732584194, 1168(%rsp)
	movl	$271733878, 1172(%rsp)
	movl	$-1009589776, 1176(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$256
Lzkboo_decrypt$257:
	incq	%rax
Lzkboo_decrypt$256:
	cmpq	$4, %rax
	jb  	Lzkboo_decrypt$257
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$254
Lzkboo_decrypt$255:
	incq	%rax
Lzkboo_decrypt$254:
	cmpq	$4, %rax
	jb  	Lzkboo_decrypt$255
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$252
Lzkboo_decrypt$253:
	incq	%rax
Lzkboo_decrypt$252:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$253
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$250
Lzkboo_decrypt$251:
	incq	%rax
Lzkboo_decrypt$250:
	cmpq	$370, %rax
	jb  	Lzkboo_decrypt$251
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$248
Lzkboo_decrypt$249:
	incq	%rax
Lzkboo_decrypt$248:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$249
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$246
Lzkboo_decrypt$247:
	incq	%rax
Lzkboo_decrypt$246:
	cmpq	$370, %rax
	jb  	Lzkboo_decrypt$247
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$237
Lzkboo_decrypt$238:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_decrypt$239
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$244
Lzkboo_decrypt$245:
	incq	%rdx
Lzkboo_decrypt$244:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$245
	jmp 	Lzkboo_decrypt$242
Lzkboo_decrypt$243:
	incq	%rdx
Lzkboo_decrypt$242:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$243
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$240
Lzkboo_decrypt$241:
	incq	%rdx
Lzkboo_decrypt$240:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$241
	movq	$0, 8(%rsp)
Lzkboo_decrypt$239:
	incq	%rax
Lzkboo_decrypt$237:
	cmpq	$4, %rax
	jb  	Lzkboo_decrypt$238
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$228
Lzkboo_decrypt$229:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_decrypt$230
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$235
Lzkboo_decrypt$236:
	incq	%rdx
Lzkboo_decrypt$235:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$236
	jmp 	Lzkboo_decrypt$233
Lzkboo_decrypt$234:
	incq	%rdx
Lzkboo_decrypt$233:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$234
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$231
Lzkboo_decrypt$232:
	incq	%rdx
Lzkboo_decrypt$231:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$232
	movq	$0, 8(%rsp)
Lzkboo_decrypt$230:
	incq	%rax
Lzkboo_decrypt$228:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$229
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$219
Lzkboo_decrypt$220:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_decrypt$221
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$226
Lzkboo_decrypt$227:
	incq	%rdx
Lzkboo_decrypt$226:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$227
	jmp 	Lzkboo_decrypt$224
Lzkboo_decrypt$225:
	incq	%rdx
Lzkboo_decrypt$224:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$225
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$222
Lzkboo_decrypt$223:
	incq	%rdx
Lzkboo_decrypt$222:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$223
	movq	$0, 8(%rsp)
Lzkboo_decrypt$221:
	incq	%rax
Lzkboo_decrypt$219:
	cmpq	$370, %rax
	jb  	Lzkboo_decrypt$220
	movq	8(%rsp), %rax
	incq	%rax
	movq	%rax, 32(%rsp)
	cmpq	$16, 32(%rsp)
	jne 	Lzkboo_decrypt$212
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$217
Lzkboo_decrypt$218:
	incq	%rax
Lzkboo_decrypt$217:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$218
	jmp 	Lzkboo_decrypt$215
Lzkboo_decrypt$216:
	incq	%rax
Lzkboo_decrypt$215:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$216
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$213
Lzkboo_decrypt$214:
	incq	%rax
Lzkboo_decrypt$213:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$214
	movq	$0, 32(%rsp)
Lzkboo_decrypt$212:
	movq	32(%rsp), %rax
	cmpq	$14, 32(%rsp)
	jb  	Lzkboo_decrypt$198
	incq	%rax
	jmp 	Lzkboo_decrypt$210
Lzkboo_decrypt$211:
	incq	%rax
Lzkboo_decrypt$210:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$211
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$208
Lzkboo_decrypt$209:
	incq	%rax
Lzkboo_decrypt$208:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$209
	jmp 	Lzkboo_decrypt$206
Lzkboo_decrypt$207:
	incq	%rax
Lzkboo_decrypt$206:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$207
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$204
Lzkboo_decrypt$205:
	incq	%rax
Lzkboo_decrypt$204:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$205
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$202
Lzkboo_decrypt$203:
	incq	%rax
Lzkboo_decrypt$202:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$203
	jmp 	Lzkboo_decrypt$199
Lzkboo_decrypt$198:
	incq	%rax
	jmp 	Lzkboo_decrypt$200
Lzkboo_decrypt$201:
	incq	%rax
Lzkboo_decrypt$200:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$201
Lzkboo_decrypt$199:
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$196
Lzkboo_decrypt$197:
	incq	%rax
Lzkboo_decrypt$196:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$197
	jmp 	Lzkboo_decrypt$194
Lzkboo_decrypt$195:
	incq	%rax
Lzkboo_decrypt$194:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$195
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$192
Lzkboo_decrypt$193:
	incq	%rax
Lzkboo_decrypt$192:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$193
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$190
Lzkboo_decrypt$191:
	movl	1264(%rsp,%rax,4), %edx
	movl	%edx, 1232(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$190:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$191
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$181
Lzkboo_decrypt$182:
	incq	32(%rsp)
	cmpq	$16, 32(%rsp)
	jne 	Lzkboo_decrypt$183
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$188
Lzkboo_decrypt$189:
	incq	%rdx
Lzkboo_decrypt$188:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$189
	jmp 	Lzkboo_decrypt$186
Lzkboo_decrypt$187:
	incq	%rdx
Lzkboo_decrypt$186:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$187
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$184
Lzkboo_decrypt$185:
	incq	%rdx
Lzkboo_decrypt$184:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$185
	movq	$0, 32(%rsp)
Lzkboo_decrypt$183:
	incq	%rax
Lzkboo_decrypt$181:
	cmpq	$4, %rax
	jb  	Lzkboo_decrypt$182
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$172
Lzkboo_decrypt$173:
	incq	32(%rsp)
	cmpq	$16, 32(%rsp)
	jne 	Lzkboo_decrypt$174
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$179
Lzkboo_decrypt$180:
	incq	%rdx
Lzkboo_decrypt$179:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$180
	jmp 	Lzkboo_decrypt$177
Lzkboo_decrypt$178:
	incq	%rdx
Lzkboo_decrypt$177:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$178
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$175
Lzkboo_decrypt$176:
	incq	%rdx
Lzkboo_decrypt$175:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$176
	movq	$0, 32(%rsp)
Lzkboo_decrypt$174:
	incq	%rax
Lzkboo_decrypt$172:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$173
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$163
Lzkboo_decrypt$164:
	incq	32(%rsp)
	cmpq	$16, 32(%rsp)
	jne 	Lzkboo_decrypt$165
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$170
Lzkboo_decrypt$171:
	incq	%rdx
Lzkboo_decrypt$170:
	cmpq	$16, %rdx
	jb  	Lzkboo_decrypt$171
	jmp 	Lzkboo_decrypt$168
Lzkboo_decrypt$169:
	incq	%rdx
Lzkboo_decrypt$168:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$169
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$166
Lzkboo_decrypt$167:
	incq	%rdx
Lzkboo_decrypt$166:
	cmpq	$64, %rdx
	jb  	Lzkboo_decrypt$167
	movq	$0, 32(%rsp)
Lzkboo_decrypt$165:
	incq	%rax
Lzkboo_decrypt$163:
	cmpq	$370, %rax
	jb  	Lzkboo_decrypt$164
	movq	32(%rsp), %rax
	incq	%rax
	movq	%rax, 8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	Lzkboo_decrypt$156
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$161
Lzkboo_decrypt$162:
	incq	%rax
Lzkboo_decrypt$161:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$162
	jmp 	Lzkboo_decrypt$159
Lzkboo_decrypt$160:
	incq	%rax
Lzkboo_decrypt$159:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$160
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$157
Lzkboo_decrypt$158:
	incq	%rax
Lzkboo_decrypt$157:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$158
	movq	$0, 8(%rsp)
Lzkboo_decrypt$156:
	movq	8(%rsp), %rax
	cmpq	$14, 8(%rsp)
	jb  	Lzkboo_decrypt$142
	incq	%rax
	jmp 	Lzkboo_decrypt$154
Lzkboo_decrypt$155:
	incq	%rax
Lzkboo_decrypt$154:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$155
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$152
Lzkboo_decrypt$153:
	incq	%rax
Lzkboo_decrypt$152:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$153
	jmp 	Lzkboo_decrypt$150
Lzkboo_decrypt$151:
	incq	%rax
Lzkboo_decrypt$150:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$151
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$148
Lzkboo_decrypt$149:
	incq	%rax
Lzkboo_decrypt$148:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$149
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$146
Lzkboo_decrypt$147:
	incq	%rax
Lzkboo_decrypt$146:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$147
	jmp 	Lzkboo_decrypt$143
Lzkboo_decrypt$142:
	incq	%rax
	jmp 	Lzkboo_decrypt$144
Lzkboo_decrypt$145:
	incq	%rax
Lzkboo_decrypt$144:
	cmpq	$14, %rax
	jb  	Lzkboo_decrypt$145
Lzkboo_decrypt$143:
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$140
Lzkboo_decrypt$141:
	incq	%rax
Lzkboo_decrypt$140:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$141
	jmp 	Lzkboo_decrypt$138
Lzkboo_decrypt$139:
	incq	%rax
Lzkboo_decrypt$138:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$139
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$136
Lzkboo_decrypt$137:
	incq	%rax
Lzkboo_decrypt$136:
	cmpq	$64, %rax
	jb  	Lzkboo_decrypt$137
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$134
Lzkboo_decrypt$135:
	movl	1264(%rsp,%rax,4), %edx
	movl	%edx, 1200(%rsp,%rax,4)
	incq	%rax
Lzkboo_decrypt$134:
	cmpq	$8, %rax
	jb  	Lzkboo_decrypt$135
	movq	40(%rsp,%r11,8), %rax
	movq	%rax, %rdx
	imulq	%r11, %rdx
	imulq	$8, %rdx, %rdx
	addq	$3072, %rdx
	movq	$0, %rbp
	jmp 	Lzkboo_decrypt$131
Lzkboo_decrypt$132:
	incq	%rdx
	movl	1232(%rsp,%rbp,4), %ebx
	movl	(%rsi,%rdx), %r12d
	cmpl	%r12d, %ebx
	je  	Lzkboo_decrypt$133
	movq	$0, 16(%rsp)
Lzkboo_decrypt$133:
	incq	%rbp
Lzkboo_decrypt$131:
	cmpq	$8, %rbp
	jb  	Lzkboo_decrypt$132
	incq	%rax
	movq	$0, %rdx
	divq	(%rsp)
	imulq	%r11, %rdx
	imulq	$8, %rdx, %rax
	addq	$3072, %rax
	movq	$0, %rdx
	jmp 	Lzkboo_decrypt$128
Lzkboo_decrypt$129:
	incq	%rax
	movl	1200(%rsp,%rdx,4), %ebp
	movl	(%rsi,%rax), %ebx
	cmpl	%ebx, %ebp
	je  	Lzkboo_decrypt$130
	movq	$0, 16(%rsp)
Lzkboo_decrypt$130:
	incq	%rdx
Lzkboo_decrypt$128:
	cmpq	$8, %rdx
	jb  	Lzkboo_decrypt$129
	imulq	$782, %r11, %rax
	addq	$8, %rax
	addq	$16, %rax
	addq	$370, %rax
	movq	$5, %rdx
	jmp 	Lzkboo_decrypt$126
Lzkboo_decrypt$127:
	subq	%rdx, %rax
	movl	(%rdi,%rax), %ebp
	movl	%ebp, 1180(%rsp,%rdx,4)
	addq	%rdx, %rax
	addq	$-1, %rdx
Lzkboo_decrypt$126:
	cmpq	$0, %rdx
	jnbe	Lzkboo_decrypt$127
	movq	40(%rsp,%r11,8), %rbp
	imulq	$8, %rbp, %rbp
	imulq	%r11, %rbp
	jmp 	Lzkboo_decrypt$123
Lzkboo_decrypt$124:
	movl	(%rsi,%rbp), %ebx
	cmpl	%ebx, 1180(%rsp,%rdx,4)
	je  	Lzkboo_decrypt$125
	movq	$0, 16(%rsp)
Lzkboo_decrypt$125:
	incq	%rbp
	incq	%rdx
Lzkboo_decrypt$123:
	cmpq	$5, %rdx
	jb  	Lzkboo_decrypt$124
	addq	$16, %rax
	addq	$370, %rax
	movq	$5, %rbp
	jmp 	Lzkboo_decrypt$121
Lzkboo_decrypt$122:
	subq	%rbp, %rax
	movl	(%rdi,%rax), %edx
	movl	%edx, 1180(%rsp,%rbp,4)
	addq	%rbp, %rax
	addq	$-1, %rbp
Lzkboo_decrypt$121:
	cmpq	$0, %rbp
	jnbe	Lzkboo_decrypt$122
	movq	40(%rsp,%r11,8), %rax
	incq	%rax
	movq	$0, %rdx
	divq	(%rsp)
	imulq	$8, %rdx, %rax
	imulq	%r11, %rax
	jmp 	Lzkboo_decrypt$118
Lzkboo_decrypt$119:
	movl	(%rsi,%rax), %edx
	cmpl	%edx, 1180(%rsp,%rbp,4)
	je  	Lzkboo_decrypt$120
	movq	$0, 16(%rsp)
Lzkboo_decrypt$120:
	incq	%rax
	incq	%rbp
Lzkboo_decrypt$118:
	cmpq	$5, %rbp
	jb  	Lzkboo_decrypt$119
	movq	$0, (%rsp)
	movq	$0, 32(%rsp)
	imulq	$782, %r11, %rdx
	addq	$8, %rdx
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$116
Lzkboo_decrypt$117:
	movl	(%rdi,%rdx), %ebp
	movl	%ebp, 1296(%rsp,%rax,4)
	incq	%rdx
	incq	%rax
Lzkboo_decrypt$116:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$117
	addq	$370, %rdx
	movq	$80, %rbp
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$114
Lzkboo_decrypt$115:
	incq	%rbp
	movl	(%rdi,%rdx), %ebx
	movl	%ebx, 1296(%rsp,%rbp,4)
	incq	%rdx
	incq	%rax
Lzkboo_decrypt$114:
	cmpq	$16, %rax
	jb  	Lzkboo_decrypt$115
	jmp 	Lzkboo_decrypt$104
Lzkboo_decrypt$105:
	movq	%rax, %rdx
	addq	$-3, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	movq	%rax, %rbp
	addq	$-8, %rbp
	xorl	1296(%rsp,%rbp,4), %edx
	movl	%edx, 1072(%rsp)
	movq	%rax, %rdx
	addq	$-3, %rdx
	addq	$80, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	movq	%rax, %rbp
	addq	$-8, %rbp
	addq	$80, %rbp
	xorl	1296(%rsp,%rbp,4), %edx
	movl	%edx, 1076(%rsp)
	movq	%rax, %rdx
	addq	$-14, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	xorl	1072(%rsp), %edx
	movl	%edx, 1072(%rsp)
	movq	%rax, %rdx
	addq	$-14, %rdx
	addq	$80, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	xorl	1076(%rsp), %edx
	movl	%edx, 1076(%rsp)
	movq	%rax, %rdx
	addq	$-16, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	xorl	1072(%rsp), %edx
	movl	%edx, 1072(%rsp)
	movq	%rax, %rdx
	addq	$-16, %rdx
	addq	$80, %rdx
	movl	1296(%rsp,%rdx,4), %edx
	xorl	1076(%rsp), %edx
	movl	%edx, 1076(%rsp)
	movl	1072(%rsp), %edx
	movq	$1, %rbp
	movl	%edx, %ebx
	movq	%rbp, %r12
	jmp 	Lzkboo_decrypt$112
Lzkboo_decrypt$113:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_decrypt$112:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$113
	movq	$32, %r12
	subq	%rbp, %r12
	jmp 	Lzkboo_decrypt$110
Lzkboo_decrypt$111:
	shrl	$1, %edx
	addq	$-1, %r12
Lzkboo_decrypt$110:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$111
	orl 	%edx, %ebx
	movq	%rax, %rdx
	movl	%ebx, 1296(%rsp,%rdx,4)
	movl	1072(%rsp), %edx
	movq	$1, %rbp
	movl	%edx, %ebx
	movq	%rbp, %r12
	jmp 	Lzkboo_decrypt$108
Lzkboo_decrypt$109:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_decrypt$108:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$109
	movq	$32, %r12
	subq	%rbp, %r12
	jmp 	Lzkboo_decrypt$106
Lzkboo_decrypt$107:
	shrl	$1, %edx
	addq	$-1, %r12
Lzkboo_decrypt$106:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$107
	orl 	%edx, %ebx
	movq	%rax, %rdx
	addq	$80, %rdx
	movl	%ebx, 1296(%rsp,%rdx,4)
	incq	%rax
Lzkboo_decrypt$104:
	cmpq	$80, %rax
	jb  	Lzkboo_decrypt$105
	movl	1160(%rsp), %eax
	movl	%eax, 1072(%rsp)
	movl	%eax, 1076(%rsp)
	movl	1164(%rsp), %eax
	movl	%eax, 1080(%rsp)
	movl	%eax, 1084(%rsp)
	movl	1168(%rsp), %eax
	movl	%eax, 1088(%rsp)
	movl	%eax, 1092(%rsp)
	movl	1172(%rsp), %eax
	movl	%eax, 1096(%rsp)
	movl	%eax, 1100(%rsp)
	movl	1176(%rsp), %eax
	movl	%eax, 1104(%rsp)
	movl	%eax, 1108(%rsp)
	movq	$0, %rax
	jmp 	Lzkboo_decrypt$4
Lzkboo_decrypt$5:
	cmpq	$19, %rax
	jnbe	Lzkboo_decrypt$102
	movq	(%rsp), %rdx
	movl	1936(%rsp,%rdx,4), %ebp
	movl	%ebp, 1136(%rsp)
	movl	3408(%rsp,%rdx,4), %edx
	movl	%edx, 1140(%rsp)
	movl	1080(%rsp), %edx
	andl	1132(%rsp), %edx
	movl	1084(%rsp), %ebp
	andl	1128(%rsp), %ebp
	xorl	%ebp, %edx
	movl	1080(%rsp), %ebp
	andl	1128(%rsp), %ebp
	xorl	%ebp, %edx
	xorl	1136(%rsp), %edx
	xorl	1140(%rsp), %edx
	imulq	$782, %r11, %rbp
	addq	$8, %rbp
	addq	$16, %rbp
	addq	32(%rsp), %rbp
	movl	(%rdi,%rbp), %ebp
	cmpl	%edx, %ebp
	je  	Lzkboo_decrypt$102
	movq	$0, 16(%rsp)
Lzkboo_decrypt$103:
Lzkboo_decrypt$102:
	cmpq	$39, %rax
	jbe 	Lzkboo_decrypt$101
Lzkboo_decrypt$101:
	cmpq	$59, %rax
	jbe 	Lzkboo_decrypt$98
	movl	$-899497514, %edx
	jmp 	Lzkboo_decrypt$99
Lzkboo_decrypt$98:
	movl	1080(%rsp), %edx
	xorl	1088(%rsp), %edx
	movl	%edx, 1136(%rsp)
	movl	1084(%rsp), %edx
	xorl	1092(%rsp), %edx
	movl	%edx, 1140(%rsp)
	movl	1080(%rsp), %edx
	xorl	1096(%rsp), %edx
	movl	%edx, 1144(%rsp)
	movl	1084(%rsp), %edx
	xorl	1100(%rsp), %edx
	movl	%edx, 1148(%rsp)
	movq	(%rsp), %rdx
	movl	1936(%rsp,%rdx,4), %ebp
	movl	%ebp, 1152(%rsp)
	movl	3408(%rsp,%rdx,4), %edx
	movl	%edx, 1156(%rsp)
	movl	1136(%rsp), %edx
	andl	1148(%rsp), %edx
	movl	1140(%rsp), %ebp
	andl	1144(%rsp), %ebp
	xorl	%ebp, %edx
	movl	1136(%rsp), %ebp
	andl	1144(%rsp), %ebp
	xorl	%ebp, %edx
	xorl	1152(%rsp), %edx
	xorl	1156(%rsp), %edx
	imulq	$782, %r11, %rbp
	addq	$8, %rbp
	addq	$16, %rbp
	addq	32(%rsp), %rbp
	movl	(%rdi,%rbp), %ebp
	cmpl	%edx, %ebp
	je  	Lzkboo_decrypt$100
	movq	$0, 16(%rsp)
Lzkboo_decrypt$100:
	movl	$-1894007588, %edx
Lzkboo_decrypt$99:
	movq	$5, %rbp
	movl	1072(%rsp), %ebx
	movl	%ebx, %r12d
	movq	%rbp, %r13
	jmp 	Lzkboo_decrypt$96
Lzkboo_decrypt$97:
	shll	$1, %r12d
	addq	$-1, %r13
Lzkboo_decrypt$96:
	cmpq	$0, %r13
	jnbe	Lzkboo_decrypt$97
	movq	$32, %r13
	subq	%rbp, %r13
	jmp 	Lzkboo_decrypt$94
Lzkboo_decrypt$95:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_decrypt$94:
	cmpq	$0, %r13
	jnbe	Lzkboo_decrypt$95
	orl 	%ebx, %r12d
	movl	%r12d, 1120(%rsp)
	movl	1076(%rsp), %ebx
	movl	%ebx, %r12d
	movq	%rbp, %r13
	jmp 	Lzkboo_decrypt$92
Lzkboo_decrypt$93:
	shll	$1, %r12d
	addq	$-1, %r13
Lzkboo_decrypt$92:
	cmpq	$0, %r13
	jnbe	Lzkboo_decrypt$93
	movq	$32, %r13
	subq	%rbp, %r13
	jmp 	Lzkboo_decrypt$90
Lzkboo_decrypt$91:
	shrl	$1, %ebx
	addq	$-1, %r13
Lzkboo_decrypt$90:
	cmpq	$0, %r13
	jnbe	Lzkboo_decrypt$91
	orl 	%ebx, %r12d
	movl	%r12d, 1124(%rsp)
	movl	1936(%rsp,%rcx,4), %ebp
	movl	%ebp, 1152(%rsp)
	movl	3408(%rsp,%rcx,4), %ecx
	movl	%ecx, 1156(%rsp)
	imulq	$782, %r11, %rcx
	addq	32(%rsp), %rcx
	movq	$0, %rbp
	jmp 	Lzkboo_decrypt$71
Lzkboo_decrypt$72:
	movl	1128(%rsp), %ebx
	movl	(%rdi,%rcx), %r12d
	xorl	%r12d, %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$88
Lzkboo_decrypt$89:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$88:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$89
	andl	$1, %ebx
	movl	1132(%rsp), %r12d
	movl	(%rdi,%rcx), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_decrypt$86
Lzkboo_decrypt$87:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_decrypt$86:
	cmpl	$0, %r13d
	jnbe	Lzkboo_decrypt$87
	andl	$1, %r12d
	movl	%r12d, %r13d
	movl	1120(%rsp), %r12d
	movl	(%rdi,%rcx), %r14d
	xorl	%r14d, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_decrypt$84
Lzkboo_decrypt$85:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_decrypt$84:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$85
	andl	$1, %r12d
	movl	1124(%rsp), %r14d
	movl	(%rdi,%rcx), %r15d
	xorl	%r15d, %r14d
	movl	%ebp, %r15d
	jmp 	Lzkboo_decrypt$82
Lzkboo_decrypt$83:
	shrl	$1, %r14d
	addl	$-1, %r15d
Lzkboo_decrypt$82:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$83
	andl	$1, %r14d
	movl	%r14d, %r15d
	movl	%ebx, %r14d
	andl	%r15d, %r14d
	andl	%r12d, %r13d
	xorl	%r13d, %r14d
	movl	1156(%rsp), %r13d
	movl	%ebp, %r15d
	jmp 	Lzkboo_decrypt$80
Lzkboo_decrypt$81:
	shrl	$1, %r13d
	addl	$-1, %r15d
Lzkboo_decrypt$80:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$81
	andl	$1, %r13d
	xorl	%r13d, %r14d
	movl	(%rdi,%rcx), %r13d
	movq	%rbp, %r15
	incq	%r15
	jmp 	Lzkboo_decrypt$78
Lzkboo_decrypt$79:
	shrl	$1, %r13d
	addl	$-1, %r15d
Lzkboo_decrypt$78:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$79
	andl	$1, %r13d
	andl	%r12d, %ebx
	xorl	%ebx, %r14d
	movl	(%rdi,%rcx), %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$76
Lzkboo_decrypt$77:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$76:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$77
	andl	$1, %ebx
	xorl	%ebx, %r14d
	movl	1152(%rsp), %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$74
Lzkboo_decrypt$75:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$74:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$75
	andl	$1, %ebx
	xorl	%ebx, %r14d
	cmpl	%r14d, %r13d
	je  	Lzkboo_decrypt$73
	movq	$0, 16(%rsp)
Lzkboo_decrypt$73:
	incq	%rbp
Lzkboo_decrypt$71:
	cmpq	$31, %rbp
	jb  	Lzkboo_decrypt$72
	movq	32(%rsp), %rcx
	incq	%rcx
	movl	1936(%rsp,%r8,4), %ebp
	movl	%ebp, 1152(%rsp)
	movl	3408(%rsp,%r8,4), %r8d
	movl	%r8d, 1156(%rsp)
	imulq	$782, %r11, %r8
	addq	32(%rsp), %r8
	movq	$0, %rbp
	jmp 	Lzkboo_decrypt$52
Lzkboo_decrypt$53:
	movl	1104(%rsp), %ebx
	movl	(%rdi,%r8), %r12d
	xorl	%r12d, %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$69
Lzkboo_decrypt$70:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$69:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$70
	andl	$1, %ebx
	movl	1108(%rsp), %r12d
	movl	(%rdi,%r8), %r13d
	xorl	%r13d, %r12d
	movl	%ebp, %r13d
	jmp 	Lzkboo_decrypt$67
Lzkboo_decrypt$68:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_decrypt$67:
	cmpl	$0, %r13d
	jnbe	Lzkboo_decrypt$68
	andl	$1, %r12d
	movl	%r12d, %r13d
	movl	1120(%rsp), %r12d
	movl	(%rdi,%r8), %r14d
	xorl	%r14d, %r12d
	movl	%ebp, %r14d
	jmp 	Lzkboo_decrypt$65
Lzkboo_decrypt$66:
	shrl	$1, %r12d
	addl	$-1, %r14d
Lzkboo_decrypt$65:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$66
	andl	$1, %r12d
	movl	1124(%rsp), %r14d
	movl	(%rdi,%r8), %r15d
	xorl	%r15d, %r14d
	movl	%ebp, %r15d
	jmp 	Lzkboo_decrypt$63
Lzkboo_decrypt$64:
	shrl	$1, %r14d
	addl	$-1, %r15d
Lzkboo_decrypt$63:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$64
	andl	$1, %r14d
	movl	%r14d, %r15d
	movl	%ebx, %r14d
	andl	%r15d, %r14d
	andl	%r12d, %r13d
	xorl	%r13d, %r14d
	movl	1156(%rsp), %r13d
	movl	%ebp, %r15d
	jmp 	Lzkboo_decrypt$61
Lzkboo_decrypt$62:
	shrl	$1, %r13d
	addl	$-1, %r15d
Lzkboo_decrypt$61:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$62
	andl	$1, %r13d
	xorl	%r13d, %r14d
	movl	(%rdi,%r8), %r13d
	movq	%rbp, %r15
	incq	%r15
	jmp 	Lzkboo_decrypt$59
Lzkboo_decrypt$60:
	shrl	$1, %r13d
	addl	$-1, %r15d
Lzkboo_decrypt$59:
	cmpl	$0, %r15d
	jnbe	Lzkboo_decrypt$60
	andl	$1, %r13d
	andl	%r12d, %ebx
	xorl	%ebx, %r14d
	movl	(%rdi,%r8), %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$57
Lzkboo_decrypt$58:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$57:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$58
	andl	$1, %ebx
	xorl	%ebx, %r14d
	movl	1152(%rsp), %ebx
	movl	%ebp, %r12d
	jmp 	Lzkboo_decrypt$55
Lzkboo_decrypt$56:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$55:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$56
	andl	$1, %ebx
	xorl	%ebx, %r14d
	cmpl	%r14d, %r13d
	je  	Lzkboo_decrypt$54
	movq	$0, 16(%rsp)
Lzkboo_decrypt$54:
	incq	%rbp
Lzkboo_decrypt$52:
	cmpq	$31, %rbp
	jb  	Lzkboo_decrypt$53
	movq	32(%rsp), %r8
	incq	%r8
	movl	%edx, 1112(%rsp)
	movl	%edx, 1116(%rsp)
	movl	1936(%rsp,%r9,4), %edx
	movl	%edx, 1152(%rsp)
	movl	3408(%rsp,%r9,4), %edx
	movl	%edx, 1156(%rsp)
	imulq	$782, %r11, %rdx
	addq	32(%rsp), %rdx
	movq	$0, %r9
	jmp 	Lzkboo_decrypt$33
Lzkboo_decrypt$34:
	movl	1120(%rsp), %ebp
	movl	(%rdi,%rdx), %ebx
	xorl	%ebx, %ebp
	movl	%r9d, %ebx
	jmp 	Lzkboo_decrypt$50
Lzkboo_decrypt$51:
	shrl	$1, %ebp
	addl	$-1, %ebx
Lzkboo_decrypt$50:
	cmpl	$0, %ebx
	jnbe	Lzkboo_decrypt$51
	andl	$1, %ebp
	movl	1124(%rsp), %ebx
	movl	(%rdi,%rdx), %r12d
	xorl	%r12d, %ebx
	movl	%r9d, %r12d
	jmp 	Lzkboo_decrypt$48
Lzkboo_decrypt$49:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$48:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$49
	andl	$1, %ebx
	movl	1112(%rsp), %r12d
	movl	(%rdi,%rdx), %r13d
	xorl	%r13d, %r12d
	movl	%r9d, %r13d
	jmp 	Lzkboo_decrypt$46
Lzkboo_decrypt$47:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_decrypt$46:
	cmpl	$0, %r13d
	jnbe	Lzkboo_decrypt$47
	andl	$1, %r12d
	movl	1116(%rsp), %r13d
	movl	(%rdi,%rdx), %r14d
	xorl	%r14d, %r13d
	movl	%r9d, %r14d
	jmp 	Lzkboo_decrypt$44
Lzkboo_decrypt$45:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_decrypt$44:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$45
	andl	$1, %r13d
	movl	%r13d, %r14d
	movl	%ebp, %r13d
	andl	%r14d, %r13d
	andl	%r12d, %ebx
	xorl	%ebx, %r13d
	movl	1156(%rsp), %ebx
	movl	%r9d, %r14d
	jmp 	Lzkboo_decrypt$42
Lzkboo_decrypt$43:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_decrypt$42:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$43
	andl	$1, %ebx
	xorl	%ebx, %r13d
	movl	(%rdi,%rdx), %ebx
	movq	%r9, %r14
	incq	%r14
	jmp 	Lzkboo_decrypt$40
Lzkboo_decrypt$41:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_decrypt$40:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$41
	andl	$1, %ebx
	andl	%r12d, %ebp
	xorl	%ebp, %r13d
	movl	(%rdi,%rdx), %ebp
	movl	%r9d, %r12d
	jmp 	Lzkboo_decrypt$38
Lzkboo_decrypt$39:
	shrl	$1, %ebp
	addl	$-1, %r12d
Lzkboo_decrypt$38:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$39
	andl	$1, %ebp
	xorl	%ebp, %r13d
	movl	1152(%rsp), %ebp
	movl	%r9d, %r12d
	jmp 	Lzkboo_decrypt$36
Lzkboo_decrypt$37:
	shrl	$1, %ebp
	addl	$-1, %r12d
Lzkboo_decrypt$36:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$37
	andl	$1, %ebp
	xorl	%ebp, %r13d
	cmpl	%r13d, %ebx
	je  	Lzkboo_decrypt$35
	movq	$0, 16(%rsp)
Lzkboo_decrypt$35:
	incq	%r9
Lzkboo_decrypt$33:
	cmpq	$31, %r9
	jb  	Lzkboo_decrypt$34
	movq	32(%rsp), %r9
	incq	%r9
	movl	1936(%rsp,%r10,4), %edx
	movl	%edx, 1152(%rsp)
	movl	3408(%rsp,%r10,4), %edx
	movl	%edx, 1156(%rsp)
	imulq	$782, %r11, %rdx
	addq	32(%rsp), %rdx
	movq	$0, %r10
	jmp 	Lzkboo_decrypt$14
Lzkboo_decrypt$15:
	movq	%rax, %rbp
	movl	1296(%rsp,%rbp,4), %ebp
	movl	(%rdi,%rdx), %ebx
	xorl	%ebx, %ebp
	movl	%r10d, %ebx
	jmp 	Lzkboo_decrypt$31
Lzkboo_decrypt$32:
	shrl	$1, %ebp
	addl	$-1, %ebx
Lzkboo_decrypt$31:
	cmpl	$0, %ebx
	jnbe	Lzkboo_decrypt$32
	andl	$1, %ebp
	movq	%rax, %rbx
	addq	$80, %rbx
	movl	1296(%rsp,%rbx,4), %ebx
	movl	(%rdi,%rdx), %r12d
	xorl	%r12d, %ebx
	movl	%r10d, %r12d
	jmp 	Lzkboo_decrypt$29
Lzkboo_decrypt$30:
	shrl	$1, %ebx
	addl	$-1, %r12d
Lzkboo_decrypt$29:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$30
	andl	$1, %ebx
	movl	1120(%rsp), %r12d
	movl	(%rdi,%rdx), %r13d
	xorl	%r13d, %r12d
	movl	%r10d, %r13d
	jmp 	Lzkboo_decrypt$27
Lzkboo_decrypt$28:
	shrl	$1, %r12d
	addl	$-1, %r13d
Lzkboo_decrypt$27:
	cmpl	$0, %r13d
	jnbe	Lzkboo_decrypt$28
	andl	$1, %r12d
	movl	1124(%rsp), %r13d
	movl	(%rdi,%rdx), %r14d
	xorl	%r14d, %r13d
	movl	%r10d, %r14d
	jmp 	Lzkboo_decrypt$25
Lzkboo_decrypt$26:
	shrl	$1, %r13d
	addl	$-1, %r14d
Lzkboo_decrypt$25:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$26
	andl	$1, %r13d
	movl	%r13d, %r14d
	movl	%ebp, %r13d
	andl	%r14d, %r13d
	andl	%r12d, %ebx
	xorl	%ebx, %r13d
	movl	1156(%rsp), %ebx
	movl	%r10d, %r14d
	jmp 	Lzkboo_decrypt$23
Lzkboo_decrypt$24:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_decrypt$23:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$24
	andl	$1, %ebx
	xorl	%ebx, %r13d
	movl	(%rdi,%rdx), %ebx
	movq	%r10, %r14
	incq	%r14
	jmp 	Lzkboo_decrypt$21
Lzkboo_decrypt$22:
	shrl	$1, %ebx
	addl	$-1, %r14d
Lzkboo_decrypt$21:
	cmpl	$0, %r14d
	jnbe	Lzkboo_decrypt$22
	andl	$1, %ebx
	andl	%r12d, %ebp
	xorl	%ebp, %r13d
	movl	(%rdi,%rdx), %ebp
	movl	%r10d, %r12d
	jmp 	Lzkboo_decrypt$19
Lzkboo_decrypt$20:
	shrl	$1, %ebp
	addl	$-1, %r12d
Lzkboo_decrypt$19:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$20
	andl	$1, %ebp
	xorl	%ebp, %r13d
	movl	1152(%rsp), %ebp
	movl	%r10d, %r12d
	jmp 	Lzkboo_decrypt$17
Lzkboo_decrypt$18:
	shrl	$1, %ebp
	addl	$-1, %r12d
Lzkboo_decrypt$17:
	cmpl	$0, %r12d
	jnbe	Lzkboo_decrypt$18
	andl	$1, %ebp
	xorl	%ebp, %r13d
	cmpl	%r13d, %ebx
	je  	Lzkboo_decrypt$16
	movq	$0, 16(%rsp)
Lzkboo_decrypt$16:
	incq	%r10
Lzkboo_decrypt$14:
	cmpq	$31, %r10
	jb  	Lzkboo_decrypt$15
	movq	32(%rsp), %r10
	incq	%r10
	movl	1104(%rsp), %edx
	movl	%edx, 1096(%rsp)
	movl	1108(%rsp), %edx
	movl	%edx, 1100(%rsp)
	movl	1096(%rsp), %edx
	movl	%edx, 1088(%rsp)
	movl	1100(%rsp), %edx
	movl	%edx, 1092(%rsp)
	movq	$30, %rdx
	movl	1080(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%rdx, %r12
	jmp 	Lzkboo_decrypt$12
Lzkboo_decrypt$13:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_decrypt$12:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$13
	movq	$32, %r12
	subq	%rdx, %r12
	jmp 	Lzkboo_decrypt$10
Lzkboo_decrypt$11:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_decrypt$10:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$11
	orl 	%ebp, %ebx
	movl	%ebx, 1088(%rsp)
	movl	1084(%rsp), %ebp
	movl	%ebp, %ebx
	movq	%rdx, %r12
	jmp 	Lzkboo_decrypt$8
Lzkboo_decrypt$9:
	shll	$1, %ebx
	addq	$-1, %r12
Lzkboo_decrypt$8:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$9
	movq	$32, %r12
	subq	%rdx, %r12
	jmp 	Lzkboo_decrypt$6
Lzkboo_decrypt$7:
	shrl	$1, %ebp
	addq	$-1, %r12
Lzkboo_decrypt$6:
	cmpq	$0, %r12
	jnbe	Lzkboo_decrypt$7
	orl 	%ebp, %ebx
	movl	%ebx, 1092(%rsp)
	movl	1080(%rsp), %edx
	movl	%edx, 1072(%rsp)
	movl	1084(%rsp), %edx
	movl	%edx, 1076(%rsp)
	movl	1072(%rsp), %edx
	movl	%edx, 1120(%rsp)
	movl	1076(%rsp), %edx
	movl	%edx, 1124(%rsp)
	incq	%rax
Lzkboo_decrypt$4:
	cmpq	$80, %rax
	jb  	Lzkboo_decrypt$5
	cmpq	$0, 16(%rsp)
	jne 	Lzkboo_decrypt$3
	movq	24(%rsp), %r11
Lzkboo_decrypt$3:
	incq	%r11
Lzkboo_decrypt$1:
	cmpq	24(%rsp), %r11
	jb  	Lzkboo_decrypt$2
	movq	4888(%rsp), %rbx
	movq	4896(%rsp), %rbp
	movq	4904(%rsp), %r12
	movq	4912(%rsp), %r13
	movq	4920(%rsp), %r14
	movq	4928(%rsp), %r15
	movq	4880(%rsp), %rsp
	ret 
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
