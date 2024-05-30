    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  fib
    .type  fib, @function
fib:
.LBB0:
	addi sp, sp, -512
	sd ra, 504(sp)
	sd s0, 496(sp)
	addi s0, sp, 512
	mv a0, a0
	sd a0, -264(s0)
	j .LBB1
.LBB1:
	ld t0, -264(s0)
	li t1, 2
	bge t1, t0, .LBB2
	j .LBB3
.LBB2:
	li a0, 1
	ld ra, 504(sp)
	ld s0, 496(sp)
	addi sp, sp, 512
	ret 
.LBB3:
	li t0, 2
	li t1, 1
	remw s5, t1, t0
	blt s5, zero, .LBB4
	j .LBB3834
.LBB4:
	subw s5, zero, s5
	mv s5, s5
	j .LBB5
.LBB5:
	li t0, 2
	li t1, 1
	divw t1, t1, t0
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB6
	j .LBB3835
.LBB6:
	subw s4, zero, s4
	mv s4, s4
	j .LBB7
.LBB7:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s3, t1, t0
	blt s3, zero, .LBB8
	j .LBB3836
.LBB8:
	subw s3, zero, s3
	mv s3, s3
	j .LBB9
.LBB9:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s2, t1, t0
	blt s2, zero, .LBB10
	j .LBB3837
.LBB10:
	subw s2, zero, s2
	mv s2, s2
	j .LBB11
.LBB11:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB12
	j .LBB3838
.LBB12:
	subw a7, zero, a7
	mv a7, a7
	j .LBB13
.LBB13:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a6, t1, t0
	blt a6, zero, .LBB14
	j .LBB3839
.LBB14:
	subw a6, zero, a6
	mv a6, a6
	j .LBB15
.LBB15:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a5, t1, t0
	blt a5, zero, .LBB16
	j .LBB3840
.LBB16:
	subw a5, zero, a5
	mv a5, a5
	j .LBB17
.LBB17:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a4, t1, t0
	blt a4, zero, .LBB18
	j .LBB3841
.LBB18:
	subw a4, zero, a4
	mv a4, a4
	j .LBB19
.LBB19:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a3, t1, t0
	blt a3, zero, .LBB20
	j .LBB3842
.LBB20:
	subw a3, zero, a3
	mv a3, a3
	j .LBB21
.LBB21:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB22
	j .LBB3843
.LBB22:
	subw a2, zero, a2
	mv a2, a2
	j .LBB23
.LBB23:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a1, t0, t1
	blt a1, zero, .LBB24
	j .LBB3844
.LBB24:
	subw a1, zero, a1
	mv a1, a1
	j .LBB25
.LBB25:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a0, t1, t0
	blt a0, zero, .LBB26
	j .LBB3845
.LBB26:
	subw a0, zero, a0
	mv a0, a0
	j .LBB27
.LBB27:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s1, t0, t1
	blt s1, zero, .LBB28
	j .LBB3846
.LBB28:
	subw s1, zero, s1
	mv s1, s1
	j .LBB29
.LBB29:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw t2, t0, t1
	blt t2, zero, .LBB30
	j .LBB3847
.LBB30:
	subw t2, zero, t2
	mv t2, t2
	j .LBB31
.LBB31:
	li t1, 2
	divw s6, t0, t1
	li t0, 2
	remw t1, s6, t0
	blt t1, zero, .LBB32
	j .LBB3848
.LBB32:
	subw t1, zero, t1
	mv t1, t1
	j .LBB33
.LBB33:
	li t0, 2
	divw s6, s6, t0
	li t0, 2
	remw t0, s6, t0
	blt t0, zero, .LBB34
	j .LBB3849
.LBB34:
	subw t0, zero, t0
	mv t0, t0
	j .LBB35
.LBB35:
	li s7, 2
	divw t0, s6, s7
	beq s5, zero, .LBB36
	j .LBB37
.LBB36:
	li s5, 1
	j .LBB38
.LBB37:
	mv s5, zero
	j .LBB38
.LBB38:
	beq s4, zero, .LBB39
	j .LBB40
.LBB39:
	li s4, 1
	j .LBB41
.LBB40:
	mv s4, zero
	j .LBB41
.LBB41:
	beq s3, zero, .LBB42
	j .LBB43
.LBB42:
	li s3, 1
	j .LBB44
.LBB43:
	mv s3, zero
	j .LBB44
.LBB44:
	beq s2, zero, .LBB45
	j .LBB46
.LBB45:
	li s2, 1
	j .LBB47
.LBB46:
	mv s2, zero
	j .LBB47
.LBB47:
	beq a7, zero, .LBB48
	j .LBB49
.LBB48:
	li a7, 1
	j .LBB50
.LBB49:
	mv a7, zero
	j .LBB50
.LBB50:
	beq a6, zero, .LBB51
	j .LBB52
.LBB51:
	li a6, 1
	j .LBB53
.LBB52:
	mv a6, zero
	j .LBB53
.LBB53:
	beq a5, zero, .LBB54
	j .LBB55
.LBB54:
	li a5, 1
	j .LBB56
.LBB55:
	mv a5, zero
	j .LBB56
.LBB56:
	beq a4, zero, .LBB57
	j .LBB58
.LBB57:
	li a4, 1
	j .LBB59
.LBB58:
	mv a4, zero
	j .LBB59
.LBB59:
	beq a3, zero, .LBB60
	j .LBB61
.LBB60:
	li a3, 1
	j .LBB62
.LBB61:
	mv a3, zero
	j .LBB62
.LBB62:
	beq a2, zero, .LBB63
	j .LBB64
.LBB63:
	li s6, 1
	j .LBB65
.LBB64:
	mv s6, zero
	j .LBB65
.LBB65:
	beq a1, zero, .LBB66
	j .LBB67
.LBB66:
	li a1, 1
	j .LBB68
.LBB67:
	mv a1, zero
	j .LBB68
.LBB68:
	beq a0, zero, .LBB69
	j .LBB70
.LBB69:
	li a0, 1
	j .LBB71
.LBB70:
	mv a0, zero
	j .LBB71
.LBB71:
	beq s1, zero, .LBB72
	j .LBB73
.LBB72:
	li s1, 1
	j .LBB74
.LBB73:
	mv s1, zero
	j .LBB74
.LBB74:
	beq t2, zero, .LBB75
	j .LBB76
.LBB75:
	li t2, 1
	j .LBB77
.LBB76:
	mv t2, zero
	j .LBB77
.LBB77:
	beq t1, zero, .LBB78
	j .LBB79
.LBB78:
	li t1, 1
	j .LBB80
.LBB79:
	mv t1, zero
	j .LBB80
.LBB80:
	beq t0, zero, .LBB81
	j .LBB82
.LBB81:
	li a2, 1
	j .LBB83
.LBB82:
	mv a2, zero
	j .LBB83
.LBB83:
	li t0, 2
	mulw t0, zero, t0
	addw a2, t0, a2
	li t0, 2
	mulw t0, a2, t0
	addw t0, t0, t1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, t2
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a0
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a1
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s6
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a3
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a4
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a5
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a6
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a7
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s2
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s3
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s4
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s5
	li t1, 2
	remw t3, t0, t1
	blt t3, zero, .LBB84
	j .LBB3850
.LBB84:
	subw t3, zero, t3
	mv t3, t3
	j .LBB85
.LBB85:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s11, t1, t0
	blt s11, zero, .LBB86
	j .LBB3851
.LBB86:
	subw s11, zero, s11
	mv s11, s11
	j .LBB87
.LBB87:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s10, t1, t0
	blt s10, zero, .LBB88
	j .LBB3852
.LBB88:
	subw s10, zero, s10
	mv s10, s10
	j .LBB89
.LBB89:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s9, t0, t1
	blt s9, zero, .LBB90
	j .LBB3853
.LBB90:
	subw s9, zero, s9
	mv s9, s9
	j .LBB91
.LBB91:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB92
	j .LBB3854
.LBB92:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -408(s0)
	j .LBB93
.LBB93:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s8, t1, t0
	blt s8, zero, .LBB94
	j .LBB3855
.LBB94:
	subw s8, zero, s8
	mv s8, s8
	j .LBB95
.LBB95:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB96
	j .LBB3856
.LBB96:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -288(s0)
	j .LBB97
.LBB97:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s7, t1, t0
	blt s7, zero, .LBB98
	j .LBB3857
.LBB98:
	subw s7, zero, s7
	mv s7, s7
	j .LBB99
.LBB99:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s6, t1, t0
	blt s6, zero, .LBB100
	j .LBB3858
.LBB100:
	subw s6, zero, s6
	mv s6, s6
	j .LBB101
.LBB101:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB102
	j .LBB3859
.LBB102:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -296(s0)
	j .LBB103
.LBB103:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s5, t0, t1
	blt s5, zero, .LBB104
	j .LBB3860
.LBB104:
	subw s5, zero, s5
	mv s5, s5
	j .LBB105
.LBB105:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB106
	j .LBB3861
.LBB106:
	subw s4, zero, s4
	mv s4, s4
	j .LBB107
.LBB107:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s3, t0, t1
	blt s3, zero, .LBB108
	j .LBB3862
.LBB108:
	subw s3, zero, s3
	mv s3, s3
	j .LBB109
.LBB109:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB110
	j .LBB3863
.LBB110:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -304(s0)
	j .LBB111
.LBB111:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB112
	j .LBB3864
.LBB112:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -312(s0)
	j .LBB113
.LBB113:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s2, t1, t0
	blt s2, zero, .LBB114
	j .LBB3865
.LBB114:
	subw s2, zero, s2
	mv s2, s2
	j .LBB115
.LBB115:
	li t0, 2
	divw t0, t1, t0
	li t0, 2
	li t0, 1
	remw t0, t0, t0
	blt t0, zero, .LBB116
	j .LBB3866
.LBB116:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -320(s0)
	j .LBB117
.LBB117:
	li t0, 2
	li t0, 1
	divw t0, t0, t0
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB118
	j .LBB3867
.LBB118:
	subw a7, zero, a7
	mv a7, a7
	j .LBB119
.LBB119:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a6, t1, t0
	blt a6, zero, .LBB120
	j .LBB3868
.LBB120:
	subw a6, zero, a6
	mv a6, a6
	j .LBB121
.LBB121:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a5, t0, t1
	blt a5, zero, .LBB122
	j .LBB3869
.LBB122:
	subw a5, zero, a5
	mv a5, a5
	j .LBB123
.LBB123:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a4, t1, t0
	blt a4, zero, .LBB124
	j .LBB3870
.LBB124:
	subw a4, zero, a4
	mv a4, a4
	j .LBB125
.LBB125:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a3, t0, t1
	blt a3, zero, .LBB126
	j .LBB3871
.LBB126:
	subw a3, zero, a3
	mv a3, a3
	j .LBB127
.LBB127:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB128
	j .LBB3872
.LBB128:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -328(s0)
	j .LBB129
.LBB129:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB130
	j .LBB3873
.LBB130:
	subw a2, zero, a2
	mv a2, a2
	j .LBB131
.LBB131:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB132
	j .LBB3874
.LBB132:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -336(s0)
	j .LBB133
.LBB133:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB134
	j .LBB3875
.LBB134:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -344(s0)
	j .LBB135
.LBB135:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a1, t0, t1
	blt a1, zero, .LBB136
	j .LBB3876
.LBB136:
	subw a1, zero, a1
	mv a1, a1
	j .LBB137
.LBB137:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a0, t1, t0
	blt a0, zero, .LBB138
	j .LBB3877
.LBB138:
	subw a0, zero, a0
	mv a0, a0
	j .LBB139
.LBB139:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB140
	j .LBB3878
.LBB140:
	subw s1, zero, s1
	mv s1, s1
	j .LBB141
.LBB141:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw t2, t0, t1
	blt t2, zero, .LBB142
	j .LBB3879
.LBB142:
	subw t2, zero, t2
	mv t2, t2
	j .LBB143
.LBB143:
	li t1, 2
	divw t4, t0, t1
	li t0, 2
	remw t1, t4, t0
	blt t1, zero, .LBB144
	j .LBB3880
.LBB144:
	subw t1, zero, t1
	mv t1, t1
	j .LBB145
.LBB145:
	li t0, 2
	divw t4, t4, t0
	li t0, 2
	remw t0, t4, t0
	blt t0, zero, .LBB146
	j .LBB3881
.LBB146:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -352(s0)
	j .LBB147
.LBB147:
	li t0, 2
	divw t0, t4, t0
	bne t3, zero, .LBB148
	j .LBB149
.LBB148:
	li t4, 1
	j .LBB150
.LBB151:
	mv t4, zero
	j .LBB150
.LBB149:
	ld t0, -320(s0)
	bne t0, zero, .LBB148
	j .LBB151
.LBB150:
	bne t3, zero, .LBB152
	j .LBB153
.LBB154:
	li t0, 1
	j .LBB155
.LBB153:
	mv t0, zero
	j .LBB155
.LBB152:
	ld t0, -320(s0)
	bne t0, zero, .LBB154
	j .LBB153
.LBB155:
	beq t0, zero, .LBB156
	j .LBB157
.LBB156:
	li t0, 1
	j .LBB158
.LBB157:
	mv t0, zero
	j .LBB158
.LBB158:
	bne t4, zero, .LBB159
	j .LBB160
.LBB161:
	li t6, 1
	j .LBB162
.LBB160:
	mv t6, zero
	j .LBB162
.LBB159:
	bne t0, zero, .LBB161
	j .LBB160
.LBB162:
	bne t6, zero, .LBB163
	j .LBB164
.LBB163:
	li t0, 1
	j .LBB165
.LBB166:
	mv t0, zero
	j .LBB165
.LBB164:
	j .LBB166
.LBB165:
	bne t6, zero, .LBB167
	j .LBB168
.LBB168:
	j .LBB169
.LBB167:
	j .LBB168
.LBB169:
	beq zero, zero, .LBB170
	j .LBB171
.LBB170:
	li t4, 1
	j .LBB172
.LBB171:
	mv t4, zero
	j .LBB172
.LBB172:
	bne t0, zero, .LBB173
	j .LBB174
.LBB175:
	li t4, 1
	j .LBB176
.LBB174:
	mv t4, zero
	j .LBB176
.LBB173:
	bne t4, zero, .LBB175
	j .LBB174
.LBB176:
	bne t3, zero, .LBB177
	j .LBB178
.LBB179:
	li t0, 1
	j .LBB180
.LBB178:
	mv t0, zero
	j .LBB180
.LBB177:
	ld t0, -320(s0)
	bne t0, zero, .LBB179
	j .LBB178
.LBB180:
	bne t6, zero, .LBB181
	j .LBB182
.LBB182:
	j .LBB183
.LBB181:
	j .LBB182
.LBB183:
	bne t0, zero, .LBB184
	j .LBB185
.LBB184:
	li t0, 1
	sd t0, -360(s0)
	j .LBB186
.LBB187:
	ld t0, -360(s0)
	mv t0, zero
	j .LBB186
.LBB185:
	bne zero, zero, .LBB184
	j .LBB187
.LBB186:
	bne s11, zero, .LBB188
	j .LBB189
.LBB188:
	li t3, 1
	j .LBB190
.LBB191:
	mv t3, zero
	j .LBB190
.LBB189:
	bne a7, zero, .LBB188
	j .LBB191
.LBB190:
	bne s11, zero, .LBB192
	j .LBB193
.LBB194:
	li t0, 1
	j .LBB195
.LBB193:
	mv t0, zero
	j .LBB195
.LBB192:
	bne a7, zero, .LBB194
	j .LBB193
.LBB195:
	beq t0, zero, .LBB196
	j .LBB197
.LBB196:
	li t0, 1
	j .LBB198
.LBB197:
	mv t0, zero
	j .LBB198
.LBB198:
	bne t3, zero, .LBB199
	j .LBB200
.LBB201:
	li t6, 1
	j .LBB202
.LBB200:
	mv t6, zero
	j .LBB202
.LBB199:
	bne t0, zero, .LBB201
	j .LBB200
.LBB202:
	bne t6, zero, .LBB203
	j .LBB204
.LBB203:
	li t3, 1
	j .LBB205
.LBB206:
	mv t3, zero
	j .LBB205
.LBB204:
	ld t0, -360(s0)
	bne t0, zero, .LBB203
	j .LBB206
.LBB205:
	bne t6, zero, .LBB207
	j .LBB208
.LBB209:
	li t0, 1
	j .LBB210
.LBB208:
	mv t0, zero
	j .LBB210
.LBB207:
	ld t0, -360(s0)
	bne t0, zero, .LBB209
	j .LBB208
.LBB210:
	beq t0, zero, .LBB211
	j .LBB212
.LBB211:
	li t0, 1
	j .LBB213
.LBB212:
	mv t0, zero
	j .LBB213
.LBB213:
	bne t3, zero, .LBB214
	j .LBB215
.LBB216:
	li t3, 1
	j .LBB217
.LBB215:
	mv t3, zero
	j .LBB217
.LBB214:
	bne t0, zero, .LBB216
	j .LBB215
.LBB217:
	bne s11, zero, .LBB218
	j .LBB219
.LBB220:
	li t0, 1
	j .LBB221
.LBB219:
	mv t0, zero
	j .LBB221
.LBB218:
	bne a7, zero, .LBB220
	j .LBB219
.LBB221:
	bne t6, zero, .LBB222
	j .LBB223
.LBB224:
	li a7, 1
	j .LBB225
.LBB223:
	mv a7, zero
	j .LBB225
.LBB222:
	ld t0, -360(s0)
	bne t0, zero, .LBB224
	j .LBB223
.LBB225:
	bne t0, zero, .LBB226
	j .LBB227
.LBB226:
	li t6, 1
	j .LBB228
.LBB229:
	mv t6, zero
	j .LBB228
.LBB227:
	bne a7, zero, .LBB226
	j .LBB229
.LBB228:
	bne s10, zero, .LBB230
	j .LBB231
.LBB230:
	li a7, 1
	j .LBB232
.LBB233:
	mv a7, zero
	j .LBB232
.LBB231:
	bne a6, zero, .LBB230
	j .LBB233
.LBB232:
	bne s10, zero, .LBB234
	j .LBB235
.LBB236:
	li t0, 1
	j .LBB237
.LBB235:
	mv t0, zero
	j .LBB237
.LBB234:
	bne a6, zero, .LBB236
	j .LBB235
.LBB237:
	beq t0, zero, .LBB238
	j .LBB239
.LBB238:
	li t0, 1
	j .LBB240
.LBB239:
	mv t0, zero
	j .LBB240
.LBB240:
	bne a7, zero, .LBB241
	j .LBB242
.LBB243:
	li t0, 1
	j .LBB244
.LBB242:
	mv t0, zero
	j .LBB244
.LBB241:
	bne t0, zero, .LBB243
	j .LBB242
.LBB244:
	bne t0, zero, .LBB245
	j .LBB246
.LBB245:
	li a7, 1
	j .LBB247
.LBB248:
	mv a7, zero
	j .LBB247
.LBB246:
	bne t6, zero, .LBB245
	j .LBB248
.LBB247:
	bne t0, zero, .LBB249
	j .LBB250
.LBB251:
	li s11, 1
	j .LBB252
.LBB250:
	mv s11, zero
	j .LBB252
.LBB249:
	bne t6, zero, .LBB251
	j .LBB250
.LBB252:
	beq s11, zero, .LBB253
	j .LBB254
.LBB253:
	li s11, 1
	j .LBB255
.LBB254:
	mv s11, zero
	j .LBB255
.LBB255:
	bne a7, zero, .LBB256
	j .LBB257
.LBB258:
	li t0, 1
	sd t0, -368(s0)
	j .LBB259
.LBB257:
	ld t0, -368(s0)
	mv t0, zero
	j .LBB259
.LBB256:
	bne s11, zero, .LBB258
	j .LBB257
.LBB259:
	bne s10, zero, .LBB260
	j .LBB261
.LBB262:
	li a6, 1
	j .LBB263
.LBB261:
	mv a6, zero
	j .LBB263
.LBB260:
	bne a6, zero, .LBB262
	j .LBB261
.LBB263:
	bne t0, zero, .LBB264
	j .LBB265
.LBB266:
	li t0, 1
	j .LBB267
.LBB265:
	mv t0, zero
	j .LBB267
.LBB264:
	bne t6, zero, .LBB266
	j .LBB265
.LBB267:
	bne a6, zero, .LBB268
	j .LBB269
.LBB268:
	li a7, 1
	j .LBB270
.LBB271:
	mv a7, zero
	j .LBB270
.LBB269:
	bne t0, zero, .LBB268
	j .LBB271
.LBB270:
	bne s9, zero, .LBB272
	j .LBB273
.LBB272:
	li a6, 1
	j .LBB274
.LBB275:
	mv a6, zero
	j .LBB274
.LBB273:
	bne a5, zero, .LBB272
	j .LBB275
.LBB274:
	bne s9, zero, .LBB276
	j .LBB277
.LBB278:
	li t0, 1
	j .LBB279
.LBB277:
	mv t0, zero
	j .LBB279
.LBB276:
	bne a5, zero, .LBB278
	j .LBB277
.LBB279:
	beq t0, zero, .LBB280
	j .LBB281
.LBB280:
	li t0, 1
	j .LBB282
.LBB281:
	mv t0, zero
	j .LBB282
.LBB282:
	bne a6, zero, .LBB283
	j .LBB284
.LBB285:
	li t0, 1
	j .LBB286
.LBB284:
	mv t0, zero
	j .LBB286
.LBB283:
	bne t0, zero, .LBB285
	j .LBB284
.LBB286:
	bne t0, zero, .LBB287
	j .LBB288
.LBB287:
	li a6, 1
	j .LBB289
.LBB290:
	mv a6, zero
	j .LBB289
.LBB288:
	bne a7, zero, .LBB287
	j .LBB290
.LBB289:
	bne t0, zero, .LBB291
	j .LBB292
.LBB293:
	li s10, 1
	j .LBB294
.LBB292:
	mv s10, zero
	j .LBB294
.LBB291:
	bne a7, zero, .LBB293
	j .LBB292
.LBB294:
	beq s10, zero, .LBB295
	j .LBB296
.LBB295:
	li s10, 1
	j .LBB297
.LBB296:
	mv s10, zero
	j .LBB297
.LBB297:
	bne a6, zero, .LBB298
	j .LBB299
.LBB300:
	li s10, 1
	j .LBB301
.LBB299:
	mv s10, zero
	j .LBB301
.LBB298:
	bne s10, zero, .LBB300
	j .LBB299
.LBB301:
	bne s9, zero, .LBB302
	j .LBB303
.LBB304:
	li a5, 1
	j .LBB305
.LBB303:
	mv a5, zero
	j .LBB305
.LBB302:
	bne a5, zero, .LBB304
	j .LBB303
.LBB305:
	bne t0, zero, .LBB306
	j .LBB307
.LBB308:
	li t0, 1
	j .LBB309
.LBB307:
	mv t0, zero
	j .LBB309
.LBB306:
	bne a7, zero, .LBB308
	j .LBB307
.LBB309:
	bne a5, zero, .LBB310
	j .LBB311
.LBB310:
	li a5, 1
	j .LBB312
.LBB313:
	mv a5, zero
	j .LBB312
.LBB311:
	bne t0, zero, .LBB310
	j .LBB313
.LBB312:
	ld t0, -408(s0)
	bne t0, zero, .LBB314
	j .LBB315
.LBB314:
	li a6, 1
	j .LBB316
.LBB317:
	mv a6, zero
	j .LBB316
.LBB315:
	bne a4, zero, .LBB314
	j .LBB317
.LBB316:
	ld t0, -408(s0)
	bne t0, zero, .LBB318
	j .LBB319
.LBB320:
	li t0, 1
	j .LBB321
.LBB319:
	mv t0, zero
	j .LBB321
.LBB318:
	bne a4, zero, .LBB320
	j .LBB319
.LBB321:
	beq t0, zero, .LBB322
	j .LBB323
.LBB322:
	li t0, 1
	j .LBB324
.LBB323:
	mv t0, zero
	j .LBB324
.LBB324:
	bne a6, zero, .LBB325
	j .LBB326
.LBB327:
	li a6, 1
	j .LBB328
.LBB326:
	mv a6, zero
	j .LBB328
.LBB325:
	bne t0, zero, .LBB327
	j .LBB326
.LBB328:
	bne a6, zero, .LBB329
	j .LBB330
.LBB329:
	li a7, 1
	j .LBB331
.LBB332:
	mv a7, zero
	j .LBB331
.LBB330:
	bne a5, zero, .LBB329
	j .LBB332
.LBB331:
	bne a6, zero, .LBB333
	j .LBB334
.LBB335:
	li t0, 1
	j .LBB336
.LBB334:
	mv t0, zero
	j .LBB336
.LBB333:
	bne a5, zero, .LBB335
	j .LBB334
.LBB336:
	beq t0, zero, .LBB337
	j .LBB338
.LBB337:
	li t0, 1
	j .LBB339
.LBB338:
	mv t0, zero
	j .LBB339
.LBB339:
	bne a7, zero, .LBB340
	j .LBB341
.LBB342:
	li s11, 1
	j .LBB343
.LBB341:
	mv s11, zero
	j .LBB343
.LBB340:
	bne t0, zero, .LBB342
	j .LBB341
.LBB343:
	ld t0, -408(s0)
	bne t0, zero, .LBB344
	j .LBB345
.LBB346:
	li a4, 1
	j .LBB347
.LBB345:
	mv a4, zero
	j .LBB347
.LBB344:
	bne a4, zero, .LBB346
	j .LBB345
.LBB347:
	bne a6, zero, .LBB348
	j .LBB349
.LBB350:
	li t0, 1
	j .LBB351
.LBB349:
	mv t0, zero
	j .LBB351
.LBB348:
	bne a5, zero, .LBB350
	j .LBB349
.LBB351:
	bne a4, zero, .LBB352
	j .LBB353
.LBB352:
	li a5, 1
	j .LBB354
.LBB355:
	mv a5, zero
	j .LBB354
.LBB353:
	bne t0, zero, .LBB352
	j .LBB355
.LBB354:
	bne s8, zero, .LBB356
	j .LBB357
.LBB356:
	li a4, 1
	j .LBB358
.LBB359:
	mv a4, zero
	j .LBB358
.LBB357:
	bne a3, zero, .LBB356
	j .LBB359
.LBB358:
	bne s8, zero, .LBB360
	j .LBB361
.LBB362:
	li t0, 1
	j .LBB363
.LBB361:
	mv t0, zero
	j .LBB363
.LBB360:
	bne a3, zero, .LBB362
	j .LBB361
.LBB363:
	beq t0, zero, .LBB364
	j .LBB365
.LBB364:
	li t0, 1
	j .LBB366
.LBB365:
	mv t0, zero
	j .LBB366
.LBB366:
	bne a4, zero, .LBB367
	j .LBB368
.LBB369:
	li a6, 1
	j .LBB370
.LBB368:
	mv a6, zero
	j .LBB370
.LBB367:
	bne t0, zero, .LBB369
	j .LBB368
.LBB370:
	bne a6, zero, .LBB371
	j .LBB372
.LBB371:
	li t0, 1
	j .LBB373
.LBB374:
	mv t0, zero
	j .LBB373
.LBB372:
	bne a5, zero, .LBB371
	j .LBB374
.LBB373:
	bne a6, zero, .LBB375
	j .LBB376
.LBB377:
	li a4, 1
	j .LBB378
.LBB376:
	mv a4, zero
	j .LBB378
.LBB375:
	bne a5, zero, .LBB377
	j .LBB376
.LBB378:
	beq a4, zero, .LBB379
	j .LBB380
.LBB379:
	li a4, 1
	j .LBB381
.LBB380:
	mv a4, zero
	j .LBB381
.LBB381:
	bne t0, zero, .LBB382
	j .LBB383
.LBB384:
	li s9, 1
	j .LBB385
.LBB383:
	mv s9, zero
	j .LBB385
.LBB382:
	bne a4, zero, .LBB384
	j .LBB383
.LBB385:
	bne s8, zero, .LBB386
	j .LBB387
.LBB388:
	li a3, 1
	j .LBB389
.LBB387:
	mv a3, zero
	j .LBB389
.LBB386:
	bne a3, zero, .LBB388
	j .LBB387
.LBB389:
	bne a6, zero, .LBB390
	j .LBB391
.LBB392:
	li t0, 1
	j .LBB393
.LBB391:
	mv t0, zero
	j .LBB393
.LBB390:
	bne a5, zero, .LBB392
	j .LBB391
.LBB393:
	bne a3, zero, .LBB394
	j .LBB395
.LBB394:
	li a5, 1
	j .LBB396
.LBB397:
	mv a5, zero
	j .LBB396
.LBB395:
	bne t0, zero, .LBB394
	j .LBB397
.LBB396:
	ld t0, -288(s0)
	bne t0, zero, .LBB398
	j .LBB399
.LBB398:
	li a3, 1
	j .LBB400
.LBB401:
	mv a3, zero
	j .LBB400
.LBB399:
	ld t0, -328(s0)
	bne t0, zero, .LBB398
	j .LBB401
.LBB400:
	ld t0, -288(s0)
	bne t0, zero, .LBB402
	j .LBB403
.LBB404:
	li t0, 1
	j .LBB405
.LBB403:
	mv t0, zero
	j .LBB405
.LBB402:
	ld t0, -328(s0)
	bne t0, zero, .LBB404
	j .LBB403
.LBB405:
	beq t0, zero, .LBB406
	j .LBB407
.LBB406:
	li t0, 1
	j .LBB408
.LBB407:
	mv t0, zero
	j .LBB408
.LBB408:
	bne a3, zero, .LBB409
	j .LBB410
.LBB411:
	li a4, 1
	j .LBB412
.LBB410:
	mv a4, zero
	j .LBB412
.LBB409:
	bne t0, zero, .LBB411
	j .LBB410
.LBB412:
	bne a4, zero, .LBB413
	j .LBB414
.LBB413:
	li t0, 1
	j .LBB415
.LBB416:
	mv t0, zero
	j .LBB415
.LBB414:
	bne a5, zero, .LBB413
	j .LBB416
.LBB415:
	bne a4, zero, .LBB417
	j .LBB418
.LBB419:
	li a3, 1
	j .LBB420
.LBB418:
	mv a3, zero
	j .LBB420
.LBB417:
	bne a5, zero, .LBB419
	j .LBB418
.LBB420:
	beq a3, zero, .LBB421
	j .LBB422
.LBB421:
	li a3, 1
	j .LBB423
.LBB422:
	mv a3, zero
	j .LBB423
.LBB423:
	bne t0, zero, .LBB424
	j .LBB425
.LBB426:
	li a7, 1
	j .LBB427
.LBB425:
	mv a7, zero
	j .LBB427
.LBB424:
	bne a3, zero, .LBB426
	j .LBB425
.LBB427:
	ld t0, -288(s0)
	bne t0, zero, .LBB428
	j .LBB429
.LBB430:
	li a3, 1
	j .LBB431
.LBB429:
	mv a3, zero
	j .LBB431
.LBB428:
	ld t0, -328(s0)
	bne t0, zero, .LBB430
	j .LBB429
.LBB431:
	bne a4, zero, .LBB432
	j .LBB433
.LBB434:
	li t0, 1
	j .LBB435
.LBB433:
	mv t0, zero
	j .LBB435
.LBB432:
	bne a5, zero, .LBB434
	j .LBB433
.LBB435:
	bne a3, zero, .LBB436
	j .LBB437
.LBB436:
	li a5, 1
	j .LBB438
.LBB439:
	mv a5, zero
	j .LBB438
.LBB437:
	bne t0, zero, .LBB436
	j .LBB439
.LBB438:
	bne s7, zero, .LBB440
	j .LBB441
.LBB440:
	li a3, 1
	j .LBB442
.LBB443:
	mv a3, zero
	j .LBB442
.LBB441:
	bne a2, zero, .LBB440
	j .LBB443
.LBB442:
	bne s7, zero, .LBB444
	j .LBB445
.LBB446:
	li t0, 1
	j .LBB447
.LBB445:
	mv t0, zero
	j .LBB447
.LBB444:
	bne a2, zero, .LBB446
	j .LBB445
.LBB447:
	beq t0, zero, .LBB448
	j .LBB449
.LBB448:
	li t0, 1
	j .LBB450
.LBB449:
	mv t0, zero
	j .LBB450
.LBB450:
	bne a3, zero, .LBB451
	j .LBB452
.LBB453:
	li a4, 1
	j .LBB454
.LBB452:
	mv a4, zero
	j .LBB454
.LBB451:
	bne t0, zero, .LBB453
	j .LBB452
.LBB454:
	bne a4, zero, .LBB455
	j .LBB456
.LBB455:
	li t0, 1
	j .LBB457
.LBB458:
	mv t0, zero
	j .LBB457
.LBB456:
	bne a5, zero, .LBB455
	j .LBB458
.LBB457:
	bne a4, zero, .LBB459
	j .LBB460
.LBB461:
	li a3, 1
	j .LBB462
.LBB460:
	mv a3, zero
	j .LBB462
.LBB459:
	bne a5, zero, .LBB461
	j .LBB460
.LBB462:
	beq a3, zero, .LBB463
	j .LBB464
.LBB463:
	li a3, 1
	j .LBB465
.LBB464:
	mv a3, zero
	j .LBB465
.LBB465:
	bne t0, zero, .LBB466
	j .LBB467
.LBB468:
	li s8, 1
	j .LBB469
.LBB467:
	mv s8, zero
	j .LBB469
.LBB466:
	bne a3, zero, .LBB468
	j .LBB467
.LBB469:
	bne s7, zero, .LBB470
	j .LBB471
.LBB472:
	li a2, 1
	j .LBB473
.LBB471:
	mv a2, zero
	j .LBB473
.LBB470:
	bne a2, zero, .LBB472
	j .LBB471
.LBB473:
	bne a4, zero, .LBB474
	j .LBB475
.LBB476:
	li t0, 1
	j .LBB477
.LBB475:
	mv t0, zero
	j .LBB477
.LBB474:
	bne a5, zero, .LBB476
	j .LBB475
.LBB477:
	bne a2, zero, .LBB478
	j .LBB479
.LBB478:
	li a3, 1
	j .LBB480
.LBB481:
	mv a3, zero
	j .LBB480
.LBB479:
	bne t0, zero, .LBB478
	j .LBB481
.LBB480:
	bne s6, zero, .LBB482
	j .LBB483
.LBB482:
	li a2, 1
	j .LBB484
.LBB485:
	mv a2, zero
	j .LBB484
.LBB483:
	ld t0, -336(s0)
	bne t0, zero, .LBB482
	j .LBB485
.LBB484:
	bne s6, zero, .LBB486
	j .LBB487
.LBB488:
	li t0, 1
	j .LBB489
.LBB487:
	mv t0, zero
	j .LBB489
.LBB486:
	ld t0, -336(s0)
	bne t0, zero, .LBB488
	j .LBB487
.LBB489:
	beq t0, zero, .LBB490
	j .LBB491
.LBB490:
	li t0, 1
	j .LBB492
.LBB491:
	mv t0, zero
	j .LBB492
.LBB492:
	bne a2, zero, .LBB493
	j .LBB494
.LBB495:
	li t0, 1
	j .LBB496
.LBB494:
	mv t0, zero
	j .LBB496
.LBB493:
	bne t0, zero, .LBB495
	j .LBB494
.LBB496:
	bne t0, zero, .LBB497
	j .LBB498
.LBB497:
	li a2, 1
	j .LBB499
.LBB500:
	mv a2, zero
	j .LBB499
.LBB498:
	bne a3, zero, .LBB497
	j .LBB500
.LBB499:
	bne t0, zero, .LBB501
	j .LBB502
.LBB503:
	li a4, 1
	j .LBB504
.LBB502:
	mv a4, zero
	j .LBB504
.LBB501:
	bne a3, zero, .LBB503
	j .LBB502
.LBB504:
	beq a4, zero, .LBB505
	j .LBB506
.LBB505:
	li a4, 1
	j .LBB507
.LBB506:
	mv a4, zero
	j .LBB507
.LBB507:
	bne a2, zero, .LBB508
	j .LBB509
.LBB510:
	li a6, 1
	j .LBB511
.LBB509:
	mv a6, zero
	j .LBB511
.LBB508:
	bne a4, zero, .LBB510
	j .LBB509
.LBB511:
	bne s6, zero, .LBB512
	j .LBB513
.LBB514:
	li a2, 1
	j .LBB515
.LBB513:
	mv a2, zero
	j .LBB515
.LBB512:
	ld t0, -336(s0)
	bne t0, zero, .LBB514
	j .LBB513
.LBB515:
	bne t0, zero, .LBB516
	j .LBB517
.LBB518:
	li t0, 1
	j .LBB519
.LBB517:
	mv t0, zero
	j .LBB519
.LBB516:
	bne a3, zero, .LBB518
	j .LBB517
.LBB519:
	bne a2, zero, .LBB520
	j .LBB521
