	.text
	.p2align	5
	.globl	_zkboo
	.globl	zkboo
_zkboo:
zkboo:
	movq	%rsp, %rax
	leaq	-56(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rax, (%rsp)
	movq	%rbx, 8(%rsp)
	movq	%rbp, 16(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r13, 32(%rsp)
	movq	%r14, 40(%rsp)
	movq	%r15, 48(%rsp)
	leaq	-1088(%rsp), %rsp
	leaq	Lzkboo$1(%rip), 	%rbp
	jmp 	LpreparationZKBoo$1
Lzkboo$1:
	leaq	1088(%rsp), %rsp
	movq	8(%rsp), %rbx
	movq	16(%rsp), %rbp
	movq	24(%rsp), %r12
	movq	32(%rsp), %r13
	movq	40(%rsp), %r14
	movq	48(%rsp), %r15
	movq	(%rsp), %rsp
	ret 
LpreparationZKBoo$1:
	movq	$128, 16(%rsp)
	movq	$0, %rax
	jmp 	LpreparationZKBoo$116
LpreparationZKBoo$117:
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$118
LpreparationZKBoo$119:
	movq	$0, %r10
	jmp 	LpreparationZKBoo$120
LpreparationZKBoo$121:
	movq	$0, %r11
	jmp 	LpreparationZKBoo$186
LpreparationZKBoo$187:
	incq	%r11
LpreparationZKBoo$186:
	cmpq	$4, %r11
	jb  	LpreparationZKBoo$187
	movq	$0, %r11
	jmp 	LpreparationZKBoo$184
LpreparationZKBoo$185:
	incq	%r11
LpreparationZKBoo$184:
	cmpq	$16, %r11
	jb  	LpreparationZKBoo$185
	movq	$0, %r11
	jmp 	LpreparationZKBoo$182
LpreparationZKBoo$183:
	incq	%r11
LpreparationZKBoo$182:
	cmpq	$3, %r11
	jb  	LpreparationZKBoo$183
	movq	$0, %r11
	jmp 	LpreparationZKBoo$180
LpreparationZKBoo$181:
	incq	%r11
LpreparationZKBoo$180:
	cmpq	$370, %r11
	jb  	LpreparationZKBoo$181
	movq	$0, %r11
	jmp 	LpreparationZKBoo$171
LpreparationZKBoo$172:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	LpreparationZKBoo$173
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$178
LpreparationZKBoo$179:
	incq	%rbx
LpreparationZKBoo$178:
	cmpq	$16, %rbx
	jb  	LpreparationZKBoo$179
	jmp 	LpreparationZKBoo$176
LpreparationZKBoo$177:
	incq	%rbx
LpreparationZKBoo$176:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$177
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$174
LpreparationZKBoo$175:
	incq	%rbx
LpreparationZKBoo$174:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$175
	movq	$0, 8(%rsp)
LpreparationZKBoo$173:
	incq	%r11
LpreparationZKBoo$171:
	cmpq	$4, %r11
	jb  	LpreparationZKBoo$172
	movq	$0, %r11
	jmp 	LpreparationZKBoo$162
LpreparationZKBoo$163:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	LpreparationZKBoo$164
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$169
LpreparationZKBoo$170:
	incq	%rbx
LpreparationZKBoo$169:
	cmpq	$16, %rbx
	jb  	LpreparationZKBoo$170
	jmp 	LpreparationZKBoo$167
LpreparationZKBoo$168:
	incq	%rbx
LpreparationZKBoo$167:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$168
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$165
LpreparationZKBoo$166:
	incq	%rbx
LpreparationZKBoo$165:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$166
	movq	$0, 8(%rsp)
LpreparationZKBoo$164:
	incq	%r11
LpreparationZKBoo$162:
	cmpq	$16, %r11
	jb  	LpreparationZKBoo$163
	movq	$0, %r11
	jmp 	LpreparationZKBoo$153
LpreparationZKBoo$154:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	LpreparationZKBoo$155
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$160
LpreparationZKBoo$161:
	incq	%rbx
LpreparationZKBoo$160:
	cmpq	$16, %rbx
	jb  	LpreparationZKBoo$161
	jmp 	LpreparationZKBoo$158
LpreparationZKBoo$159:
	incq	%rbx
LpreparationZKBoo$158:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$159
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$156
LpreparationZKBoo$157:
	incq	%rbx
LpreparationZKBoo$156:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$157
	movq	$0, 8(%rsp)
LpreparationZKBoo$155:
	incq	%r11
LpreparationZKBoo$153:
	cmpq	$370, %r11
	jb  	LpreparationZKBoo$154
	movq	$0, %r11
	jmp 	LpreparationZKBoo$144
LpreparationZKBoo$145:
	incq	8(%rsp)
	cmpq	$16, 8(%rsp)
	jne 	LpreparationZKBoo$146
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$151
LpreparationZKBoo$152:
	incq	%rbx
LpreparationZKBoo$151:
	cmpq	$16, %rbx
	jb  	LpreparationZKBoo$152
	jmp 	LpreparationZKBoo$149
LpreparationZKBoo$150:
	incq	%rbx
LpreparationZKBoo$149:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$150
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$147
LpreparationZKBoo$148:
	incq	%rbx
LpreparationZKBoo$147:
	cmpq	$64, %rbx
	jb  	LpreparationZKBoo$148
	movq	$0, 8(%rsp)
LpreparationZKBoo$146:
	incq	%r11
LpreparationZKBoo$144:
	cmpq	$3, %r11
	jb  	LpreparationZKBoo$145
	movq	8(%rsp), %r11
	cmpq	$14, 8(%rsp)
	jb  	LpreparationZKBoo$130
	incq	%r11
	jmp 	LpreparationZKBoo$142
LpreparationZKBoo$143:
	incq	%r11
LpreparationZKBoo$142:
	cmpq	$16, %r11
	jb  	LpreparationZKBoo$143
	movq	$0, %r11
	jmp 	LpreparationZKBoo$140
LpreparationZKBoo$141:
	incq	%r11
LpreparationZKBoo$140:
	cmpq	$16, %r11
	jb  	LpreparationZKBoo$141
	jmp 	LpreparationZKBoo$138
LpreparationZKBoo$139:
	incq	%r11
LpreparationZKBoo$138:
	cmpq	$64, %r11
	jb  	LpreparationZKBoo$139
	movq	$0, %r11
	jmp 	LpreparationZKBoo$136
LpreparationZKBoo$137:
	incq	%r11
LpreparationZKBoo$136:
	cmpq	$64, %r11
	jb  	LpreparationZKBoo$137
	movq	$0, %r11
	jmp 	LpreparationZKBoo$134
LpreparationZKBoo$135:
	incq	%r11
LpreparationZKBoo$134:
	cmpq	$14, %r11
	jb  	LpreparationZKBoo$135
	jmp 	LpreparationZKBoo$131
LpreparationZKBoo$130:
	incq	%r11
	jmp 	LpreparationZKBoo$132
LpreparationZKBoo$133:
	incq	%r11
LpreparationZKBoo$132:
	cmpq	$14, %r11
	jb  	LpreparationZKBoo$133
LpreparationZKBoo$131:
	movq	$0, %r11
	jmp 	LpreparationZKBoo$128
LpreparationZKBoo$129:
	incq	%r11
LpreparationZKBoo$128:
	cmpq	$16, %r11
	jb  	LpreparationZKBoo$129
	jmp 	LpreparationZKBoo$126
LpreparationZKBoo$127:
	incq	%r11
LpreparationZKBoo$126:
	cmpq	$64, %r11
	jb  	LpreparationZKBoo$127
	movq	$0, %r11
	jmp 	LpreparationZKBoo$124
LpreparationZKBoo$125:
	incq	%r11
LpreparationZKBoo$124:
	cmpq	$64, %r11
	jb  	LpreparationZKBoo$125
	movq	%r10, %r11
	imulq	$8, %r11, %r11
	imulq	16(%rsp), %r11
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$122
LpreparationZKBoo$123:
	movq	%rsi, %r12
	imulq	$4, %r12, %r12
	addq	%r11, %r12
	addq	$384, %r12
	addq	%rbx, %r12
	movl	1056(%rsp,%rbx,4), %r13d
	movl	%r13d, (%r9,%r12)
	incq	%rbx
LpreparationZKBoo$122:
	cmpq	$8, %rbx
	jb  	LpreparationZKBoo$123
	incq	%r10
LpreparationZKBoo$120:
	cmpq	$3, %r10
	jb  	LpreparationZKBoo$121
	incq	%rsi
LpreparationZKBoo$118:
	cmpq	16(%rsp), %rsi
	jb  	LpreparationZKBoo$119
	incq	%rax
LpreparationZKBoo$116:
	cmpq	16(%rsp), %rax
	jb  	LpreparationZKBoo$117
	movq	$0, %rax
	jmp 	LpreparationZKBoo$114
LpreparationZKBoo$115:
	incq	%rax
LpreparationZKBoo$114:
	cmpq	$8, %rax
	jb  	LpreparationZKBoo$115
	movq	$0, %rax
	jmp 	LpreparationZKBoo$105
LpreparationZKBoo$106:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	LpreparationZKBoo$107
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$112
LpreparationZKBoo$113:
	incq	%rsi
LpreparationZKBoo$112:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$113
	jmp 	LpreparationZKBoo$110
LpreparationZKBoo$111:
	incq	%rsi
LpreparationZKBoo$110:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$111
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$108
LpreparationZKBoo$109:
	incq	%rsi
LpreparationZKBoo$108:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$109
	movq	$0, (%rsp)
LpreparationZKBoo$107:
	incq	%rax
LpreparationZKBoo$105:
	cmpq	$20, %rax
	jb  	LpreparationZKBoo$106
	movq	$0, %rax
	jmp 	LpreparationZKBoo$96
LpreparationZKBoo$97:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	LpreparationZKBoo$98
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$103
LpreparationZKBoo$104:
	incq	%rsi
LpreparationZKBoo$103:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$104
	jmp 	LpreparationZKBoo$101
LpreparationZKBoo$102:
	incq	%rsi
LpreparationZKBoo$101:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$102
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$99
LpreparationZKBoo$100:
	incq	%rsi
LpreparationZKBoo$99:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$100
	movq	$0, (%rsp)
LpreparationZKBoo$98:
	incq	%rax
LpreparationZKBoo$96:
	cmpq	$3072, %rax
	jb  	LpreparationZKBoo$97
	movq	$0, %rax
	jmp 	LpreparationZKBoo$87
LpreparationZKBoo$88:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	LpreparationZKBoo$89
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$94
LpreparationZKBoo$95:
	incq	%rsi
LpreparationZKBoo$94:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$95
	jmp 	LpreparationZKBoo$92
LpreparationZKBoo$93:
	incq	%rsi
LpreparationZKBoo$92:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$93
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$90
LpreparationZKBoo$91:
	incq	%rsi
LpreparationZKBoo$90:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$91
	movq	$0, (%rsp)
LpreparationZKBoo$89:
	incq	%rax
LpreparationZKBoo$87:
	cmpq	$3072, %rax
	jb  	LpreparationZKBoo$88
	movq	(%rsp), %rax
	cmpq	$14, (%rsp)
	jb  	LpreparationZKBoo$73
	incq	%rax
	jmp 	LpreparationZKBoo$85
LpreparationZKBoo$86:
	incq	%rax
LpreparationZKBoo$85:
	cmpq	$16, %rax
	jb  	LpreparationZKBoo$86
	movq	$0, %rax
	jmp 	LpreparationZKBoo$83
LpreparationZKBoo$84:
	incq	%rax
LpreparationZKBoo$83:
	cmpq	$16, %rax
	jb  	LpreparationZKBoo$84
	jmp 	LpreparationZKBoo$81
LpreparationZKBoo$82:
	incq	%rax
LpreparationZKBoo$81:
	cmpq	$64, %rax
	jb  	LpreparationZKBoo$82
	movq	$0, %rax
	jmp 	LpreparationZKBoo$79
LpreparationZKBoo$80:
	incq	%rax
LpreparationZKBoo$79:
	cmpq	$64, %rax
	jb  	LpreparationZKBoo$80
	movq	$0, %rax
	jmp 	LpreparationZKBoo$77
LpreparationZKBoo$78:
	incq	%rax
LpreparationZKBoo$77:
	cmpq	$14, %rax
	jb  	LpreparationZKBoo$78
	jmp 	LpreparationZKBoo$74
LpreparationZKBoo$73:
	incq	%rax
	jmp 	LpreparationZKBoo$75
LpreparationZKBoo$76:
	incq	%rax
LpreparationZKBoo$75:
	cmpq	$14, %rax
	jb  	LpreparationZKBoo$76
LpreparationZKBoo$74:
	movq	$0, %rax
	jmp 	LpreparationZKBoo$71
LpreparationZKBoo$72:
	incq	%rax
LpreparationZKBoo$71:
	cmpq	$16, %rax
	jb  	LpreparationZKBoo$72
	jmp 	LpreparationZKBoo$69
LpreparationZKBoo$70:
	incq	%rax
LpreparationZKBoo$69:
	cmpq	$64, %rax
	jb  	LpreparationZKBoo$70
	movq	$0, %rax
	jmp 	LpreparationZKBoo$67
LpreparationZKBoo$68:
	incq	%rax
LpreparationZKBoo$67:
	cmpq	$64, %rax
	jb  	LpreparationZKBoo$68
	movq	$0, %rax
	jmp 	LpreparationZKBoo$65
LpreparationZKBoo$66:
	incq	%rax
LpreparationZKBoo$65:
	cmpq	$8, %rax
	jb  	LpreparationZKBoo$66
	movq	$0, %rax
	movl	$0, 1048(%rsp)
	jmp 	LpreparationZKBoo$25
LpreparationZKBoo$26:
	cmpl	$256, 1048(%rsp)
	jb  	LpreparationZKBoo$33
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$56
LpreparationZKBoo$57:
	incq	(%rsp)
	cmpq	$16, (%rsp)
	jne 	LpreparationZKBoo$58
	movq	$0, %r9
	jmp 	LpreparationZKBoo$63
LpreparationZKBoo$64:
	incq	%r9
LpreparationZKBoo$63:
	cmpq	$16, %r9
	jb  	LpreparationZKBoo$64
	jmp 	LpreparationZKBoo$61
LpreparationZKBoo$62:
	incq	%r9
LpreparationZKBoo$61:
	cmpq	$64, %r9
	jb  	LpreparationZKBoo$62
	movq	$0, %r9
	jmp 	LpreparationZKBoo$59
LpreparationZKBoo$60:
	incq	%r9
LpreparationZKBoo$59:
	cmpq	$64, %r9
	jb  	LpreparationZKBoo$60
	movq	$0, (%rsp)
LpreparationZKBoo$58:
	incq	%rsi
LpreparationZKBoo$56:
	cmpq	$32, %rsi
	jb  	LpreparationZKBoo$57
	movq	(%rsp), %rsi
	cmpq	$14, (%rsp)
	jb  	LpreparationZKBoo$42
	incq	%rsi
	jmp 	LpreparationZKBoo$54
LpreparationZKBoo$55:
	incq	%rsi
LpreparationZKBoo$54:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$55
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$52
LpreparationZKBoo$53:
	incq	%rsi
LpreparationZKBoo$52:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$53
	jmp 	LpreparationZKBoo$50
LpreparationZKBoo$51:
	incq	%rsi
LpreparationZKBoo$50:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$51
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$48
LpreparationZKBoo$49:
	incq	%rsi
LpreparationZKBoo$48:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$49
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$46
LpreparationZKBoo$47:
	incq	%rsi
LpreparationZKBoo$46:
	cmpq	$14, %rsi
	jb  	LpreparationZKBoo$47
	jmp 	LpreparationZKBoo$43
LpreparationZKBoo$42:
	incq	%rsi
	jmp 	LpreparationZKBoo$44
LpreparationZKBoo$45:
	incq	%rsi
LpreparationZKBoo$44:
	cmpq	$14, %rsi
	jb  	LpreparationZKBoo$45
LpreparationZKBoo$43:
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$40
LpreparationZKBoo$41:
	incq	%rsi
LpreparationZKBoo$40:
	cmpq	$16, %rsi
	jb  	LpreparationZKBoo$41
	jmp 	LpreparationZKBoo$38
LpreparationZKBoo$39:
	incq	%rsi
LpreparationZKBoo$38:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$39
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$36
LpreparationZKBoo$37:
	incq	%rsi
LpreparationZKBoo$36:
	cmpq	$64, %rsi
	jb  	LpreparationZKBoo$37
	movq	$0, %rsi
	jmp 	LpreparationZKBoo$34
LpreparationZKBoo$35:
	incq	%rsi
LpreparationZKBoo$34:
	cmpq	$8, %rsi
	jb  	LpreparationZKBoo$35
	movl	$0, 1048(%rsp)
LpreparationZKBoo$33:
	movl	$0, %esi
	movl	1048(%rsp), %r9d
	incl	%r9d
	movl	%r9d, 1052(%rsp)
	movl	$0, %r9d
	cmpl	$0, %esi
	je  	LpreparationZKBoo$27
	cmpl	$0, %r9d
	je  	LpreparationZKBoo$31
	movl	1052(%rsp), %esi
	incl	%esi
	movl	%esi, 1048(%rsp)
	jmp 	LpreparationZKBoo$25
LpreparationZKBoo$31:
	movq	$2, %rsi
	movq	%rsi, 24(%rsp,%rax,8)
	movl	1052(%rsp), %esi
	incl	%esi
	movl	%esi, 1048(%rsp)
	incq	%rax
LpreparationZKBoo$32:
	jmp 	LpreparationZKBoo$25
LpreparationZKBoo$27:
	cmpl	$0, %r9d
	je  	LpreparationZKBoo$29
	movq	$1, %rsi
	movq	%rsi, 24(%rsp,%rax,8)
	movl	1052(%rsp), %esi
	incl	%esi
	movl	%esi, 1048(%rsp)
	incq	%rax
	jmp 	LpreparationZKBoo$25
LpreparationZKBoo$29:
	movq	$0, %rsi
	movq	%rsi, 24(%rsp,%rax,8)
	movl	1052(%rsp), %esi
	incl	%esi
	movl	%esi, 1048(%rsp)
	incq	%rax
LpreparationZKBoo$30:
LpreparationZKBoo$28:
LpreparationZKBoo$25:
	cmpq	16(%rsp), %rax
	jb  	LpreparationZKBoo$26
	movq	$0, %rax
	movq	$1, %rsi
	movq	$0, %r9
	jmp 	LpreparationZKBoo$2
LpreparationZKBoo$3:
	movq	24(%rsp,%r9,8), %r10
	movq	24(%rsp,%r9,8), %r11
	incq	%r11
	cmpq	$3, %r11
	jne 	LpreparationZKBoo$24
	movq	$0, %r11
LpreparationZKBoo$24:
	imulq	$2, %r9, %rbx
	movq	$0, %r12
	jmp 	LpreparationZKBoo$22
LpreparationZKBoo$23:
	imulq	$391, %r9, %r13
	addq	%r12, %r13
	imulq	$2, %r10, %r14
	imulq	16(%rsp), %r14
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	(%rdx,%r14), %r14
	movq	%r14, (%rcx,%r13)
	addq	$2, %r13
	imulq	$2, %r11, %r14
	imulq	16(%rsp), %r14
	addq	%rbx, %r14
	addq	%r12, %r14
	movq	(%rdx,%r14), %r14
	movq	%r14, (%rcx,%r13)
	incq	%r12
LpreparationZKBoo$22:
	cmpq	$2, %r12
	jb  	LpreparationZKBoo$23
	imulq	$8, 16(%rsp), %rbx
	imulq	%r10, %rbx
	movq	$23680, %r13
	imulq	%r10, %r13
	movq	$3072, %r12
	addq	%r13, %r12
	movq	$0, %r13
	jmp 	LpreparationZKBoo$20
LpreparationZKBoo$21:
	imulq	$391, %r9, %r14
	addq	$4, %r14
	addq	%r13, %r14
	imulq	$8, %r9, %r15
	addq	%rbx, %r15
	addq	%r13, %r15
	movq	(%r8,%r15), %r15
	movq	%r15, (%rcx,%r14)
	incq	%r13
LpreparationZKBoo$20:
	cmpq	$8, %r13
	jb  	LpreparationZKBoo$21
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$18
LpreparationZKBoo$19:
	imulq	$391, %r9, %r13
	addq	$12, %r13
	addq	%rbx, %r13
	imulq	$185, %r9, %r14
	addq	%r12, %r14
	addq	%rbx, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rcx,%r13)
	incq	%rbx
LpreparationZKBoo$18:
	cmpq	$185, %rbx
	jb  	LpreparationZKBoo$19
	imulq	$8, 16(%rsp), %rbx
	imulq	%r11, %rbx
	movq	$23680, %r13
	imulq	%r11, %r13
	movq	$3072, %r12
	addq	%r13, %r12
	movq	$0, %r13
	jmp 	LpreparationZKBoo$16
LpreparationZKBoo$17:
	imulq	$391, %r9, %r14
	addq	$197, %r14
	addq	%r13, %r14
	imulq	$8, %r9, %r15
	addq	%rbx, %r15
	addq	%r13, %r15
	movq	(%r8,%r15), %r15
	movq	%r15, (%rcx,%r14)
	incq	%r13
LpreparationZKBoo$16:
	cmpq	$8, %r13
	jb  	LpreparationZKBoo$17
	movq	$0, %rbx
	jmp 	LpreparationZKBoo$14
LpreparationZKBoo$15:
	imulq	$391, %r9, %r13
	addq	$205, %r13
	addq	%rbx, %r13
	imulq	$185, %r9, %r14
	addq	%r12, %r14
	addq	%rbx, %r14
	movq	(%r8,%r14), %r14
	movq	%r14, (%rcx,%r13)
	incq	%rbx
LpreparationZKBoo$14:
	cmpq	$185, %rbx
	jb  	LpreparationZKBoo$15
	movq	%r9, %rbx
	andq	%rsi, %rbx
	cmpq	$0, %rbx
	je  	LpreparationZKBoo$4
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rsi
	je  	LpreparationZKBoo$12
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	LpreparationZKBoo$13
LpreparationZKBoo$12:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbx
	andq	%rbx, %r10
LpreparationZKBoo$13:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rsi
	je  	LpreparationZKBoo$10
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbx
	andq	%rbx, %r11
	jmp 	LpreparationZKBoo$11
LpreparationZKBoo$10:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
LpreparationZKBoo$11:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rcx,%r11)
	jmp 	LpreparationZKBoo$5