.LBB520:
	li a2, 1
	j .LBB522
.LBB523:
	mv a2, zero
	j .LBB522
.LBB521:
	bne t0, zero, .LBB520
	j .LBB523
.LBB522:
	ld t0, -296(s0)
	bne t0, zero, .LBB524
	j .LBB525
.LBB524:
	li a3, 1
	j .LBB526
.LBB527:
	mv a3, zero
	j .LBB526
.LBB525:
	ld t0, -344(s0)
	bne t0, zero, .LBB524
	j .LBB527
.LBB526:
	ld t0, -296(s0)
	bne t0, zero, .LBB528
	j .LBB529
.LBB530:
	li t0, 1
	j .LBB531
.LBB529:
	mv t0, zero
	j .LBB531
.LBB528:
	ld t0, -344(s0)
	bne t0, zero, .LBB530
	j .LBB529
.LBB531:
	beq t0, zero, .LBB532
	j .LBB533
.LBB532:
	li t0, 1
	j .LBB534
.LBB533:
	mv t0, zero
	j .LBB534
.LBB534:
	bne a3, zero, .LBB535
	j .LBB536
.LBB537:
	li a4, 1
	j .LBB538
.LBB536:
	mv a4, zero
	j .LBB538
.LBB535:
	bne t0, zero, .LBB537
	j .LBB536
.LBB538:
	bne a4, zero, .LBB539
	j .LBB540
.LBB539:
	li a3, 1
	j .LBB541
.LBB542:
	mv a3, zero
	j .LBB541
.LBB540:
	bne a2, zero, .LBB539
	j .LBB542
.LBB541:
	bne a4, zero, .LBB543
	j .LBB544
.LBB545:
	li t0, 1
	j .LBB546
.LBB544:
	mv t0, zero
	j .LBB546
.LBB543:
	bne a2, zero, .LBB545
	j .LBB544
.LBB546:
	beq t0, zero, .LBB547
	j .LBB548
.LBB547:
	li t0, 1
	j .LBB549
.LBB548:
	mv t0, zero
	j .LBB549
.LBB549:
	bne a3, zero, .LBB550
	j .LBB551
.LBB552:
	li a5, 1
	j .LBB553
.LBB551:
	mv a5, zero
	j .LBB553
.LBB550:
	bne t0, zero, .LBB552
	j .LBB551
.LBB553:
	ld t0, -296(s0)
	bne t0, zero, .LBB554
	j .LBB555
.LBB556:
	li t0, 1
	j .LBB557
.LBB555:
	mv t0, zero
	j .LBB557
.LBB554:
	ld t0, -344(s0)
	bne t0, zero, .LBB556
	j .LBB555
.LBB557:
	bne a4, zero, .LBB558
	j .LBB559
.LBB560:
	li a2, 1
	j .LBB561
.LBB559:
	mv a2, zero
	j .LBB561
.LBB558:
	bne a2, zero, .LBB560
	j .LBB559
.LBB561:
	bne t0, zero, .LBB562
	j .LBB563
.LBB562:
	li t0, 1
	j .LBB564
.LBB565:
	mv t0, zero
	j .LBB564
.LBB563:
	bne a2, zero, .LBB562
	j .LBB565
.LBB564:
	bne s5, zero, .LBB566
	j .LBB567
.LBB566:
	li a3, 1
	j .LBB568
.LBB569:
	mv a3, zero
	j .LBB568
.LBB567:
	bne a1, zero, .LBB566
	j .LBB569
.LBB568:
	bne s5, zero, .LBB570
	j .LBB571
.LBB572:
	li a2, 1
	j .LBB573
.LBB571:
	mv a2, zero
	j .LBB573
.LBB570:
	bne a1, zero, .LBB572
	j .LBB571
.LBB573:
	beq a2, zero, .LBB574
	j .LBB575
.LBB574:
	li a2, 1
	j .LBB576
.LBB575:
	mv a2, zero
	j .LBB576
.LBB576:
	bne a3, zero, .LBB577
	j .LBB578
.LBB579:
	li a3, 1
	j .LBB580
.LBB578:
	mv a3, zero
	j .LBB580
.LBB577:
	bne a2, zero, .LBB579
	j .LBB578
.LBB580:
	bne a3, zero, .LBB581
	j .LBB582
.LBB581:
	li a4, 1
	j .LBB583
.LBB584:
	mv a4, zero
	j .LBB583
.LBB582:
	bne t0, zero, .LBB581
	j .LBB584
.LBB583:
	bne a3, zero, .LBB585
	j .LBB586
.LBB587:
	li a2, 1
	j .LBB588
.LBB586:
	mv a2, zero
	j .LBB588
.LBB585:
	bne t0, zero, .LBB587
	j .LBB586
.LBB588:
	beq a2, zero, .LBB589
	j .LBB590
.LBB589:
	li a2, 1
	j .LBB591
.LBB590:
	mv a2, zero
	j .LBB591
.LBB591:
	bne a4, zero, .LBB592
	j .LBB593
.LBB594:
	li a4, 1
	j .LBB595
.LBB593:
	mv a4, zero
	j .LBB595
.LBB592:
	bne a2, zero, .LBB594
	j .LBB593
.LBB595:
	bne s5, zero, .LBB596
	j .LBB597
.LBB598:
	li a1, 1
	j .LBB599
.LBB597:
	mv a1, zero
	j .LBB599
.LBB596:
	bne a1, zero, .LBB598
	j .LBB597
.LBB599:
	bne a3, zero, .LBB600
	j .LBB601
.LBB602:
	li t0, 1
	j .LBB603
.LBB601:
	mv t0, zero
	j .LBB603
.LBB600:
	bne t0, zero, .LBB602
	j .LBB601
.LBB603:
	bne a1, zero, .LBB604
	j .LBB605
.LBB604:
	li a2, 1
	j .LBB606
.LBB607:
	mv a2, zero
	j .LBB606
.LBB605:
	bne t0, zero, .LBB604
	j .LBB607
.LBB606:
	bne s4, zero, .LBB608
	j .LBB609
.LBB608:
	li a1, 1
	j .LBB610
.LBB611:
	mv a1, zero
	j .LBB610
.LBB609:
	bne a0, zero, .LBB608
	j .LBB611
.LBB610:
	bne s4, zero, .LBB612
	j .LBB613
.LBB614:
	li t0, 1
	j .LBB615
.LBB613:
	mv t0, zero
	j .LBB615
.LBB612:
	bne a0, zero, .LBB614
	j .LBB613
.LBB615:
	beq t0, zero, .LBB616
	j .LBB617
.LBB616:
	li t0, 1
	j .LBB618
.LBB617:
	mv t0, zero
	j .LBB618
.LBB618:
	bne a1, zero, .LBB619
	j .LBB620
.LBB621:
	li a1, 1
	j .LBB622
.LBB620:
	mv a1, zero
	j .LBB622
.LBB619:
	bne t0, zero, .LBB621
	j .LBB620
.LBB622:
	bne a1, zero, .LBB623
	j .LBB624
.LBB623:
	li a3, 1
	j .LBB625
.LBB626:
	mv a3, zero
	j .LBB625
.LBB624:
	bne a2, zero, .LBB623
	j .LBB626
.LBB625:
	bne a1, zero, .LBB627
	j .LBB628
.LBB629:
	li t0, 1
	j .LBB630
.LBB628:
	mv t0, zero
	j .LBB630
.LBB627:
	bne a2, zero, .LBB629
	j .LBB628
.LBB630:
	beq t0, zero, .LBB631
	j .LBB632
.LBB631:
	li t0, 1
	j .LBB633
.LBB632:
	mv t0, zero
	j .LBB633
.LBB633:
	bne a3, zero, .LBB634
	j .LBB635
.LBB636:
	li a3, 1
	j .LBB637
.LBB635:
	mv a3, zero
	j .LBB637
.LBB634:
	bne t0, zero, .LBB636
	j .LBB635
.LBB637:
	bne s4, zero, .LBB638
	j .LBB639
.LBB640:
	li t0, 1
	j .LBB641
.LBB639:
	mv t0, zero
	j .LBB641
.LBB638:
	bne a0, zero, .LBB640
	j .LBB639
.LBB641:
	bne a1, zero, .LBB642
	j .LBB643
.LBB644:
	li a0, 1
	j .LBB645
.LBB643:
	mv a0, zero
	j .LBB645
.LBB642:
	bne a2, zero, .LBB644
	j .LBB643
.LBB645:
	bne t0, zero, .LBB646
	j .LBB647
.LBB646:
	li a0, 1
	j .LBB648
.LBB649:
	mv a0, zero
	j .LBB648
.LBB647:
	bne a0, zero, .LBB646
	j .LBB649
.LBB648:
	bne s3, zero, .LBB650
	j .LBB651
.LBB650:
	li a1, 1
	j .LBB652
.LBB653:
	mv a1, zero
	j .LBB652
.LBB651:
	bne s1, zero, .LBB650
	j .LBB653
.LBB652:
	bne s3, zero, .LBB654
	j .LBB655
.LBB656:
	li t0, 1
	j .LBB657
.LBB655:
	mv t0, zero
	j .LBB657
.LBB654:
	bne s1, zero, .LBB656
	j .LBB655
.LBB657:
	beq t0, zero, .LBB658
	j .LBB659
.LBB658:
	li t0, 1
	j .LBB660
.LBB659:
	mv t0, zero
	j .LBB660
.LBB660:
	bne a1, zero, .LBB661
	j .LBB662
.LBB663:
	li a2, 1
	j .LBB664
.LBB662:
	mv a2, zero
	j .LBB664
.LBB661:
	bne t0, zero, .LBB663
	j .LBB662
.LBB664:
	bne a2, zero, .LBB665
	j .LBB666
.LBB665:
	li t0, 1
	j .LBB667
.LBB668:
	mv t0, zero
	j .LBB667
.LBB666:
	bne a0, zero, .LBB665
	j .LBB668
.LBB667:
	bne a2, zero, .LBB669
	j .LBB670
.LBB671:
	li a1, 1
	j .LBB672
.LBB670:
	mv a1, zero
	j .LBB672
.LBB669:
	bne a0, zero, .LBB671
	j .LBB670
.LBB672:
	beq a1, zero, .LBB673
	j .LBB674
.LBB673:
	li a1, 1
	j .LBB675
.LBB674:
	mv a1, zero
	j .LBB675
.LBB675:
	bne t0, zero, .LBB676
	j .LBB677
.LBB678:
	li a1, 1
	j .LBB679
.LBB677:
	mv a1, zero
	j .LBB679
.LBB676:
	bne a1, zero, .LBB678
	j .LBB677
.LBB679:
	bne s3, zero, .LBB680
	j .LBB681
.LBB682:
	li s1, 1
	j .LBB683
.LBB681:
	mv s1, zero
	j .LBB683
.LBB680:
	bne s1, zero, .LBB682
	j .LBB681
.LBB683:
	bne a2, zero, .LBB684
	j .LBB685
.LBB686:
	li t0, 1
	j .LBB687
.LBB685:
	mv t0, zero
	j .LBB687
.LBB684:
	bne a0, zero, .LBB686
	j .LBB685
.LBB687:
	bne s1, zero, .LBB688
	j .LBB689
.LBB688:
	li s1, 1
	j .LBB690
.LBB691:
	mv s1, zero
	j .LBB690
.LBB689:
	bne t0, zero, .LBB688
	j .LBB691
.LBB690:
	ld t0, -304(s0)
	bne t0, zero, .LBB692
	j .LBB693
.LBB692:
	li a0, 1
	j .LBB694
.LBB695:
	mv a0, zero
	j .LBB694
.LBB693:
	bne t2, zero, .LBB692
	j .LBB695
.LBB694:
	ld t0, -304(s0)
	bne t0, zero, .LBB696
	j .LBB697
.LBB698:
	li t0, 1
	j .LBB699
.LBB697:
	mv t0, zero
	j .LBB699
.LBB696:
	bne t2, zero, .LBB698
	j .LBB697
.LBB699:
	beq t0, zero, .LBB700
	j .LBB701
.LBB700:
	li t0, 1
	j .LBB702
.LBB701:
	mv t0, zero
	j .LBB702
.LBB702:
	bne a0, zero, .LBB703
	j .LBB704
.LBB705:
	li a2, 1
	j .LBB706
.LBB704:
	mv a2, zero
	j .LBB706
.LBB703:
	bne t0, zero, .LBB705
	j .LBB704
.LBB706:
	bne a2, zero, .LBB707
	j .LBB708
.LBB707:
	li a0, 1
	j .LBB709
.LBB710:
	mv a0, zero
	j .LBB709
.LBB708:
	bne s1, zero, .LBB707
	j .LBB710
.LBB709:
	bne a2, zero, .LBB711
	j .LBB712
.LBB713:
	li t0, 1
	j .LBB714
.LBB712:
	mv t0, zero
	j .LBB714
.LBB711:
	bne s1, zero, .LBB713
	j .LBB712
.LBB714:
	beq t0, zero, .LBB715
	j .LBB716
.LBB715:
	li t0, 1
	j .LBB717
.LBB716:
	mv t0, zero
	j .LBB717
.LBB717:
	bne a0, zero, .LBB718
	j .LBB719
.LBB720:
	li a0, 1
	j .LBB721
.LBB719:
	mv a0, zero
	j .LBB721
.LBB718:
	bne t0, zero, .LBB720
	j .LBB719
.LBB721:
	ld t0, -304(s0)
	bne t0, zero, .LBB722
	j .LBB723
.LBB724:
	li t2, 1
	j .LBB725
.LBB723:
	mv t2, zero
	j .LBB725
.LBB722:
	bne t2, zero, .LBB724
	j .LBB723
.LBB725:
	bne a2, zero, .LBB726
	j .LBB727
.LBB728:
	li t0, 1
	j .LBB729
.LBB727:
	mv t0, zero
	j .LBB729
.LBB726:
	bne s1, zero, .LBB728
	j .LBB727
.LBB729:
	bne t2, zero, .LBB730
	j .LBB731
.LBB730:
	li a2, 1
	j .LBB732
.LBB733:
	mv a2, zero
	j .LBB732
.LBB731:
	bne t0, zero, .LBB730
	j .LBB733
.LBB732:
	ld t0, -312(s0)
	bne t0, zero, .LBB734
	j .LBB735
.LBB734:
	li t2, 1
	j .LBB736
.LBB737:
	mv t2, zero
	j .LBB736
.LBB735:
	bne t1, zero, .LBB734
	j .LBB737
.LBB736:
	ld t0, -312(s0)
	bne t0, zero, .LBB738
	j .LBB739
.LBB740:
	li t0, 1
	j .LBB741
.LBB739:
	mv t0, zero
	j .LBB741
.LBB738:
	bne t1, zero, .LBB740
	j .LBB739
.LBB741:
	beq t0, zero, .LBB742
	j .LBB743
.LBB742:
	li t0, 1
	j .LBB744
.LBB743:
	mv t0, zero
	j .LBB744
.LBB744:
	bne t2, zero, .LBB745
	j .LBB746
.LBB747:
	li t2, 1
	j .LBB748
.LBB746:
	mv t2, zero
	j .LBB748
.LBB745:
	bne t0, zero, .LBB747
	j .LBB746
.LBB748:
	bne t2, zero, .LBB749
	j .LBB750
.LBB749:
	li t0, 1
	j .LBB751
.LBB752:
	mv t0, zero
	j .LBB751
.LBB750:
	bne a2, zero, .LBB749
	j .LBB752
.LBB751:
	bne t2, zero, .LBB753
	j .LBB754
.LBB755:
	li s1, 1
	j .LBB756
.LBB754:
	mv s1, zero
	j .LBB756
.LBB753:
	bne a2, zero, .LBB755
	j .LBB754
.LBB756:
	beq s1, zero, .LBB757
	j .LBB758
.LBB757:
	li s1, 1
	j .LBB759
.LBB758:
	mv s1, zero
	j .LBB759
.LBB759:
	bne t0, zero, .LBB760
	j .LBB761
.LBB762:
	li s1, 1
	j .LBB763
.LBB761:
	mv s1, zero
	j .LBB763
.LBB760:
	bne s1, zero, .LBB762
	j .LBB761
.LBB763:
	ld t0, -312(s0)
	bne t0, zero, .LBB764
	j .LBB765
.LBB766:
	li t0, 1
	j .LBB767
.LBB765:
	mv t0, zero
	j .LBB767
.LBB764:
	bne t1, zero, .LBB766
	j .LBB765
.LBB767:
	bne t2, zero, .LBB768
	j .LBB769
.LBB770:
	li t1, 1
	j .LBB771
.LBB769:
	mv t1, zero
	j .LBB771
.LBB768:
	bne a2, zero, .LBB770
	j .LBB769
.LBB771:
	bne t0, zero, .LBB772
	j .LBB773
.LBB772:
	li a2, 1
	j .LBB774
.LBB775:
	mv a2, zero
	j .LBB774
.LBB773:
	bne t1, zero, .LBB772
	j .LBB775
.LBB774:
	bne s2, zero, .LBB776
	j .LBB777
.LBB776:
	li t1, 1
	j .LBB778
.LBB779:
	mv t1, zero
	j .LBB778
.LBB777:
	ld t0, -352(s0)
	bne t0, zero, .LBB776
	j .LBB779
.LBB778:
	bne s2, zero, .LBB780
	j .LBB781
.LBB782:
	li t0, 1
	j .LBB783
.LBB781:
	mv t0, zero
	j .LBB783
.LBB780:
	ld t0, -352(s0)
	bne t0, zero, .LBB782
	j .LBB781
.LBB783:
	beq t0, zero, .LBB784
	j .LBB785
.LBB784:
	li t0, 1
	j .LBB786
.LBB785:
	mv t0, zero
	j .LBB786
.LBB786:
	bne t1, zero, .LBB787
	j .LBB788
.LBB789:
	li s3, 1
	j .LBB790
.LBB788:
	mv s3, zero
	j .LBB790
.LBB787:
	bne t0, zero, .LBB789
	j .LBB788
.LBB790:
	bne s3, zero, .LBB791
	j .LBB792
.LBB791:
	li t0, 1
	j .LBB793
.LBB794:
	mv t0, zero
	j .LBB793
.LBB792:
	bne a2, zero, .LBB791
	j .LBB794
.LBB793:
	bne s3, zero, .LBB795
	j .LBB796
.LBB797:
	li t1, 1
	j .LBB798
.LBB796:
	mv t1, zero
	j .LBB798
.LBB795:
	bne a2, zero, .LBB797
	j .LBB796
.LBB798:
	beq t1, zero, .LBB799
	j .LBB800
.LBB799:
	li t1, 1
	j .LBB801
.LBB800:
	mv t1, zero
	j .LBB801
.LBB801:
	bne t0, zero, .LBB802
	j .LBB803
.LBB804:
	li t1, 1
	j .LBB805
.LBB803:
	mv t1, zero
	j .LBB805
.LBB802:
	bne t1, zero, .LBB804
	j .LBB803
.LBB805:
	bne s2, zero, .LBB806
	j .LBB807
.LBB808:
	li t2, 1
	j .LBB809
.LBB807:
	mv t2, zero
	j .LBB809
.LBB806:
	ld t0, -352(s0)
	bne t0, zero, .LBB808
	j .LBB807
.LBB809:
	bne s3, zero, .LBB810
	j .LBB811
.LBB812:
	li t0, 1
	j .LBB813
.LBB811:
	mv t0, zero
	j .LBB813
.LBB810:
	bne a2, zero, .LBB812
	j .LBB811
.LBB813:
	bne t2, zero, .LBB814
	j .LBB815
.LBB814:
	j .LBB816
.LBB817:
	j .LBB816
.LBB815:
	bne t0, zero, .LBB814
	j .LBB817
.LBB816:
	li t0, 2
	mulw t0, zero, t0
	addw t0, t0, t1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a0
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a3
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a5
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a6
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s8
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a7
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s9
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s11
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s10
	li t1, 2
	mulw t0, t0, t1
	ld t0, -368(s0)
	addw t0, t0, t0
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, t3
	li t0, 2
	mulw t0, t1, t0
	addw t2, t0, t4
	li t0, 2
	ld t0, -264(s0)
	remw s11, t0, t0
	blt s11, zero, .LBB818
	j .LBB3882
.LBB818:
	subw s11, zero, s11
	mv s11, s11
	j .LBB819
.LBB819:
	li t0, 2
	ld t0, -264(s0)
	divw t1, t0, t0
	li t0, 2
	remw s10, t1, t0
	blt s10, zero, .LBB820
	j .LBB3883
.LBB820:
	subw s10, zero, s10
	mv s10, s10
	j .LBB821
.LBB821:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s9, t1, t0
	blt s9, zero, .LBB822
	j .LBB3884
.LBB822:
	subw s9, zero, s9
	mv s9, s9
	j .LBB823
.LBB823:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s8, t1, t0
	blt s8, zero, .LBB824
	j .LBB3885
.LBB824:
	subw s8, zero, s8
	mv s8, s8
	j .LBB825
.LBB825:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB826
	j .LBB3886
.LBB826:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -376(s0)
	j .LBB827
.LBB827:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB828
	j .LBB3887
.LBB828:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -384(s0)
	j .LBB829
.LBB829:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s7, t1, t0
	blt s7, zero, .LBB830
	j .LBB3888
.LBB830:
	subw s7, zero, s7
	mv s7, s7
	j .LBB831
.LBB831:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s6, t1, t0
	blt s6, zero, .LBB832
	j .LBB3889
.LBB832:
	subw s6, zero, s6
	mv s6, s6
	j .LBB833
.LBB833:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s5, t1, t0
	blt s5, zero, .LBB834
	j .LBB3890
.LBB834:
	subw s5, zero, s5
	mv s5, s5
	j .LBB835
.LBB835:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB836
	j .LBB3891
.LBB836:
	subw s4, zero, s4
	mv s4, s4
	j .LBB837
.LBB837:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB838
	j .LBB3892
.LBB838:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -392(s0)
	j .LBB839
.LBB839:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s3, t0, t1
	blt s3, zero, .LBB840
	j .LBB3893
.LBB840:
	subw s3, zero, s3
	mv s3, s3
	j .LBB841
.LBB841:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw s2, t0, t1
	blt s2, zero, .LBB842
	j .LBB3894
.LBB842:
	subw s2, zero, s2
	mv s2, s2
	j .LBB843
.LBB843:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB844
	j .LBB3895
.LBB844:
	subw a7, zero, a7
	mv a7, a7
	j .LBB845
.LBB845:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a6, t1, t0
	blt a6, zero, .LBB846
	j .LBB3896
.LBB846:
	subw a6, zero, a6
	mv a6, a6
	j .LBB847
.LBB847:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a5, t1, t0
	blt a5, zero, .LBB848
	j .LBB3897
.LBB848:
	subw a5, zero, a5
	mv a5, a5
	j .LBB849
.LBB849:
	li t0, 2
	divw t0, t1, t0
	li t0, 2
	remw a4, t2, t0
	blt a4, zero, .LBB850
	j .LBB3898
.LBB850:
	subw a4, zero, a4
	mv a4, a4
	j .LBB851
.LBB851:
	li t0, 2
	divw t1, t2, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB852
	j .LBB3899
.LBB852:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -400(s0)
	j .LBB853
.LBB853:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB854
	j .LBB3900
.LBB854:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -280(s0)
	j .LBB855
.LBB855:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB856
	j .LBB3901
.LBB856:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -416(s0)
	j .LBB857
.LBB857:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB858
	j .LBB3902
.LBB858:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -424(s0)
	j .LBB859
.LBB859:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a3, t1, t0
	blt a3, zero, .LBB860
	j .LBB3903
.LBB860:
	subw a3, zero, a3
	mv a3, a3
	j .LBB861
.LBB861:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB862
	j .LBB3904
.LBB862:
	subw a2, zero, a2
	mv a2, a2
	j .LBB863
.LBB863:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a1, t1, t0
	blt a1, zero, .LBB864
	j .LBB3905
.LBB864:
	subw a1, zero, a1
	mv a1, a1
	j .LBB865
.LBB865:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a0, t1, t0
	blt a0, zero, .LBB866
	j .LBB3906
.LBB866:
	subw a0, zero, a0
	mv a0, a0
	j .LBB867
.LBB867:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB868
	j .LBB3907
.LBB868:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -432(s0)
	j .LBB869
.LBB869:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB870
	j .LBB3908
.LBB870:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -440(s0)
	j .LBB871
.LBB871:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB872
	j .LBB3909
.LBB872:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -448(s0)
	j .LBB873
.LBB873:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB874
	j .LBB3910
.LBB874:
	subw s1, zero, s1
	mv s1, s1
	j .LBB875
.LBB875:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t2, t1, t0
	blt t2, zero, .LBB876
	j .LBB3911
.LBB876:
	subw t2, zero, t2
	mv t2, t2
	j .LBB877
.LBB877:
	li t0, 2
	divw t3, t1, t0
	li t0, 2
	remw t1, t3, t0
	blt t1, zero, .LBB878
	j .LBB3912
.LBB878:
	subw t1, zero, t1
	mv t1, t1
	j .LBB879
.LBB879:
	li t0, 2
	divw t4, t3, t0
	li t0, 2
	remw t0, t4, t0
	blt t0, zero, .LBB880
	j .LBB3913
.LBB880:
	subw t0, zero, t0
	mv t0, t0
	j .LBB881
.LBB881:
	li t3, 2
	divw t0, t4, t3
	bne s11, zero, .LBB882
	j .LBB883
.LBB882:
	li t3, 1
	j .LBB884
.LBB885:
	mv t3, zero
	j .LBB884
.LBB883:
	bne a4, zero, .LBB882
	j .LBB885
.LBB884:
	bne s11, zero, .LBB886
	j .LBB887
.LBB888:
	li t4, 1
	j .LBB889
.LBB887:
	mv t4, zero
	j .LBB889
.LBB886:
	bne a4, zero, .LBB888
	j .LBB887
.LBB889:
	beq t4, zero, .LBB890
	j .LBB891
.LBB890:
	li t4, 1
	j .LBB892
.LBB891:
	mv t4, zero
	j .LBB892
.LBB892:
	bne t3, zero, .LBB893
	j .LBB894
.LBB895:
	li t4, 1
	j .LBB896
.LBB894:
	mv t4, zero
	j .LBB896
.LBB893:
	bne t4, zero, .LBB895
	j .LBB894
.LBB896:
	bne t4, zero, .LBB897
	j .LBB898
.LBB897:
	li t3, 1
	j .LBB899
.LBB900:
	mv t3, zero
	j .LBB899
.LBB898:
	j .LBB900
.LBB899:
	bne t4, zero, .LBB901
	j .LBB902
.LBB902:
	j .LBB903
.LBB901:
	j .LBB902
.LBB903:
	beq zero, zero, .LBB904
	j .LBB905
.LBB904:
	li t6, 1
	j .LBB906
.LBB905:
	mv t6, zero
	j .LBB906
.LBB906:
	bne t3, zero, .LBB907
	j .LBB908
.LBB909:
	li t3, 1
	j .LBB910
.LBB908:
	mv t3, zero
	j .LBB910
.LBB907:
	bne t6, zero, .LBB909
	j .LBB908
.LBB910:
	bne s11, zero, .LBB911
	j .LBB912
.LBB913:
	li a4, 1
	j .LBB914
.LBB912:
	mv a4, zero
	j .LBB914
.LBB911:
	bne a4, zero, .LBB913
	j .LBB912
.LBB914:
	bne t4, zero, .LBB915
	j .LBB916
.LBB916:
	j .LBB917
.LBB915:
	j .LBB916
.LBB917:
	bne a4, zero, .LBB918
	j .LBB919
.LBB918:
	li t6, 1
	j .LBB920
.LBB921:
	mv t6, zero
	j .LBB920
.LBB919:
	bne zero, zero, .LBB918
	j .LBB921
.LBB920:
	bne s10, zero, .LBB922
	j .LBB923
.LBB922:
	li s11, 1
	j .LBB924
.LBB925:
	mv s11, zero
	j .LBB924
.LBB923:
	ld t0, -400(s0)
	bne t0, zero, .LBB922
	j .LBB925
.LBB924:
	bne s10, zero, .LBB926
	j .LBB927
.LBB928:
	li a4, 1
	j .LBB929
.LBB927:
	mv a4, zero
	j .LBB929
.LBB926:
	ld t0, -400(s0)
	bne t0, zero, .LBB928
	j .LBB927
.LBB929:
	beq a4, zero, .LBB930
	j .LBB931
.LBB930:
	li a4, 1
	j .LBB932
.LBB931:
	mv a4, zero
	j .LBB932
.LBB932:
	bne s11, zero, .LBB933
	j .LBB934
.LBB935:
	li t0, 1
	sd t0, -456(s0)
	j .LBB936
.LBB934:
	ld t0, -456(s0)
	mv t0, zero
	j .LBB936
.LBB933:
	bne a4, zero, .LBB935
	j .LBB934
.LBB936:
	ld t0, -456(s0)
	bne t0, zero, .LBB937
	j .LBB938
.LBB937:
	li a4, 1
	j .LBB939
.LBB940:
	mv a4, zero
	j .LBB939
.LBB938:
	bne t6, zero, .LBB937
	j .LBB940
.LBB939:
	ld t0, -456(s0)
	bne t0, zero, .LBB941
	j .LBB942
.LBB943:
	li s11, 1
	j .LBB944
.LBB942:
	mv s11, zero
	j .LBB944
.LBB941:
	bne t6, zero, .LBB943
	j .LBB942
.LBB944:
	beq s11, zero, .LBB945
	j .LBB946
.LBB945:
	li s11, 1
	j .LBB947
.LBB946:
	mv s11, zero
	j .LBB947
.LBB947:
	bne a4, zero, .LBB948
	j .LBB949
.LBB950:
	li t4, 1
	j .LBB951
.LBB949:
	mv t4, zero
	j .LBB951
.LBB948:
	bne s11, zero, .LBB950
	j .LBB949
.LBB951:
	bne s10, zero, .LBB952
	j .LBB953
.LBB954:
	li s10, 1
	j .LBB955
.LBB953:
	mv s10, zero
	j .LBB955
.LBB952:
	ld t0, -400(s0)
	bne t0, zero, .LBB954
	j .LBB953
.LBB955:
	ld t0, -456(s0)
	bne t0, zero, .LBB956
	j .LBB957
.LBB958:
	li a4, 1
	j .LBB959
.LBB957:
	mv a4, zero
	j .LBB959
.LBB956:
	bne t6, zero, .LBB958
	j .LBB957
.LBB959:
	bne s10, zero, .LBB960
	j .LBB961
.LBB960:
	li s11, 1
	j .LBB962
.LBB963:
	mv s11, zero
	j .LBB962
.LBB961:
	bne a4, zero, .LBB960
	j .LBB963
.LBB962:
	bne s9, zero, .LBB964
	j .LBB965
.LBB964:
	li s10, 1
	j .LBB966
.LBB967:
	mv s10, zero
	j .LBB966
.LBB965:
	ld t0, -280(s0)
	bne t0, zero, .LBB964
	j .LBB967
.LBB966:
	bne s9, zero, .LBB968
	j .LBB969
.LBB970:
	li a4, 1
	j .LBB971
.LBB969:
	mv a4, zero
	j .LBB971
.LBB968:
	ld t0, -280(s0)
	bne t0, zero, .LBB970
	j .LBB969
.LBB971:
	beq a4, zero, .LBB972
	j .LBB973
.LBB972:
	li a4, 1
	j .LBB974
.LBB973:
	mv a4, zero
	j .LBB974
.LBB974:
	bne s10, zero, .LBB975
	j .LBB976
.LBB977:
	li t6, 1
	j .LBB978
.LBB976:
	mv t6, zero
	j .LBB978
.LBB975:
	bne a4, zero, .LBB977
	j .LBB976
.LBB978:
	bne t6, zero, .LBB979
	j .LBB980
.LBB979:
	li s10, 1
	j .LBB981
.LBB982:
	mv s10, zero
	j .LBB981
.LBB980:
	bne s11, zero, .LBB979
	j .LBB982
.LBB981:
	bne t6, zero, .LBB983
	j .LBB984
.LBB985:
	li a4, 1
	j .LBB986
.LBB984:
	mv a4, zero
	j .LBB986
.LBB983:
	bne s11, zero, .LBB985
	j .LBB984
.LBB986:
	beq a4, zero, .LBB987
	j .LBB988
.LBB987:
	li a4, 1
	j .LBB989
.LBB988:
	mv a4, zero
	j .LBB989
.LBB989:
	bne s10, zero, .LBB990
	j .LBB991
.LBB992:
	li s10, 1
	j .LBB993
.LBB991:
	mv s10, zero
	j .LBB993
.LBB990:
	bne a4, zero, .LBB992
	j .LBB991
.LBB993:
	bne s9, zero, .LBB994
	j .LBB995
.LBB996:
	li s9, 1
	j .LBB997
.LBB995:
	mv s9, zero
	j .LBB997
.LBB994:
	ld t0, -280(s0)
	bne t0, zero, .LBB996
	j .LBB995
.LBB997:
	bne t6, zero, .LBB998
	j .LBB999
.LBB1000:
	li a4, 1
	j .LBB1001
.LBB999:
	mv a4, zero
	j .LBB1001
.LBB998:
	bne s11, zero, .LBB1000
	j .LBB999
.LBB1001:
	bne s9, zero, .LBB1002
	j .LBB1003
.LBB1002:
	li t6, 1
	j .LBB1004
.LBB1005:
	mv t6, zero
	j .LBB1004
.LBB1003:
	bne a4, zero, .LBB1002
	j .LBB1005
.LBB1004:
	bne s8, zero, .LBB1006
	j .LBB1007
.LBB1006:
	li s9, 1
	j .LBB1008
.LBB1009:
	mv s9, zero
	j .LBB1008
.LBB1007:
	ld t0, -416(s0)
	bne t0, zero, .LBB1006
	j .LBB1009
.LBB1008:
	bne s8, zero, .LBB1010
	j .LBB1011
.LBB1012:
	li a4, 1
	j .LBB1013
.LBB1011:
	mv a4, zero
	j .LBB1013
.LBB1010:
	ld t0, -416(s0)
	bne t0, zero, .LBB1012
	j .LBB1011
.LBB1013:
	beq a4, zero, .LBB1014
	j .LBB1015
.LBB1014:
	li a4, 1
	j .LBB1016
.LBB1015:
	mv a4, zero
	j .LBB1016
.LBB1016:
	bne s9, zero, .LBB1017
	j .LBB1018
.LBB1019:
	li s9, 1
	j .LBB1020
.LBB1018:
	mv s9, zero
	j .LBB1020
.LBB1017:
	bne a4, zero, .LBB1019
	j .LBB1018
.LBB1020:
	bne s9, zero, .LBB1021
	j .LBB1022
.LBB1021:
	li s11, 1
	j .LBB1023
.LBB1024:
	mv s11, zero
	j .LBB1023
.LBB1022:
	bne t6, zero, .LBB1021
	j .LBB1024
.LBB1023:
	bne s9, zero, .LBB1025
	j .LBB1026
.LBB1027:
	li a4, 1
	j .LBB1028
.LBB1026:
	mv a4, zero
	j .LBB1028
.LBB1025:
	bne t6, zero, .LBB1027
	j .LBB1026
.LBB1028:
	beq a4, zero, .LBB1029
	j .LBB1030
.LBB1029:
	li a4, 1
	j .LBB1031
.LBB1030:
	mv a4, zero
	j .LBB1031
.LBB1031:
	bne s11, zero, .LBB1032
	j .LBB1033
.LBB1034:
	li t0, 1
	sd t0, -464(s0)
	j .LBB1035
.LBB1033:
	ld t0, -464(s0)
	mv t0, zero
	j .LBB1035
.LBB1032:
	bne a4, zero, .LBB1034
	j .LBB1033
.LBB1035:
	bne s8, zero, .LBB1036
	j .LBB1037
.LBB1038:
	li a4, 1
	j .LBB1039
.LBB1037:
	mv a4, zero
	j .LBB1039
.LBB1036:
	ld t0, -416(s0)
	bne t0, zero, .LBB1038
	j .LBB1037
.LBB1039:
	bne s9, zero, .LBB1040
	j .LBB1041
.LBB1042:
	li s8, 1
	j .LBB1043
.LBB1041:
	mv s8, zero
	j .LBB1043
.LBB1040:
	bne t6, zero, .LBB1042
	j .LBB1041
.LBB1043:
	bne a4, zero, .LBB1044
	j .LBB1045
.LBB1044:
	li a4, 1
	j .LBB1046
.LBB1047:
	mv a4, zero
	j .LBB1046
.LBB1045:
	bne s8, zero, .LBB1044
	j .LBB1047
.LBB1046:
	ld t0, -376(s0)
	bne t0, zero, .LBB1048
	j .LBB1049
.LBB1048:
	li s9, 1
	j .LBB1050
.LBB1051:
	mv s9, zero
	j .LBB1050
.LBB1049:
	ld t0, -424(s0)
	bne t0, zero, .LBB1048
	j .LBB1051
.LBB1050:
	ld t0, -376(s0)
	bne t0, zero, .LBB1052
	j .LBB1053
.LBB1054:
	li s8, 1
	j .LBB1055
.LBB1053:
	mv s8, zero
	j .LBB1055
.LBB1052:
	ld t0, -424(s0)
	bne t0, zero, .LBB1054
	j .LBB1053
.LBB1055:
	beq s8, zero, .LBB1056
	j .LBB1057
.LBB1056:
	li s8, 1
	j .LBB1058
.LBB1057:
	mv s8, zero
	j .LBB1058
.LBB1058:
	bne s9, zero, .LBB1059
	j .LBB1060
.LBB1061:
	li s9, 1
	j .LBB1062
.LBB1060:
	mv s9, zero
	j .LBB1062
.LBB1059:
	bne s8, zero, .LBB1061
	j .LBB1060
.LBB1062:
	bne s9, zero, .LBB1063
	j .LBB1064
.LBB1063:
	li s11, 1
	j .LBB1065
.LBB1066:
	mv s11, zero
	j .LBB1065
.LBB1064:
	bne a4, zero, .LBB1063
	j .LBB1066
.LBB1065:
	bne s9, zero, .LBB1067
	j .LBB1068
.LBB1069:
	li s8, 1
	j .LBB1070
.LBB1068:
	mv s8, zero
	j .LBB1070
.LBB1067:
	bne a4, zero, .LBB1069
	j .LBB1068
.LBB1070:
	beq s8, zero, .LBB1071
	j .LBB1072
.LBB1071:
	li s8, 1
	j .LBB1073
.LBB1072:
	mv s8, zero
	j .LBB1073
.LBB1073:
	bne s11, zero, .LBB1074
	j .LBB1075
.LBB1076:
	li s8, 1
	j .LBB1077
.LBB1075:
	mv s8, zero
	j .LBB1077
.LBB1074:
	bne s8, zero, .LBB1076
	j .LBB1075
.LBB1077:
	ld t0, -376(s0)
	bne t0, zero, .LBB1078
	j .LBB1079
.LBB1080:
	li s11, 1
	j .LBB1081
.LBB1079:
	mv s11, zero
	j .LBB1081
.LBB1078:
	ld t0, -424(s0)
	bne t0, zero, .LBB1080
	j .LBB1079
.LBB1081:
	bne s9, zero, .LBB1082
	j .LBB1083
.LBB1084:
	li a4, 1
	j .LBB1085
.LBB1083:
	mv a4, zero
	j .LBB1085
.LBB1082:
	bne a4, zero, .LBB1084
	j .LBB1083
.LBB1085:
	bne s11, zero, .LBB1086
	j .LBB1087
.LBB1086:
	li t6, 1
	j .LBB1088
.LBB1089:
	mv t6, zero
	j .LBB1088
.LBB1087:
	bne a4, zero, .LBB1086
	j .LBB1089
.LBB1088:
	ld t0, -384(s0)
	bne t0, zero, .LBB1090
	j .LBB1091
.LBB1090:
	li s9, 1
	j .LBB1092
.LBB1093:
	mv s9, zero
	j .LBB1092
.LBB1091:
	bne a3, zero, .LBB1090
	j .LBB1093
.LBB1092:
	ld t0, -384(s0)
	bne t0, zero, .LBB1094
	j .LBB1095
.LBB1096:
	li a4, 1
	j .LBB1097
.LBB1095:
	mv a4, zero
	j .LBB1097
.LBB1094:
	bne a3, zero, .LBB1096
	j .LBB1095
.LBB1097:
	beq a4, zero, .LBB1098
	j .LBB1099
.LBB1098:
	li a4, 1
	j .LBB1100
.LBB1099:
	mv a4, zero
	j .LBB1100
.LBB1100:
	bne s9, zero, .LBB1101
	j .LBB1102
.LBB1103:
	li s11, 1
	j .LBB1104
.LBB1102:
	mv s11, zero
	j .LBB1104
.LBB1101:
	bne a4, zero, .LBB1103
	j .LBB1102
.LBB1104:
	bne s11, zero, .LBB1105
	j .LBB1106
.LBB1105:
	li s9, 1
	j .LBB1107
.LBB1108:
	mv s9, zero
	j .LBB1107
.LBB1106:
	bne t6, zero, .LBB1105
	j .LBB1108
.LBB1107:
	bne s11, zero, .LBB1109
	j .LBB1110
.LBB1111:
	li a4, 1
	j .LBB1112
.LBB1110:
	mv a4, zero
	j .LBB1112
.LBB1109:
	bne t6, zero, .LBB1111
	j .LBB1110
.LBB1112:
	beq a4, zero, .LBB1113
	j .LBB1114
.LBB1113:
	li a4, 1
	j .LBB1115
.LBB1114:
	mv a4, zero
	j .LBB1115
.LBB1115:
	bne s9, zero, .LBB1116
	j .LBB1117
.LBB1118:
	li s9, 1
	j .LBB1119
.LBB1117:
	mv s9, zero
	j .LBB1119
.LBB1116:
	bne a4, zero, .LBB1118
	j .LBB1117
.LBB1119:
	ld t0, -384(s0)
	bne t0, zero, .LBB1120
	j .LBB1121
.LBB1122:
	li a3, 1
	j .LBB1123
.LBB1121:
	mv a3, zero
	j .LBB1123
.LBB1120:
	bne a3, zero, .LBB1122
	j .LBB1121
.LBB1123:
	bne s11, zero, .LBB1124
	j .LBB1125
.LBB1126:
	li a4, 1
	j .LBB1127
.LBB1125:
	mv a4, zero
	j .LBB1127
.LBB1124:
	bne t6, zero, .LBB1126
	j .LBB1125
.LBB1127:
	bne a3, zero, .LBB1128
	j .LBB1129
.LBB1128:
	li t6, 1
	j .LBB1130
.LBB1131:
	mv t6, zero
	j .LBB1130
.LBB1129:
	bne a4, zero, .LBB1128
	j .LBB1131
.LBB1130:
	bne s7, zero, .LBB1132
	j .LBB1133
.LBB1132:
	li a4, 1
	j .LBB1134
.LBB1135:
	mv a4, zero
	j .LBB1134
.LBB1133:
	bne a2, zero, .LBB1132
	j .LBB1135
.LBB1134:
	bne s7, zero, .LBB1136
	j .LBB1137
.LBB1138:
	li a3, 1
	j .LBB1139
.LBB1137:
	mv a3, zero
	j .LBB1139
.LBB1136:
	bne a2, zero, .LBB1138
	j .LBB1137
.LBB1139:
	beq a3, zero, .LBB1140
	j .LBB1141
.LBB1140:
	li a3, 1
	j .LBB1142
.LBB1141:
	mv a3, zero
	j .LBB1142
.LBB1142:
	bne a4, zero, .LBB1143
	j .LBB1144
.LBB1145:
	li a4, 1
	j .LBB1146
.LBB1144:
	mv a4, zero
	j .LBB1146
.LBB1143:
	bne a3, zero, .LBB1145
	j .LBB1144
.LBB1146:
	bne a4, zero, .LBB1147
	j .LBB1148
.LBB1147:
	li s11, 1
	j .LBB1149
.LBB1150:
	mv s11, zero
	j .LBB1149
.LBB1148:
	bne t6, zero, .LBB1147
	j .LBB1150
.LBB1149:
	bne a4, zero, .LBB1151
	j .LBB1152
.LBB1153:
	li a3, 1
	j .LBB1154
.LBB1152:
	mv a3, zero
	j .LBB1154
.LBB1151:
	bne t6, zero, .LBB1153
	j .LBB1152
.LBB1154:
	beq a3, zero, .LBB1155
	j .LBB1156
.LBB1155:
	li a3, 1
	j .LBB1157
.LBB1156:
	mv a3, zero
	j .LBB1157
.LBB1157:
	bne s11, zero, .LBB1158
	j .LBB1159
.LBB1160:
	li s11, 1
	j .LBB1161
.LBB1159:
	mv s11, zero
	j .LBB1161
.LBB1158:
	bne a3, zero, .LBB1160
	j .LBB1159
.LBB1161:
	bne s7, zero, .LBB1162
	j .LBB1163
.LBB1164:
	li a3, 1
	j .LBB1165
.LBB1163:
	mv a3, zero
	j .LBB1165
.LBB1162:
	bne a2, zero, .LBB1164
	j .LBB1163
.LBB1165:
	bne a4, zero, .LBB1166
	j .LBB1167
.LBB1168:
	li a2, 1
	j .LBB1169
.LBB1167:
	mv a2, zero
	j .LBB1169
.LBB1166:
	bne t6, zero, .LBB1168
	j .LBB1167
.LBB1169:
	bne a3, zero, .LBB1170
	j .LBB1171
.LBB1170:
	li a3, 1
	j .LBB1172
.LBB1173:
	mv a3, zero
	j .LBB1172
.LBB1171:
	bne a2, zero, .LBB1170
	j .LBB1173
.LBB1172:
	bne s6, zero, .LBB1174
	j .LBB1175
.LBB1174:
	li a4, 1
	j .LBB1176
.LBB1177:
	mv a4, zero
	j .LBB1176
.LBB1175:
	bne a1, zero, .LBB1174
	j .LBB1177
.LBB1176:
	bne s6, zero, .LBB1178
	j .LBB1179
.LBB1180:
	li a2, 1
	j .LBB1181
.LBB1179:
	mv a2, zero
	j .LBB1181
.LBB1178:
	bne a1, zero, .LBB1180
	j .LBB1179
.LBB1181:
	beq a2, zero, .LBB1182
	j .LBB1183
.LBB1182:
	li a2, 1
	j .LBB1184
.LBB1183:
	mv a2, zero
	j .LBB1184
.LBB1184:
	bne a4, zero, .LBB1185
	j .LBB1186
.LBB1187:
	li t6, 1
	j .LBB1188
.LBB1186:
	mv t6, zero
	j .LBB1188
.LBB1185:
	bne a2, zero, .LBB1187
	j .LBB1186
.LBB1188:
	bne t6, zero, .LBB1189
	j .LBB1190
.LBB1189:
	li a4, 1
	j .LBB1191
.LBB1192:
	mv a4, zero
	j .LBB1191
.LBB1190:
	bne a3, zero, .LBB1189
	j .LBB1192
.LBB1191:
	bne t6, zero, .LBB1193
	j .LBB1194
.LBB1195:
	li a2, 1
	j .LBB1196
.LBB1194:
	mv a2, zero
	j .LBB1196
.LBB1193:
	bne a3, zero, .LBB1195
	j .LBB1194
.LBB1196:
	beq a2, zero, .LBB1197
	j .LBB1198
.LBB1197:
	li a2, 1
	j .LBB1199
.LBB1198:
	mv a2, zero
	j .LBB1199
.LBB1199:
	bne a4, zero, .LBB1200
	j .LBB1201
.LBB1202:
	li s7, 1
	j .LBB1203
.LBB1201:
	mv s7, zero
	j .LBB1203
.LBB1200:
	bne a2, zero, .LBB1202
	j .LBB1201
.LBB1203:
	bne s6, zero, .LBB1204
	j .LBB1205
.LBB1206:
	li a2, 1
	j .LBB1207
.LBB1205:
	mv a2, zero
	j .LBB1207
.LBB1204:
	bne a1, zero, .LBB1206
	j .LBB1205
.LBB1207:
	bne t6, zero, .LBB1208
	j .LBB1209
.LBB1210:
	li a1, 1
	j .LBB1211
.LBB1209:
	mv a1, zero
	j .LBB1211
.LBB1208:
	bne a3, zero, .LBB1210
	j .LBB1209
.LBB1211:
	bne a2, zero, .LBB1212
	j .LBB1213
.LBB1212:
	li a3, 1
	j .LBB1214
.LBB1215:
	mv a3, zero
	j .LBB1214
.LBB1213:
	bne a1, zero, .LBB1212
	j .LBB1215
.LBB1214:
	bne s5, zero, .LBB1216
	j .LBB1217
.LBB1216:
	li a2, 1
	j .LBB1218
.LBB1219:
	mv a2, zero
	j .LBB1218
.LBB1217:
	bne a0, zero, .LBB1216
	j .LBB1219
.LBB1218:
	bne s5, zero, .LBB1220
	j .LBB1221
.LBB1222:
	li a1, 1
	j .LBB1223
.LBB1221:
	mv a1, zero
	j .LBB1223
.LBB1220:
	bne a0, zero, .LBB1222
	j .LBB1221
.LBB1223:
	beq a1, zero, .LBB1224
	j .LBB1225
.LBB1224:
	li a1, 1
	j .LBB1226
.LBB1225:
	mv a1, zero
	j .LBB1226
.LBB1226:
	bne a2, zero, .LBB1227
	j .LBB1228
.LBB1229:
	li a4, 1
	j .LBB1230
.LBB1228:
	mv a4, zero
	j .LBB1230
.LBB1227:
	bne a1, zero, .LBB1229
	j .LBB1228
.LBB1230:
	bne a4, zero, .LBB1231
	j .LBB1232
.LBB1231:
	li a2, 1
	j .LBB1233
.LBB1234:
	mv a2, zero
	j .LBB1233
.LBB1232:
	bne a3, zero, .LBB1231
	j .LBB1234
.LBB1233:
	bne a4, zero, .LBB1235
	j .LBB1236
.LBB1237:
	li a1, 1
	j .LBB1238
.LBB1236:
	mv a1, zero
	j .LBB1238
.LBB1235:
	bne a3, zero, .LBB1237
	j .LBB1236
.LBB1238:
	beq a1, zero, .LBB1239
	j .LBB1240
.LBB1239:
	li a1, 1
	j .LBB1241
.LBB1240:
	mv a1, zero
	j .LBB1241
.LBB1241:
	bne a2, zero, .LBB1242
	j .LBB1243
.LBB1244:
	li s6, 1
	j .LBB1245
.LBB1243:
	mv s6, zero
	j .LBB1245
.LBB1242:
	bne a1, zero, .LBB1244
	j .LBB1243
.LBB1245:
	bne s5, zero, .LBB1246
	j .LBB1247
.LBB1248:
	li a1, 1
	j .LBB1249
.LBB1247:
	mv a1, zero
	j .LBB1249
.LBB1246:
	bne a0, zero, .LBB1248
	j .LBB1247
.LBB1249:
	bne a4, zero, .LBB1250
	j .LBB1251
.LBB1252:
	li a0, 1
	j .LBB1253
.LBB1251:
	mv a0, zero
	j .LBB1253
.LBB1250:
	bne a3, zero, .LBB1252
	j .LBB1251
.LBB1253:
	bne a1, zero, .LBB1254
	j .LBB1255
.LBB1254:
	li a3, 1
	j .LBB1256
.LBB1257:
	mv a3, zero
	j .LBB1256
.LBB1255:
	bne a0, zero, .LBB1254
	j .LBB1257
.LBB1256:
	bne s4, zero, .LBB1258
	j .LBB1259
.LBB1258:
	li a1, 1
	j .LBB1260
.LBB1261:
	mv a1, zero
	j .LBB1260
.LBB1259:
	ld t0, -432(s0)
	bne t0, zero, .LBB1258
	j .LBB1261
.LBB1260:
	bne s4, zero, .LBB1262
	j .LBB1263
.LBB1264:
	li a0, 1
	j .LBB1265
.LBB1263:
	mv a0, zero
	j .LBB1265
.LBB1262:
	ld t0, -432(s0)
	bne t0, zero, .LBB1264
	j .LBB1263
.LBB1265:
	beq a0, zero, .LBB1266
	j .LBB1267
.LBB1266:
	li a0, 1
	j .LBB1268
.LBB1267:
	mv a0, zero
	j .LBB1268
.LBB1268:
	bne a1, zero, .LBB1269
	j .LBB1270
.LBB1271:
	li a2, 1
	j .LBB1272
.LBB1270:
	mv a2, zero
	j .LBB1272
.LBB1269:
	bne a0, zero, .LBB1271
	j .LBB1270
.LBB1272:
	bne a2, zero, .LBB1273
	j .LBB1274
.LBB1273:
	li a1, 1
	j .LBB1275
.LBB1276:
	mv a1, zero
	j .LBB1275
.LBB1274:
	bne a3, zero, .LBB1273
	j .LBB1276
.LBB1275:
	bne a2, zero, .LBB1277
	j .LBB1278
.LBB1279:
	li a0, 1
	j .LBB1280
.LBB1278:
	mv a0, zero
	j .LBB1280
.LBB1277:
	bne a3, zero, .LBB1279
	j .LBB1278
.LBB1280:
	beq a0, zero, .LBB1281
	j .LBB1282
.LBB1281:
	li a0, 1
	j .LBB1283
.LBB1282:
	mv a0, zero
	j .LBB1283
.LBB1283:
	bne a1, zero, .LBB1284
	j .LBB1285
.LBB1286:
	li t6, 1
	j .LBB1287
.LBB1285:
	mv t6, zero
	j .LBB1287
.LBB1284:
	bne a0, zero, .LBB1286
	j .LBB1285
.LBB1287:
	bne s4, zero, .LBB1288
	j .LBB1289
.LBB1290:
	li a1, 1
	j .LBB1291
.LBB1289:
	mv a1, zero
	j .LBB1291
.LBB1288:
	ld t0, -432(s0)
	bne t0, zero, .LBB1290
	j .LBB1289
.LBB1291:
	bne a2, zero, .LBB1292
	j .LBB1293
.LBB1294:
	li a0, 1
	j .LBB1295
.LBB1293:
	mv a0, zero
	j .LBB1295
.LBB1292:
	bne a3, zero, .LBB1294
	j .LBB1293
.LBB1295:
	bne a1, zero, .LBB1296
	j .LBB1297
.LBB1296:
	li a2, 1
	j .LBB1298
.LBB1299:
	mv a2, zero
	j .LBB1298
.LBB1297:
	bne a0, zero, .LBB1296
	j .LBB1299
.LBB1298:
	ld t0, -392(s0)
	bne t0, zero, .LBB1300
	j .LBB1301
.LBB1300:
	li a1, 1
	j .LBB1302
.LBB1303:
	mv a1, zero
	j .LBB1302
.LBB1301:
	ld t0, -440(s0)
	bne t0, zero, .LBB1300
	j .LBB1303
.LBB1302:
	ld t0, -392(s0)
	bne t0, zero, .LBB1304
	j .LBB1305
.LBB1306:
	li a0, 1
	j .LBB1307
.LBB1305:
	mv a0, zero
	j .LBB1307
.LBB1304:
	ld t0, -440(s0)
	bne t0, zero, .LBB1306
	j .LBB1305
.LBB1307:
	beq a0, zero, .LBB1308
	j .LBB1309
.LBB1308:
	li a0, 1
	j .LBB1310
.LBB1309:
	mv a0, zero
	j .LBB1310
.LBB1310:
	bne a1, zero, .LBB1311
	j .LBB1312
.LBB1313:
	li a3, 1
	j .LBB1314
.LBB1312:
	mv a3, zero
	j .LBB1314
.LBB1311:
	bne a0, zero, .LBB1313
	j .LBB1312
.LBB1314:
	bne a3, zero, .LBB1315
	j .LBB1316
.LBB1315:
	li a0, 1
	j .LBB1317
.LBB1318:
	mv a0, zero
	j .LBB1317
.LBB1316:
	bne a2, zero, .LBB1315
	j .LBB1318
.LBB1317:
	bne a3, zero, .LBB1319
	j .LBB1320
.LBB1321:
	li a1, 1
	j .LBB1322
.LBB1320:
	mv a1, zero
	j .LBB1322
.LBB1319:
	bne a2, zero, .LBB1321
	j .LBB1320
.LBB1322:
	beq a1, zero, .LBB1323
	j .LBB1324
.LBB1323:
	li a1, 1
	j .LBB1325
.LBB1324:
	mv a1, zero
	j .LBB1325
.LBB1325:
	bne a0, zero, .LBB1326
	j .LBB1327
.LBB1328:
	li s4, 1
	j .LBB1329
.LBB1327:
	mv s4, zero
	j .LBB1329
.LBB1326:
	bne a1, zero, .LBB1328
	j .LBB1327
.LBB1329:
	ld t0, -392(s0)
	bne t0, zero, .LBB1330
	j .LBB1331
.LBB1332:
	li a0, 1
	j .LBB1333
.LBB1331:
	mv a0, zero
	j .LBB1333
.LBB1330:
	ld t0, -440(s0)
	bne t0, zero, .LBB1332
	j .LBB1331
.LBB1333:
	bne a3, zero, .LBB1334
	j .LBB1335
.LBB1336:
	li a1, 1
	j .LBB1337
.LBB1335:
	mv a1, zero
	j .LBB1337
.LBB1334:
	bne a2, zero, .LBB1336
	j .LBB1335
.LBB1337:
	bne a0, zero, .LBB1338
	j .LBB1339
.LBB1338:
	li a3, 1
	j .LBB1340
.LBB1341:
	mv a3, zero
	j .LBB1340
.LBB1339:
	bne a1, zero, .LBB1338
	j .LBB1341
.LBB1340:
	bne s3, zero, .LBB1342
	j .LBB1343
.LBB1342:
	li a0, 1
	j .LBB1344
.LBB1345:
	mv a0, zero
	j .LBB1344
.LBB1343:
	ld t0, -448(s0)
	bne t0, zero, .LBB1342
	j .LBB1345
.LBB1344:
	bne s3, zero, .LBB1346
	j .LBB1347
.LBB1348:
	li a1, 1
	j .LBB1349
.LBB1347:
	mv a1, zero
	j .LBB1349
.LBB1346:
	ld t0, -448(s0)
	bne t0, zero, .LBB1348
	j .LBB1347
.LBB1349:
	beq a1, zero, .LBB1350
	j .LBB1351
.LBB1350:
	li a1, 1
	j .LBB1352
.LBB1351:
	mv a1, zero
	j .LBB1352
.LBB1352:
	bne a0, zero, .LBB1353
	j .LBB1354
.LBB1355:
	li a1, 1
	j .LBB1356
.LBB1354:
	mv a1, zero
	j .LBB1356
.LBB1353:
	bne a1, zero, .LBB1355
	j .LBB1354
.LBB1356:
	bne a1, zero, .LBB1357
	j .LBB1358
.LBB1357:
	li a2, 1
	j .LBB1359
.LBB1360:
	mv a2, zero
	j .LBB1359
.LBB1358:
	bne a3, zero, .LBB1357
	j .LBB1360
.LBB1359:
	bne a1, zero, .LBB1361
	j .LBB1362
.LBB1363:
	li a0, 1
	j .LBB1364
.LBB1362:
	mv a0, zero
	j .LBB1364
.LBB1361:
	bne a3, zero, .LBB1363
	j .LBB1362
.LBB1364:
	beq a0, zero, .LBB1365
	j .LBB1366
.LBB1365:
	li a0, 1
	j .LBB1367
.LBB1366:
	mv a0, zero
	j .LBB1367
.LBB1367:
	bne a2, zero, .LBB1368
	j .LBB1369
.LBB1370:
	li s5, 1
	j .LBB1371
.LBB1369:
	mv s5, zero
	j .LBB1371
.LBB1368:
	bne a0, zero, .LBB1370
	j .LBB1369
.LBB1371:
	bne s3, zero, .LBB1372
	j .LBB1373
.LBB1374:
	li a0, 1
	j .LBB1375
.LBB1373:
	mv a0, zero
	j .LBB1375
.LBB1372:
	ld t0, -448(s0)
	bne t0, zero, .LBB1374
	j .LBB1373
.LBB1375:
	bne a1, zero, .LBB1376
	j .LBB1377
.LBB1378:
	li a1, 1
	j .LBB1379
.LBB1377:
	mv a1, zero
	j .LBB1379
.LBB1376:
	bne a3, zero, .LBB1378
	j .LBB1377
.LBB1379:
	bne a0, zero, .LBB1380
	j .LBB1381
.LBB1380:
	li a2, 1
	j .LBB1382
.LBB1383:
	mv a2, zero
	j .LBB1382
.LBB1381:
	bne a1, zero, .LBB1380
	j .LBB1383
.LBB1382:
	bne s2, zero, .LBB1384
	j .LBB1385
.LBB1384:
	li a1, 1
	j .LBB1386
.LBB1387:
	mv a1, zero
	j .LBB1386
.LBB1385:
	bne s1, zero, .LBB1384
	j .LBB1387
.LBB1386:
	bne s2, zero, .LBB1388
	j .LBB1389
.LBB1390:
	li a0, 1
	j .LBB1391
.LBB1389:
	mv a0, zero
	j .LBB1391
.LBB1388:
	bne s1, zero, .LBB1390
	j .LBB1389
.LBB1391:
	beq a0, zero, .LBB1392
	j .LBB1393
.LBB1392:
	li a0, 1
	j .LBB1394
.LBB1393:
	mv a0, zero
	j .LBB1394
.LBB1394:
	bne a1, zero, .LBB1395
	j .LBB1396
.LBB1397:
	li a3, 1
	j .LBB1398
.LBB1396:
	mv a3, zero
	j .LBB1398
.LBB1395:
	bne a0, zero, .LBB1397
	j .LBB1396
.LBB1398:
	bne a3, zero, .LBB1399
	j .LBB1400
.LBB1399:
	li a1, 1
	j .LBB1401
.LBB1402:
	mv a1, zero
	j .LBB1401
.LBB1400:
	bne a2, zero, .LBB1399
	j .LBB1402
.LBB1401:
	bne a3, zero, .LBB1403
	j .LBB1404
.LBB1405:
	li a0, 1
	j .LBB1406
.LBB1404:
	mv a0, zero
	j .LBB1406
.LBB1403:
	bne a2, zero, .LBB1405
	j .LBB1404
.LBB1406:
	beq a0, zero, .LBB1407
	j .LBB1408
.LBB1407:
	li a0, 1
	j .LBB1409
.LBB1408:
	mv a0, zero
	j .LBB1409
.LBB1409:
	bne a1, zero, .LBB1410
	j .LBB1411
.LBB1412:
	li a4, 1
	j .LBB1413
.LBB1411:
	mv a4, zero
	j .LBB1413
.LBB1410:
	bne a0, zero, .LBB1412
	j .LBB1411
.LBB1413:
	bne s2, zero, .LBB1414
	j .LBB1415
.LBB1416:
	li a0, 1
	j .LBB1417
.LBB1415:
	mv a0, zero
	j .LBB1417
.LBB1414:
	bne s1, zero, .LBB1416
	j .LBB1415
.LBB1417:
	bne a3, zero, .LBB1418
	j .LBB1419
.LBB1420:
	li s1, 1
	j .LBB1421
.LBB1419:
	mv s1, zero
	j .LBB1421
.LBB1418:
	bne a2, zero, .LBB1420
	j .LBB1419
.LBB1421:
	bne a0, zero, .LBB1422
	j .LBB1423
.LBB1422:
	li a0, 1
	j .LBB1424
.LBB1425:
	mv a0, zero
	j .LBB1424
.LBB1423:
	bne s1, zero, .LBB1422
	j .LBB1425
.LBB1424:
	bne a7, zero, .LBB1426
	j .LBB1427
.LBB1426:
	li a1, 1
	j .LBB1428
.LBB1429:
	mv a1, zero
	j .LBB1428
.LBB1427:
	bne t2, zero, .LBB1426
	j .LBB1429
.LBB1428:
	bne a7, zero, .LBB1430
	j .LBB1431
.LBB1432:
	li s1, 1
	j .LBB1433
.LBB1431:
	mv s1, zero
	j .LBB1433
.LBB1430:
	bne t2, zero, .LBB1432
	j .LBB1431
.LBB1433:
	beq s1, zero, .LBB1434
	j .LBB1435
.LBB1434:
	li s1, 1
	j .LBB1436
.LBB1435:
	mv s1, zero
	j .LBB1436
.LBB1436:
	bne a1, zero, .LBB1437
	j .LBB1438
.LBB1439:
	li s1, 1
	j .LBB1440
.LBB1438:
	mv s1, zero
	j .LBB1440
.LBB1437:
	bne s1, zero, .LBB1439
	j .LBB1438
.LBB1440:
	bne s1, zero, .LBB1441
	j .LBB1442
.LBB1441:
	li a2, 1
	j .LBB1443
.LBB1444:
	mv a2, zero
	j .LBB1443
.LBB1442:
	bne a0, zero, .LBB1441
	j .LBB1444
.LBB1443:
	bne s1, zero, .LBB1445
	j .LBB1446
.LBB1447:
	li a1, 1
	j .LBB1448
.LBB1446:
	mv a1, zero
	j .LBB1448
.LBB1445:
	bne a0, zero, .LBB1447
	j .LBB1446
.LBB1448:
	beq a1, zero, .LBB1449
	j .LBB1450
.LBB1449:
	li a1, 1
	j .LBB1451
.LBB1450:
	mv a1, zero
	j .LBB1451
.LBB1451:
	bne a2, zero, .LBB1452
	j .LBB1453
.LBB1454:
	li a1, 1
	j .LBB1455
.LBB1453:
	mv a1, zero
	j .LBB1455
.LBB1452:
	bne a1, zero, .LBB1454
	j .LBB1453
.LBB1455:
	bne a7, zero, .LBB1456
	j .LBB1457
.LBB1458:
	li t2, 1
	j .LBB1459
.LBB1457:
	mv t2, zero
	j .LBB1459
.LBB1456:
	bne t2, zero, .LBB1458
	j .LBB1457
.LBB1459:
	bne s1, zero, .LBB1460
	j .LBB1461
.LBB1462:
	li s1, 1
	j .LBB1463
.LBB1461:
	mv s1, zero
	j .LBB1463
.LBB1460:
	bne a0, zero, .LBB1462
	j .LBB1461
.LBB1463:
	bne t2, zero, .LBB1464
	j .LBB1465
.LBB1464:
	li a0, 1
	j .LBB1466
.LBB1467:
	mv a0, zero
	j .LBB1466
.LBB1465:
	bne s1, zero, .LBB1464
	j .LBB1467
.LBB1466:
	bne a6, zero, .LBB1468
	j .LBB1469
.LBB1468:
	li s1, 1
	j .LBB1470
.LBB1471:
	mv s1, zero
	j .LBB1470
.LBB1469:
	bne t1, zero, .LBB1468
	j .LBB1471
.LBB1470:
	bne a6, zero, .LBB1472
	j .LBB1473
.LBB1474:
	li t2, 1
	j .LBB1475
.LBB1473:
	mv t2, zero
	j .LBB1475
.LBB1472:
	bne t1, zero, .LBB1474
	j .LBB1473
.LBB1475:
	beq t2, zero, .LBB1476
	j .LBB1477
.LBB1476:
	li t2, 1
	j .LBB1478
.LBB1477:
	mv t2, zero
	j .LBB1478
.LBB1478:
	bne s1, zero, .LBB1479
	j .LBB1480
.LBB1481:
	li a2, 1
	j .LBB1482
.LBB1480:
	mv a2, zero
	j .LBB1482
.LBB1479:
	bne t2, zero, .LBB1481
	j .LBB1480
.LBB1482:
	bne a2, zero, .LBB1483
	j .LBB1484
.LBB1483:
	li s1, 1
	j .LBB1485
.LBB1486:
	mv s1, zero
	j .LBB1485
.LBB1484:
	bne a0, zero, .LBB1483
	j .LBB1486
.LBB1485:
	bne a2, zero, .LBB1487
	j .LBB1488
.LBB1489:
	li t2, 1
	j .LBB1490
.LBB1488:
	mv t2, zero
	j .LBB1490
.LBB1487:
	bne a0, zero, .LBB1489
	j .LBB1488
.LBB1490:
	beq t2, zero, .LBB1491
	j .LBB1492
.LBB1491:
	li t2, 1
	j .LBB1493
.LBB1492:
	mv t2, zero
	j .LBB1493
.LBB1493:
	bne s1, zero, .LBB1494
	j .LBB1495
.LBB1496:
	li s1, 1
	j .LBB1497
.LBB1495:
	mv s1, zero
	j .LBB1497
.LBB1494:
	bne t2, zero, .LBB1496
	j .LBB1495
.LBB1497:
	bne a6, zero, .LBB1498
	j .LBB1499
.LBB1500:
	li t2, 1
	j .LBB1501
.LBB1499:
	mv t2, zero
	j .LBB1501
.LBB1498:
	bne t1, zero, .LBB1500
	j .LBB1499
.LBB1501:
	bne a2, zero, .LBB1502
	j .LBB1503
.LBB1504:
	li t1, 1
	j .LBB1505
.LBB1503:
	mv t1, zero
	j .LBB1505
.LBB1502:
	bne a0, zero, .LBB1504
	j .LBB1503
.LBB1505:
	bne t2, zero, .LBB1506
	j .LBB1507
.LBB1506:
	li a2, 1
	j .LBB1508
.LBB1509:
	mv a2, zero
	j .LBB1508
.LBB1507:
	bne t1, zero, .LBB1506
	j .LBB1509
.LBB1508:
	bne a5, zero, .LBB1510
	j .LBB1511
.LBB1510:
	li t2, 1
	j .LBB1512
.LBB1513:
	mv t2, zero
	j .LBB1512
.LBB1511:
	bne t0, zero, .LBB1510
	j .LBB1513
.LBB1512:
	bne a5, zero, .LBB1514
	j .LBB1515
.LBB1516:
	li t1, 1
	j .LBB1517
.LBB1515:
	mv t1, zero
	j .LBB1517
.LBB1514:
	bne t0, zero, .LBB1516
	j .LBB1515
.LBB1517:
	beq t1, zero, .LBB1518
	j .LBB1519
.LBB1518:
	li t1, 1
	j .LBB1520
.LBB1519:
	mv t1, zero
	j .LBB1520
.LBB1520:
	bne t2, zero, .LBB1521
	j .LBB1522
.LBB1523:
	li t1, 1
	j .LBB1524
.LBB1522:
	mv t1, zero
	j .LBB1524
.LBB1521:
	bne t1, zero, .LBB1523
	j .LBB1522
.LBB1524:
	bne t1, zero, .LBB1525
	j .LBB1526
.LBB1525:
	li a0, 1
	j .LBB1527
.LBB1528:
	mv a0, zero
	j .LBB1527
.LBB1526:
	bne a2, zero, .LBB1525
	j .LBB1528
.LBB1527:
	bne t1, zero, .LBB1529
	j .LBB1530
.LBB1531:
	li t2, 1
	j .LBB1532
.LBB1530:
	mv t2, zero
	j .LBB1532
.LBB1529:
	bne a2, zero, .LBB1531
	j .LBB1530
.LBB1532:
	beq t2, zero, .LBB1533
	j .LBB1534
.LBB1533:
	li t2, 1
	j .LBB1535
.LBB1534:
	mv t2, zero
	j .LBB1535
.LBB1535:
	bne a0, zero, .LBB1536
	j .LBB1537
.LBB1538:
	li t2, 1
	j .LBB1539
.LBB1537:
	mv t2, zero
	j .LBB1539
.LBB1536:
	bne t2, zero, .LBB1538
	j .LBB1537
.LBB1539:
	bne a5, zero, .LBB1540
	j .LBB1541
.LBB1542:
	li a0, 1
	j .LBB1543
.LBB1541:
	mv a0, zero
	j .LBB1543
.LBB1540:
	bne t0, zero, .LBB1542
	j .LBB1541
.LBB1543:
	bne t1, zero, .LBB1544
	j .LBB1545
.LBB1546:
	li t0, 1
	j .LBB1547
.LBB1545:
	mv t0, zero
	j .LBB1547
.LBB1544:
	bne a2, zero, .LBB1546
	j .LBB1545
.LBB1547:
	bne a0, zero, .LBB1548
	j .LBB1549
.LBB1548:
	j .LBB1550
.LBB1551:
	j .LBB1550
.LBB1549:
	bne t0, zero, .LBB1548
	j .LBB1551
.LBB1550:
	li t0, 2
	mulw t0, zero, t0
	addw t0, t0, t2
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a1
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a4
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s5
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, t6
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s6
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s7
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s11
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s9
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s8
	li t1, 2
	mulw t0, t0, t1
	ld t0, -464(s0)
	addw t1, t0, t0
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s10
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, t4
	li t1, 2
	mulw t0, t0, t1
	addw a0, t0, t3
	mv a0, a0
	call fib
	mv a0, a0
	sd a0, -256(s0)
	li t0, 2
	li t1, 2
	remw s5, t1, t0
	blt s5, zero, .LBB1552
	j .LBB3914
.LBB1552:
	subw s5, zero, s5
	mv s5, s5
	j .LBB1553
.LBB1553:
	li t0, 2
	li t1, 2
	divw t1, t1, t0
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB1554
	j .LBB3915
.LBB1554:
	subw s4, zero, s4
	mv s4, s4
	j .LBB1555
.LBB1555:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s3, t1, t0
	blt s3, zero, .LBB1556
	j .LBB3916