LpreparationZKBoo$4:
	imulq	16(%rsp), %r10
	addq	%r9, %r10
	shrq	$1, %r10
	cmpq	$0, %rax
	je  	LpreparationZKBoo$8
	movq	(%rdi,%r10), %r10
	shlq	$32, %r10
	jmp 	LpreparationZKBoo$9
LpreparationZKBoo$8:
	movq	(%rdi,%r10), %r10
	movq	$-4294967296, %rbx
	andq	%rbx, %r10
LpreparationZKBoo$9:
	imulq	16(%rsp), %r11
	addq	%r9, %r11
	shrq	$1, %r11
	cmpq	$0, %rax
	je  	LpreparationZKBoo$6
	movq	(%rdi,%r11), %r11
	movq	$4294967295, %rbx
	andq	%rbx, %r11
	jmp 	LpreparationZKBoo$7
LpreparationZKBoo$6:
	movq	(%rdi,%r11), %r11
	shrq	$32, %r11
LpreparationZKBoo$7:
	addq	%r11, %r10
	imulq	$391, %r9, %r11
	addq	$390, %r11
	movq	%r10, (%rcx,%r11)
LpreparationZKBoo$5:
	incq	%r9
LpreparationZKBoo$2:
	cmpq	16(%rsp), %r9
	jb  	LpreparationZKBoo$3
	jmp 	*%rbp
LROTRIGHT$1:
	jmp 	*%rcx
LROTLEFT$1:
	jmp 	*%rcx