.LBB1556:
	subw s3, zero, s3
	mv s3, s3
	j .LBB1557
.LBB1557:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s2, t1, t0
	blt s2, zero, .LBB1558
	j .LBB3917
.LBB1558:
	subw s2, zero, s2
	mv s2, s2
	j .LBB1559
.LBB1559:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB1560
	j .LBB3918
.LBB1560:
	subw a7, zero, a7
	mv a7, a7
	j .LBB1561
.LBB1561:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a6, t1, t0
	blt a6, zero, .LBB1562
	j .LBB3919
.LBB1562:
	subw a6, zero, a6
	mv a6, a6
	j .LBB1563
.LBB1563:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a5, t1, t0
	blt a5, zero, .LBB1564
	j .LBB3920
.LBB1564:
	subw a5, zero, a5
	mv a5, a5
	j .LBB1565
.LBB1565:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a4, t1, t0
	blt a4, zero, .LBB1566
	j .LBB3921
.LBB1566:
	subw a4, zero, a4
	mv a4, a4
	j .LBB1567
.LBB1567:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a3, t1, t0
	blt a3, zero, .LBB1568
	j .LBB3922
.LBB1568:
	subw a3, zero, a3
	mv a3, a3
	j .LBB1569
.LBB1569:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB1570
	j .LBB3923
.LBB1570:
	subw a2, zero, a2
	mv a2, a2
	j .LBB1571
.LBB1571:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a1, t0, t1
	blt a1, zero, .LBB1572
	j .LBB3924
.LBB1572:
	subw a1, zero, a1
	mv a1, a1
	j .LBB1573
.LBB1573:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw a0, t0, t1
	blt a0, zero, .LBB1574
	j .LBB3925
.LBB1574:
	subw a0, zero, a0
	mv a0, a0
	j .LBB1575
.LBB1575:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB1576
	j .LBB3926
.LBB1576:
	subw s1, zero, s1
	mv s1, s1
	j .LBB1577
.LBB1577:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t2, t1, t0
	blt t2, zero, .LBB1578
	j .LBB3927
.LBB1578:
	subw t2, zero, t2
	mv t2, t2
	j .LBB1579
.LBB1579:
	li t0, 2
	divw s6, t1, t0
	li t0, 2
	remw t1, s6, t0
	blt t1, zero, .LBB1580
	j .LBB3928
.LBB1580:
	subw t1, zero, t1
	mv t1, t1
	j .LBB1581
.LBB1581:
	li t0, 2
	divw s7, s6, t0
	li t0, 2
	remw t0, s7, t0
	blt t0, zero, .LBB1582
	j .LBB3929
.LBB1582:
	subw t0, zero, t0
	mv t0, t0
	j .LBB1583
.LBB1583:
	li s6, 2
	divw t0, s7, s6
	beq s5, zero, .LBB1584
	j .LBB1585
.LBB1584:
	li s5, 1
	j .LBB1586
.LBB1585:
	mv s5, zero
	j .LBB1586
.LBB1586:
	beq s4, zero, .LBB1587
	j .LBB1588
.LBB1587:
	li s6, 1
	j .LBB1589
.LBB1588:
	mv s6, zero
	j .LBB1589
.LBB1589:
	beq s3, zero, .LBB1590
	j .LBB1591
.LBB1590:
	li s3, 1
	j .LBB1592
.LBB1591:
	mv s3, zero
	j .LBB1592
.LBB1592:
	beq s2, zero, .LBB1593
	j .LBB1594
.LBB1593:
	li s2, 1
	j .LBB1595
.LBB1594:
	mv s2, zero
	j .LBB1595
.LBB1595:
	beq a7, zero, .LBB1596
	j .LBB1597
.LBB1596:
	li a7, 1
	j .LBB1598
.LBB1597:
	mv a7, zero
	j .LBB1598
.LBB1598:
	beq a6, zero, .LBB1599
	j .LBB1600
.LBB1599:
	li a6, 1
	j .LBB1601
.LBB1600:
	mv a6, zero
	j .LBB1601
.LBB1601:
	beq a5, zero, .LBB1602
	j .LBB1603
.LBB1602:
	li s4, 1
	j .LBB1604
.LBB1603:
	mv s4, zero
	j .LBB1604
.LBB1604:
	beq a4, zero, .LBB1605
	j .LBB1606
.LBB1605:
	li a4, 1
	j .LBB1607
.LBB1606:
	mv a4, zero
	j .LBB1607
.LBB1607:
	beq a3, zero, .LBB1608
	j .LBB1609
.LBB1608:
	li a3, 1
	j .LBB1610
.LBB1609:
	mv a3, zero
	j .LBB1610
.LBB1610:
	beq a2, zero, .LBB1611
	j .LBB1612
.LBB1611:
	li a5, 1
	j .LBB1613
.LBB1612:
	mv a5, zero
	j .LBB1613
.LBB1613:
	beq a1, zero, .LBB1614
	j .LBB1615
.LBB1614:
	li a1, 1
	j .LBB1616
.LBB1615:
	mv a1, zero
	j .LBB1616
.LBB1616:
	beq a0, zero, .LBB1617
	j .LBB1618
.LBB1617:
	li a0, 1
	j .LBB1619
.LBB1618:
	mv a0, zero
	j .LBB1619
.LBB1619:
	beq s1, zero, .LBB1620
	j .LBB1621
.LBB1620:
	li s1, 1
	j .LBB1622
.LBB1621:
	mv s1, zero
	j .LBB1622
.LBB1622:
	beq t2, zero, .LBB1623
	j .LBB1624
.LBB1623:
	li t2, 1
	j .LBB1625
.LBB1624:
	mv t2, zero
	j .LBB1625
.LBB1625:
	beq t1, zero, .LBB1626
	j .LBB1627
.LBB1626:
	li t1, 1
	j .LBB1628
.LBB1627:
	mv t1, zero
	j .LBB1628
.LBB1628:
	beq t0, zero, .LBB1629
	j .LBB1630
.LBB1629:
	li a2, 1
	j .LBB1631
.LBB1630:
	mv a2, zero
	j .LBB1631
.LBB1631:
	li t0, 2
	mulw t0, zero, t0
	addw a2, t0, a2
	li t0, 2
	mulw t0, a2, t0
	addw t1, t0, t1
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, t2
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a0
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a5
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a3
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a6
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a7
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s2
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s3
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s6
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s5
	li t0, 2
	remw s11, t1, t0
	blt s11, zero, .LBB1632
	j .LBB3930
.LBB1632:
	subw s11, zero, s11
	mv s11, s11
	j .LBB1633
.LBB1633:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1634
	j .LBB3931
.LBB1634:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -472(s0)
	j .LBB1635
.LBB1635:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s10, t1, t0
	blt s10, zero, .LBB1636
	j .LBB3932
.LBB1636:
	subw s10, zero, s10
	mv s10, s10
	j .LBB1637
.LBB1637:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s9, t1, t0
	blt s9, zero, .LBB1638
	j .LBB3933
.LBB1638:
	subw s9, zero, s9
	mv s9, s9
	j .LBB1639
.LBB1639:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1640
	j .LBB3934
.LBB1640:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -480(s0)
	j .LBB1641
.LBB1641:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s8, t1, t0
	blt s8, zero, .LBB1642
	j .LBB3935
.LBB1642:
	subw s8, zero, s8
	mv s8, s8
	j .LBB1643
.LBB1643:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s7, t0, t1
	blt s7, zero, .LBB1644
	j .LBB3936
.LBB1644:
	subw s7, zero, s7
	mv s7, s7
	j .LBB1645
.LBB1645:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1646
	j .LBB3937
.LBB1646:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -488(s0)
	j .LBB1647
.LBB1647:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s6, t0, t1
	blt s6, zero, .LBB1648
	j .LBB3938
.LBB1648:
	subw s6, zero, s6
	mv s6, s6
	j .LBB1649
.LBB1649:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s5, t1, t0
	blt s5, zero, .LBB1650
	j .LBB3939
.LBB1650:
	subw s5, zero, s5
	mv s5, s5
	j .LBB1651
.LBB1651:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s4, t0, t1
	blt s4, zero, .LBB1652
	j .LBB3940
.LBB1652:
	subw s4, zero, s4
	mv s4, s4
	j .LBB1653
.LBB1653:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s3, t1, t0
	blt s3, zero, .LBB1654
	j .LBB3941
.LBB1654:
	subw s3, zero, s3
	mv s3, s3
	j .LBB1655
.LBB1655:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s2, t1, t0
	blt s2, zero, .LBB1656
	j .LBB3942
.LBB1656:
	subw s2, zero, s2
	mv s2, s2
	j .LBB1657
.LBB1657:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a7, t1, t0
	blt a7, zero, .LBB1658
	j .LBB3943
.LBB1658:
	subw a7, zero, a7
	mv a7, a7
	j .LBB1659
.LBB1659:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a6, t0, t1
	blt a6, zero, .LBB1660
	j .LBB3944
.LBB1660:
	subw a6, zero, a6
	mv a6, a6
	j .LBB1661
.LBB1661:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a5, t1, t0
	blt a5, zero, .LBB1662
	j .LBB3945
.LBB1662:
	subw a5, zero, a5
	mv a5, a5
	j .LBB1663
.LBB1663:
	li t0, 2
	divw t0, t1, t0
	li t0, 2
	li t1, 1
	remw a4, t1, t0
	blt a4, zero, .LBB1664
	j .LBB3946
.LBB1664:
	subw a4, zero, a4
	mv a4, a4
	j .LBB1665
.LBB1665:
	li t0, 2
	li t1, 1
	divw t1, t1, t0
	li t0, 2
	remw a3, t1, t0
	blt a3, zero, .LBB1666
	j .LBB3947
.LBB1666:
	subw a3, zero, a3
	mv a3, a3
	j .LBB1667
.LBB1667:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB1668
	j .LBB3948
.LBB1668:
	subw a2, zero, a2
	mv a2, a2
	j .LBB1669
.LBB1669:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1670
	j .LBB3949
.LBB1670:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -496(s0)
	j .LBB1671
.LBB1671:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1672
	j .LBB3950
.LBB1672:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -504(s0)
	j .LBB1673
.LBB1673:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a1, t1, t0
	blt a1, zero, .LBB1674
	j .LBB3951
.LBB1674:
	subw a1, zero, a1
	mv a1, a1
	j .LBB1675
.LBB1675:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB1676
	j .LBB3952
.LBB1676:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -512(s0)
	j .LBB1677
.LBB1677:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a0, t1, t0
	blt a0, zero, .LBB1678
	j .LBB3953
.LBB1678:
	subw a0, zero, a0
	mv a0, a0
	j .LBB1679
.LBB1679:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB1680
	j .LBB3954
.LBB1680:
	subw s1, zero, s1
	mv s1, s1
	j .LBB1681
.LBB1681:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t2, t1, t0
	blt t2, zero, .LBB1682
	j .LBB3955
.LBB1682:
	subw t2, zero, t2
	mv t2, t2
	j .LBB1683
.LBB1683:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw t1, t0, t1
	blt t1, zero, .LBB1684
	j .LBB3956
.LBB1684:
	subw t1, zero, t1
	mv t1, t1
	j .LBB1685
.LBB1685:
	li t3, 2
	divw t3, t0, t3
	li t0, 2
	remw t0, t3, t0
	blt t0, zero, .LBB1686
	j .LBB3957
.LBB1686:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -520(s0)
	j .LBB1687
.LBB1687:
	li t0, 2
	divw t3, t3, t0
	li t0, 2
	remw t0, t3, t0
	blt t0, zero, .LBB1688
	j .LBB3958
.LBB1688:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -160(s0)
	j .LBB1689
.LBB1689:
	li t0, 2
	divw t3, t3, t0
	li t0, 2
	remw t0, t3, t0
	blt t0, zero, .LBB1690
	j .LBB3959
.LBB1690:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -40(s0)
	j .LBB1691
.LBB1691:
	li t0, 2
	divw t3, t3, t0
	li t0, 2
	remw t0, t3, t0
	blt t0, zero, .LBB1692
	j .LBB3960
.LBB1692:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -48(s0)
	j .LBB1693
.LBB1693:
	li t0, 2
	divw t3, t3, t0
	li t0, 2
	remw t0, t3, t0
	blt t0, zero, .LBB1694
	j .LBB3961
.LBB1694:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -56(s0)
	j .LBB1695
.LBB1695:
	li t0, 2
	divw t0, t3, t0
	bne s11, zero, .LBB1696
	j .LBB1697
.LBB1696:
	li t0, 1
	j .LBB1698
.LBB1699:
	mv t0, zero
	j .LBB1698
.LBB1697:
	bne a4, zero, .LBB1696
	j .LBB1699
.LBB1698:
	bne s11, zero, .LBB1700
	j .LBB1701
.LBB1702:
	li t3, 1
	j .LBB1703
.LBB1701:
	mv t3, zero
	j .LBB1703
.LBB1700:
	bne a4, zero, .LBB1702
	j .LBB1701
.LBB1703:
	beq t3, zero, .LBB1704
	j .LBB1705
.LBB1704:
	li t3, 1
	j .LBB1706
.LBB1705:
	mv t3, zero
	j .LBB1706
.LBB1706:
	bne t0, zero, .LBB1707
	j .LBB1708
.LBB1709:
	li t4, 1
	j .LBB1710
.LBB1708:
	mv t4, zero
	j .LBB1710
.LBB1707:
	bne t3, zero, .LBB1709
	j .LBB1708
.LBB1710:
	bne t4, zero, .LBB1711
	j .LBB1712
.LBB1711:
	li t0, 1
	j .LBB1713
.LBB1714:
	mv t0, zero
	j .LBB1713
.LBB1712:
	j .LBB1714
.LBB1713:
	bne t4, zero, .LBB1715
	j .LBB1716
.LBB1716:
	j .LBB1717
.LBB1715:
	j .LBB1716
.LBB1717:
	beq zero, zero, .LBB1718
	j .LBB1719
.LBB1718:
	li t3, 1
	j .LBB1720
.LBB1719:
	mv t3, zero
	j .LBB1720
.LBB1720:
	bne t0, zero, .LBB1721
	j .LBB1722
.LBB1723:
	li t3, 1
	j .LBB1724
.LBB1722:
	mv t3, zero
	j .LBB1724
.LBB1721:
	bne t3, zero, .LBB1723
	j .LBB1722
.LBB1724:
	bne s11, zero, .LBB1725
	j .LBB1726
.LBB1727:
	li t0, 1
	j .LBB1728
.LBB1726:
	mv t0, zero
	j .LBB1728
.LBB1725:
	bne a4, zero, .LBB1727
	j .LBB1726
.LBB1728:
	bne t4, zero, .LBB1729
	j .LBB1730
.LBB1730:
	j .LBB1731
.LBB1729:
	j .LBB1730
.LBB1731:
	bne t0, zero, .LBB1732
	j .LBB1733
.LBB1732:
	li s11, 1
	j .LBB1734
.LBB1735:
	mv s11, zero
	j .LBB1734
.LBB1733:
	bne zero, zero, .LBB1732
	j .LBB1735
.LBB1734:
	ld t0, -472(s0)
	bne t0, zero, .LBB1736
	j .LBB1737
.LBB1736:
	li a4, 1
	j .LBB1738
.LBB1739:
	mv a4, zero
	j .LBB1738
.LBB1737:
	bne a3, zero, .LBB1736
	j .LBB1739
.LBB1738:
	ld t0, -472(s0)
	bne t0, zero, .LBB1740
	j .LBB1741
.LBB1742:
	li t0, 1
	j .LBB1743
.LBB1741:
	mv t0, zero
	j .LBB1743
.LBB1740:
	bne a3, zero, .LBB1742
	j .LBB1741
.LBB1743:
	beq t0, zero, .LBB1744
	j .LBB1745
.LBB1744:
	li t0, 1
	j .LBB1746
.LBB1745:
	mv t0, zero
	j .LBB1746
.LBB1746:
	bne a4, zero, .LBB1747
	j .LBB1748
.LBB1749:
	li t4, 1
	j .LBB1750
.LBB1748:
	mv t4, zero
	j .LBB1750
.LBB1747:
	bne t0, zero, .LBB1749
	j .LBB1748
.LBB1750:
	bne t4, zero, .LBB1751
	j .LBB1752
.LBB1751:
	li a4, 1
	j .LBB1753
.LBB1754:
	mv a4, zero
	j .LBB1753
.LBB1752:
	bne s11, zero, .LBB1751
	j .LBB1754
.LBB1753:
	bne t4, zero, .LBB1755
	j .LBB1756
.LBB1757:
	li t0, 1
	j .LBB1758
.LBB1756:
	mv t0, zero
	j .LBB1758
.LBB1755:
	bne s11, zero, .LBB1757
	j .LBB1756
.LBB1758:
	beq t0, zero, .LBB1759
	j .LBB1760
.LBB1759:
	li t0, 1
	j .LBB1761
.LBB1760:
	mv t0, zero
	j .LBB1761
.LBB1761:
	bne a4, zero, .LBB1762
	j .LBB1763
.LBB1764:
	li t0, 1
	sd t0, -64(s0)
	j .LBB1765
.LBB1763:
	ld t0, -64(s0)
	mv t0, zero
	j .LBB1765
.LBB1762:
	bne t0, zero, .LBB1764
	j .LBB1763
.LBB1765:
	ld t0, -472(s0)
	bne t0, zero, .LBB1766
	j .LBB1767
.LBB1768:
	li a3, 1
	j .LBB1769
.LBB1767:
	mv a3, zero
	j .LBB1769
.LBB1766:
	bne a3, zero, .LBB1768
	j .LBB1767
.LBB1769:
	bne t4, zero, .LBB1770
	j .LBB1771
.LBB1772:
	li t0, 1
	j .LBB1773
.LBB1771:
	mv t0, zero
	j .LBB1773
.LBB1770:
	bne s11, zero, .LBB1772
	j .LBB1771
.LBB1773:
	bne a3, zero, .LBB1774
	j .LBB1775
.LBB1774:
	li t4, 1
	j .LBB1776
.LBB1777:
	mv t4, zero
	j .LBB1776
.LBB1775:
	bne t0, zero, .LBB1774
	j .LBB1777
.LBB1776:
	bne s10, zero, .LBB1778
	j .LBB1779
.LBB1778:
	li a3, 1
	j .LBB1780
.LBB1781:
	mv a3, zero
	j .LBB1780
.LBB1779:
	bne a2, zero, .LBB1778
	j .LBB1781
.LBB1780:
	bne s10, zero, .LBB1782
	j .LBB1783
.LBB1784:
	li t0, 1
	j .LBB1785
.LBB1783:
	mv t0, zero
	j .LBB1785
.LBB1782:
	bne a2, zero, .LBB1784
	j .LBB1783
.LBB1785:
	beq t0, zero, .LBB1786
	j .LBB1787
.LBB1786:
	li t0, 1
	j .LBB1788
.LBB1787:
	mv t0, zero
	j .LBB1788
.LBB1788:
	bne a3, zero, .LBB1789
	j .LBB1790
.LBB1791:
	li a3, 1
	j .LBB1792
.LBB1790:
	mv a3, zero
	j .LBB1792
.LBB1789:
	bne t0, zero, .LBB1791
	j .LBB1790
.LBB1792:
	bne a3, zero, .LBB1793
	j .LBB1794
.LBB1793:
	li t0, 1
	j .LBB1795
.LBB1796:
	mv t0, zero
	j .LBB1795
.LBB1794:
	bne t4, zero, .LBB1793
	j .LBB1796
.LBB1795:
	bne a3, zero, .LBB1797
	j .LBB1798
.LBB1799:
	li a4, 1
	j .LBB1800
.LBB1798:
	mv a4, zero
	j .LBB1800
.LBB1797:
	bne t4, zero, .LBB1799
	j .LBB1798
.LBB1800:
	beq a4, zero, .LBB1801
	j .LBB1802
.LBB1801:
	li a4, 1
	j .LBB1803
.LBB1802:
	mv a4, zero
	j .LBB1803
.LBB1803:
	bne t0, zero, .LBB1804
	j .LBB1805
.LBB1806:
	li s11, 1
	j .LBB1807
.LBB1805:
	mv s11, zero
	j .LBB1807
.LBB1804:
	bne a4, zero, .LBB1806
	j .LBB1805
.LBB1807:
	bne s10, zero, .LBB1808
	j .LBB1809
.LBB1810:
	li a2, 1
	j .LBB1811
.LBB1809:
	mv a2, zero
	j .LBB1811
.LBB1808:
	bne a2, zero, .LBB1810
	j .LBB1809
.LBB1811:
	bne a3, zero, .LBB1812
	j .LBB1813
.LBB1814:
	li t0, 1
	j .LBB1815
.LBB1813:
	mv t0, zero
	j .LBB1815
.LBB1812:
	bne t4, zero, .LBB1814
	j .LBB1813
.LBB1815:
	bne a2, zero, .LBB1816
	j .LBB1817
.LBB1816:
	li a2, 1
	j .LBB1818
.LBB1819:
	mv a2, zero
	j .LBB1818
.LBB1817:
	bne t0, zero, .LBB1816
	j .LBB1819
.LBB1818:
	bne s9, zero, .LBB1820
	j .LBB1821
.LBB1820:
	li a3, 1
	j .LBB1822
.LBB1823:
	mv a3, zero
	j .LBB1822
.LBB1821:
	ld t0, -496(s0)
	bne t0, zero, .LBB1820
	j .LBB1823
.LBB1822:
	bne s9, zero, .LBB1824
	j .LBB1825
.LBB1826:
	li t0, 1
	j .LBB1827
.LBB1825:
	mv t0, zero
	j .LBB1827
.LBB1824:
	ld t0, -496(s0)
	bne t0, zero, .LBB1826
	j .LBB1825
.LBB1827:
	beq t0, zero, .LBB1828
	j .LBB1829
.LBB1828:
	li t0, 1
	j .LBB1830
.LBB1829:
	mv t0, zero
	j .LBB1830
.LBB1830:
	bne a3, zero, .LBB1831
	j .LBB1832
.LBB1833:
	li a4, 1
	j .LBB1834
.LBB1832:
	mv a4, zero
	j .LBB1834
.LBB1831:
	bne t0, zero, .LBB1833
	j .LBB1832
.LBB1834:
	bne a4, zero, .LBB1835
	j .LBB1836
.LBB1835:
	li t0, 1
	j .LBB1837
.LBB1838:
	mv t0, zero
	j .LBB1837
.LBB1836:
	bne a2, zero, .LBB1835
	j .LBB1838
.LBB1837:
	bne a4, zero, .LBB1839
	j .LBB1840
.LBB1841:
	li a3, 1
	j .LBB1842
.LBB1840:
	mv a3, zero
	j .LBB1842
.LBB1839:
	bne a2, zero, .LBB1841
	j .LBB1840
.LBB1842:
	beq a3, zero, .LBB1843
	j .LBB1844
.LBB1843:
	li a3, 1
	j .LBB1845
.LBB1844:
	mv a3, zero
	j .LBB1845
.LBB1845:
	bne t0, zero, .LBB1846
	j .LBB1847
.LBB1848:
	li a3, 1
	j .LBB1849
.LBB1847:
	mv a3, zero
	j .LBB1849
.LBB1846:
	bne a3, zero, .LBB1848
	j .LBB1847
.LBB1849:
	bne s9, zero, .LBB1850
	j .LBB1851
.LBB1852:
	li t0, 1
	j .LBB1853
.LBB1851:
	mv t0, zero
	j .LBB1853
.LBB1850:
	ld t0, -496(s0)
	bne t0, zero, .LBB1852
	j .LBB1851
.LBB1853:
	bne a4, zero, .LBB1854
	j .LBB1855
.LBB1856:
	li a2, 1
	j .LBB1857
.LBB1855:
	mv a2, zero
	j .LBB1857
.LBB1854:
	bne a2, zero, .LBB1856
	j .LBB1855
.LBB1857:
	bne t0, zero, .LBB1858
	j .LBB1859
.LBB1858:
	li s9, 1
	j .LBB1860
.LBB1861:
	mv s9, zero
	j .LBB1860
.LBB1859:
	bne a2, zero, .LBB1858
	j .LBB1861
.LBB1860:
	ld t0, -480(s0)
	bne t0, zero, .LBB1862
	j .LBB1863
.LBB1862:
	li a2, 1
	j .LBB1864
.LBB1865:
	mv a2, zero
	j .LBB1864
.LBB1863:
	ld t0, -504(s0)
	bne t0, zero, .LBB1862
	j .LBB1865
.LBB1864:
	ld t0, -480(s0)
	bne t0, zero, .LBB1866
	j .LBB1867
.LBB1868:
	li t0, 1
	j .LBB1869
.LBB1867:
	mv t0, zero
	j .LBB1869
.LBB1866:
	ld t0, -504(s0)
	bne t0, zero, .LBB1868
	j .LBB1867
.LBB1869:
	beq t0, zero, .LBB1870
	j .LBB1871
.LBB1870:
	li t0, 1
	j .LBB1872
.LBB1871:
	mv t0, zero
	j .LBB1872
.LBB1872:
	bne a2, zero, .LBB1873
	j .LBB1874
.LBB1875:
	li a4, 1
	j .LBB1876
.LBB1874:
	mv a4, zero
	j .LBB1876
.LBB1873:
	bne t0, zero, .LBB1875
	j .LBB1874
.LBB1876:
	bne a4, zero, .LBB1877
	j .LBB1878
.LBB1877:
	li a2, 1
	j .LBB1879
.LBB1880:
	mv a2, zero
	j .LBB1879
.LBB1878:
	bne s9, zero, .LBB1877
	j .LBB1880
.LBB1879:
	bne a4, zero, .LBB1881
	j .LBB1882
.LBB1883:
	li t0, 1
	j .LBB1884
.LBB1882:
	mv t0, zero
	j .LBB1884
.LBB1881:
	bne s9, zero, .LBB1883
	j .LBB1882
.LBB1884:
	beq t0, zero, .LBB1885
	j .LBB1886
.LBB1885:
	li t0, 1
	j .LBB1887
.LBB1886:
	mv t0, zero
	j .LBB1887
.LBB1887:
	bne a2, zero, .LBB1888
	j .LBB1889
.LBB1890:
	li s10, 1
	j .LBB1891
.LBB1889:
	mv s10, zero
	j .LBB1891
.LBB1888:
	bne t0, zero, .LBB1890
	j .LBB1889
.LBB1891:
	ld t0, -480(s0)
	bne t0, zero, .LBB1892
	j .LBB1893
.LBB1894:
	li a2, 1
	j .LBB1895
.LBB1893:
	mv a2, zero
	j .LBB1895
.LBB1892:
	ld t0, -504(s0)
	bne t0, zero, .LBB1894
	j .LBB1893
.LBB1895:
	bne a4, zero, .LBB1896
	j .LBB1897
.LBB1898:
	li t0, 1
	j .LBB1899
.LBB1897:
	mv t0, zero
	j .LBB1899
.LBB1896:
	bne s9, zero, .LBB1898
	j .LBB1897
.LBB1899:
	bne a2, zero, .LBB1900
	j .LBB1901
.LBB1900:
	li a2, 1
	j .LBB1902
.LBB1903:
	mv a2, zero
	j .LBB1902
.LBB1901:
	bne t0, zero, .LBB1900
	j .LBB1903
.LBB1902:
	bne s8, zero, .LBB1904
	j .LBB1905
.LBB1904:
	li a4, 1
	j .LBB1906
.LBB1907:
	mv a4, zero
	j .LBB1906
.LBB1905:
	bne a1, zero, .LBB1904
	j .LBB1907
.LBB1906:
	bne s8, zero, .LBB1908
	j .LBB1909
.LBB1910:
	li t0, 1
	j .LBB1911
.LBB1909:
	mv t0, zero
	j .LBB1911
.LBB1908:
	bne a1, zero, .LBB1910
	j .LBB1909
.LBB1911:
	beq t0, zero, .LBB1912
	j .LBB1913
.LBB1912:
	li t0, 1
	j .LBB1914
.LBB1913:
	mv t0, zero
	j .LBB1914
.LBB1914:
	bne a4, zero, .LBB1915
	j .LBB1916
.LBB1917:
	li a4, 1
	j .LBB1918
.LBB1916:
	mv a4, zero
	j .LBB1918
.LBB1915:
	bne t0, zero, .LBB1917
	j .LBB1916
.LBB1918:
	bne a4, zero, .LBB1919
	j .LBB1920
.LBB1919:
	li s9, 1
	j .LBB1921
.LBB1922:
	mv s9, zero
	j .LBB1921
.LBB1920:
	bne a2, zero, .LBB1919
	j .LBB1922
.LBB1921:
	bne a4, zero, .LBB1923
	j .LBB1924
.LBB1925:
	li t0, 1
	j .LBB1926
.LBB1924:
	mv t0, zero
	j .LBB1926
.LBB1923:
	bne a2, zero, .LBB1925
	j .LBB1924
.LBB1926:
	beq t0, zero, .LBB1927
	j .LBB1928
.LBB1927:
	li t0, 1
	j .LBB1929
.LBB1928:
	mv t0, zero
	j .LBB1929
.LBB1929:
	bne s9, zero, .LBB1930
	j .LBB1931
.LBB1932:
	li s9, 1
	j .LBB1933
.LBB1931:
	mv s9, zero
	j .LBB1933
.LBB1930:
	bne t0, zero, .LBB1932
	j .LBB1931
.LBB1933:
	bne s8, zero, .LBB1934
	j .LBB1935
.LBB1936:
	li t0, 1
	j .LBB1937
.LBB1935:
	mv t0, zero
	j .LBB1937
.LBB1934:
	bne a1, zero, .LBB1936
	j .LBB1935
.LBB1937:
	bne a4, zero, .LBB1938
	j .LBB1939
.LBB1940:
	li a1, 1
	j .LBB1941
.LBB1939:
	mv a1, zero
	j .LBB1941
.LBB1938:
	bne a2, zero, .LBB1940
	j .LBB1939
.LBB1941:
	bne t0, zero, .LBB1942
	j .LBB1943
.LBB1942:
	li a2, 1
	j .LBB1944
.LBB1945:
	mv a2, zero
	j .LBB1944
.LBB1943:
	bne a1, zero, .LBB1942
	j .LBB1945
.LBB1944:
	bne s7, zero, .LBB1946
	j .LBB1947
.LBB1946:
	li a1, 1
	j .LBB1948
.LBB1949:
	mv a1, zero
	j .LBB1948
.LBB1947:
	ld t0, -512(s0)
	bne t0, zero, .LBB1946
	j .LBB1949
.LBB1948:
	bne s7, zero, .LBB1950
	j .LBB1951
.LBB1952:
	li t0, 1
	j .LBB1953
.LBB1951:
	mv t0, zero
	j .LBB1953
.LBB1950:
	ld t0, -512(s0)
	bne t0, zero, .LBB1952
	j .LBB1951
.LBB1953:
	beq t0, zero, .LBB1954
	j .LBB1955
.LBB1954:
	li t0, 1
	j .LBB1956
.LBB1955:
	mv t0, zero
	j .LBB1956
.LBB1956:
	bne a1, zero, .LBB1957
	j .LBB1958
.LBB1959:
	li a1, 1
	j .LBB1960
.LBB1958:
	mv a1, zero
	j .LBB1960
.LBB1957:
	bne t0, zero, .LBB1959
	j .LBB1958
.LBB1960:
	bne a1, zero, .LBB1961
	j .LBB1962
.LBB1961:
	li t0, 1
	j .LBB1963
.LBB1964:
	mv t0, zero
	j .LBB1963
.LBB1962:
	bne a2, zero, .LBB1961
	j .LBB1964
.LBB1963:
	bne a1, zero, .LBB1965
	j .LBB1966
.LBB1967:
	li a4, 1
	j .LBB1968
.LBB1966:
	mv a4, zero
	j .LBB1968
.LBB1965:
	bne a2, zero, .LBB1967
	j .LBB1966
.LBB1968:
	beq a4, zero, .LBB1969
	j .LBB1970
.LBB1969:
	li a4, 1
	j .LBB1971
.LBB1970:
	mv a4, zero
	j .LBB1971
.LBB1971:
	bne t0, zero, .LBB1972
	j .LBB1973
.LBB1974:
	li s8, 1
	j .LBB1975
.LBB1973:
	mv s8, zero
	j .LBB1975
.LBB1972:
	bne a4, zero, .LBB1974
	j .LBB1973
.LBB1975:
	bne s7, zero, .LBB1976
	j .LBB1977
.LBB1978:
	li t0, 1
	j .LBB1979
.LBB1977:
	mv t0, zero
	j .LBB1979
.LBB1976:
	ld t0, -512(s0)
	bne t0, zero, .LBB1978
	j .LBB1977
.LBB1979:
	bne a1, zero, .LBB1980
	j .LBB1981
.LBB1982:
	li a1, 1
	j .LBB1983
.LBB1981:
	mv a1, zero
	j .LBB1983
.LBB1980:
	bne a2, zero, .LBB1982
	j .LBB1981
.LBB1983:
	bne t0, zero, .LBB1984
	j .LBB1985
.LBB1984:
	li a2, 1
	j .LBB1986
.LBB1987:
	mv a2, zero
	j .LBB1986
.LBB1985:
	bne a1, zero, .LBB1984
	j .LBB1987
.LBB1986:
	ld t0, -488(s0)
	bne t0, zero, .LBB1988
	j .LBB1989
.LBB1988:
	li a1, 1
	j .LBB1990
.LBB1991:
	mv a1, zero
	j .LBB1990
.LBB1989:
	bne a0, zero, .LBB1988
	j .LBB1991
.LBB1990:
	ld t0, -488(s0)
	bne t0, zero, .LBB1992
	j .LBB1993
.LBB1994:
	li t0, 1
	j .LBB1995
.LBB1993:
	mv t0, zero
	j .LBB1995
.LBB1992:
	bne a0, zero, .LBB1994
	j .LBB1993
.LBB1995:
	beq t0, zero, .LBB1996
	j .LBB1997
.LBB1996:
	li t0, 1
	j .LBB1998
.LBB1997:
	mv t0, zero
	j .LBB1998
.LBB1998:
	bne a1, zero, .LBB1999
	j .LBB2000
.LBB2001:
	li a4, 1
	j .LBB2002
.LBB2000:
	mv a4, zero
	j .LBB2002
.LBB1999:
	bne t0, zero, .LBB2001
	j .LBB2000
.LBB2002:
	bne a4, zero, .LBB2003
	j .LBB2004
.LBB2003:
	li a1, 1
	j .LBB2005
.LBB2006:
	mv a1, zero
	j .LBB2005
.LBB2004:
	bne a2, zero, .LBB2003
	j .LBB2006
.LBB2005:
	bne a4, zero, .LBB2007
	j .LBB2008
.LBB2009:
	li t0, 1
	j .LBB2010
.LBB2008:
	mv t0, zero
	j .LBB2010
.LBB2007:
	bne a2, zero, .LBB2009
	j .LBB2008
.LBB2010:
	beq t0, zero, .LBB2011
	j .LBB2012
.LBB2011:
	li t0, 1
	j .LBB2013
.LBB2012:
	mv t0, zero
	j .LBB2013
.LBB2013:
	bne a1, zero, .LBB2014
	j .LBB2015
.LBB2016:
	li s7, 1
	j .LBB2017
.LBB2015:
	mv s7, zero
	j .LBB2017
.LBB2014:
	bne t0, zero, .LBB2016
	j .LBB2015
.LBB2017:
	ld t0, -488(s0)
	bne t0, zero, .LBB2018
	j .LBB2019
.LBB2020:
	li a0, 1
	j .LBB2021
.LBB2019:
	mv a0, zero
	j .LBB2021
.LBB2018:
	bne a0, zero, .LBB2020
	j .LBB2019
.LBB2021:
	bne a4, zero, .LBB2022
	j .LBB2023
.LBB2024:
	li t0, 1
	j .LBB2025
.LBB2023:
	mv t0, zero
	j .LBB2025
.LBB2022:
	bne a2, zero, .LBB2024
	j .LBB2023
.LBB2025:
	bne a0, zero, .LBB2026
	j .LBB2027
.LBB2026:
	li t0, 1
	j .LBB2028
.LBB2029:
	mv t0, zero
	j .LBB2028
.LBB2027:
	bne t0, zero, .LBB2026
	j .LBB2029
.LBB2028:
	bne s6, zero, .LBB2030
	j .LBB2031
.LBB2030:
	li a1, 1
	j .LBB2032
.LBB2033:
	mv a1, zero
	j .LBB2032
.LBB2031:
	bne s1, zero, .LBB2030
	j .LBB2033
.LBB2032:
	bne s6, zero, .LBB2034
	j .LBB2035
.LBB2036:
	li a0, 1
	j .LBB2037
.LBB2035:
	mv a0, zero
	j .LBB2037
.LBB2034:
	bne s1, zero, .LBB2036
	j .LBB2035
.LBB2037:
	beq a0, zero, .LBB2038
	j .LBB2039
.LBB2038:
	li a0, 1
	j .LBB2040
.LBB2039:
	mv a0, zero
	j .LBB2040
.LBB2040:
	bne a1, zero, .LBB2041
	j .LBB2042
.LBB2043:
	li a0, 1
	j .LBB2044
.LBB2042:
	mv a0, zero
	j .LBB2044
.LBB2041:
	bne a0, zero, .LBB2043
	j .LBB2042
.LBB2044:
	bne a0, zero, .LBB2045
	j .LBB2046
.LBB2045:
	li a1, 1
	j .LBB2047
.LBB2048:
	mv a1, zero
	j .LBB2047
.LBB2046:
	bne t0, zero, .LBB2045
	j .LBB2048
.LBB2047:
	bne a0, zero, .LBB2049
	j .LBB2050
.LBB2051:
	li a2, 1
	j .LBB2052
.LBB2050:
	mv a2, zero
	j .LBB2052
.LBB2049:
	bne t0, zero, .LBB2051
	j .LBB2050
.LBB2052:
	beq a2, zero, .LBB2053
	j .LBB2054
.LBB2053:
	li a2, 1
	j .LBB2055
.LBB2054:
	mv a2, zero
	j .LBB2055
.LBB2055:
	bne a1, zero, .LBB2056
	j .LBB2057
.LBB2058:
	li a4, 1
	j .LBB2059
.LBB2057:
	mv a4, zero
	j .LBB2059
.LBB2056:
	bne a2, zero, .LBB2058
	j .LBB2057
.LBB2059:
	bne s6, zero, .LBB2060
	j .LBB2061
.LBB2062:
	li s1, 1
	j .LBB2063
.LBB2061:
	mv s1, zero
	j .LBB2063
.LBB2060:
	bne s1, zero, .LBB2062
	j .LBB2061
.LBB2063:
	bne a0, zero, .LBB2064
	j .LBB2065
.LBB2066:
	li t0, 1
	j .LBB2067
.LBB2065:
	mv t0, zero
	j .LBB2067
.LBB2064:
	bne t0, zero, .LBB2066
	j .LBB2065
.LBB2067:
	bne s1, zero, .LBB2068
	j .LBB2069
.LBB2068:
	li s1, 1
	j .LBB2070
.LBB2071:
	mv s1, zero
	j .LBB2070
.LBB2069:
	bne t0, zero, .LBB2068
	j .LBB2071
.LBB2070:
	bne s5, zero, .LBB2072
	j .LBB2073
.LBB2072:
	li a0, 1
	j .LBB2074
.LBB2075:
	mv a0, zero
	j .LBB2074
.LBB2073:
	bne t2, zero, .LBB2072
	j .LBB2075
.LBB2074:
	bne s5, zero, .LBB2076
	j .LBB2077
.LBB2078:
	li t0, 1
	j .LBB2079
.LBB2077:
	mv t0, zero
	j .LBB2079
.LBB2076:
	bne t2, zero, .LBB2078
	j .LBB2077
.LBB2079:
	beq t0, zero, .LBB2080
	j .LBB2081
.LBB2080:
	li t0, 1
	j .LBB2082
.LBB2081:
	mv t0, zero
	j .LBB2082
.LBB2082:
	bne a0, zero, .LBB2083
	j .LBB2084
.LBB2085:
	li a0, 1
	j .LBB2086
.LBB2084:
	mv a0, zero
	j .LBB2086
.LBB2083:
	bne t0, zero, .LBB2085
	j .LBB2084
.LBB2086:
	bne a0, zero, .LBB2087
	j .LBB2088
.LBB2087:
	li a1, 1
	j .LBB2089
.LBB2090:
	mv a1, zero
	j .LBB2089
.LBB2088:
	bne s1, zero, .LBB2087
	j .LBB2090
.LBB2089:
	bne a0, zero, .LBB2091
	j .LBB2092
.LBB2093:
	li t0, 1
	j .LBB2094
.LBB2092:
	mv t0, zero
	j .LBB2094
.LBB2091:
	bne s1, zero, .LBB2093
	j .LBB2092
.LBB2094:
	beq t0, zero, .LBB2095
	j .LBB2096
.LBB2095:
	li t0, 1
	j .LBB2097
.LBB2096:
	mv t0, zero
	j .LBB2097
.LBB2097:
	bne a1, zero, .LBB2098
	j .LBB2099
.LBB2100:
	li a2, 1
	j .LBB2101
.LBB2099:
	mv a2, zero
	j .LBB2101
.LBB2098:
	bne t0, zero, .LBB2100
	j .LBB2099
.LBB2101:
	bne s5, zero, .LBB2102
	j .LBB2103
.LBB2104:
	li t0, 1
	j .LBB2105
.LBB2103:
	mv t0, zero
	j .LBB2105
.LBB2102:
	bne t2, zero, .LBB2104
	j .LBB2103
.LBB2105:
	bne a0, zero, .LBB2106
	j .LBB2107
.LBB2108:
	li t2, 1
	j .LBB2109
.LBB2107:
	mv t2, zero
	j .LBB2109
.LBB2106:
	bne s1, zero, .LBB2108
	j .LBB2107
.LBB2109:
	bne t0, zero, .LBB2110
	j .LBB2111
.LBB2110:
	li s1, 1
	j .LBB2112
.LBB2113:
	mv s1, zero
	j .LBB2112
.LBB2111:
	bne t2, zero, .LBB2110
	j .LBB2113
.LBB2112:
	bne s4, zero, .LBB2114
	j .LBB2115
.LBB2114:
	li t2, 1
	j .LBB2116
.LBB2117:
	mv t2, zero
	j .LBB2116
.LBB2115:
	bne t1, zero, .LBB2114
	j .LBB2117
.LBB2116:
	bne s4, zero, .LBB2118
	j .LBB2119
.LBB2120:
	li t0, 1
	j .LBB2121
.LBB2119:
	mv t0, zero
	j .LBB2121
.LBB2118:
	bne t1, zero, .LBB2120
	j .LBB2119
.LBB2121:
	beq t0, zero, .LBB2122
	j .LBB2123
.LBB2122:
	li t0, 1
	j .LBB2124
.LBB2123:
	mv t0, zero
	j .LBB2124
.LBB2124:
	bne t2, zero, .LBB2125
	j .LBB2126
.LBB2127:
	li t2, 1
	j .LBB2128
.LBB2126:
	mv t2, zero
	j .LBB2128
.LBB2125:
	bne t0, zero, .LBB2127
	j .LBB2126
.LBB2128:
	bne t2, zero, .LBB2129
	j .LBB2130
.LBB2129:
	li a0, 1
	j .LBB2131
.LBB2132:
	mv a0, zero
	j .LBB2131
.LBB2130:
	bne s1, zero, .LBB2129
	j .LBB2132
.LBB2131:
	bne t2, zero, .LBB2133
	j .LBB2134
.LBB2135:
	li t0, 1
	j .LBB2136
.LBB2134:
	mv t0, zero
	j .LBB2136
.LBB2133:
	bne s1, zero, .LBB2135
	j .LBB2134
.LBB2136:
	beq t0, zero, .LBB2137
	j .LBB2138
.LBB2137:
	li t0, 1
	j .LBB2139
.LBB2138:
	mv t0, zero
	j .LBB2139
.LBB2139:
	bne a0, zero, .LBB2140
	j .LBB2141
.LBB2142:
	li s5, 1
	j .LBB2143
.LBB2141:
	mv s5, zero
	j .LBB2143
.LBB2140:
	bne t0, zero, .LBB2142
	j .LBB2141
.LBB2143:
	bne s4, zero, .LBB2144
	j .LBB2145
.LBB2146:
	li t1, 1
	j .LBB2147
.LBB2145:
	mv t1, zero
	j .LBB2147
.LBB2144:
	bne t1, zero, .LBB2146
	j .LBB2145
.LBB2147:
	bne t2, zero, .LBB2148
	j .LBB2149
.LBB2150:
	li t0, 1
	j .LBB2151
.LBB2149:
	mv t0, zero
	j .LBB2151
.LBB2148:
	bne s1, zero, .LBB2150
	j .LBB2149
.LBB2151:
	bne t1, zero, .LBB2152
	j .LBB2153
.LBB2152:
	li t2, 1
	j .LBB2154
.LBB2155:
	mv t2, zero
	j .LBB2154
.LBB2153:
	bne t0, zero, .LBB2152
	j .LBB2155
.LBB2154:
	bne s3, zero, .LBB2156
	j .LBB2157
.LBB2156:
	li t0, 1
	j .LBB2158
.LBB2159:
	mv t0, zero
	j .LBB2158
.LBB2157:
	ld t0, -520(s0)
	bne t0, zero, .LBB2156
	j .LBB2159
.LBB2158:
	bne s3, zero, .LBB2160
	j .LBB2161
.LBB2162:
	li t1, 1
	j .LBB2163
.LBB2161:
	mv t1, zero
	j .LBB2163
.LBB2160:
	ld t0, -520(s0)
	bne t0, zero, .LBB2162
	j .LBB2161
.LBB2163:
	beq t1, zero, .LBB2164
	j .LBB2165
.LBB2164:
	li t1, 1
	j .LBB2166
.LBB2165:
	mv t1, zero
	j .LBB2166
.LBB2166:
	bne t0, zero, .LBB2167
	j .LBB2168
.LBB2169:
	li s1, 1
	j .LBB2170
.LBB2168:
	mv s1, zero
	j .LBB2170
.LBB2167:
	bne t1, zero, .LBB2169
	j .LBB2168
.LBB2170:
	bne s1, zero, .LBB2171
	j .LBB2172
.LBB2171:
	li t0, 1
	j .LBB2173
.LBB2174:
	mv t0, zero
	j .LBB2173
.LBB2172:
	bne t2, zero, .LBB2171
	j .LBB2174
.LBB2173:
	bne s1, zero, .LBB2175
	j .LBB2176
.LBB2177:
	li t1, 1
	j .LBB2178
.LBB2176:
	mv t1, zero
	j .LBB2178
.LBB2175:
	bne t2, zero, .LBB2177
	j .LBB2176
.LBB2178:
	beq t1, zero, .LBB2179
	j .LBB2180
.LBB2179:
	li t1, 1
	j .LBB2181
.LBB2180:
	mv t1, zero
	j .LBB2181
.LBB2181:
	bne t0, zero, .LBB2182
	j .LBB2183
.LBB2184:
	li a1, 1
	j .LBB2185
.LBB2183:
	mv a1, zero
	j .LBB2185
.LBB2182:
	bne t1, zero, .LBB2184
	j .LBB2183
.LBB2185:
	bne s3, zero, .LBB2186
	j .LBB2187
.LBB2188:
	li t0, 1
	j .LBB2189
.LBB2187:
	mv t0, zero
	j .LBB2189
.LBB2186:
	ld t0, -520(s0)
	bne t0, zero, .LBB2188
	j .LBB2187
.LBB2189:
	bne s1, zero, .LBB2190
	j .LBB2191
.LBB2192:
	li t1, 1
	j .LBB2193
.LBB2191:
	mv t1, zero
	j .LBB2193
.LBB2190:
	bne t2, zero, .LBB2192
	j .LBB2191
.LBB2193:
	bne t0, zero, .LBB2194
	j .LBB2195
.LBB2194:
	li t1, 1
	j .LBB2196
.LBB2197:
	mv t1, zero
	j .LBB2196
.LBB2195:
	bne t1, zero, .LBB2194
	j .LBB2197
.LBB2196:
	bne s2, zero, .LBB2198
	j .LBB2199
.LBB2198:
	li t2, 1
	j .LBB2200
.LBB2201:
	mv t2, zero
	j .LBB2200
.LBB2199:
	ld t0, -160(s0)
	bne t0, zero, .LBB2198
	j .LBB2201
.LBB2200:
	bne s2, zero, .LBB2202
	j .LBB2203
.LBB2204:
	li t0, 1
	j .LBB2205
.LBB2203:
	mv t0, zero
	j .LBB2205
.LBB2202:
	ld t0, -160(s0)
	bne t0, zero, .LBB2204
	j .LBB2203
.LBB2205:
	beq t0, zero, .LBB2206
	j .LBB2207
.LBB2206:
	li t0, 1
	j .LBB2208
.LBB2207:
	mv t0, zero
	j .LBB2208
.LBB2208:
	bne t2, zero, .LBB2209
	j .LBB2210
.LBB2211:
	li s1, 1
	j .LBB2212
.LBB2210:
	mv s1, zero
	j .LBB2212
.LBB2209:
	bne t0, zero, .LBB2211
	j .LBB2210
.LBB2212:
	bne s1, zero, .LBB2213
	j .LBB2214
.LBB2213:
	li t2, 1
	j .LBB2215
.LBB2216:
	mv t2, zero
	j .LBB2215
.LBB2214:
	bne t1, zero, .LBB2213
	j .LBB2216
.LBB2215:
	bne s1, zero, .LBB2217
	j .LBB2218
.LBB2219:
	li t0, 1
	j .LBB2220
.LBB2218:
	mv t0, zero
	j .LBB2220
.LBB2217:
	bne t1, zero, .LBB2219
	j .LBB2218
.LBB2220:
	beq t0, zero, .LBB2221
	j .LBB2222
.LBB2221:
	li t0, 1
	j .LBB2223
.LBB2222:
	mv t0, zero
	j .LBB2223
.LBB2223:
	bne t2, zero, .LBB2224
	j .LBB2225
.LBB2226:
	li a0, 1
	j .LBB2227
.LBB2225:
	mv a0, zero
	j .LBB2227
.LBB2224:
	bne t0, zero, .LBB2226
	j .LBB2225
.LBB2227:
	bne s2, zero, .LBB2228
	j .LBB2229
.LBB2230:
	li t2, 1
	j .LBB2231
.LBB2229:
	mv t2, zero
	j .LBB2231
.LBB2228:
	ld t0, -160(s0)
	bne t0, zero, .LBB2230
	j .LBB2229
.LBB2231:
	bne s1, zero, .LBB2232
	j .LBB2233
.LBB2234:
	li t0, 1
	j .LBB2235
.LBB2233:
	mv t0, zero
	j .LBB2235
.LBB2232:
	bne t1, zero, .LBB2234
	j .LBB2233
.LBB2235:
	bne t2, zero, .LBB2236
	j .LBB2237
.LBB2236:
	li t2, 1
	j .LBB2238
.LBB2239:
	mv t2, zero
	j .LBB2238
.LBB2237:
	bne t0, zero, .LBB2236
	j .LBB2239
.LBB2238:
	bne a7, zero, .LBB2240
	j .LBB2241
.LBB2240:
	li t1, 1
	j .LBB2242
.LBB2243:
	mv t1, zero
	j .LBB2242
.LBB2241:
	ld t0, -40(s0)
	bne t0, zero, .LBB2240
	j .LBB2243
.LBB2242:
	bne a7, zero, .LBB2244
	j .LBB2245
.LBB2246:
	li t0, 1
	j .LBB2247
.LBB2245:
	mv t0, zero
	j .LBB2247
.LBB2244:
	ld t0, -40(s0)
	bne t0, zero, .LBB2246
	j .LBB2245
.LBB2247:
	beq t0, zero, .LBB2248
	j .LBB2249
.LBB2248:
	li t0, 1
	j .LBB2250
.LBB2249:
	mv t0, zero
	j .LBB2250
.LBB2250:
	bne t1, zero, .LBB2251
	j .LBB2252
.LBB2253:
	li s1, 1
	j .LBB2254
.LBB2252:
	mv s1, zero
	j .LBB2254
.LBB2251:
	bne t0, zero, .LBB2253
	j .LBB2252
.LBB2254:
	bne s1, zero, .LBB2255
	j .LBB2256
.LBB2255:
	li t1, 1
	j .LBB2257
.LBB2258:
	mv t1, zero
	j .LBB2257
.LBB2256:
	bne t2, zero, .LBB2255
	j .LBB2258
.LBB2257:
	bne s1, zero, .LBB2259
	j .LBB2260
.LBB2261:
	li t0, 1
	j .LBB2262
.LBB2260:
	mv t0, zero
	j .LBB2262
.LBB2259:
	bne t2, zero, .LBB2261
	j .LBB2260
.LBB2262:
	beq t0, zero, .LBB2263
	j .LBB2264
.LBB2263:
	li t0, 1
	j .LBB2265
.LBB2264:
	mv t0, zero
	j .LBB2265
.LBB2265:
	bne t1, zero, .LBB2266
	j .LBB2267
.LBB2268:
	li s2, 1
	j .LBB2269
.LBB2267:
	mv s2, zero
	j .LBB2269
.LBB2266:
	bne t0, zero, .LBB2268
	j .LBB2267
.LBB2269:
	bne a7, zero, .LBB2270
	j .LBB2271
.LBB2272:
	li t1, 1
	j .LBB2273
.LBB2271:
	mv t1, zero
	j .LBB2273
.LBB2270:
	ld t0, -40(s0)
	bne t0, zero, .LBB2272
	j .LBB2271
.LBB2273:
	bne s1, zero, .LBB2274
	j .LBB2275
.LBB2276:
	li t0, 1
	j .LBB2277
.LBB2275:
	mv t0, zero
	j .LBB2277
.LBB2274:
	bne t2, zero, .LBB2276
	j .LBB2275
.LBB2277:
	bne t1, zero, .LBB2278
	j .LBB2279
.LBB2278:
	li t2, 1
	j .LBB2280
.LBB2281:
	mv t2, zero
	j .LBB2280
.LBB2279:
	bne t0, zero, .LBB2278
	j .LBB2281
.LBB2280:
	bne a6, zero, .LBB2282
	j .LBB2283
.LBB2282:
	li t1, 1
	j .LBB2284
.LBB2285:
	mv t1, zero
	j .LBB2284
.LBB2283:
	ld t0, -48(s0)
	bne t0, zero, .LBB2282
	j .LBB2285
.LBB2284:
	bne a6, zero, .LBB2286
	j .LBB2287
.LBB2288:
	li t0, 1
	j .LBB2289
.LBB2287:
	mv t0, zero
	j .LBB2289
.LBB2286:
	ld t0, -48(s0)
	bne t0, zero, .LBB2288
	j .LBB2287
.LBB2289:
	beq t0, zero, .LBB2290
	j .LBB2291
.LBB2290:
	li t0, 1
	j .LBB2292
.LBB2291:
	mv t0, zero
	j .LBB2292
.LBB2292:
	bne t1, zero, .LBB2293
	j .LBB2294
.LBB2295:
	li s1, 1
	j .LBB2296
.LBB2294:
	mv s1, zero
	j .LBB2296
.LBB2293:
	bne t0, zero, .LBB2295
	j .LBB2294
.LBB2296:
	bne s1, zero, .LBB2297
	j .LBB2298
.LBB2297:
	li t1, 1
	j .LBB2299
.LBB2300:
	mv t1, zero
	j .LBB2299
.LBB2298:
	bne t2, zero, .LBB2297
	j .LBB2300
.LBB2299:
	bne s1, zero, .LBB2301
	j .LBB2302
.LBB2303:
	li t0, 1
	j .LBB2304
.LBB2302:
	mv t0, zero
	j .LBB2304
.LBB2301:
	bne t2, zero, .LBB2303
	j .LBB2302
.LBB2304:
	beq t0, zero, .LBB2305
	j .LBB2306
.LBB2305:
	li t0, 1
	j .LBB2307
.LBB2306:
	mv t0, zero
	j .LBB2307
.LBB2307:
	bne t1, zero, .LBB2308
	j .LBB2309
.LBB2310:
	li a7, 1
	j .LBB2311
.LBB2309:
	mv a7, zero
	j .LBB2311
.LBB2308:
	bne t0, zero, .LBB2310
	j .LBB2309
.LBB2311:
	bne a6, zero, .LBB2312
	j .LBB2313
.LBB2314:
	li t1, 1
	j .LBB2315
.LBB2313:
	mv t1, zero
	j .LBB2315
.LBB2312:
	ld t0, -48(s0)
	bne t0, zero, .LBB2314
	j .LBB2313
.LBB2315:
	bne s1, zero, .LBB2316
	j .LBB2317
.LBB2318:
	li t0, 1
	j .LBB2319
.LBB2317:
	mv t0, zero
	j .LBB2319
.LBB2316:
	bne t2, zero, .LBB2318
	j .LBB2317
.LBB2319:
	bne t1, zero, .LBB2320
	j .LBB2321
.LBB2320:
	li s1, 1
	j .LBB2322
.LBB2323:
	mv s1, zero
	j .LBB2322
.LBB2321:
	bne t0, zero, .LBB2320
	j .LBB2323
.LBB2322:
	bne a5, zero, .LBB2324
	j .LBB2325
.LBB2324:
	li t1, 1
	j .LBB2326
.LBB2327:
	mv t1, zero
	j .LBB2326
.LBB2325:
	ld t0, -56(s0)
	bne t0, zero, .LBB2324
	j .LBB2327
.LBB2326:
	bne a5, zero, .LBB2328
	j .LBB2329
.LBB2330:
	li t0, 1
	j .LBB2331
.LBB2329:
	mv t0, zero
	j .LBB2331
.LBB2328:
	ld t0, -56(s0)
	bne t0, zero, .LBB2330
	j .LBB2329
.LBB2331:
	beq t0, zero, .LBB2332
	j .LBB2333
.LBB2332:
	li t0, 1
	j .LBB2334
.LBB2333:
	mv t0, zero
	j .LBB2334
.LBB2334:
	bne t1, zero, .LBB2335
	j .LBB2336
.LBB2337:
	li a6, 1
	j .LBB2338
.LBB2336:
	mv a6, zero
	j .LBB2338
.LBB2335:
	bne t0, zero, .LBB2337
	j .LBB2336
.LBB2338:
	bne a6, zero, .LBB2339
	j .LBB2340
.LBB2339:
	li t0, 1
	j .LBB2341
.LBB2342:
	mv t0, zero
	j .LBB2341
.LBB2340:
	bne s1, zero, .LBB2339
	j .LBB2342
.LBB2341:
	bne a6, zero, .LBB2343
	j .LBB2344
.LBB2345:
	li t1, 1
	j .LBB2346
.LBB2344:
	mv t1, zero
	j .LBB2346
.LBB2343:
	bne s1, zero, .LBB2345
	j .LBB2344
.LBB2346:
	beq t1, zero, .LBB2347
	j .LBB2348
.LBB2347:
	li t1, 1
	j .LBB2349
.LBB2348:
	mv t1, zero
	j .LBB2349
.LBB2349:
	bne t0, zero, .LBB2350
	j .LBB2351
.LBB2352:
	li t1, 1
	j .LBB2353
.LBB2351:
	mv t1, zero
	j .LBB2353
.LBB2350:
	bne t1, zero, .LBB2352
	j .LBB2351
.LBB2353:
	bne a5, zero, .LBB2354
	j .LBB2355
.LBB2356:
	li t2, 1
	j .LBB2357
.LBB2355:
	mv t2, zero
	j .LBB2357
.LBB2354:
	ld t0, -56(s0)
	bne t0, zero, .LBB2356
	j .LBB2355
.LBB2357:
	bne a6, zero, .LBB2358
	j .LBB2359
.LBB2360:
	li t0, 1
	j .LBB2361
.LBB2359:
	mv t0, zero
	j .LBB2361
.LBB2358:
	bne s1, zero, .LBB2360
	j .LBB2359
.LBB2361:
	bne t2, zero, .LBB2362
	j .LBB2363
.LBB2362:
	j .LBB2364
.LBB2365:
	j .LBB2364
.LBB2363:
	bne t0, zero, .LBB2362
	j .LBB2365
.LBB2364:
	li t0, 2
	mulw t0, zero, t0
	addw t0, t0, t1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a7
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s2
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a0
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a1
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s5
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a2
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s7
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s8
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s9
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s10
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a3
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s11
	li t0, 2
	mulw t0, t1, t0
	ld t0, -64(s0)
	addw t1, t0, t0
	li t0, 2
	mulw t0, t1, t0
	addw t2, t0, t3
	li t0, 2
	ld t0, -264(s0)
	remw t4, t0, t0
	blt t4, zero, .LBB2366
	j .LBB3962
.LBB2366:
	subw t4, zero, t4
	mv t4, t4
	j .LBB2367
.LBB2367:
	li t0, 2
	ld t0, -264(s0)
	divw t1, t0, t0
	li t0, 2
	remw t3, t1, t0
	blt t3, zero, .LBB2368
	j .LBB3963
.LBB2368:
	subw t3, zero, t3
	mv t3, t3
	j .LBB2369
.LBB2369:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s11, t1, t0
	blt s11, zero, .LBB2370
	j .LBB3964
.LBB2370:
	subw s11, zero, s11
	mv s11, s11
	j .LBB2371
.LBB2371:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s10, t0, t1
	blt s10, zero, .LBB2372
	j .LBB3965
.LBB2372:
	subw s10, zero, s10
	mv s10, s10
	j .LBB2373
.LBB2373:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s9, t1, t0
	blt s9, zero, .LBB2374
	j .LBB3966
.LBB2374:
	subw s9, zero, s9
	mv s9, s9
	j .LBB2375
.LBB2375:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s8, t0, t1
	blt s8, zero, .LBB2376
	j .LBB3967
.LBB2376:
	subw s8, zero, s8
	mv s8, s8
	j .LBB2377
.LBB2377:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw s7, t0, t1
	blt s7, zero, .LBB2378
	j .LBB3968
.LBB2378:
	subw s7, zero, s7
	mv s7, s7
	j .LBB2379
.LBB2379:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s6, t1, t0
	blt s6, zero, .LBB2380
	j .LBB3969
.LBB2380:
	subw s6, zero, s6
	mv s6, s6
	j .LBB2381
.LBB2381:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s5, t1, t0
	blt s5, zero, .LBB2382
	j .LBB3970
.LBB2382:
	subw s5, zero, s5
	mv s5, s5
	j .LBB2383
.LBB2383:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB2384
	j .LBB3971
.LBB2384:
	subw s4, zero, s4
	mv s4, s4
	j .LBB2385
.LBB2385:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s3, t1, t0
	blt s3, zero, .LBB2386
	j .LBB3972
.LBB2386:
	subw s3, zero, s3
	mv s3, s3
	j .LBB2387
.LBB2387:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s2, t0, t1
	blt s2, zero, .LBB2388
	j .LBB3973
.LBB2388:
	subw s2, zero, s2
	mv s2, s2
	j .LBB2389
.LBB2389:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB2390
	j .LBB3974
.LBB2390:
	subw a7, zero, a7
	mv a7, a7
	j .LBB2391
.LBB2391:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw a6, t0, t1
	blt a6, zero, .LBB2392
	j .LBB3975
.LBB2392:
	subw a6, zero, a6
	mv a6, a6
	j .LBB2393
.LBB2393:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw a5, t1, t0
	blt a5, zero, .LBB2394
	j .LBB3976
.LBB2394:
	subw a5, zero, a5
	mv a5, a5
	j .LBB2395
.LBB2395:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2396
	j .LBB3977
.LBB2396:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -72(s0)
	j .LBB2397
.LBB2397:
	li t0, 2
	divw t0, t1, t0
	li t0, 2
	remw a4, t2, t0
	blt a4, zero, .LBB2398
	j .LBB3978
.LBB2398:
	subw a4, zero, a4
	mv a4, a4
	j .LBB2399
.LBB2399:
	li t0, 2
	divw t1, t2, t0
	li t0, 2
	remw a3, t1, t0
	blt a3, zero, .LBB2400
	j .LBB3979
.LBB2400:
	subw a3, zero, a3
	mv a3, a3
	j .LBB2401
.LBB2401:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2402
	j .LBB3980
.LBB2402:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -80(s0)
	j .LBB2403
.LBB2403:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB2404
	j .LBB3981
.LBB2404:
	subw a2, zero, a2
	mv a2, a2
	j .LBB2405
.LBB2405:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2406
	j .LBB3982
.LBB2406:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -88(s0)
	j .LBB2407
.LBB2407:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a1, t0, t1
	blt a1, zero, .LBB2408
	j .LBB3983
.LBB2408:
	subw a1, zero, a1
	mv a1, a1
	j .LBB2409
.LBB2409:
	li t1, 2
	divw t0, t0, t1
	li t1, 2
	remw a0, t0, t1
	blt a0, zero, .LBB2410
	j .LBB3984
.LBB2410:
	subw a0, zero, a0
	mv a0, a0
	j .LBB2411
.LBB2411:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2412
	j .LBB3985
.LBB2412:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -96(s0)
	j .LBB2413
.LBB2413:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2414
	j .LBB3986
.LBB2414:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -104(s0)
	j .LBB2415
.LBB2415:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB2416
	j .LBB3987
.LBB2416:
	subw s1, zero, s1
	mv s1, s1
	j .LBB2417
.LBB2417:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2418
	j .LBB3988
.LBB2418:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -112(s0)
	j .LBB2419
.LBB2419:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2420
	j .LBB3989
.LBB2420:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -120(s0)
	j .LBB2421
.LBB2421:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t2, t1, t0
	blt t2, zero, .LBB2422
	j .LBB3990
.LBB2422:
	subw t2, zero, t2
	mv t2, t2
	j .LBB2423
.LBB2423:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB2424
	j .LBB3991
.LBB2424:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -128(s0)
	j .LBB2425
.LBB2425:
	li t0, 2
	divw t5, t1, t0
	li t0, 2
	remw t1, t5, t0
	blt t1, zero, .LBB2426
	j .LBB3992
.LBB2426:
	subw t1, zero, t1
	mv t1, t1
	j .LBB2427
.LBB2427:
	li t0, 2
	divw t5, t5, t0
	li t0, 2
	remw t0, t5, t0
	blt t0, zero, .LBB2428
	j .LBB3993
.LBB2428:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -136(s0)
	j .LBB2429
.LBB2429:
	li t0, 2
	divw t0, t5, t0
	bne t4, zero, .LBB2430
	j .LBB2431
.LBB2430:
	li t0, 1
	j .LBB2432
.LBB2433:
	mv t0, zero
	j .LBB2432
.LBB2431:
	bne a4, zero, .LBB2430
	j .LBB2433
.LBB2432:
	bne t4, zero, .LBB2434
	j .LBB2435
.LBB2436:
	li t5, 1
	j .LBB2437
.LBB2435:
	mv t5, zero
	j .LBB2437
.LBB2434:
	bne a4, zero, .LBB2436
	j .LBB2435
.LBB2437:
	beq t5, zero, .LBB2438
	j .LBB2439
.LBB2438:
	li t5, 1
	j .LBB2440
.LBB2439:
	mv t5, zero
	j .LBB2440
.LBB2440:
	bne t0, zero, .LBB2441
	j .LBB2442
.LBB2443:
	li t0, 1
	sd t0, -272(s0)
	j .LBB2444
.LBB2442:
	ld t0, -272(s0)
	mv t0, zero
	j .LBB2444
.LBB2441:
	bne t5, zero, .LBB2443
	j .LBB2442
.LBB2444:
	ld t0, -272(s0)
	bne t0, zero, .LBB2445
	j .LBB2446
.LBB2445:
	li t0, 1
	j .LBB2447
.LBB2448:
	mv t0, zero
	j .LBB2447
.LBB2446:
	j .LBB2448
.LBB2447:
	ld t0, -272(s0)
	bne t0, zero, .LBB2449
	j .LBB2450
.LBB2450:
	j .LBB2451
.LBB2449:
	j .LBB2450
.LBB2451:
	beq zero, zero, .LBB2452
	j .LBB2453
.LBB2452:
	li t0, 1
	sd t0, -144(s0)
	j .LBB2454
.LBB2453:
	ld t0, -144(s0)
	mv t0, zero
	j .LBB2454
.LBB2454:
	bne t0, zero, .LBB2455
	j .LBB2456
.LBB2457:
	li t5, 1
	j .LBB2458
.LBB2456:
	mv t5, zero
	j .LBB2458
.LBB2455:
	ld t0, -144(s0)
	bne t0, zero, .LBB2457
	j .LBB2456
.LBB2458:
	bne t4, zero, .LBB2459
	j .LBB2460
.LBB2461:
	li t0, 1
	j .LBB2462
.LBB2460:
	mv t0, zero
	j .LBB2462
.LBB2459:
	bne a4, zero, .LBB2461
	j .LBB2460
.LBB2462:
	ld t0, -272(s0)
	bne t0, zero, .LBB2463
	j .LBB2464
.LBB2464:
	j .LBB2465
.LBB2463:
	j .LBB2464
.LBB2465:
	bne t0, zero, .LBB2466
	j .LBB2467
.LBB2466:
	li t4, 1
	j .LBB2468
.LBB2469:
	mv t4, zero
	j .LBB2468
.LBB2467:
	bne zero, zero, .LBB2466
	j .LBB2469
.LBB2468:
	bne t3, zero, .LBB2470
	j .LBB2471
.LBB2470:
	li a4, 1
	j .LBB2472
.LBB2473:
	mv a4, zero
	j .LBB2472
.LBB2471:
	bne a3, zero, .LBB2470
	j .LBB2473
.LBB2472:
	bne t3, zero, .LBB2474
	j .LBB2475
.LBB2476:
	li t0, 1
	j .LBB2477
.LBB2475:
	mv t0, zero
	j .LBB2477
.LBB2474:
	bne a3, zero, .LBB2476
	j .LBB2475
.LBB2477:
	beq t0, zero, .LBB2478
	j .LBB2479
.LBB2478:
	li t0, 1
	j .LBB2480
.LBB2479:
	mv t0, zero
	j .LBB2480
.LBB2480:
	bne a4, zero, .LBB2481
	j .LBB2482
.LBB2483:
	li a4, 1
	j .LBB2484
.LBB2482:
	mv a4, zero
	j .LBB2484
.LBB2481:
	bne t0, zero, .LBB2483
	j .LBB2482
.LBB2484:
	bne a4, zero, .LBB2485
	j .LBB2486
.LBB2485:
	li t0, 1
	j .LBB2487
.LBB2488:
	mv t0, zero
	j .LBB2487
.LBB2486:
	bne t4, zero, .LBB2485
	j .LBB2488
.LBB2487:
	bne a4, zero, .LBB2489
	j .LBB2490
.LBB2491:
	li t0, 1
	sd t0, -152(s0)
	j .LBB2492
.LBB2490:
	ld t0, -152(s0)
	mv t0, zero
	j .LBB2492
.LBB2489:
	bne t4, zero, .LBB2491
	j .LBB2490
.LBB2492:
	ld t0, -152(s0)
	beq t0, zero, .LBB2493
	j .LBB2494
.LBB2493:
	li t0, 1
	sd t0, -32(s0)
	j .LBB2495
.LBB2494:
	ld t0, -32(s0)
	mv t0, zero
	j .LBB2495
.LBB2495:
	bne t0, zero, .LBB2496
	j .LBB2497
.LBB2498:
	li t0, 1
	sd t0, -168(s0)
	j .LBB2499
.LBB2497:
	ld t0, -168(s0)
	mv t0, zero
	j .LBB2499
.LBB2496:
	ld t0, -32(s0)
	bne t0, zero, .LBB2498
	j .LBB2497
.LBB2499:
	bne t3, zero, .LBB2500
	j .LBB2501
.LBB2502:
	li a3, 1
	j .LBB2503
.LBB2501:
	mv a3, zero
	j .LBB2503
.LBB2500:
	bne a3, zero, .LBB2502
	j .LBB2501
.LBB2503:
	bne a4, zero, .LBB2504
	j .LBB2505
.LBB2506:
	li t0, 1
	j .LBB2507
.LBB2505:
	mv t0, zero
	j .LBB2507
.LBB2504:
	bne t4, zero, .LBB2506
	j .LBB2505
.LBB2507:
	bne a3, zero, .LBB2508
	j .LBB2509
.LBB2508:
	li t4, 1
	j .LBB2510
.LBB2511:
	mv t4, zero
	j .LBB2510
.LBB2509:
	bne t0, zero, .LBB2508
	j .LBB2511
.LBB2510:
	bne s11, zero, .LBB2512
	j .LBB2513
.LBB2512:
	li a3, 1
	j .LBB2514
.LBB2515:
	mv a3, zero
	j .LBB2514
.LBB2513:
	ld t0, -80(s0)
	bne t0, zero, .LBB2512
	j .LBB2515
.LBB2514:
	bne s11, zero, .LBB2516
	j .LBB2517
.LBB2518:
	li t0, 1
	j .LBB2519
.LBB2517:
	mv t0, zero
	j .LBB2519
.LBB2516:
	ld t0, -80(s0)
	bne t0, zero, .LBB2518
	j .LBB2517
.LBB2519:
	beq t0, zero, .LBB2520
	j .LBB2521
.LBB2520:
	li t0, 1
	j .LBB2522
.LBB2521:
	mv t0, zero
	j .LBB2522
.LBB2522:
	bne a3, zero, .LBB2523
	j .LBB2524
.LBB2525:
	li a4, 1
	j .LBB2526
.LBB2524:
	mv a4, zero
	j .LBB2526
.LBB2523:
	bne t0, zero, .LBB2525
	j .LBB2524
.LBB2526:
	bne a4, zero, .LBB2527
	j .LBB2528
.LBB2527:
	li a3, 1
	j .LBB2529
.LBB2530:
	mv a3, zero
	j .LBB2529
.LBB2528:
	bne t4, zero, .LBB2527
	j .LBB2530
.LBB2529:
	bne a4, zero, .LBB2531
	j .LBB2532
.LBB2533:
	li t0, 1
	j .LBB2534
.LBB2532:
	mv t0, zero
	j .LBB2534
.LBB2531:
	bne t4, zero, .LBB2533
	j .LBB2532
.LBB2534:
	beq t0, zero, .LBB2535
	j .LBB2536
.LBB2535:
	li t0, 1
	j .LBB2537
.LBB2536:
	mv t0, zero
	j .LBB2537
.LBB2537:
	bne a3, zero, .LBB2538
	j .LBB2539
.LBB2540:
	li t3, 1
	j .LBB2541
.LBB2539:
	mv t3, zero
	j .LBB2541
.LBB2538:
	bne t0, zero, .LBB2540
	j .LBB2539
.LBB2541:
	bne s11, zero, .LBB2542
	j .LBB2543
.LBB2544:
	li a3, 1
	j .LBB2545
.LBB2543:
	mv a3, zero
	j .LBB2545
.LBB2542:
	ld t0, -80(s0)
	bne t0, zero, .LBB2544
	j .LBB2543
.LBB2545:
	bne a4, zero, .LBB2546
	j .LBB2547
.LBB2548:
	li t0, 1
	j .LBB2549
.LBB2547:
	mv t0, zero
	j .LBB2549
.LBB2546:
	bne t4, zero, .LBB2548
	j .LBB2547
.LBB2549:
	bne a3, zero, .LBB2550
	j .LBB2551
.LBB2550:
	li a4, 1
	j .LBB2552
.LBB2553:
	mv a4, zero
	j .LBB2552
.LBB2551:
	bne t0, zero, .LBB2550
	j .LBB2553
.LBB2552:
	bne s10, zero, .LBB2554
	j .LBB2555
.LBB2554:
	li a3, 1
	j .LBB2556
.LBB2557:
	mv a3, zero
	j .LBB2556
.LBB2555:
	bne a2, zero, .LBB2554
	j .LBB2557
.LBB2556:
	bne s10, zero, .LBB2558
	j .LBB2559
.LBB2560:
	li t0, 1
	j .LBB2561
.LBB2559:
	mv t0, zero
	j .LBB2561
.LBB2558:
	bne a2, zero, .LBB2560
	j .LBB2559
.LBB2561:
	beq t0, zero, .LBB2562
	j .LBB2563
.LBB2562:
	li t0, 1
	j .LBB2564
.LBB2563:
	mv t0, zero
	j .LBB2564
.LBB2564:
	bne a3, zero, .LBB2565
	j .LBB2566
.LBB2567:
	li a3, 1
	j .LBB2568
.LBB2566:
	mv a3, zero
	j .LBB2568
.LBB2565:
	bne t0, zero, .LBB2567
	j .LBB2566
.LBB2568:
	bne a3, zero, .LBB2569
	j .LBB2570
.LBB2569:
	li s11, 1
	j .LBB2571
.LBB2572:
	mv s11, zero
	j .LBB2571
.LBB2570:
	bne a4, zero, .LBB2569
	j .LBB2572
.LBB2571:
	bne a3, zero, .LBB2573
	j .LBB2574
.LBB2575:
	li t0, 1
	j .LBB2576
.LBB2574:
	mv t0, zero
	j .LBB2576
.LBB2573:
	bne a4, zero, .LBB2575
	j .LBB2574
.LBB2576:
	beq t0, zero, .LBB2577
	j .LBB2578
.LBB2577:
	li t0, 1
	j .LBB2579
.LBB2578:
	mv t0, zero
	j .LBB2579
.LBB2579:
	bne s11, zero, .LBB2580
	j .LBB2581
.LBB2582:
	li s11, 1
	j .LBB2583
.LBB2581:
	mv s11, zero
	j .LBB2583
.LBB2580:
	bne t0, zero, .LBB2582
	j .LBB2581
.LBB2583:
	bne s10, zero, .LBB2584
	j .LBB2585
.LBB2586:
	li t0, 1
	j .LBB2587
.LBB2585:
	mv t0, zero
	j .LBB2587
.LBB2584:
	bne a2, zero, .LBB2586
	j .LBB2585
.LBB2587:
	bne a3, zero, .LBB2588
	j .LBB2589
.LBB2590:
	li a2, 1
	j .LBB2591
.LBB2589:
	mv a2, zero
	j .LBB2591
.LBB2588:
	bne a4, zero, .LBB2590
	j .LBB2589
.LBB2591:
	bne t0, zero, .LBB2592
	j .LBB2593
.LBB2592:
	li a3, 1
	j .LBB2594
.LBB2595:
	mv a3, zero
	j .LBB2594
.LBB2593:
	bne a2, zero, .LBB2592
	j .LBB2595
.LBB2594:
	bne s9, zero, .LBB2596
	j .LBB2597
.LBB2596:
	li t0, 1
	j .LBB2598
.LBB2599:
	mv t0, zero
	j .LBB2598
.LBB2597:
	ld t0, -88(s0)
	bne t0, zero, .LBB2596
	j .LBB2599
.LBB2598:
	bne s9, zero, .LBB2600
	j .LBB2601
.LBB2602:
	li a2, 1
	j .LBB2603
.LBB2601:
	mv a2, zero
	j .LBB2603
.LBB2600:
	ld t0, -88(s0)
	bne t0, zero, .LBB2602
	j .LBB2601
.LBB2603:
	beq a2, zero, .LBB2604
	j .LBB2605
.LBB2604:
	li a2, 1
	j .LBB2606
.LBB2605:
	mv a2, zero
	j .LBB2606
.LBB2606:
	bne t0, zero, .LBB2607
	j .LBB2608
.LBB2609:
	li a2, 1
	j .LBB2610
.LBB2608:
	mv a2, zero
	j .LBB2610
.LBB2607:
	bne a2, zero, .LBB2609
	j .LBB2608
.LBB2610:
	bne a2, zero, .LBB2611
	j .LBB2612
.LBB2611:
	li a4, 1
	j .LBB2613
.LBB2614:
	mv a4, zero
	j .LBB2613
.LBB2612:
	bne a3, zero, .LBB2611
	j .LBB2614
.LBB2613:
	bne a2, zero, .LBB2615
	j .LBB2616
.LBB2617:
	li t0, 1
	j .LBB2618
.LBB2616:
	mv t0, zero
	j .LBB2618
.LBB2615:
	bne a3, zero, .LBB2617
	j .LBB2616
.LBB2618:
	beq t0, zero, .LBB2619
	j .LBB2620
.LBB2619:
	li t0, 1
	j .LBB2621
.LBB2620:
	mv t0, zero
	j .LBB2621
.LBB2621:
	bne a4, zero, .LBB2622
	j .LBB2623
.LBB2624:
	li s10, 1
	j .LBB2625
.LBB2623:
	mv s10, zero
	j .LBB2625
.LBB2622:
	bne t0, zero, .LBB2624
	j .LBB2623
.LBB2625:
	bne s9, zero, .LBB2626
	j .LBB2627
.LBB2628:
	li a4, 1
	j .LBB2629
.LBB2627:
	mv a4, zero
	j .LBB2629
.LBB2626:
	ld t0, -88(s0)
	bne t0, zero, .LBB2628
	j .LBB2627
.LBB2629:
	bne a2, zero, .LBB2630
	j .LBB2631
.LBB2632:
	li t0, 1
	j .LBB2633
.LBB2631:
	mv t0, zero
	j .LBB2633
.LBB2630:
	bne a3, zero, .LBB2632
	j .LBB2631
.LBB2633:
	bne a4, zero, .LBB2634
	j .LBB2635
.LBB2634:
	li a4, 1
	j .LBB2636
.LBB2637:
	mv a4, zero
	j .LBB2636
.LBB2635:
	bne t0, zero, .LBB2634
	j .LBB2637
.LBB2636:
	bne s8, zero, .LBB2638
	j .LBB2639
.LBB2638:
	li a2, 1
	j .LBB2640
.LBB2641:
	mv a2, zero
	j .LBB2640
.LBB2639:
	bne a1, zero, .LBB2638
	j .LBB2641
.LBB2640:
	bne s8, zero, .LBB2642
	j .LBB2643
.LBB2644:
	li t0, 1
	j .LBB2645
.LBB2643:
	mv t0, zero
	j .LBB2645
.LBB2642:
	bne a1, zero, .LBB2644
	j .LBB2643
.LBB2645:
	beq t0, zero, .LBB2646
	j .LBB2647
.LBB2646:
	li t0, 1
	j .LBB2648
.LBB2647:
	mv t0, zero
	j .LBB2648
.LBB2648:
	bne a2, zero, .LBB2649
	j .LBB2650
.LBB2651:
	li s9, 1
	j .LBB2652
.LBB2650:
	mv s9, zero
	j .LBB2652
.LBB2649:
	bne t0, zero, .LBB2651
	j .LBB2650
.LBB2652:
	bne s9, zero, .LBB2653
	j .LBB2654
.LBB2653:
	li a2, 1
	j .LBB2655
.LBB2656:
	mv a2, zero
	j .LBB2655
.LBB2654:
	bne a4, zero, .LBB2653
	j .LBB2656
.LBB2655:
	bne s9, zero, .LBB2657
	j .LBB2658
.LBB2659:
	li t0, 1
	j .LBB2660
.LBB2658:
	mv t0, zero
	j .LBB2660
.LBB2657:
	bne a4, zero, .LBB2659
	j .LBB2658
.LBB2660:
	beq t0, zero, .LBB2661
	j .LBB2662
.LBB2661:
	li t0, 1
	j .LBB2663
.LBB2662:
	mv t0, zero
	j .LBB2663
.LBB2663:
	bne a2, zero, .LBB2664
	j .LBB2665
.LBB2666:
	li a3, 1
	j .LBB2667
.LBB2665:
	mv a3, zero
	j .LBB2667
.LBB2664:
	bne t0, zero, .LBB2666
	j .LBB2665
.LBB2667:
	bne s8, zero, .LBB2668
	j .LBB2669
.LBB2670:
	li a1, 1
	j .LBB2671
.LBB2669:
	mv a1, zero
	j .LBB2671
.LBB2668:
	bne a1, zero, .LBB2670
	j .LBB2669
.LBB2671:
	bne s9, zero, .LBB2672
	j .LBB2673
.LBB2674:
	li t0, 1
	j .LBB2675
.LBB2673:
	mv t0, zero
	j .LBB2675
.LBB2672:
	bne a4, zero, .LBB2674
	j .LBB2673
.LBB2675:
	bne a1, zero, .LBB2676
	j .LBB2677
.LBB2676:
	li a2, 1
	j .LBB2678
.LBB2679:
	mv a2, zero
	j .LBB2678
.LBB2677:
	bne t0, zero, .LBB2676
	j .LBB2679
.LBB2678:
	bne s7, zero, .LBB2680
	j .LBB2681
.LBB2680:
	li a1, 1
	j .LBB2682
.LBB2683:
	mv a1, zero
	j .LBB2682
.LBB2681:
	bne a0, zero, .LBB2680
	j .LBB2683
.LBB2682:
	bne s7, zero, .LBB2684
	j .LBB2685
.LBB2686:
	li t0, 1
	j .LBB2687
.LBB2685:
	mv t0, zero
	j .LBB2687
.LBB2684:
	bne a0, zero, .LBB2686
	j .LBB2685
.LBB2687:
	beq t0, zero, .LBB2688
	j .LBB2689
.LBB2688:
	li t0, 1
	j .LBB2690
.LBB2689:
	mv t0, zero
	j .LBB2690
.LBB2690:
	bne a1, zero, .LBB2691
	j .LBB2692
.LBB2693:
	li a4, 1
	j .LBB2694
.LBB2692:
	mv a4, zero
	j .LBB2694
.LBB2691:
	bne t0, zero, .LBB2693
	j .LBB2692
.LBB2694:
	bne a4, zero, .LBB2695
	j .LBB2696
.LBB2695:
	li a1, 1
	j .LBB2697
.LBB2698:
	mv a1, zero
	j .LBB2697
.LBB2696:
	bne a2, zero, .LBB2695
	j .LBB2698
.LBB2697:
	bne a4, zero, .LBB2699
	j .LBB2700
.LBB2701:
	li t0, 1
	j .LBB2702
.LBB2700:
	mv t0, zero
	j .LBB2702
.LBB2699:
	bne a2, zero, .LBB2701
	j .LBB2700
.LBB2702:
	beq t0, zero, .LBB2703
	j .LBB2704
.LBB2703:
	li t0, 1
	j .LBB2705
.LBB2704:
	mv t0, zero
	j .LBB2705
.LBB2705:
	bne a1, zero, .LBB2706
	j .LBB2707
.LBB2708:
	li a1, 1
	j .LBB2709
.LBB2707:
	mv a1, zero
	j .LBB2709
.LBB2706:
	bne t0, zero, .LBB2708
	j .LBB2707
.LBB2709:
	bne s7, zero, .LBB2710
	j .LBB2711
.LBB2712:
	li t0, 1
	j .LBB2713
.LBB2711:
	mv t0, zero
	j .LBB2713
.LBB2710:
	bne a0, zero, .LBB2712
	j .LBB2711
.LBB2713:
	bne a4, zero, .LBB2714
	j .LBB2715
.LBB2716:
	li a0, 1
	j .LBB2717
.LBB2715:
	mv a0, zero
	j .LBB2717
.LBB2714:
	bne a2, zero, .LBB2716
	j .LBB2715
.LBB2717:
	bne t0, zero, .LBB2718
	j .LBB2719
.LBB2718:
	li a2, 1
	j .LBB2720
.LBB2721:
	mv a2, zero
	j .LBB2720
.LBB2719:
	bne a0, zero, .LBB2718
	j .LBB2721
.LBB2720:
	bne s6, zero, .LBB2722
	j .LBB2723
.LBB2722:
	li a0, 1
	j .LBB2724
.LBB2725:
	mv a0, zero
	j .LBB2724
.LBB2723:
	ld t0, -96(s0)
	bne t0, zero, .LBB2722
	j .LBB2725
.LBB2724:
	bne s6, zero, .LBB2726
	j .LBB2727
.LBB2728:
	li t0, 1
	j .LBB2729
.LBB2727:
	mv t0, zero
	j .LBB2729
.LBB2726:
	ld t0, -96(s0)
	bne t0, zero, .LBB2728
	j .LBB2727
.LBB2729:
	beq t0, zero, .LBB2730
	j .LBB2731
.LBB2730:
	li t0, 1
	j .LBB2732
.LBB2731:
	mv t0, zero
	j .LBB2732
.LBB2732:
	bne a0, zero, .LBB2733
	j .LBB2734
.LBB2735:
	li a0, 1
	j .LBB2736
.LBB2734:
	mv a0, zero
	j .LBB2736
.LBB2733:
	bne t0, zero, .LBB2735
	j .LBB2734
.LBB2736:
	bne a0, zero, .LBB2737
	j .LBB2738
.LBB2737:
	li a4, 1
	j .LBB2739
.LBB2740:
	mv a4, zero
	j .LBB2739
.LBB2738:
	bne a2, zero, .LBB2737
	j .LBB2740
.LBB2739:
	bne a0, zero, .LBB2741
	j .LBB2742
.LBB2743:
	li t0, 1
	j .LBB2744
.LBB2742:
	mv t0, zero
	j .LBB2744
.LBB2741:
	bne a2, zero, .LBB2743
	j .LBB2742
.LBB2744:
	beq t0, zero, .LBB2745
	j .LBB2746
.LBB2745:
	li t0, 1
	j .LBB2747
.LBB2746:
	mv t0, zero
	j .LBB2747
.LBB2747:
	bne a4, zero, .LBB2748
	j .LBB2749
.LBB2750:
	li s7, 1
	j .LBB2751
.LBB2749:
	mv s7, zero
	j .LBB2751
.LBB2748:
	bne t0, zero, .LBB2750
	j .LBB2749
.LBB2751:
	bne s6, zero, .LBB2752
	j .LBB2753
.LBB2754:
	li t0, 1
	j .LBB2755
.LBB2753:
	mv t0, zero
	j .LBB2755
.LBB2752:
	ld t0, -96(s0)
	bne t0, zero, .LBB2754
	j .LBB2753
.LBB2755:
	bne a0, zero, .LBB2756
	j .LBB2757
.LBB2758:
	li a0, 1
	j .LBB2759
.LBB2757:
	mv a0, zero
	j .LBB2759
.LBB2756:
	bne a2, zero, .LBB2758
	j .LBB2757
.LBB2759:
	bne t0, zero, .LBB2760
	j .LBB2761
.LBB2760:
	li a2, 1
	j .LBB2762
.LBB2763:
	mv a2, zero
	j .LBB2762
.LBB2761:
	bne a0, zero, .LBB2760
	j .LBB2763
.LBB2762:
	bne s5, zero, .LBB2764
	j .LBB2765
.LBB2764:
	li a0, 1
	j .LBB2766
.LBB2767:
	mv a0, zero
	j .LBB2766
.LBB2765:
	ld t0, -104(s0)
	bne t0, zero, .LBB2764
	j .LBB2767
.LBB2766:
	bne s5, zero, .LBB2768
	j .LBB2769
.LBB2770:
	li t0, 1
	j .LBB2771
.LBB2769:
	mv t0, zero
	j .LBB2771
.LBB2768:
	ld t0, -104(s0)
	bne t0, zero, .LBB2770
	j .LBB2769
.LBB2771:
	beq t0, zero, .LBB2772
	j .LBB2773
.LBB2772:
	li t0, 1
	j .LBB2774
.LBB2773:
	mv t0, zero
	j .LBB2774
.LBB2774:
	bne a0, zero, .LBB2775
	j .LBB2776
.LBB2777:
	li a4, 1
	j .LBB2778
.LBB2776:
	mv a4, zero
	j .LBB2778
.LBB2775:
	bne t0, zero, .LBB2777
	j .LBB2776
.LBB2778:
	bne a4, zero, .LBB2779
	j .LBB2780
.LBB2779:
	li a0, 1
	j .LBB2781
.LBB2782:
	mv a0, zero
	j .LBB2781
.LBB2780:
	bne a2, zero, .LBB2779
	j .LBB2782
.LBB2781:
	bne a4, zero, .LBB2783
	j .LBB2784
.LBB2785:
	li t0, 1
	j .LBB2786
.LBB2784:
	mv t0, zero
	j .LBB2786
.LBB2783:
	bne a2, zero, .LBB2785
	j .LBB2784
.LBB2786:
	beq t0, zero, .LBB2787
	j .LBB2788
.LBB2787:
	li t0, 1
	j .LBB2789
.LBB2788:
	mv t0, zero
	j .LBB2789
.LBB2789:
	bne a0, zero, .LBB2790
	j .LBB2791
.LBB2792:
	li s6, 1
	j .LBB2793
.LBB2791:
	mv s6, zero
	j .LBB2793
.LBB2790:
	bne t0, zero, .LBB2792
	j .LBB2791
.LBB2793:
	bne s5, zero, .LBB2794
	j .LBB2795
.LBB2796:
	li t0, 1
	j .LBB2797
.LBB2795:
	mv t0, zero
	j .LBB2797
.LBB2794:
	ld t0, -104(s0)
	bne t0, zero, .LBB2796
	j .LBB2795
.LBB2797:
	bne a4, zero, .LBB2798
	j .LBB2799
.LBB2800:
	li a0, 1
	j .LBB2801
.LBB2799:
	mv a0, zero
	j .LBB2801
.LBB2798:
	bne a2, zero, .LBB2800
	j .LBB2799
.LBB2801:
	bne t0, zero, .LBB2802
	j .LBB2803
.LBB2802:
	li a0, 1
	j .LBB2804
.LBB2805:
	mv a0, zero
	j .LBB2804
.LBB2803:
	bne a0, zero, .LBB2802
	j .LBB2805
.LBB2804:
	bne s4, zero, .LBB2806
	j .LBB2807
.LBB2806:
	li a2, 1
	j .LBB2808
.LBB2809:
	mv a2, zero
	j .LBB2808
.LBB2807:
	bne s1, zero, .LBB2806
	j .LBB2809
.LBB2808:
	bne s4, zero, .LBB2810
	j .LBB2811
.LBB2812:
	li t0, 1
	j .LBB2813
.LBB2811:
	mv t0, zero
	j .LBB2813
.LBB2810:
	bne s1, zero, .LBB2812
	j .LBB2811
.LBB2813:
	beq t0, zero, .LBB2814
	j .LBB2815
.LBB2814:
	li t0, 1
	j .LBB2816
.LBB2815:
	mv t0, zero
	j .LBB2816
.LBB2816:
	bne a2, zero, .LBB2817
	j .LBB2818
.LBB2819:
	li a4, 1
	j .LBB2820
.LBB2818:
	mv a4, zero
	j .LBB2820
.LBB2817:
	bne t0, zero, .LBB2819
	j .LBB2818
.LBB2820:
	bne a4, zero, .LBB2821
	j .LBB2822
.LBB2821:
	li a2, 1
	j .LBB2823
.LBB2824:
	mv a2, zero
	j .LBB2823
.LBB2822:
	bne a0, zero, .LBB2821
	j .LBB2824
.LBB2823:
	bne a4, zero, .LBB2825
	j .LBB2826
.LBB2827:
	li t0, 1
	j .LBB2828
.LBB2826:
	mv t0, zero
	j .LBB2828
.LBB2825:
	bne a0, zero, .LBB2827
	j .LBB2826
.LBB2828:
	beq t0, zero, .LBB2829
	j .LBB2830
.LBB2829:
	li t0, 1
	j .LBB2831
.LBB2830:
	mv t0, zero
	j .LBB2831
.LBB2831:
	bne a2, zero, .LBB2832
	j .LBB2833
.LBB2834:
	li s5, 1
	j .LBB2835
.LBB2833:
	mv s5, zero
	j .LBB2835
.LBB2832:
	bne t0, zero, .LBB2834
	j .LBB2833
.LBB2835:
	bne s4, zero, .LBB2836
	j .LBB2837
.LBB2838:
	li t0, 1
	j .LBB2839
.LBB2837:
	mv t0, zero
	j .LBB2839
.LBB2836:
	bne s1, zero, .LBB2838
	j .LBB2837
.LBB2839:
	bne a4, zero, .LBB2840
	j .LBB2841
.LBB2842:
	li s1, 1
	j .LBB2843
.LBB2841:
	mv s1, zero
	j .LBB2843
.LBB2840:
	bne a0, zero, .LBB2842
	j .LBB2841
.LBB2843:
	bne t0, zero, .LBB2844
	j .LBB2845
.LBB2844:
	li s1, 1
	j .LBB2846
.LBB2847:
	mv s1, zero
	j .LBB2846
.LBB2845:
	bne s1, zero, .LBB2844
	j .LBB2847
.LBB2846:
	bne s3, zero, .LBB2848
	j .LBB2849
.LBB2848:
	li a0, 1
	j .LBB2850
.LBB2851:
	mv a0, zero
	j .LBB2850
.LBB2849:
	ld t0, -112(s0)
	bne t0, zero, .LBB2848
	j .LBB2851
.LBB2850:
	bne s3, zero, .LBB2852
	j .LBB2853
.LBB2854:
	li t0, 1
	j .LBB2855
.LBB2853:
	mv t0, zero
	j .LBB2855
.LBB2852:
	ld t0, -112(s0)
	bne t0, zero, .LBB2854
	j .LBB2853
.LBB2855:
	beq t0, zero, .LBB2856
	j .LBB2857
.LBB2856:
	li t0, 1
	j .LBB2858
.LBB2857:
	mv t0, zero
	j .LBB2858
.LBB2858:
	bne a0, zero, .LBB2859
	j .LBB2860
.LBB2861:
	li a2, 1
	j .LBB2862
.LBB2860:
	mv a2, zero
	j .LBB2862
.LBB2859:
	bne t0, zero, .LBB2861
	j .LBB2860
.LBB2862:
	bne a2, zero, .LBB2863
	j .LBB2864
.LBB2863:
	li t0, 1
	j .LBB2865
.LBB2866:
	mv t0, zero
	j .LBB2865
.LBB2864:
	bne s1, zero, .LBB2863
	j .LBB2866
.LBB2865:
	bne a2, zero, .LBB2867
	j .LBB2868
.LBB2869:
	li a0, 1
	j .LBB2870
.LBB2868:
	mv a0, zero
	j .LBB2870
.LBB2867:
	bne s1, zero, .LBB2869
	j .LBB2868
.LBB2870:
	beq a0, zero, .LBB2871
	j .LBB2872
.LBB2871:
	li a0, 1
	j .LBB2873
.LBB2872:
	mv a0, zero
	j .LBB2873
.LBB2873:
	bne t0, zero, .LBB2874
	j .LBB2875
.LBB2876:
	li a4, 1
	j .LBB2877
.LBB2875:
	mv a4, zero
	j .LBB2877
.LBB2874:
	bne a0, zero, .LBB2876
	j .LBB2875
.LBB2877:
	bne s3, zero, .LBB2878
	j .LBB2879
.LBB2880:
	li t0, 1
	j .LBB2881
.LBB2879:
	mv t0, zero
	j .LBB2881
.LBB2878:
	ld t0, -112(s0)
	bne t0, zero, .LBB2880
	j .LBB2879
.LBB2881:
	bne a2, zero, .LBB2882
	j .LBB2883
.LBB2884:
	li s1, 1
	j .LBB2885
.LBB2883:
	mv s1, zero
	j .LBB2885
.LBB2882:
	bne s1, zero, .LBB2884
	j .LBB2883
.LBB2885:
	bne t0, zero, .LBB2886
	j .LBB2887
.LBB2886:
	li t0, 1
	j .LBB2888
.LBB2889:
	mv t0, zero
	j .LBB2888
.LBB2887:
	bne s1, zero, .LBB2886
	j .LBB2889
.LBB2888:
	bne s2, zero, .LBB2890
	j .LBB2891
.LBB2890:
	li a0, 1
	j .LBB2892
.LBB2893:
	mv a0, zero
	j .LBB2892
.LBB2891:
	ld t0, -120(s0)
	bne t0, zero, .LBB2890
	j .LBB2893
.LBB2892:
	bne s2, zero, .LBB2894
	j .LBB2895
.LBB2896:
	li s1, 1
	j .LBB2897
.LBB2895:
	mv s1, zero
	j .LBB2897
.LBB2894:
	ld t0, -120(s0)
	bne t0, zero, .LBB2896
	j .LBB2895
.LBB2897:
	beq s1, zero, .LBB2898
	j .LBB2899
.LBB2898:
	li s1, 1
	j .LBB2900
.LBB2899:
	mv s1, zero
	j .LBB2900
.LBB2900:
	bne a0, zero, .LBB2901
	j .LBB2902
.LBB2903:
	li a0, 1
	j .LBB2904
.LBB2902:
	mv a0, zero
	j .LBB2904
.LBB2901:
	bne s1, zero, .LBB2903
	j .LBB2902
.LBB2904:
	bne a0, zero, .LBB2905
	j .LBB2906
.LBB2905:
	li a2, 1
	j .LBB2907
.LBB2908:
	mv a2, zero
	j .LBB2907
.LBB2906:
	bne t0, zero, .LBB2905
	j .LBB2908
.LBB2907:
	bne a0, zero, .LBB2909
	j .LBB2910
.LBB2911:
	li s1, 1
	j .LBB2912
.LBB2910:
	mv s1, zero
	j .LBB2912
.LBB2909:
	bne t0, zero, .LBB2911
	j .LBB2910
.LBB2912:
	beq s1, zero, .LBB2913
	j .LBB2914
.LBB2913:
	li s1, 1
	j .LBB2915
.LBB2914:
	mv s1, zero
	j .LBB2915
.LBB2915:
	bne a2, zero, .LBB2916
	j .LBB2917
.LBB2918:
	li a2, 1
	j .LBB2919
.LBB2917:
	mv a2, zero
	j .LBB2919
.LBB2916:
	bne s1, zero, .LBB2918
	j .LBB2917
.LBB2919:
	bne s2, zero, .LBB2920
	j .LBB2921
.LBB2922:
	li s1, 1
	j .LBB2923
.LBB2921:
	mv s1, zero
	j .LBB2923
.LBB2920:
	ld t0, -120(s0)
	bne t0, zero, .LBB2922
	j .LBB2921
.LBB2923:
	bne a0, zero, .LBB2924
	j .LBB2925
.LBB2926:
	li t0, 1
	j .LBB2927
.LBB2925:
	mv t0, zero
	j .LBB2927
.LBB2924:
	bne t0, zero, .LBB2926
	j .LBB2925
.LBB2927:
	bne s1, zero, .LBB2928
	j .LBB2929
.LBB2928:
	li s3, 1
	j .LBB2930
.LBB2931:
	mv s3, zero
	j .LBB2930
.LBB2929:
	bne t0, zero, .LBB2928
	j .LBB2931
.LBB2930:
	bne a7, zero, .LBB2932
	j .LBB2933
.LBB2932:
	li s1, 1
	j .LBB2934
.LBB2935:
	mv s1, zero
	j .LBB2934
.LBB2933:
	bne t2, zero, .LBB2932
	j .LBB2935
.LBB2934:
	bne a7, zero, .LBB2936
	j .LBB2937
.LBB2938:
	li t0, 1
	j .LBB2939
.LBB2937:
	mv t0, zero
	j .LBB2939
.LBB2936:
	bne t2, zero, .LBB2938
	j .LBB2937
.LBB2939:
	beq t0, zero, .LBB2940
	j .LBB2941
.LBB2940:
	li t0, 1
	j .LBB2942
.LBB2941:
	mv t0, zero
	j .LBB2942
.LBB2942:
	bne s1, zero, .LBB2943
	j .LBB2944
.LBB2945:
	li s2, 1
	j .LBB2946
.LBB2944:
	mv s2, zero
	j .LBB2946
.LBB2943:
	bne t0, zero, .LBB2945
	j .LBB2944
.LBB2946:
	bne s2, zero, .LBB2947
	j .LBB2948
.LBB2947:
	li s1, 1
	j .LBB2949
.LBB2950:
	mv s1, zero
	j .LBB2949
.LBB2948:
	bne s3, zero, .LBB2947
	j .LBB2950
.LBB2949:
	bne s2, zero, .LBB2951
	j .LBB2952
.LBB2953:
	li t0, 1
	j .LBB2954
.LBB2952:
	mv t0, zero
	j .LBB2954
.LBB2951:
	bne s3, zero, .LBB2953
	j .LBB2952
.LBB2954:
	beq t0, zero, .LBB2955
	j .LBB2956
.LBB2955:
	li t0, 1
	j .LBB2957
.LBB2956:
	mv t0, zero
	j .LBB2957
.LBB2957:
	bne s1, zero, .LBB2958
	j .LBB2959
.LBB2960:
	li a0, 1
	j .LBB2961
.LBB2959:
	mv a0, zero
	j .LBB2961
.LBB2958:
	bne t0, zero, .LBB2960
	j .LBB2959
.LBB2961:
	bne a7, zero, .LBB2962
	j .LBB2963
.LBB2964:
	li t2, 1
	j .LBB2965
.LBB2963:
	mv t2, zero
	j .LBB2965
.LBB2962:
	bne t2, zero, .LBB2964
	j .LBB2963
.LBB2965:
	bne s2, zero, .LBB2966
	j .LBB2967
.LBB2968:
	li t0, 1
	j .LBB2969
.LBB2967:
	mv t0, zero
	j .LBB2969
.LBB2966:
	bne s3, zero, .LBB2968
	j .LBB2967
.LBB2969:
	bne t2, zero, .LBB2970
	j .LBB2971
.LBB2970:
	li a7, 1
	j .LBB2972
.LBB2973:
	mv a7, zero
	j .LBB2972
.LBB2971:
	bne t0, zero, .LBB2970
	j .LBB2973
.LBB2972:
	bne a6, zero, .LBB2974
	j .LBB2975
.LBB2974:
	li t2, 1
	j .LBB2976
.LBB2977:
	mv t2, zero
	j .LBB2976
.LBB2975:
	ld t0, -128(s0)
	bne t0, zero, .LBB2974
	j .LBB2977
.LBB2976:
	bne a6, zero, .LBB2978
	j .LBB2979
.LBB2980:
	li t0, 1
	j .LBB2981
.LBB2979:
	mv t0, zero
	j .LBB2981
.LBB2978:
	ld t0, -128(s0)
	bne t0, zero, .LBB2980
	j .LBB2979
.LBB2981:
	beq t0, zero, .LBB2982
	j .LBB2983
.LBB2982:
	li t0, 1
	j .LBB2984
.LBB2983:
	mv t0, zero
	j .LBB2984
.LBB2984:
	bne t2, zero, .LBB2985
	j .LBB2986
.LBB2987:
	li t2, 1
	j .LBB2988
.LBB2986:
	mv t2, zero
	j .LBB2988
.LBB2985:
	bne t0, zero, .LBB2987
	j .LBB2986
.LBB2988:
	bne t2, zero, .LBB2989
	j .LBB2990
.LBB2989:
	li s1, 1
	j .LBB2991
.LBB2992:
	mv s1, zero
	j .LBB2991
.LBB2990:
	bne a7, zero, .LBB2989
	j .LBB2992
.LBB2991:
	bne t2, zero, .LBB2993
	j .LBB2994
.LBB2995:
	li t0, 1
	j .LBB2996
.LBB2994:
	mv t0, zero
	j .LBB2996
.LBB2993:
	bne a7, zero, .LBB2995
	j .LBB2994
.LBB2996:
	beq t0, zero, .LBB2997
	j .LBB2998
.LBB2997:
	li t0, 1
	j .LBB2999
.LBB2998:
	mv t0, zero
	j .LBB2999
.LBB2999:
	bne s1, zero, .LBB3000
	j .LBB3001
.LBB3002:
	li s1, 1
	j .LBB3003
.LBB3001:
	mv s1, zero
	j .LBB3003
.LBB3000:
	bne t0, zero, .LBB3002
	j .LBB3001
.LBB3003:
	bne a6, zero, .LBB3004
	j .LBB3005
.LBB3006:
	li t0, 1
	j .LBB3007
.LBB3005:
	mv t0, zero
	j .LBB3007
.LBB3004:
	ld t0, -128(s0)
	bne t0, zero, .LBB3006
	j .LBB3005
.LBB3007:
	bne t2, zero, .LBB3008
	j .LBB3009
.LBB3010:
	li t2, 1
	j .LBB3011
.LBB3009:
	mv t2, zero
	j .LBB3011
.LBB3008:
	bne a7, zero, .LBB3010
	j .LBB3009
.LBB3011:
	bne t0, zero, .LBB3012
	j .LBB3013
.LBB3012:
	li a6, 1
	j .LBB3014
.LBB3015:
	mv a6, zero
	j .LBB3014
.LBB3013:
	bne t2, zero, .LBB3012
	j .LBB3015
.LBB3014:
	bne a5, zero, .LBB3016
	j .LBB3017
.LBB3016:
	li t0, 1
	j .LBB3018
.LBB3019:
	mv t0, zero
	j .LBB3018
.LBB3017:
	bne t1, zero, .LBB3016
	j .LBB3019
.LBB3018:
	bne a5, zero, .LBB3020
	j .LBB3021
.LBB3022:
	li t2, 1
	j .LBB3023
.LBB3021:
	mv t2, zero
	j .LBB3023
.LBB3020:
	bne t1, zero, .LBB3022
	j .LBB3021
.LBB3023:
	beq t2, zero, .LBB3024
	j .LBB3025
.LBB3024:
	li t2, 1
	j .LBB3026
.LBB3025:
	mv t2, zero
	j .LBB3026
.LBB3026:
	bne t0, zero, .LBB3027
	j .LBB3028
.LBB3029:
	li t2, 1
	j .LBB3030
.LBB3028:
	mv t2, zero
	j .LBB3030
.LBB3027:
	bne t2, zero, .LBB3029
	j .LBB3028
.LBB3030:
	bne t2, zero, .LBB3031
	j .LBB3032
.LBB3031:
	li a7, 1
	j .LBB3033
.LBB3034:
	mv a7, zero
	j .LBB3033
.LBB3032:
	bne a6, zero, .LBB3031
	j .LBB3034
.LBB3033:
	bne t2, zero, .LBB3035
	j .LBB3036
.LBB3037:
	li t0, 1
	j .LBB3038
.LBB3036:
	mv t0, zero
	j .LBB3038
.LBB3035:
	bne a6, zero, .LBB3037
	j .LBB3036
.LBB3038:
	beq t0, zero, .LBB3039
	j .LBB3040
.LBB3039:
	li t0, 1
	j .LBB3041
.LBB3040:
	mv t0, zero
	j .LBB3041
.LBB3041:
	bne a7, zero, .LBB3042
	j .LBB3043
.LBB3044:
	li t0, 1
	j .LBB3045
.LBB3043:
	mv t0, zero
	j .LBB3045
.LBB3042:
	bne t0, zero, .LBB3044
	j .LBB3043
.LBB3045:
	bne a5, zero, .LBB3046
	j .LBB3047
.LBB3048:
	li a5, 1
	j .LBB3049
.LBB3047:
	mv a5, zero
	j .LBB3049
.LBB3046:
	bne t1, zero, .LBB3048
	j .LBB3047
.LBB3049:
	bne t2, zero, .LBB3050
	j .LBB3051
.LBB3052:
	li t1, 1
	j .LBB3053
.LBB3051:
	mv t1, zero
	j .LBB3053
.LBB3050:
	bne a6, zero, .LBB3052
	j .LBB3051
.LBB3053:
	bne a5, zero, .LBB3054
	j .LBB3055
.LBB3054:
	li a6, 1
	j .LBB3056
.LBB3057:
	mv a6, zero
	j .LBB3056
.LBB3055:
	bne t1, zero, .LBB3054
	j .LBB3057
.LBB3056:
	ld t0, -72(s0)
	bne t0, zero, .LBB3058
	j .LBB3059
.LBB3058:
	li t2, 1
	j .LBB3060
.LBB3061:
	mv t2, zero
	j .LBB3060
.LBB3059:
	ld t0, -136(s0)
	bne t0, zero, .LBB3058
	j .LBB3061
.LBB3060:
	ld t0, -72(s0)
	bne t0, zero, .LBB3062
	j .LBB3063
.LBB3064:
	li t1, 1
	j .LBB3065
.LBB3063:
	mv t1, zero
	j .LBB3065
.LBB3062:
	ld t0, -136(s0)
	bne t0, zero, .LBB3064
	j .LBB3063
.LBB3065:
	beq t1, zero, .LBB3066
	j .LBB3067
.LBB3066:
	li t1, 1
	j .LBB3068
.LBB3067:
	mv t1, zero
	j .LBB3068
.LBB3068:
	bne t2, zero, .LBB3069
	j .LBB3070
.LBB3071:
	li t1, 1
	j .LBB3072
.LBB3070:
	mv t1, zero
	j .LBB3072
.LBB3069:
	bne t1, zero, .LBB3071
	j .LBB3070
.LBB3072:
	bne t1, zero, .LBB3073
	j .LBB3074
.LBB3073:
	li a5, 1
	j .LBB3075
.LBB3076:
	mv a5, zero
	j .LBB3075
.LBB3074:
	bne a6, zero, .LBB3073
	j .LBB3076
.LBB3075:
	bne t1, zero, .LBB3077
	j .LBB3078
.LBB3079:
	li t2, 1
	j .LBB3080
.LBB3078:
	mv t2, zero
	j .LBB3080
.LBB3077:
	bne a6, zero, .LBB3079
	j .LBB3078
.LBB3080:
	beq t2, zero, .LBB3081
	j .LBB3082
.LBB3081:
	li t2, 1
	j .LBB3083
.LBB3082:
	mv t2, zero
	j .LBB3083
.LBB3083:
	bne a5, zero, .LBB3084
	j .LBB3085
.LBB3086:
	li t2, 1
	j .LBB3087
.LBB3085:
	mv t2, zero
	j .LBB3087
.LBB3084:
	bne t2, zero, .LBB3086
	j .LBB3085
.LBB3087:
	ld t0, -72(s0)
	bne t0, zero, .LBB3088
	j .LBB3089
.LBB3090:
	li a5, 1
	j .LBB3091
.LBB3089:
	mv a5, zero
	j .LBB3091
.LBB3088:
	ld t0, -136(s0)
	bne t0, zero, .LBB3090
	j .LBB3089
.LBB3091:
	bne t1, zero, .LBB3092
	j .LBB3093
.LBB3094:
	li t1, 1
	j .LBB3095
.LBB3093:
	mv t1, zero
	j .LBB3095
.LBB3092:
	bne a6, zero, .LBB3094
	j .LBB3093
.LBB3095:
	bne a5, zero, .LBB3096
	j .LBB3097
.LBB3096:
	j .LBB3098
.LBB3099:
	j .LBB3098
.LBB3097:
	bne t1, zero, .LBB3096
	j .LBB3099
.LBB3098:
	li t1, 2
	mulw t1, zero, t1
	addw t2, t1, t2
	li t1, 2
	mulw t1, t2, t1
	addw t1, t1, t0
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a0
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a2
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, a4
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s5
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s6
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s7
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a1
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, a3
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, s10
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s11
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, t3
	li t1, 2
	mulw t0, t0, t1
	ld t0, -168(s0)
	addw t0, t0, t0
	li t1, 2
	mulw t0, t0, t1
	addw a0, t0, t5
	mv a0, a0
	call fib
	mv a0, a0
	li t0, 2
	ld t0, -256(s0)
	remw t3, t0, t0
	blt t3, zero, .LBB3100
	j .LBB3994
.LBB3100:
	subw t3, zero, t3
	mv t3, t3
	j .LBB3101
.LBB3101:
	li t0, 2
	ld t0, -256(s0)
	divw t1, t0, t0
	li t0, 2
	remw s11, t1, t0
	blt s11, zero, .LBB3102
	j .LBB3995
.LBB3102:
	subw s11, zero, s11
	mv s11, s11
	j .LBB3103
.LBB3103:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s10, t1, t0
	blt s10, zero, .LBB3104
	j .LBB3996
.LBB3104:
	subw s10, zero, s10
	mv s10, s10
	j .LBB3105
.LBB3105:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s9, t1, t0
	blt s9, zero, .LBB3106
	j .LBB3997
.LBB3106:
	subw s9, zero, s9
	mv s9, s9
	j .LBB3107
.LBB3107:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3108
	j .LBB3998
.LBB3108:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -176(s0)
	j .LBB3109
.LBB3109:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s8, t1, t0
	blt s8, zero, .LBB3110
	j .LBB3999
.LBB3110:
	subw s8, zero, s8
	mv s8, s8
	j .LBB3111
.LBB3111:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3112
	j .LBB4000
.LBB3112:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -184(s0)
	j .LBB3113
.LBB3113:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s7, t1, t0
	blt s7, zero, .LBB3114
	j .LBB4001
.LBB3114:
	subw s7, zero, s7
	mv s7, s7
	j .LBB3115
.LBB3115:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw s6, t0, t1
	blt s6, zero, .LBB3116
	j .LBB4002
.LBB3116:
	subw s6, zero, s6
	mv s6, s6
	j .LBB3117
.LBB3117:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s5, t1, t0
	blt s5, zero, .LBB3118
	j .LBB4003
.LBB3118:
	subw s5, zero, s5
	mv s5, s5
	j .LBB3119
.LBB3119:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s4, t1, t0
	blt s4, zero, .LBB3120
	j .LBB4004
.LBB3120:
	subw s4, zero, s4
	mv s4, s4
	j .LBB3121
.LBB3121:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s3, t1, t0
	blt s3, zero, .LBB3122
	j .LBB4005
.LBB3122:
	subw s3, zero, s3
	mv s3, s3
	j .LBB3123
.LBB3123:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw s2, t1, t0
	blt s2, zero, .LBB3124
	j .LBB4006
.LBB3124:
	subw s2, zero, s2
	mv s2, s2
	j .LBB3125
.LBB3125:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a7, t0, t1
	blt a7, zero, .LBB3126
	j .LBB4007
.LBB3126:
	subw a7, zero, a7
	mv a7, a7
	j .LBB3127
.LBB3127:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3128
	j .LBB4008
.LBB3128:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -192(s0)
	j .LBB3129
.LBB3129:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a6, t1, t0
	blt a6, zero, .LBB3130
	j .LBB4009
.LBB3130:
	subw a6, zero, a6
	mv a6, a6
	j .LBB3131
.LBB3131:
	li t0, 2
	divw t0, t1, t0
	li t0, 2
	remw a5, a0, t0
	blt a5, zero, .LBB3132
	j .LBB4010
.LBB3132:
	subw a5, zero, a5
	mv a5, a5
	j .LBB3133
.LBB3133:
	li t0, 2
	divw t1, a0, t0
	li t0, 2
	remw a4, t1, t0
	blt a4, zero, .LBB3134
	j .LBB4011
.LBB3134:
	subw a4, zero, a4
	mv a4, a4
	j .LBB3135
.LBB3135:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a3, t0, t1
	blt a3, zero, .LBB3136
	j .LBB4012
.LBB3136:
	subw a3, zero, a3
	mv a3, a3
	j .LBB3137
.LBB3137:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3138
	j .LBB4013
.LBB3138:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -200(s0)
	j .LBB3139
.LBB3139:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3140
	j .LBB4014
.LBB3140:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -208(s0)
	j .LBB3141
.LBB3141:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a2, t1, t0
	blt a2, zero, .LBB3142
	j .LBB4015
.LBB3142:
	subw a2, zero, a2
	mv a2, a2
	j .LBB3143
.LBB3143:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3144
	j .LBB4016
.LBB3144:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -216(s0)
	j .LBB3145
.LBB3145:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3146
	j .LBB4017
.LBB3146:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -224(s0)
	j .LBB3147
.LBB3147:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw a1, t1, t0
	blt a1, zero, .LBB3148
	j .LBB4018
.LBB3148:
	subw a1, zero, a1
	mv a1, a1
	j .LBB3149
.LBB3149:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3150
	j .LBB4019
.LBB3150:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -232(s0)
	j .LBB3151
.LBB3151:
	li t0, 2
	divw t0, t1, t0
	li t1, 2
	remw a0, t0, t1
	blt a0, zero, .LBB3152
	j .LBB4020
.LBB3152:
	subw a0, zero, a0
	mv a0, a0
	j .LBB3153
.LBB3153:
	li t1, 2
	divw t1, t0, t1
	li t0, 2
	remw s1, t1, t0
	blt s1, zero, .LBB3154
	j .LBB4021
.LBB3154:
	subw s1, zero, s1
	mv s1, s1
	j .LBB3155
.LBB3155:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t2, t1, t0
	blt t2, zero, .LBB3156
	j .LBB4022
.LBB3156:
	subw t2, zero, t2
	mv t2, t2
	j .LBB3157
.LBB3157:
	li t0, 2
	divw t1, t1, t0
	li t0, 2
	remw t0, t1, t0
	blt t0, zero, .LBB3158
	j .LBB4023
.LBB3158:
	subw t0, zero, t0
	mv t0, t0
	sd t0, -240(s0)
	j .LBB3159
.LBB3159:
	li t0, 2
	divw t4, t1, t0
	li t0, 2
	remw t1, t4, t0
	blt t1, zero, .LBB3160
	j .LBB4024
.LBB3160:
	subw t1, zero, t1
	mv t1, t1
	j .LBB3161
.LBB3161:
	li t0, 2
	divw t4, t4, t0
	li t0, 2
	remw t0, t4, t0
	blt t0, zero, .LBB3162
	j .LBB4025
.LBB3162:
	subw t0, zero, t0
	mv t0, t0
	j .LBB3163
.LBB3163:
	li t5, 2
	divw t0, t4, t5
	bne t3, zero, .LBB3164
	j .LBB3165
.LBB3164:
	li t4, 1
	j .LBB3166
.LBB3167:
	mv t4, zero
	j .LBB3166
.LBB3165:
	bne a5, zero, .LBB3164
	j .LBB3167
.LBB3166:
	bne t3, zero, .LBB3168
	j .LBB3169
.LBB3170:
	li t5, 1
	j .LBB3171
.LBB3169:
	mv t5, zero
	j .LBB3171
.LBB3168:
	bne a5, zero, .LBB3170
	j .LBB3169
.LBB3171:
	beq t5, zero, .LBB3172
	j .LBB3173
.LBB3172:
	li t5, 1
	j .LBB3174
.LBB3173:
	mv t5, zero
	j .LBB3174
.LBB3174:
	bne t4, zero, .LBB3175
	j .LBB3176
.LBB3177:
	li t6, 1
	j .LBB3178
.LBB3176:
	mv t6, zero
	j .LBB3178
.LBB3175:
	bne t5, zero, .LBB3177
	j .LBB3176
.LBB3178:
	bne t6, zero, .LBB3179
	j .LBB3180
.LBB3179:
	li t4, 1
	j .LBB3181
.LBB3182:
	mv t4, zero
	j .LBB3181
.LBB3180:
	j .LBB3182
.LBB3181:
	bne t6, zero, .LBB3183
	j .LBB3184
.LBB3184:
	j .LBB3185
.LBB3183:
	j .LBB3184
.LBB3185:
	beq zero, zero, .LBB3186
	j .LBB3187
.LBB3186:
	li t5, 1
	j .LBB3188
.LBB3187:
	mv t5, zero
	j .LBB3188
.LBB3188:
	bne t4, zero, .LBB3189
	j .LBB3190
.LBB3191:
	li t5, 1
	j .LBB3192
.LBB3190:
	mv t5, zero
	j .LBB3192
.LBB3189:
	bne t5, zero, .LBB3191
	j .LBB3190
.LBB3192:
	bne t3, zero, .LBB3193
	j .LBB3194
.LBB3195:
	li a5, 1
	j .LBB3196
.LBB3194:
	mv a5, zero
	j .LBB3196
.LBB3193:
	bne a5, zero, .LBB3195
	j .LBB3194
.LBB3196:
	bne t6, zero, .LBB3197
	j .LBB3198
.LBB3198:
	j .LBB3199
.LBB3197:
	j .LBB3198
.LBB3199:
	bne a5, zero, .LBB3200
	j .LBB3201
.LBB3200:
	li t6, 1
	j .LBB3202
.LBB3203:
	mv t6, zero
	j .LBB3202
.LBB3201:
	bne zero, zero, .LBB3200
	j .LBB3203
.LBB3202:
	bne s11, zero, .LBB3204
	j .LBB3205
.LBB3204:
	li a5, 1
	j .LBB3206
.LBB3207:
	mv a5, zero
	j .LBB3206
.LBB3205:
	bne a4, zero, .LBB3204
	j .LBB3207
.LBB3206:
	bne s11, zero, .LBB3208
	j .LBB3209
.LBB3210:
	li t3, 1
	j .LBB3211
.LBB3209:
	mv t3, zero
	j .LBB3211
.LBB3208:
	bne a4, zero, .LBB3210
	j .LBB3209
.LBB3211:
	beq t3, zero, .LBB3212
	j .LBB3213
.LBB3212:
	li t3, 1
	j .LBB3214
.LBB3213:
	mv t3, zero
	j .LBB3214
.LBB3214:
	bne a5, zero, .LBB3215
	j .LBB3216
.LBB3217:
	li t4, 1
	j .LBB3218
.LBB3216:
	mv t4, zero
	j .LBB3218
.LBB3215:
	bne t3, zero, .LBB3217
	j .LBB3216
.LBB3218:
	bne t4, zero, .LBB3219
	j .LBB3220
.LBB3219:
	li t3, 1
	j .LBB3221
.LBB3222:
	mv t3, zero
	j .LBB3221
.LBB3220:
	bne t6, zero, .LBB3219
	j .LBB3222
.LBB3221:
	bne t4, zero, .LBB3223
	j .LBB3224
.LBB3225:
	li a5, 1
	j .LBB3226
.LBB3224:
	mv a5, zero
	j .LBB3226
.LBB3223:
	bne t6, zero, .LBB3225
	j .LBB3224
.LBB3226:
	beq a5, zero, .LBB3227
	j .LBB3228
.LBB3227:
	li a5, 1
	j .LBB3229
.LBB3228:
	mv a5, zero
	j .LBB3229
.LBB3229:
	bne t3, zero, .LBB3230
	j .LBB3231
.LBB3232:
	li t0, 1
	sd t0, -248(s0)
	j .LBB3233
.LBB3231:
	ld t0, -248(s0)
	mv t0, zero
	j .LBB3233
.LBB3230:
	bne a5, zero, .LBB3232
	j .LBB3231
.LBB3233:
	bne s11, zero, .LBB3234
	j .LBB3235
.LBB3236:
	li a4, 1
	j .LBB3237
.LBB3235:
	mv a4, zero
	j .LBB3237
.LBB3234:
	bne a4, zero, .LBB3236
	j .LBB3235
.LBB3237:
	bne t4, zero, .LBB3238
	j .LBB3239
.LBB3240:
	li a5, 1
	j .LBB3241
.LBB3239:
	mv a5, zero
	j .LBB3241
.LBB3238:
	bne t6, zero, .LBB3240
	j .LBB3239
.LBB3241:
	bne a4, zero, .LBB3242
	j .LBB3243
.LBB3242:
	li t3, 1
	j .LBB3244
.LBB3245:
	mv t3, zero
	j .LBB3244
.LBB3243:
	bne a5, zero, .LBB3242
	j .LBB3245
.LBB3244:
	bne s10, zero, .LBB3246
	j .LBB3247
.LBB3246:
	li a5, 1
	j .LBB3248
.LBB3249:
	mv a5, zero
	j .LBB3248
.LBB3247:
	bne a3, zero, .LBB3246
	j .LBB3249
.LBB3248:
	bne s10, zero, .LBB3250
	j .LBB3251
.LBB3252:
	li a4, 1
	j .LBB3253
.LBB3251:
	mv a4, zero
	j .LBB3253
.LBB3250:
	bne a3, zero, .LBB3252
	j .LBB3251
.LBB3253:
	beq a4, zero, .LBB3254
	j .LBB3255
.LBB3254:
	li a4, 1
	j .LBB3256
.LBB3255:
	mv a4, zero
	j .LBB3256
.LBB3256:
	bne a5, zero, .LBB3257
	j .LBB3258
.LBB3259:
	li a5, 1
	j .LBB3260
.LBB3258:
	mv a5, zero
	j .LBB3260
.LBB3257:
	bne a4, zero, .LBB3259
	j .LBB3258
.LBB3260:
	bne a5, zero, .LBB3261
	j .LBB3262
.LBB3261:
	li a4, 1
	j .LBB3263
.LBB3264:
	mv a4, zero
	j .LBB3263
.LBB3262:
	bne t3, zero, .LBB3261
	j .LBB3264
.LBB3263:
	bne a5, zero, .LBB3265
	j .LBB3266
.LBB3267:
	li s11, 1
	j .LBB3268
.LBB3266:
	mv s11, zero
	j .LBB3268
.LBB3265:
	bne t3, zero, .LBB3267
	j .LBB3266
.LBB3268:
	beq s11, zero, .LBB3269
	j .LBB3270
.LBB3269:
	li s11, 1
	j .LBB3271
.LBB3270:
	mv s11, zero
	j .LBB3271
.LBB3271:
	bne a4, zero, .LBB3272
	j .LBB3273
.LBB3274:
	li a4, 1
	j .LBB3275
.LBB3273:
	mv a4, zero
	j .LBB3275
.LBB3272:
	bne s11, zero, .LBB3274
	j .LBB3273
.LBB3275:
	bne s10, zero, .LBB3276
	j .LBB3277
.LBB3278:
	li a3, 1
	j .LBB3279
.LBB3277:
	mv a3, zero
	j .LBB3279
.LBB3276:
	bne a3, zero, .LBB3278
	j .LBB3277
.LBB3279:
	bne a5, zero, .LBB3280
	j .LBB3281
.LBB3282:
	li a5, 1
	j .LBB3283
.LBB3281:
	mv a5, zero
	j .LBB3283
.LBB3280:
	bne t3, zero, .LBB3282
	j .LBB3281
.LBB3283:
	bne a3, zero, .LBB3284
	j .LBB3285
.LBB3284:
	li s10, 1
	j .LBB3286
.LBB3287:
	mv s10, zero
	j .LBB3286
.LBB3285:
	bne a5, zero, .LBB3284
	j .LBB3287
.LBB3286:
	bne s9, zero, .LBB3288
	j .LBB3289
.LBB3288:
	li a5, 1
	j .LBB3290
.LBB3291:
	mv a5, zero
	j .LBB3290
.LBB3289:
	ld t0, -200(s0)
	bne t0, zero, .LBB3288
	j .LBB3291
.LBB3290:
	bne s9, zero, .LBB3292
	j .LBB3293
.LBB3294:
	li a3, 1
	j .LBB3295
.LBB3293:
	mv a3, zero
	j .LBB3295
.LBB3292:
	ld t0, -200(s0)
	bne t0, zero, .LBB3294
	j .LBB3293
.LBB3295:
	beq a3, zero, .LBB3296
	j .LBB3297
.LBB3296:
	li a3, 1
	j .LBB3298
.LBB3297:
	mv a3, zero
	j .LBB3298
.LBB3298:
	bne a5, zero, .LBB3299
	j .LBB3300
.LBB3301:
	li a3, 1
	j .LBB3302
.LBB3300:
	mv a3, zero
	j .LBB3302
.LBB3299:
	bne a3, zero, .LBB3301
	j .LBB3300
.LBB3302:
	bne a3, zero, .LBB3303
	j .LBB3304
.LBB3303:
	li s11, 1
	j .LBB3305
.LBB3306:
	mv s11, zero
	j .LBB3305
.LBB3304:
	bne s10, zero, .LBB3303
	j .LBB3306
.LBB3305:
	bne a3, zero, .LBB3307
	j .LBB3308
.LBB3309:
	li a5, 1
	j .LBB3310
.LBB3308:
	mv a5, zero
	j .LBB3310
.LBB3307:
	bne s10, zero, .LBB3309
	j .LBB3308
.LBB3310:
	beq a5, zero, .LBB3311
	j .LBB3312
.LBB3311:
	li a5, 1
	j .LBB3313
.LBB3312:
	mv a5, zero
	j .LBB3313
.LBB3313:
	bne s11, zero, .LBB3314
	j .LBB3315
.LBB3316:
	li s11, 1
	j .LBB3317
.LBB3315:
	mv s11, zero
	j .LBB3317
.LBB3314:
	bne a5, zero, .LBB3316
	j .LBB3315
.LBB3317:
	bne s9, zero, .LBB3318
	j .LBB3319
.LBB3320:
	li a5, 1
	j .LBB3321
.LBB3319:
	mv a5, zero
	j .LBB3321
.LBB3318:
	ld t0, -200(s0)
	bne t0, zero, .LBB3320
	j .LBB3319
.LBB3321:
	bne a3, zero, .LBB3322
	j .LBB3323
.LBB3324:
	li a3, 1
	j .LBB3325
.LBB3323:
	mv a3, zero
	j .LBB3325
.LBB3322:
	bne s10, zero, .LBB3324
	j .LBB3323
.LBB3325:
	bne a5, zero, .LBB3326
	j .LBB3327
.LBB3326:
	li s10, 1
	j .LBB3328
.LBB3329:
	mv s10, zero
	j .LBB3328
.LBB3327:
	bne a3, zero, .LBB3326
	j .LBB3329
.LBB3328:
	ld t0, -176(s0)
	bne t0, zero, .LBB3330
	j .LBB3331
.LBB3330:
	li a3, 1
	j .LBB3332
.LBB3333:
	mv a3, zero
	j .LBB3332
.LBB3331:
	ld t0, -208(s0)
	bne t0, zero, .LBB3330
	j .LBB3333
.LBB3332:
	ld t0, -176(s0)
	bne t0, zero, .LBB3334
	j .LBB3335
.LBB3336:
	li a5, 1
	j .LBB3337
.LBB3335:
	mv a5, zero
	j .LBB3337
.LBB3334:
	ld t0, -208(s0)
	bne t0, zero, .LBB3336
	j .LBB3335
.LBB3337:
	beq a5, zero, .LBB3338
	j .LBB3339
.LBB3338:
	li a5, 1
	j .LBB3340
.LBB3339:
	mv a5, zero
	j .LBB3340
.LBB3340:
	bne a3, zero, .LBB3341
	j .LBB3342
.LBB3343:
	li a5, 1
	j .LBB3344
.LBB3342:
	mv a5, zero
	j .LBB3344
.LBB3341:
	bne a5, zero, .LBB3343
	j .LBB3342
.LBB3344:
	bne a5, zero, .LBB3345
	j .LBB3346
.LBB3345:
	li a3, 1
	j .LBB3347
.LBB3348:
	mv a3, zero
	j .LBB3347
.LBB3346:
	bne s10, zero, .LBB3345
	j .LBB3348
.LBB3347:
	bne a5, zero, .LBB3349
	j .LBB3350
.LBB3351:
	li s9, 1
	j .LBB3352
.LBB3350:
	mv s9, zero
	j .LBB3352
.LBB3349:
	bne s10, zero, .LBB3351
	j .LBB3350
.LBB3352:
	beq s9, zero, .LBB3353
	j .LBB3354
.LBB3353:
	li s9, 1
	j .LBB3355
.LBB3354:
	mv s9, zero
	j .LBB3355
.LBB3355:
	bne a3, zero, .LBB3356
	j .LBB3357
.LBB3358:
	li s9, 1
	j .LBB3359
.LBB3357:
	mv s9, zero
	j .LBB3359
.LBB3356:
	bne s9, zero, .LBB3358
	j .LBB3357
.LBB3359:
	ld t0, -176(s0)
	bne t0, zero, .LBB3360
	j .LBB3361
.LBB3362:
	li a3, 1
	j .LBB3363
.LBB3361:
	mv a3, zero
	j .LBB3363
.LBB3360:
	ld t0, -208(s0)
	bne t0, zero, .LBB3362
	j .LBB3361
.LBB3363:
	bne a5, zero, .LBB3364
	j .LBB3365
.LBB3366:
	li a5, 1
	j .LBB3367
.LBB3365:
	mv a5, zero
	j .LBB3367
.LBB3364:
	bne s10, zero, .LBB3366
	j .LBB3365
.LBB3367:
	bne a3, zero, .LBB3368
	j .LBB3369
.LBB3368:
	li a5, 1
	j .LBB3370
.LBB3371:
	mv a5, zero
	j .LBB3370
.LBB3369:
	bne a5, zero, .LBB3368
	j .LBB3371
.LBB3370:
	bne s8, zero, .LBB3372
	j .LBB3373
.LBB3372:
	li s10, 1
	j .LBB3374
.LBB3375:
	mv s10, zero
	j .LBB3374
.LBB3373:
	bne a2, zero, .LBB3372
	j .LBB3375
.LBB3374:
	bne s8, zero, .LBB3376
	j .LBB3377
.LBB3378:
	li a3, 1
	j .LBB3379
.LBB3377:
	mv a3, zero
	j .LBB3379
.LBB3376:
	bne a2, zero, .LBB3378
	j .LBB3377
.LBB3379:
	beq a3, zero, .LBB3380
	j .LBB3381
.LBB3380:
	li a3, 1
	j .LBB3382
.LBB3381:
	mv a3, zero
	j .LBB3382
.LBB3382:
	bne s10, zero, .LBB3383
	j .LBB3384
.LBB3385:
	li t4, 1
	j .LBB3386
.LBB3384:
	mv t4, zero
	j .LBB3386
.LBB3383:
	bne a3, zero, .LBB3385
	j .LBB3384
.LBB3386:
	bne t4, zero, .LBB3387
	j .LBB3388
.LBB3387:
	li s10, 1
	j .LBB3389
.LBB3390:
	mv s10, zero
	j .LBB3389
.LBB3388:
	bne a5, zero, .LBB3387
	j .LBB3390
.LBB3389:
	bne t4, zero, .LBB3391
	j .LBB3392
.LBB3393:
	li a3, 1
	j .LBB3394
.LBB3392:
	mv a3, zero
	j .LBB3394
.LBB3391:
	bne a5, zero, .LBB3393
	j .LBB3392
.LBB3394:
	beq a3, zero, .LBB3395
	j .LBB3396
.LBB3395:
	li a3, 1
	j .LBB3397
.LBB3396:
	mv a3, zero
	j .LBB3397
.LBB3397:
	bne s10, zero, .LBB3398
	j .LBB3399
.LBB3400:
	li t3, 1
	j .LBB3401
.LBB3399:
	mv t3, zero
	j .LBB3401
.LBB3398:
	bne a3, zero, .LBB3400
	j .LBB3399
.LBB3401:
	bne s8, zero, .LBB3402
	j .LBB3403
.LBB3404:
	li a3, 1
	j .LBB3405
.LBB3403:
	mv a3, zero
	j .LBB3405
.LBB3402:
	bne a2, zero, .LBB3404
	j .LBB3403
.LBB3405:
	bne t4, zero, .LBB3406
	j .LBB3407
.LBB3408:
	li a2, 1
	j .LBB3409
.LBB3407:
	mv a2, zero
	j .LBB3409
.LBB3406:
	bne a5, zero, .LBB3408
	j .LBB3407
.LBB3409:
	bne a3, zero, .LBB3410
	j .LBB3411
.LBB3410:
	li s8, 1
	j .LBB3412
.LBB3413:
	mv s8, zero
	j .LBB3412
.LBB3411:
	bne a2, zero, .LBB3410
	j .LBB3413
.LBB3412:
	ld t0, -184(s0)
	bne t0, zero, .LBB3414
	j .LBB3415
.LBB3414:
	li a3, 1
	j .LBB3416
.LBB3417:
	mv a3, zero
	j .LBB3416
.LBB3415:
	ld t0, -216(s0)
	bne t0, zero, .LBB3414
	j .LBB3417
.LBB3416:
	ld t0, -184(s0)
	bne t0, zero, .LBB3418
	j .LBB3419
.LBB3420:
	li a2, 1
	j .LBB3421
.LBB3419:
	mv a2, zero
	j .LBB3421
.LBB3418:
	ld t0, -216(s0)
	bne t0, zero, .LBB3420
	j .LBB3419
.LBB3421:
	beq a2, zero, .LBB3422
	j .LBB3423
.LBB3422:
	li a2, 1
	j .LBB3424
.LBB3423:
	mv a2, zero
	j .LBB3424
.LBB3424:
	bne a3, zero, .LBB3425
	j .LBB3426
.LBB3427:
	li a3, 1
	j .LBB3428
.LBB3426:
	mv a3, zero
	j .LBB3428
.LBB3425:
	bne a2, zero, .LBB3427
	j .LBB3426
.LBB3428:
	bne a3, zero, .LBB3429
	j .LBB3430
.LBB3429:
	li a2, 1
	j .LBB3431
.LBB3432:
	mv a2, zero
	j .LBB3431
.LBB3430:
	bne s8, zero, .LBB3429
	j .LBB3432
.LBB3431:
	bne a3, zero, .LBB3433
	j .LBB3434
.LBB3435:
	li a5, 1
	j .LBB3436
.LBB3434:
	mv a5, zero
	j .LBB3436
.LBB3433:
	bne s8, zero, .LBB3435
	j .LBB3434
.LBB3436:
	beq a5, zero, .LBB3437
	j .LBB3438
.LBB3437:
	li a5, 1
	j .LBB3439
.LBB3438:
	mv a5, zero
	j .LBB3439
.LBB3439:
	bne a2, zero, .LBB3440
	j .LBB3441
.LBB3442:
	li s10, 1
	j .LBB3443
.LBB3441:
	mv s10, zero
	j .LBB3443
.LBB3440:
	bne a5, zero, .LBB3442
	j .LBB3441
.LBB3443:
	ld t0, -184(s0)
	bne t0, zero, .LBB3444
	j .LBB3445
.LBB3446:
	li a2, 1
	j .LBB3447
.LBB3445:
	mv a2, zero
	j .LBB3447
.LBB3444:
	ld t0, -216(s0)
	bne t0, zero, .LBB3446
	j .LBB3445
.LBB3447:
	bne a3, zero, .LBB3448
	j .LBB3449
.LBB3450:
	li a3, 1
	j .LBB3451
.LBB3449:
	mv a3, zero
	j .LBB3451
.LBB3448:
	bne s8, zero, .LBB3450
	j .LBB3449
.LBB3451:
	bne a2, zero, .LBB3452
	j .LBB3453
.LBB3452:
	li a5, 1
	j .LBB3454
.LBB3455:
	mv a5, zero
	j .LBB3454
.LBB3453:
	bne a3, zero, .LBB3452
	j .LBB3455
.LBB3454:
	bne s7, zero, .LBB3456
	j .LBB3457
.LBB3456:
	li a3, 1
	j .LBB3458
.LBB3459:
	mv a3, zero
	j .LBB3458
.LBB3457:
	ld t0, -224(s0)
	bne t0, zero, .LBB3456
	j .LBB3459
.LBB3458:
	bne s7, zero, .LBB3460
	j .LBB3461
.LBB3462:
	li a2, 1
	j .LBB3463
.LBB3461:
	mv a2, zero
	j .LBB3463
.LBB3460:
	ld t0, -224(s0)
	bne t0, zero, .LBB3462
	j .LBB3461
.LBB3463:
	beq a2, zero, .LBB3464
	j .LBB3465
.LBB3464:
	li a2, 1
	j .LBB3466
.LBB3465:
	mv a2, zero
	j .LBB3466
.LBB3466:
	bne a3, zero, .LBB3467
	j .LBB3468
.LBB3469:
	li s8, 1
	j .LBB3470
.LBB3468:
	mv s8, zero
	j .LBB3470
.LBB3467:
	bne a2, zero, .LBB3469
	j .LBB3468
.LBB3470:
	bne s8, zero, .LBB3471
	j .LBB3472
.LBB3471:
	li a3, 1
	j .LBB3473
.LBB3474:
	mv a3, zero
	j .LBB3473
.LBB3472:
	bne a5, zero, .LBB3471
	j .LBB3474
.LBB3473:
	bne s8, zero, .LBB3475
	j .LBB3476
.LBB3477:
	li a2, 1
	j .LBB3478
.LBB3476:
	mv a2, zero
	j .LBB3478
.LBB3475:
	bne a5, zero, .LBB3477
	j .LBB3476
.LBB3478:
	beq a2, zero, .LBB3479
	j .LBB3480
.LBB3479:
	li a2, 1
	j .LBB3481
.LBB3480:
	mv a2, zero
	j .LBB3481
.LBB3481:
	bne a3, zero, .LBB3482
	j .LBB3483
.LBB3484:
	li a2, 1
	j .LBB3485
.LBB3483:
	mv a2, zero
	j .LBB3485
.LBB3482:
	bne a2, zero, .LBB3484
	j .LBB3483
.LBB3485:
	bne s7, zero, .LBB3486
	j .LBB3487
.LBB3488:
	li a3, 1
	j .LBB3489
.LBB3487:
	mv a3, zero
	j .LBB3489
.LBB3486:
	ld t0, -224(s0)
	bne t0, zero, .LBB3488
	j .LBB3487
.LBB3489:
	bne s8, zero, .LBB3490
	j .LBB3491
.LBB3492:
	li a5, 1
	j .LBB3493
.LBB3491:
	mv a5, zero
	j .LBB3493
.LBB3490:
	bne a5, zero, .LBB3492
	j .LBB3491
.LBB3493:
	bne a3, zero, .LBB3494
	j .LBB3495
.LBB3494:
	li a5, 1
	j .LBB3496
.LBB3497:
	mv a5, zero
	j .LBB3496
.LBB3495:
	bne a5, zero, .LBB3494
	j .LBB3497
.LBB3496:
	bne s6, zero, .LBB3498
	j .LBB3499
.LBB3498:
	li s7, 1
	j .LBB3500
.LBB3501:
	mv s7, zero
	j .LBB3500
.LBB3499:
	bne a1, zero, .LBB3498
	j .LBB3501
.LBB3500:
	bne s6, zero, .LBB3502
	j .LBB3503
.LBB3504:
	li a3, 1
	j .LBB3505
.LBB3503:
	mv a3, zero
	j .LBB3505
.LBB3502:
	bne a1, zero, .LBB3504
	j .LBB3503
.LBB3505:
	beq a3, zero, .LBB3506
	j .LBB3507
.LBB3506:
	li a3, 1
	j .LBB3508
.LBB3507:
	mv a3, zero
	j .LBB3508
.LBB3508:
	bne s7, zero, .LBB3509
	j .LBB3510
.LBB3511:
	li s8, 1
	j .LBB3512
.LBB3510:
	mv s8, zero
	j .LBB3512
.LBB3509:
	bne a3, zero, .LBB3511
	j .LBB3510
.LBB3512:
	bne s8, zero, .LBB3513
	j .LBB3514
.LBB3513:
	li s7, 1
	j .LBB3515
.LBB3516:
	mv s7, zero
	j .LBB3515
.LBB3514:
	bne a5, zero, .LBB3513
	j .LBB3516
.LBB3515:
	bne s8, zero, .LBB3517
	j .LBB3518
.LBB3519:
	li a3, 1
	j .LBB3520
.LBB3518:
	mv a3, zero
	j .LBB3520
.LBB3517:
	bne a5, zero, .LBB3519
	j .LBB3518
.LBB3520:
	beq a3, zero, .LBB3521
	j .LBB3522
.LBB3521:
	li a3, 1
	j .LBB3523
.LBB3522:
	mv a3, zero
	j .LBB3523
.LBB3523:
	bne s7, zero, .LBB3524
	j .LBB3525
.LBB3526:
	li s7, 1
	j .LBB3527
.LBB3525:
	mv s7, zero
	j .LBB3527
.LBB3524:
	bne a3, zero, .LBB3526
	j .LBB3525
.LBB3527:
	bne s6, zero, .LBB3528
	j .LBB3529
.LBB3530:
	li a1, 1
	j .LBB3531
.LBB3529:
	mv a1, zero
	j .LBB3531
.LBB3528:
	bne a1, zero, .LBB3530
	j .LBB3529
.LBB3531:
	bne s8, zero, .LBB3532
	j .LBB3533
.LBB3534:
	li a3, 1
	j .LBB3535
.LBB3533:
	mv a3, zero
	j .LBB3535
.LBB3532:
	bne a5, zero, .LBB3534
	j .LBB3533
.LBB3535:
	bne a1, zero, .LBB3536
	j .LBB3537
.LBB3536:
	li a5, 1
	j .LBB3538
.LBB3539:
	mv a5, zero
	j .LBB3538
.LBB3537:
	bne a3, zero, .LBB3536
	j .LBB3539
.LBB3538:
	bne s5, zero, .LBB3540
	j .LBB3541
.LBB3540:
	li a3, 1
	j .LBB3542
.LBB3543:
	mv a3, zero
	j .LBB3542
.LBB3541:
	ld t0, -232(s0)
	bne t0, zero, .LBB3540
	j .LBB3543
.LBB3542:
	bne s5, zero, .LBB3544
	j .LBB3545
.LBB3546:
	li a1, 1
	j .LBB3547
.LBB3545:
	mv a1, zero
	j .LBB3547
.LBB3544:
	ld t0, -232(s0)
	bne t0, zero, .LBB3546
	j .LBB3545
.LBB3547:
	beq a1, zero, .LBB3548
	j .LBB3549
.LBB3548:
	li a1, 1
	j .LBB3550
.LBB3549:
	mv a1, zero
	j .LBB3550
.LBB3550:
	bne a3, zero, .LBB3551
	j .LBB3552
.LBB3553:
	li a3, 1
	j .LBB3554
.LBB3552:
	mv a3, zero
	j .LBB3554
.LBB3551:
	bne a1, zero, .LBB3553
	j .LBB3552
.LBB3554:
	bne a3, zero, .LBB3555
	j .LBB3556
.LBB3555:
	li s6, 1
	j .LBB3557
.LBB3558:
	mv s6, zero
	j .LBB3557
.LBB3556:
	bne a5, zero, .LBB3555
	j .LBB3558
.LBB3557:
	bne a3, zero, .LBB3559
	j .LBB3560
.LBB3561:
	li a1, 1
	j .LBB3562
.LBB3560:
	mv a1, zero
	j .LBB3562
.LBB3559:
	bne a5, zero, .LBB3561
	j .LBB3560
.LBB3562:
	beq a1, zero, .LBB3563
	j .LBB3564
.LBB3563:
	li a1, 1
	j .LBB3565
.LBB3564:
	mv a1, zero
	j .LBB3565
.LBB3565:
	bne s6, zero, .LBB3566
	j .LBB3567
.LBB3568:
	li s6, 1
	j .LBB3569
.LBB3567:
	mv s6, zero
	j .LBB3569
.LBB3566:
	bne a1, zero, .LBB3568
	j .LBB3567
.LBB3569:
	bne s5, zero, .LBB3570
	j .LBB3571
.LBB3572:
	li s5, 1
	j .LBB3573
.LBB3571:
	mv s5, zero
	j .LBB3573
.LBB3570:
	ld t0, -232(s0)
	bne t0, zero, .LBB3572
	j .LBB3571
.LBB3573:
	bne a3, zero, .LBB3574
	j .LBB3575
.LBB3576:
	li a1, 1
	j .LBB3577
.LBB3575:
	mv a1, zero
	j .LBB3577
.LBB3574:
	bne a5, zero, .LBB3576
	j .LBB3575
.LBB3577:
	bne s5, zero, .LBB3578
	j .LBB3579
.LBB3578:
	li a3, 1
	j .LBB3580
.LBB3581:
	mv a3, zero
	j .LBB3580
.LBB3579:
	bne a1, zero, .LBB3578
	j .LBB3581
.LBB3580:
	bne s4, zero, .LBB3582
	j .LBB3583
.LBB3582:
	li a1, 1
	j .LBB3584
.LBB3585:
	mv a1, zero
	j .LBB3584
.LBB3583:
	bne a0, zero, .LBB3582
	j .LBB3585
.LBB3584:
	bne s4, zero, .LBB3586
	j .LBB3587
.LBB3588:
	li a5, 1
	j .LBB3589
.LBB3587:
	mv a5, zero
	j .LBB3589
.LBB3586:
	bne a0, zero, .LBB3588
	j .LBB3587
.LBB3589:
	beq a5, zero, .LBB3590
	j .LBB3591
.LBB3590:
	li a5, 1
	j .LBB3592
.LBB3591:
	mv a5, zero
	j .LBB3592
.LBB3592:
	bne a1, zero, .LBB3593
	j .LBB3594
.LBB3595:
	li a1, 1
	j .LBB3596
.LBB3594:
	mv a1, zero
	j .LBB3596
.LBB3593:
	bne a5, zero, .LBB3595
	j .LBB3594
.LBB3596:
	bne a1, zero, .LBB3597
	j .LBB3598
.LBB3597:
	li a5, 1
	j .LBB3599
.LBB3600:
	mv a5, zero
	j .LBB3599
.LBB3598:
	bne a3, zero, .LBB3597
	j .LBB3600
.LBB3599:
	bne a1, zero, .LBB3601
	j .LBB3602
.LBB3603:
	li s5, 1
	j .LBB3604
.LBB3602:
	mv s5, zero
	j .LBB3604
.LBB3601:
	bne a3, zero, .LBB3603
	j .LBB3602
.LBB3604:
	beq s5, zero, .LBB3605
	j .LBB3606
.LBB3605:
	li s5, 1
	j .LBB3607
.LBB3606:
	mv s5, zero
	j .LBB3607
.LBB3607:
	bne a5, zero, .LBB3608
	j .LBB3609
.LBB3610:
	li s5, 1
	j .LBB3611
.LBB3609:
	mv s5, zero
	j .LBB3611
.LBB3608:
	bne s5, zero, .LBB3610
	j .LBB3609
.LBB3611:
	bne s4, zero, .LBB3612
	j .LBB3613
.LBB3614:
	li a5, 1
	j .LBB3615
.LBB3613:
	mv a5, zero
	j .LBB3615
.LBB3612:
	bne a0, zero, .LBB3614
	j .LBB3613
.LBB3615:
	bne a1, zero, .LBB3616
	j .LBB3617
.LBB3618:
	li a0, 1
	j .LBB3619
.LBB3617:
	mv a0, zero
	j .LBB3619
.LBB3616:
	bne a3, zero, .LBB3618
	j .LBB3617
.LBB3619:
	bne a5, zero, .LBB3620
	j .LBB3621
.LBB3620:
	li a1, 1
	j .LBB3622
.LBB3623:
	mv a1, zero
	j .LBB3622
.LBB3621:
	bne a0, zero, .LBB3620
	j .LBB3623
.LBB3622:
	bne s3, zero, .LBB3624
	j .LBB3625
.LBB3624:
	li a3, 1
	j .LBB3626
.LBB3627:
	mv a3, zero
	j .LBB3626
.LBB3625:
	bne s1, zero, .LBB3624
	j .LBB3627
.LBB3626:
	bne s3, zero, .LBB3628
	j .LBB3629
.LBB3630:
	li a0, 1
	j .LBB3631
.LBB3629:
	mv a0, zero
	j .LBB3631
.LBB3628:
	bne s1, zero, .LBB3630
	j .LBB3629
.LBB3631:
	beq a0, zero, .LBB3632
	j .LBB3633
.LBB3632:
	li a0, 1
	j .LBB3634
.LBB3633:
	mv a0, zero
	j .LBB3634
.LBB3634:
	bne a3, zero, .LBB3635
	j .LBB3636
.LBB3637:
	li s4, 1
	j .LBB3638
.LBB3636:
	mv s4, zero
	j .LBB3638
.LBB3635:
	bne a0, zero, .LBB3637
	j .LBB3636
.LBB3638:
	bne s4, zero, .LBB3639
	j .LBB3640
.LBB3639:
	li a3, 1
	j .LBB3641
.LBB3642:
	mv a3, zero
	j .LBB3641
.LBB3640:
	bne a1, zero, .LBB3639
	j .LBB3642
.LBB3641:
	bne s4, zero, .LBB3643
	j .LBB3644
.LBB3645:
	li a0, 1
	j .LBB3646
.LBB3644:
	mv a0, zero
	j .LBB3646
.LBB3643:
	bne a1, zero, .LBB3645
	j .LBB3644
.LBB3646:
	beq a0, zero, .LBB3647
	j .LBB3648
.LBB3647:
	li a0, 1
	j .LBB3649
.LBB3648:
	mv a0, zero
	j .LBB3649
.LBB3649:
	bne a3, zero, .LBB3650
	j .LBB3651
.LBB3652:
	li a5, 1
	j .LBB3653
.LBB3651:
	mv a5, zero
	j .LBB3653
.LBB3650:
	bne a0, zero, .LBB3652
	j .LBB3651
.LBB3653:
	bne s3, zero, .LBB3654
	j .LBB3655
.LBB3656:
	li a0, 1
	j .LBB3657
.LBB3655:
	mv a0, zero
	j .LBB3657
.LBB3654:
	bne s1, zero, .LBB3656
	j .LBB3655
.LBB3657:
	bne s4, zero, .LBB3658
	j .LBB3659
.LBB3660:
	li s1, 1
	j .LBB3661
.LBB3659:
	mv s1, zero
	j .LBB3661
.LBB3658:
	bne a1, zero, .LBB3660
	j .LBB3659
.LBB3661:
	bne a0, zero, .LBB3662
	j .LBB3663
.LBB3662:
	li a3, 1
	j .LBB3664
.LBB3665:
	mv a3, zero
	j .LBB3664
.LBB3663:
	bne s1, zero, .LBB3662
	j .LBB3665
.LBB3664:
	bne s2, zero, .LBB3666
	j .LBB3667
.LBB3666:
	li a0, 1
	j .LBB3668
.LBB3669:
	mv a0, zero
	j .LBB3668
.LBB3667:
	bne t2, zero, .LBB3666
	j .LBB3669
.LBB3668:
	bne s2, zero, .LBB3670
	j .LBB3671
.LBB3672:
	li s1, 1
	j .LBB3673
.LBB3671:
	mv s1, zero
	j .LBB3673
.LBB3670:
	bne t2, zero, .LBB3672
	j .LBB3671
.LBB3673:
	beq s1, zero, .LBB3674
	j .LBB3675
.LBB3674:
	li s1, 1
	j .LBB3676
.LBB3675:
	mv s1, zero
	j .LBB3676
.LBB3676:
	bne a0, zero, .LBB3677
	j .LBB3678
.LBB3679:
	li s1, 1
	j .LBB3680
.LBB3678:
	mv s1, zero
	j .LBB3680
.LBB3677:
	bne s1, zero, .LBB3679
	j .LBB3678
.LBB3680:
	bne s1, zero, .LBB3681
	j .LBB3682
.LBB3681:
	li a0, 1
	j .LBB3683
.LBB3684:
	mv a0, zero
	j .LBB3683
.LBB3682:
	bne a3, zero, .LBB3681
	j .LBB3684
.LBB3683:
	bne s1, zero, .LBB3685
	j .LBB3686
.LBB3687:
	li a1, 1
	j .LBB3688
.LBB3686:
	mv a1, zero
	j .LBB3688
.LBB3685:
	bne a3, zero, .LBB3687
	j .LBB3686
.LBB3688:
	beq a1, zero, .LBB3689
	j .LBB3690
.LBB3689:
	li a1, 1
	j .LBB3691
.LBB3690:
	mv a1, zero
	j .LBB3691
.LBB3691:
	bne a0, zero, .LBB3692
	j .LBB3693
.LBB3694:
	li s3, 1
	j .LBB3695
.LBB3693:
	mv s3, zero
	j .LBB3695
.LBB3692:
	bne a1, zero, .LBB3694
	j .LBB3693
.LBB3695:
	bne s2, zero, .LBB3696
	j .LBB3697
.LBB3698:
	li t2, 1
	j .LBB3699
.LBB3697:
	mv t2, zero
	j .LBB3699
.LBB3696:
	bne t2, zero, .LBB3698
	j .LBB3697
.LBB3699:
	bne s1, zero, .LBB3700
	j .LBB3701
.LBB3702:
	li s1, 1
	j .LBB3703
.LBB3701:
	mv s1, zero
	j .LBB3703
.LBB3700:
	bne a3, zero, .LBB3702
	j .LBB3701
.LBB3703:
	bne t2, zero, .LBB3704
	j .LBB3705
.LBB3704:
	li a1, 1
	j .LBB3706
.LBB3707:
	mv a1, zero
	j .LBB3706
.LBB3705:
	bne s1, zero, .LBB3704
	j .LBB3707
.LBB3706:
	bne a7, zero, .LBB3708
	j .LBB3709
.LBB3708:
	li s1, 1
	j .LBB3710
.LBB3711:
	mv s1, zero
	j .LBB3710
.LBB3709:
	ld t0, -240(s0)
	bne t0, zero, .LBB3708
	j .LBB3711
.LBB3710:
	bne a7, zero, .LBB3712
	j .LBB3713
.LBB3714:
	li t2, 1
	j .LBB3715
.LBB3713:
	mv t2, zero
	j .LBB3715
.LBB3712:
	ld t0, -240(s0)
	bne t0, zero, .LBB3714
	j .LBB3713
.LBB3715:
	beq t2, zero, .LBB3716
	j .LBB3717
.LBB3716:
	li t2, 1
	j .LBB3718
.LBB3717:
	mv t2, zero
	j .LBB3718
.LBB3718:
	bne s1, zero, .LBB3719
	j .LBB3720
.LBB3721:
	li t2, 1
	j .LBB3722
.LBB3720:
	mv t2, zero
	j .LBB3722
.LBB3719:
	bne t2, zero, .LBB3721
	j .LBB3720
.LBB3722:
	bne t2, zero, .LBB3723
	j .LBB3724
.LBB3723:
	li s1, 1
	j .LBB3725
.LBB3726:
	mv s1, zero
	j .LBB3725
.LBB3724:
	bne a1, zero, .LBB3723
	j .LBB3726
.LBB3725:
	bne t2, zero, .LBB3727
	j .LBB3728
.LBB3729:
	li a0, 1
	j .LBB3730
.LBB3728:
	mv a0, zero
	j .LBB3730
.LBB3727:
	bne a1, zero, .LBB3729
	j .LBB3728
.LBB3730:
	beq a0, zero, .LBB3731
	j .LBB3732
.LBB3731:
	li a0, 1
	j .LBB3733
.LBB3732:
	mv a0, zero
	j .LBB3733
.LBB3733:
	bne s1, zero, .LBB3734
	j .LBB3735
.LBB3736:
	li a0, 1
	j .LBB3737
.LBB3735:
	mv a0, zero
	j .LBB3737
.LBB3734:
	bne a0, zero, .LBB3736
	j .LBB3735
.LBB3737:
	bne a7, zero, .LBB3738
	j .LBB3739
.LBB3740:
	li s1, 1
	j .LBB3741
.LBB3739:
	mv s1, zero
	j .LBB3741
.LBB3738:
	ld t0, -240(s0)
	bne t0, zero, .LBB3740
	j .LBB3739
.LBB3741:
	bne t2, zero, .LBB3742
	j .LBB3743
.LBB3744:
	li t2, 1
	j .LBB3745
.LBB3743:
	mv t2, zero
	j .LBB3745
.LBB3742:
	bne a1, zero, .LBB3744
	j .LBB3743
.LBB3745:
	bne s1, zero, .LBB3746
	j .LBB3747
.LBB3746:
	li a1, 1
	j .LBB3748
.LBB3749:
	mv a1, zero
	j .LBB3748
.LBB3747:
	bne t2, zero, .LBB3746
	j .LBB3749
.LBB3748:
	ld t0, -192(s0)
	bne t0, zero, .LBB3750
	j .LBB3751
.LBB3750:
	li t2, 1
	j .LBB3752
.LBB3753:
	mv t2, zero
	j .LBB3752
.LBB3751:
	bne t1, zero, .LBB3750
	j .LBB3753
.LBB3752:
	ld t0, -192(s0)
	bne t0, zero, .LBB3754
	j .LBB3755
.LBB3756:
	li s1, 1
	j .LBB3757
.LBB3755:
	mv s1, zero
	j .LBB3757
.LBB3754:
	bne t1, zero, .LBB3756
	j .LBB3755
.LBB3757:
	beq s1, zero, .LBB3758
	j .LBB3759
.LBB3758:
	li s1, 1
	j .LBB3760
.LBB3759:
	mv s1, zero
	j .LBB3760
.LBB3760:
	bne t2, zero, .LBB3761
	j .LBB3762
.LBB3763:
	li t2, 1
	j .LBB3764
.LBB3762:
	mv t2, zero
	j .LBB3764
.LBB3761:
	bne s1, zero, .LBB3763
	j .LBB3762
.LBB3764:
	bne t2, zero, .LBB3765
	j .LBB3766
.LBB3765:
	li s1, 1
	j .LBB3767
.LBB3768:
	mv s1, zero
	j .LBB3767
.LBB3766:
	bne a1, zero, .LBB3765
	j .LBB3768
.LBB3767:
	bne t2, zero, .LBB3769
	j .LBB3770
.LBB3771:
	li a3, 1
	j .LBB3772
.LBB3770:
	mv a3, zero
	j .LBB3772
.LBB3769:
	bne a1, zero, .LBB3771
	j .LBB3770
.LBB3772:
	beq a3, zero, .LBB3773
	j .LBB3774
.LBB3773:
	li a3, 1
	j .LBB3775
.LBB3774:
	mv a3, zero
	j .LBB3775
.LBB3775:
	bne s1, zero, .LBB3776
	j .LBB3777
.LBB3778:
	li s1, 1
	j .LBB3779
.LBB3777:
	mv s1, zero
	j .LBB3779
.LBB3776:
	bne a3, zero, .LBB3778
	j .LBB3777
.LBB3779:
	ld t0, -192(s0)
	bne t0, zero, .LBB3780
	j .LBB3781
.LBB3782:
	li t1, 1
	j .LBB3783
.LBB3781:
	mv t1, zero
	j .LBB3783
.LBB3780:
	bne t1, zero, .LBB3782
	j .LBB3781
.LBB3783:
	bne t2, zero, .LBB3784
	j .LBB3785
.LBB3786:
	li t2, 1
	j .LBB3787
.LBB3785:
	mv t2, zero
	j .LBB3787
.LBB3784:
	bne a1, zero, .LBB3786
	j .LBB3785
.LBB3787:
	bne t1, zero, .LBB3788
	j .LBB3789
.LBB3788:
	li a1, 1
	j .LBB3790
.LBB3791:
	mv a1, zero
	j .LBB3790
.LBB3789:
	bne t2, zero, .LBB3788
	j .LBB3791
.LBB3790:
	bne a6, zero, .LBB3792
	j .LBB3793
.LBB3792:
	li t2, 1
	j .LBB3794
.LBB3795:
	mv t2, zero
	j .LBB3794
.LBB3793:
	bne t0, zero, .LBB3792
	j .LBB3795
.LBB3794:
	bne a6, zero, .LBB3796
	j .LBB3797
.LBB3798:
	li t1, 1
	j .LBB3799
.LBB3797:
	mv t1, zero
	j .LBB3799
.LBB3796:
	bne t0, zero, .LBB3798
	j .LBB3797
.LBB3799:
	beq t1, zero, .LBB3800
	j .LBB3801
.LBB3800:
	li t1, 1
	j .LBB3802
.LBB3801:
	mv t1, zero
	j .LBB3802
.LBB3802:
	bne t2, zero, .LBB3803
	j .LBB3804
.LBB3805:
	li a3, 1
	j .LBB3806
.LBB3804:
	mv a3, zero
	j .LBB3806
.LBB3803:
	bne t1, zero, .LBB3805
	j .LBB3804
.LBB3806:
	bne a3, zero, .LBB3807
	j .LBB3808
.LBB3807:
	li t1, 1
	j .LBB3809
.LBB3810:
	mv t1, zero
	j .LBB3809
.LBB3808:
	bne a1, zero, .LBB3807
	j .LBB3810
.LBB3809:
	bne a3, zero, .LBB3811
	j .LBB3812
.LBB3813:
	li t2, 1
	j .LBB3814
.LBB3812:
	mv t2, zero
	j .LBB3814
.LBB3811:
	bne a1, zero, .LBB3813
	j .LBB3812
.LBB3814:
	beq t2, zero, .LBB3815
	j .LBB3816
.LBB3815:
	li t2, 1
	j .LBB3817
.LBB3816:
	mv t2, zero
	j .LBB3817
.LBB3817:
	bne t1, zero, .LBB3818
	j .LBB3819
.LBB3820:
	li t1, 1
	j .LBB3821
.LBB3819:
	mv t1, zero
	j .LBB3821
.LBB3818:
	bne t2, zero, .LBB3820
	j .LBB3819
.LBB3821:
	bne a6, zero, .LBB3822
	j .LBB3823
.LBB3824:
	li t0, 1
	j .LBB3825
.LBB3823:
	mv t0, zero
	j .LBB3825
.LBB3822:
	bne t0, zero, .LBB3824
	j .LBB3823
.LBB3825:
	bne a3, zero, .LBB3826
	j .LBB3827
.LBB3828:
	li t2, 1
	j .LBB3829
.LBB3827:
	mv t2, zero
	j .LBB3829
.LBB3826:
	bne a1, zero, .LBB3828
	j .LBB3827
.LBB3829:
	bne t0, zero, .LBB3830
	j .LBB3831
.LBB3830:
	j .LBB3832
.LBB3833:
	j .LBB3832
.LBB3831:
	bne t2, zero, .LBB3830
	j .LBB3833
.LBB3832:
	li t0, 2
	mulw t0, zero, t0
	addw t0, t0, t1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s1
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a0
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s3
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a5
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s5
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s6
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, s7
	li t1, 2
	mulw t0, t0, t1
	addw t0, t0, a2
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s10
	li t0, 2
	mulw t0, t1, t0
	addw t1, t0, t3
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, s9
	li t1, 2
	mulw t0, t0, t1
	addw t1, t0, s11
	li t0, 2
	mulw t0, t1, t0
	addw t0, t0, a4
	li t1, 2
	mulw t0, t0, t1
	ld t0, -248(s0)
	addw t0, t0, t0
	li t1, 2
	mulw t0, t0, t1
	addw a0, t0, t5
	mv a0, a0
	ld ra, 504(sp)
	ld s0, 496(sp)
	addi sp, sp, 512
	ret 
.LBB3834:
	mv s5, s5
	j .LBB5
.LBB3835:
	mv s4, s4
	j .LBB7
.LBB3836:
	mv s3, s3
	j .LBB9
.LBB3837:
	mv s2, s2
	j .LBB11
.LBB3838:
	mv a7, a7
	j .LBB13
.LBB3839:
	mv a6, a6
	j .LBB15
.LBB3840:
	mv a5, a5
	j .LBB17
.LBB3841:
	mv a4, a4
	j .LBB19
.LBB3842:
	mv a3, a3
	j .LBB21
.LBB3843:
	mv a2, a2
	j .LBB23
.LBB3844:
	mv a1, a1
	j .LBB25
.LBB3845:
	mv a0, a0
	j .LBB27
.LBB3846:
	mv s1, s1
	j .LBB29
.LBB3847:
	mv t2, t2
	j .LBB31
.LBB3848:
	mv t1, t1
	j .LBB33
.LBB3849:
	mv t0, t0
	j .LBB35
.LBB3850:
	mv t3, t3
	j .LBB85
.LBB3851:
	mv s11, s11
	j .LBB87
.LBB3852:
	mv s10, s10
	j .LBB89
.LBB3853:
	mv s9, s9
	j .LBB91
.LBB3854:
	ld t0, -408(s0)
	mv t0, t0
	j .LBB93
.LBB3855:
	mv s8, s8
	j .LBB95
.LBB3856:
	ld t0, -288(s0)
	mv t0, t0
	j .LBB97
.LBB3857:
	mv s7, s7
	j .LBB99
.LBB3858:
	mv s6, s6
	j .LBB101
.LBB3859:
	ld t0, -296(s0)
	mv t0, t0
	j .LBB103
.LBB3860:
	mv s5, s5
	j .LBB105
.LBB3861:
	mv s4, s4
	j .LBB107
.LBB3862:
	mv s3, s3
	j .LBB109
.LBB3863:
	ld t0, -304(s0)
	mv t0, t0
	j .LBB111
.LBB3864:
	ld t0, -312(s0)
	mv t0, t0
	j .LBB113
.LBB3865:
	mv s2, s2
	j .LBB115
.LBB3866:
	ld t0, -320(s0)
	mv t0, t0
	j .LBB117
.LBB3867:
	mv a7, a7
	j .LBB119
.LBB3868:
	mv a6, a6
	j .LBB121
.LBB3869:
	mv a5, a5
	j .LBB123
.LBB3870:
	mv a4, a4
	j .LBB125
.LBB3871:
	mv a3, a3
	j .LBB127
.LBB3872:
	ld t0, -328(s0)
	mv t0, t0
	j .LBB129
.LBB3873:
	mv a2, a2
	j .LBB131
.LBB3874:
	ld t0, -336(s0)
	mv t0, t0
	j .LBB133
.LBB3875:
	ld t0, -344(s0)
	mv t0, t0
	j .LBB135
.LBB3876:
	mv a1, a1
	j .LBB137
.LBB3877:
	mv a0, a0
	j .LBB139
.LBB3878:
	mv s1, s1
	j .LBB141
.LBB3879:
	mv t2, t2
	j .LBB143
.LBB3880:
	mv t1, t1
	j .LBB145
.LBB3881:
	ld t0, -352(s0)
	mv t0, t0
	j .LBB147
.LBB3882:
	mv s11, s11
	j .LBB819
.LBB3883:
	mv s10, s10
	j .LBB821
.LBB3884:
	mv s9, s9
	j .LBB823
.LBB3885:
	mv s8, s8
	j .LBB825
.LBB3886:
	ld t0, -376(s0)
	mv t0, t0
	j .LBB827
.LBB3887:
	ld t0, -384(s0)
	mv t0, t0
	j .LBB829
.LBB3888:
	mv s7, s7
	j .LBB831
.LBB3889:
	mv s6, s6
	j .LBB833
.LBB3890:
	mv s5, s5
	j .LBB835
.LBB3891:
	mv s4, s4
	j .LBB837
.LBB3892:
	ld t0, -392(s0)
	mv t0, t0
	j .LBB839
.LBB3893:
	mv s3, s3
	j .LBB841
.LBB3894:
	mv s2, s2
	j .LBB843
.LBB3895:
	mv a7, a7
	j .LBB845
.LBB3896:
	mv a6, a6
	j .LBB847
.LBB3897:
	mv a5, a5
	j .LBB849
.LBB3898:
	mv a4, a4
	j .LBB851
.LBB3899:
	ld t0, -400(s0)
	mv t0, t0
	j .LBB853
.LBB3900:
	ld t0, -280(s0)
	mv t0, t0
	j .LBB855
.LBB3901:
	ld t0, -416(s0)
	mv t0, t0
	j .LBB857
.LBB3902:
	ld t0, -424(s0)
	mv t0, t0
	j .LBB859
.LBB3903:
	mv a3, a3
	j .LBB861
.LBB3904:
	mv a2, a2
	j .LBB863
.LBB3905:
	mv a1, a1
	j .LBB865
.LBB3906:
	mv a0, a0
	j .LBB867
.LBB3907:
	ld t0, -432(s0)
	mv t0, t0
	j .LBB869
.LBB3908:
	ld t0, -440(s0)
	mv t0, t0
	j .LBB871
.LBB3909:
	ld t0, -448(s0)
	mv t0, t0
	j .LBB873
.LBB3910:
	mv s1, s1
	j .LBB875
.LBB3911:
	mv t2, t2
	j .LBB877
.LBB3912:
	mv t1, t1
	j .LBB879
.LBB3913:
	mv t0, t0
	j .LBB881
.LBB3914:
	mv s5, s5
	j .LBB1553
.LBB3915:
	mv s4, s4
	j .LBB1555
.LBB3916:
	mv s3, s3
	j .LBB1557
.LBB3917:
	mv s2, s2
	j .LBB1559
.LBB3918:
	mv a7, a7
	j .LBB1561
.LBB3919:
	mv a6, a6
	j .LBB1563
.LBB3920:
	mv a5, a5
	j .LBB1565
.LBB3921:
	mv a4, a4
	j .LBB1567
.LBB3922:
	mv a3, a3
	j .LBB1569
.LBB3923:
	mv a2, a2
	j .LBB1571
.LBB3924:
	mv a1, a1
	j .LBB1573
.LBB3925:
	mv a0, a0
	j .LBB1575
.LBB3926:
	mv s1, s1
	j .LBB1577
.LBB3927:
	mv t2, t2
	j .LBB1579
.LBB3928:
	mv t1, t1
	j .LBB1581
.LBB3929:
	mv t0, t0
	j .LBB1583
.LBB3930:
	mv s11, s11
	j .LBB1633
.LBB3931:
	ld t0, -472(s0)
	mv t0, t0
	j .LBB1635
.LBB3932:
	mv s10, s10
	j .LBB1637
.LBB3933:
	mv s9, s9
	j .LBB1639
.LBB3934:
	ld t0, -480(s0)
	mv t0, t0
	j .LBB1641
.LBB3935:
	mv s8, s8
	j .LBB1643
.LBB3936:
	mv s7, s7
	j .LBB1645
.LBB3937:
	ld t0, -488(s0)
	mv t0, t0
	j .LBB1647
.LBB3938:
	mv s6, s6
	j .LBB1649
.LBB3939:
	mv s5, s5
	j .LBB1651
.LBB3940:
	mv s4, s4
	j .LBB1653
.LBB3941:
	mv s3, s3
	j .LBB1655
.LBB3942:
	mv s2, s2
	j .LBB1657
.LBB3943:
	mv a7, a7
	j .LBB1659
.LBB3944:
	mv a6, a6
	j .LBB1661
.LBB3945:
	mv a5, a5
	j .LBB1663
.LBB3946:
	mv a4, a4
	j .LBB1665
.LBB3947:
	mv a3, a3
	j .LBB1667
.LBB3948:
	mv a2, a2
	j .LBB1669
.LBB3949:
	ld t0, -496(s0)
	mv t0, t0
	j .LBB1671
.LBB3950:
	ld t0, -504(s0)
	mv t0, t0
	j .LBB1673
.LBB3951:
	mv a1, a1
	j .LBB1675
.LBB3952:
	ld t0, -512(s0)
	mv t0, t0
	j .LBB1677
.LBB3953:
	mv a0, a0
	j .LBB1679
.LBB3954:
	mv s1, s1
	j .LBB1681
.LBB3955:
	mv t2, t2
	j .LBB1683
.LBB3956:
	mv t1, t1
	j .LBB1685
.LBB3957:
	ld t0, -520(s0)
	mv t0, t0
	j .LBB1687
.LBB3958:
	ld t0, -160(s0)
	mv t0, t0
	j .LBB1689
.LBB3959:
	ld t0, -40(s0)
	mv t0, t0
	j .LBB1691
.LBB3960:
	ld t0, -48(s0)
	mv t0, t0
	j .LBB1693
.LBB3961:
	ld t0, -56(s0)
	mv t0, t0
	j .LBB1695
.LBB3962:
	mv t4, t4
	j .LBB2367
.LBB3963:
	mv t3, t3
	j .LBB2369
.LBB3964:
	mv s11, s11
	j .LBB2371
.LBB3965:
	mv s10, s10
	j .LBB2373
.LBB3966:
	mv s9, s9
	j .LBB2375
.LBB3967:
	mv s8, s8
	j .LBB2377
.LBB3968:
	mv s7, s7
	j .LBB2379
.LBB3969:
	mv s6, s6
	j .LBB2381
.LBB3970:
	mv s5, s5
	j .LBB2383
.LBB3971:
	mv s4, s4
	j .LBB2385
.LBB3972:
	mv s3, s3
	j .LBB2387
.LBB3973:
	mv s2, s2
	j .LBB2389
.LBB3974:
	mv a7, a7
	j .LBB2391
.LBB3975:
	mv a6, a6
	j .LBB2393
.LBB3976:
	mv a5, a5
	j .LBB2395
.LBB3977:
	ld t0, -72(s0)
	mv t0, t0
	j .LBB2397
.LBB3978:
	mv a4, a4
	j .LBB2399
.LBB3979:
	mv a3, a3
	j .LBB2401
.LBB3980:
	ld t0, -80(s0)
	mv t0, t0
	j .LBB2403
.LBB3981:
	mv a2, a2
	j .LBB2405
.LBB3982:
	ld t0, -88(s0)
	mv t0, t0
	j .LBB2407
.LBB3983:
	mv a1, a1
	j .LBB2409
.LBB3984:
	mv a0, a0
	j .LBB2411
.LBB3985:
	ld t0, -96(s0)
	mv t0, t0
	j .LBB2413
.LBB3986:
	ld t0, -104(s0)
	mv t0, t0
	j .LBB2415
.LBB3987:
	mv s1, s1
	j .LBB2417
.LBB3988:
	ld t0, -112(s0)
	mv t0, t0
	j .LBB2419
.LBB3989:
	ld t0, -120(s0)
	mv t0, t0
	j .LBB2421
.LBB3990:
	mv t2, t2
	j .LBB2423
.LBB3991:
	ld t0, -128(s0)
	mv t0, t0
	j .LBB2425
.LBB3992:
	mv t1, t1
	j .LBB2427
.LBB3993:
	ld t0, -136(s0)
	mv t0, t0
	j .LBB2429
.LBB3994:
	mv t3, t3
	j .LBB3101
.LBB3995:
	mv s11, s11
	j .LBB3103
.LBB3996:
	mv s10, s10
	j .LBB3105
.LBB3997:
	mv s9, s9
	j .LBB3107
.LBB3998:
	ld t0, -176(s0)
	mv t0, t0
	j .LBB3109
.LBB3999:
	mv s8, s8
	j .LBB3111
.LBB4000:
	ld t0, -184(s0)
	mv t0, t0
	j .LBB3113
.LBB4001:
	mv s7, s7
	j .LBB3115
.LBB4002:
	mv s6, s6
	j .LBB3117
.LBB4003:
	mv s5, s5
	j .LBB3119
.LBB4004:
	mv s4, s4
	j .LBB3121
.LBB4005:
	mv s3, s3
	j .LBB3123
.LBB4006:
	mv s2, s2
	j .LBB3125
.LBB4007:
	mv a7, a7
	j .LBB3127
.LBB4008:
	ld t0, -192(s0)
	mv t0, t0
	j .LBB3129
.LBB4009:
	mv a6, a6
	j .LBB3131
.LBB4010:
	mv a5, a5
	j .LBB3133
.LBB4011:
	mv a4, a4
	j .LBB3135
.LBB4012:
	mv a3, a3
	j .LBB3137
.LBB4013:
	ld t0, -200(s0)
	mv t0, t0
	j .LBB3139
.LBB4014:
	ld t0, -208(s0)
	mv t0, t0
	j .LBB3141
.LBB4015:
	mv a2, a2
	j .LBB3143
.LBB4016:
	ld t0, -216(s0)
	mv t0, t0
	j .LBB3145
.LBB4017:
	ld t0, -224(s0)
	mv t0, t0
	j .LBB3147
.LBB4018:
	mv a1, a1
	j .LBB3149
.LBB4019:
	ld t0, -232(s0)
	mv t0, t0
	j .LBB3151
.LBB4020:
	mv a0, a0
	j .LBB3153
.LBB4021:
	mv s1, s1
	j .LBB3155
.LBB4022:
	mv t2, t2
	j .LBB3157
.LBB4023:
	ld t0, -240(s0)
	mv t0, t0
	j .LBB3159
.LBB4024:
	mv t1, t1
	j .LBB3161
.LBB4025:
	mv t0, t0
	j .LBB3163
    .size fib, .-fib
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB4026:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB4027
.LBB4027:
	li t1, 20
	bge t1, t0, .LBB4028
	j .LBB4029
.LBB4028:
	li a0, 102
	call putch
	li a0, 105
	call putch
	li a0, 98
	call putch
	li a0, 40
	call putch
	mv a0, t0
	call putint
	li a0, 41
	call putch
	li a0, 32
	call putch
	li a0, 61
	call putch
	li a0, 32
	call putch
	mv a0, t0
	call fib
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB4027
.LBB4029:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
