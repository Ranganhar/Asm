    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  func
    .type  func, @function
func:
.LBB0:
	addi sp, sp, -416
	sd ra, 408(sp)
	sd s0, 400(sp)
	addi s0, sp, 416
	mv a0, a0
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	li t1, 100
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	addiw t1, s0, -416
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	mv t2, zero
	mv t0, zero
	j .LBB5
.LBB5:
	blt t0, a0, .LBB6
	j .LBB7
.LBB6:
	li t1, 1
	li t0, 200
	blt t1, t0, .LBB8
	j .LBB9
.LBB7:
	mv a0, t2
	ld ra, 408(sp)
	ld s0, 400(sp)
	addi sp, sp, 416
	ret 
.LBB8:
	addiw s1, s0, -416
	li t1, 1
	sw t1, 4(s1)
	li t1, 2
	li t0, 200
	blt t1, t0, .LBB10
	j .LBB11
.LBB9:
	addiw t0, t0, 1
	mv t2, t2
	mv t1, zero
	j .LBB12
.LBB10:
	addiw t0, s0, -416
	li t1, 2
	sw t1, 8(t0)
	li t1, 3
	li t0, 200
	blt t1, t0, .LBB13
	j .LBB14
.LBB11:
	j .LBB9
.LBB13:
	addiw t0, s0, -416
	li t1, 3
	sw t1, 12(t0)
	li t1, 4
	li t0, 200
	blt t1, t0, .LBB15
	j .LBB16
.LBB14:
	j .LBB11
.LBB15:
	addiw t1, s0, -416
	li t0, 4
	sw t0, 16(t1)
	li t1, 5
	li t0, 200
	blt t1, t0, .LBB17
	j .LBB18
.LBB16:
	j .LBB14
.LBB17:
	addiw t1, s0, -416
	li t0, 5
	sw t0, 20(t1)
	li t1, 6
	li t0, 200
	blt t1, t0, .LBB19
	j .LBB20
.LBB18:
	j .LBB16
.LBB19:
	addiw t1, s0, -416
	li t0, 6
	sw t0, 24(t1)
	li t1, 7
	li t0, 200
	blt t1, t0, .LBB21
	j .LBB22
.LBB20:
	j .LBB18
.LBB21:
	addiw t1, s0, -416
	li t0, 7
	sw t0, 28(t1)
	li t1, 8
	li t0, 200
	blt t1, t0, .LBB23
	j .LBB24
.LBB22:
	j .LBB20
.LBB23:
	addiw t1, s0, -416
	li t0, 8
	sw t0, 32(t1)
	li t1, 9
	li t0, 200
	blt t1, t0, .LBB25
	j .LBB26
.LBB24:
	j .LBB22
.LBB25:
	addiw t1, s0, -416
	li t0, 9
	sw t0, 36(t1)
	li t1, 10
	li t0, 200
	blt t1, t0, .LBB27
	j .LBB28
.LBB26:
	j .LBB24
.LBB27:
	addiw t1, s0, -416
	li t0, 10
	sw t0, 40(t1)
	li t1, 11
	li t0, 200
	blt t1, t0, .LBB29
	j .LBB30
.LBB28:
	j .LBB26
.LBB29:
	addiw t1, s0, -416
	li t0, 11
	sw t0, 44(t1)
	li t1, 12
	li t0, 200
	blt t1, t0, .LBB31
	j .LBB32
.LBB30:
	j .LBB28
.LBB31:
	addiw t1, s0, -416
	li t0, 12
	sw t0, 48(t1)
	li t1, 13
	li t0, 200
	blt t1, t0, .LBB33
	j .LBB34
.LBB32:
	j .LBB30
.LBB33:
	addiw t1, s0, -416
	li t0, 13
	sw t0, 52(t1)
	li t1, 14
	li t0, 200
	blt t1, t0, .LBB35
	j .LBB36
.LBB34:
	j .LBB32
.LBB35:
	addiw t1, s0, -416
	li t0, 14
	sw t0, 56(t1)
	li t1, 15
	li t0, 200
	blt t1, t0, .LBB37
	j .LBB38
.LBB36:
	j .LBB34
.LBB37:
	addiw t0, s0, -416
	li t1, 15
	sw t1, 60(t0)
	li t1, 16
	li t0, 200
	blt t1, t0, .LBB39
	j .LBB40
.LBB38:
	j .LBB36
.LBB39:
	addiw t0, s0, -416
	li t1, 16
	sw t1, 64(t0)
	li t1, 17
	li t0, 200
	blt t1, t0, .LBB41
	j .LBB42
.LBB40:
	j .LBB38
.LBB41:
	addiw t0, s0, -416
	li t1, 17
	sw t1, 68(t0)
	li t1, 18
	li t0, 200
	blt t1, t0, .LBB43
	j .LBB44
.LBB42:
	j .LBB40
.LBB43:
	addiw t0, s0, -416
	li t1, 18
	sw t1, 72(t0)
	li t1, 19
	li t0, 200
	blt t1, t0, .LBB45
	j .LBB46
.LBB44:
	j .LBB42
.LBB45:
	addiw t0, s0, -416
	li t1, 19
	sw t1, 76(t0)
	li t1, 20
	li t0, 200
	blt t1, t0, .LBB47
	j .LBB48
.LBB46:
	j .LBB44
.LBB47:
	addiw t0, s0, -416
	li t1, 20
	sw t1, 80(t0)
	li t1, 21
	li t0, 200
	blt t1, t0, .LBB49
	j .LBB50
.LBB48:
	j .LBB46
.LBB49:
	addiw t0, s0, -416
	li t1, 21
	sw t1, 84(t0)
	li t1, 22
	li t0, 200
	blt t1, t0, .LBB51
	j .LBB52
.LBB50:
	j .LBB48
.LBB51:
	addiw t0, s0, -416
	li t1, 22
	sw t1, 88(t0)
	li t1, 23
	li t0, 200
	blt t1, t0, .LBB53
	j .LBB54
.LBB52:
	j .LBB50
.LBB53:
	addiw t0, s0, -416
	li t1, 23
	sw t1, 92(t0)
	li t1, 24
	li t0, 200
	blt t1, t0, .LBB55
	j .LBB56
.LBB54:
	j .LBB52
.LBB55:
	addiw t1, s0, -416
	li t0, 24
	sw t0, 96(t1)
	li t1, 25
	li t0, 200
	blt t1, t0, .LBB57
	j .LBB58
.LBB56:
	j .LBB54
.LBB57:
	addiw t1, s0, -416
	li t0, 25
	sw t0, 100(t1)
	li t1, 26
	li t0, 200
	blt t1, t0, .LBB59
	j .LBB60
.LBB58:
	j .LBB56
.LBB59:
	addiw t1, s0, -416
	li t0, 26
	sw t0, 104(t1)
	li t1, 27
	li t0, 200
	blt t1, t0, .LBB61
	j .LBB62
.LBB60:
	j .LBB58
.LBB61:
	addiw t1, s0, -416
	li t0, 27
	sw t0, 108(t1)
	li t1, 28
	li t0, 200
	blt t1, t0, .LBB63
	j .LBB64
.LBB62:
	j .LBB60
.LBB63:
	addiw t1, s0, -416
	li t0, 28
	sw t0, 112(t1)
	li t1, 29
	li t0, 200
	blt t1, t0, .LBB65
	j .LBB66
.LBB64:
	j .LBB62
.LBB65:
	addiw t1, s0, -416
	li t0, 29
	sw t0, 116(t1)
	li t1, 30
	li t0, 200
	blt t1, t0, .LBB67
	j .LBB68
.LBB66:
	j .LBB64
.LBB67:
	addiw t1, s0, -416
	li t0, 30
	sw t0, 120(t1)
	li t1, 31
	li t0, 200
	blt t1, t0, .LBB69
	j .LBB70
.LBB68:
	j .LBB66
.LBB69:
	addiw t1, s0, -416
	li t0, 31
	sw t0, 124(t1)
	li t1, 32
	li t0, 200
	blt t1, t0, .LBB71
	j .LBB72
.LBB70:
	j .LBB68
.LBB71:
	addiw t1, s0, -416
	li t0, 32
	sw t0, 128(t1)
	li t1, 33
	li t0, 200
	blt t1, t0, .LBB73
	j .LBB74
.LBB72:
	j .LBB70
.LBB73:
	addiw t1, s0, -416
	li t0, 33
	sw t0, 132(t1)
	li t1, 34
	li t0, 200
	blt t1, t0, .LBB75
	j .LBB76
.LBB74:
	j .LBB72
.LBB75:
	addiw t0, s0, -416
	li t1, 34
	sw t1, 136(t0)
	li t1, 35
	li t0, 200
	blt t1, t0, .LBB77
	j .LBB78
.LBB76:
	j .LBB74
.LBB77:
	addiw t0, s0, -416
	li t1, 35
	sw t1, 140(t0)
	li t1, 36
	li t0, 200
	blt t1, t0, .LBB79
	j .LBB80
.LBB78:
	j .LBB76
.LBB79:
	addiw t0, s0, -416
	li t1, 36
	sw t1, 144(t0)
	li t1, 37
	li t0, 200
	blt t1, t0, .LBB81
	j .LBB82
.LBB80:
	j .LBB78
.LBB81:
	addiw t1, s0, -416
	li t0, 37
	sw t0, 148(t1)
	li t1, 38
	li t0, 200
	blt t1, t0, .LBB83
	j .LBB84
.LBB82:
	j .LBB80
.LBB83:
	addiw t0, s0, -416
	li t1, 38
	sw t1, 152(t0)
	li t1, 39
	li t0, 200
	blt t1, t0, .LBB85
	j .LBB86
.LBB84:
	j .LBB82
.LBB85:
	addiw t0, s0, -416
	li t1, 39
	sw t1, 156(t0)
	li t1, 40
	li t0, 200
	blt t1, t0, .LBB87
	j .LBB88
.LBB86:
	j .LBB84
.LBB87:
	addiw t1, s0, -416
	li t0, 40
	sw t0, 160(t1)
	li t1, 41
	li t0, 200
	blt t1, t0, .LBB89
	j .LBB90
.LBB88:
	j .LBB86
.LBB89:
	addiw t1, s0, -416
	li t0, 41
	sw t0, 164(t1)
	li t1, 42
	li t0, 200
	blt t1, t0, .LBB91
	j .LBB92
.LBB90:
	j .LBB88
.LBB91:
	addiw t1, s0, -416
	li t0, 42
	sw t0, 168(t1)
	li t1, 43
	li t0, 200
	blt t1, t0, .LBB93
	j .LBB94
.LBB92:
	j .LBB90
.LBB93:
	addiw t1, s0, -416
	li t0, 43
	sw t0, 172(t1)
	li t1, 44
	li t0, 200
	blt t1, t0, .LBB95
	j .LBB96
.LBB94:
	j .LBB92
.LBB95:
	addiw t0, s0, -416
	li t1, 44
	sw t1, 176(t0)
	li t1, 45
	li t0, 200
	blt t1, t0, .LBB97
	j .LBB98
.LBB96:
	j .LBB94
.LBB97:
	addiw t1, s0, -416
	li t0, 45
	sw t0, 180(t1)
	li t1, 46
	li t0, 200
	blt t1, t0, .LBB99
	j .LBB100
.LBB98:
	j .LBB96
.LBB99:
	addiw t1, s0, -416
	li t0, 46
	sw t0, 184(t1)
	li t1, 47
	li t0, 200
	blt t1, t0, .LBB101
	j .LBB102
.LBB100:
	j .LBB98
.LBB101:
	addiw t1, s0, -416
	li t0, 47
	sw t0, 188(t1)
	li t1, 48
	li t0, 200
	blt t1, t0, .LBB103
	j .LBB104
.LBB102:
	j .LBB100
.LBB103:
	addiw t1, s0, -416
	li t0, 48
	sw t0, 192(t1)
	li t1, 49
	li t0, 200
	blt t1, t0, .LBB105
	j .LBB106
.LBB104:
	j .LBB102
.LBB105:
	addiw t1, s0, -416
	li t0, 49
	sw t0, 196(t1)
	li t1, 50
	li t0, 200
	blt t1, t0, .LBB107
	j .LBB108
.LBB106:
	j .LBB104
.LBB107:
	addiw t0, s0, -416
	li t1, 50
	sw t1, 200(t0)
	li t1, 51
	li t0, 200
	blt t1, t0, .LBB109
	j .LBB110
.LBB108:
	j .LBB106
.LBB109:
	addiw t0, s0, -416
	li t1, 51
	sw t1, 204(t0)
	li t1, 52
	li t0, 200
	blt t1, t0, .LBB111
	j .LBB112
.LBB110:
	j .LBB108
.LBB111:
	addiw t0, s0, -416
	li t1, 52
	sw t1, 208(t0)
	li t1, 53
	li t0, 200
	blt t1, t0, .LBB113
	j .LBB114
.LBB112:
	j .LBB110
.LBB113:
	addiw t0, s0, -416
	li t1, 53
	sw t1, 212(t0)
	li t1, 54
	li t0, 200
	blt t1, t0, .LBB115
	j .LBB116
.LBB114:
	j .LBB112
.LBB115:
	addiw t1, s0, -416
	li t0, 54
	sw t0, 216(t1)
	li t1, 55
	li t0, 200
	blt t1, t0, .LBB117
	j .LBB118
.LBB116:
	j .LBB114
.LBB117:
	addiw t1, s0, -416
	li t0, 55
	sw t0, 220(t1)
	li t1, 56
	li t0, 200
	blt t1, t0, .LBB119
	j .LBB120
.LBB118:
	j .LBB116
.LBB119:
	addiw t1, s0, -416
	li t0, 56
	sw t0, 224(t1)
	li t1, 57
	li t0, 200
	blt t1, t0, .LBB121
	j .LBB122
.LBB120:
	j .LBB118
.LBB121:
	addiw t1, s0, -416
	li t0, 57
	sw t0, 228(t1)
	li t1, 58
	li t0, 200
	blt t1, t0, .LBB123
	j .LBB124
.LBB122:
	j .LBB120
.LBB123:
	addiw t0, s0, -416
	li t1, 58
	sw t1, 232(t0)
	li t1, 59
	li t0, 200
	blt t1, t0, .LBB125
	j .LBB126
.LBB124:
	j .LBB122
.LBB125:
	addiw t0, s0, -416
	li t1, 59
	sw t1, 236(t0)
	li t1, 60
	li t0, 200
	blt t1, t0, .LBB127
	j .LBB128
.LBB126:
	j .LBB124
.LBB127:
	addiw t0, s0, -416
	li t1, 60
	sw t1, 240(t0)
	li t1, 61
	li t0, 200
	blt t1, t0, .LBB129
	j .LBB130
.LBB128:
	j .LBB126
.LBB129:
	addiw t1, s0, -416
	li t0, 61
	sw t0, 244(t1)
	li t1, 62
	li t0, 200
	blt t1, t0, .LBB131
	j .LBB132
.LBB130:
	j .LBB128
.LBB131:
	addiw t0, s0, -416
	li t1, 62
	sw t1, 248(t0)
	li t1, 63
	li t0, 200
	blt t1, t0, .LBB133
	j .LBB134
.LBB132:
	j .LBB130
.LBB133:
	addiw t0, s0, -416
	li t1, 63
	sw t1, 252(t0)
	li t1, 64
	li t0, 200
	blt t1, t0, .LBB135
	j .LBB136
.LBB134:
	j .LBB132
.LBB135:
	addiw t0, s0, -416
	li t1, 64
	sw t1, 256(t0)
	li t1, 65
	li t0, 200
	blt t1, t0, .LBB137
	j .LBB138
.LBB136:
	j .LBB134
.LBB137:
	addiw t0, s0, -416
	li t1, 65
	sw t1, 260(t0)
	li t1, 66
	li t0, 200
	blt t1, t0, .LBB139
	j .LBB140
.LBB138:
	j .LBB136
.LBB139:
	addiw t0, s0, -416
	li t1, 66
	sw t1, 264(t0)
	li t1, 67
	li t0, 200
	blt t1, t0, .LBB141
	j .LBB142
.LBB140:
	j .LBB138
.LBB141:
	addiw t0, s0, -416
	li t1, 67
	sw t1, 268(t0)
	li t1, 68
	li t0, 200
	blt t1, t0, .LBB143
	j .LBB144
.LBB142:
	j .LBB140
.LBB143:
	addiw t0, s0, -416
	li t1, 68
	sw t1, 272(t0)
	li t1, 69
	li t0, 200
	blt t1, t0, .LBB145
	j .LBB146
.LBB144:
	j .LBB142
.LBB145:
	addiw t0, s0, -416
	li t1, 69
	sw t1, 276(t0)
	li t1, 70
	li t0, 200
	blt t1, t0, .LBB147
	j .LBB148
.LBB146:
	j .LBB144
.LBB147:
	addiw t0, s0, -416
	li t1, 70
	sw t1, 280(t0)
	li t1, 71
	li t0, 200
	blt t1, t0, .LBB149
	j .LBB150
.LBB148:
	j .LBB146
.LBB149:
	addiw t0, s0, -416
	li t1, 71
	sw t1, 284(t0)
	li t1, 72
	li t0, 200
	blt t1, t0, .LBB151
	j .LBB152
.LBB150:
	j .LBB148
.LBB151:
	addiw t0, s0, -416
	li t1, 72
	sw t1, 288(t0)
	li t1, 73
	li t0, 200
	blt t1, t0, .LBB153
	j .LBB154
.LBB152:
	j .LBB150
.LBB153:
	addiw t0, s0, -416
	li t1, 73
	sw t1, 292(t0)
	li t1, 74
	li t0, 200
	blt t1, t0, .LBB155
	j .LBB156
.LBB154:
	j .LBB152
.LBB155:
	addiw t0, s0, -416
	li t1, 74
	sw t1, 296(t0)
	li t1, 75
	li t0, 200
	blt t1, t0, .LBB157
	j .LBB158
.LBB156:
	j .LBB154
.LBB157:
	addiw t1, s0, -416
	li t0, 75
	sw t0, 300(t1)
	li t1, 76
	li t0, 200
	blt t1, t0, .LBB159
	j .LBB160
.LBB158:
	j .LBB156
.LBB159:
	addiw t1, s0, -416
	li t0, 76
	sw t0, 304(t1)
	li t1, 77
	li t0, 200
	blt t1, t0, .LBB161
	j .LBB162
.LBB160:
	j .LBB158
.LBB161:
	addiw t1, s0, -416
	li t0, 77
	sw t0, 308(t1)
	li t1, 78
	li t0, 200
	blt t1, t0, .LBB163
	j .LBB164
.LBB162:
	j .LBB160
.LBB163:
	addiw t1, s0, -416
	li t0, 78
	sw t0, 312(t1)
	li t1, 79
	li t0, 200
	blt t1, t0, .LBB165
	j .LBB166
.LBB164:
	j .LBB162
.LBB165:
	addiw t1, s0, -416
	li t0, 79
	sw t0, 316(t1)
	li t1, 80
	li t0, 200
	blt t1, t0, .LBB167
	j .LBB168
.LBB166:
	j .LBB164
.LBB167:
	addiw t0, s0, -416
	li t1, 80
	sw t1, 320(t0)
	li t1, 81
	li t0, 200
	blt t1, t0, .LBB169
	j .LBB170
.LBB168:
	j .LBB166
.LBB169:
	addiw t1, s0, -416
	li t0, 81
	sw t0, 324(t1)
	li t1, 82
	li t0, 200
	blt t1, t0, .LBB171
	j .LBB172
.LBB170:
	j .LBB168
.LBB171:
	addiw t1, s0, -416
	li t0, 82
	sw t0, 328(t1)
	li t1, 83
	li t0, 200
	blt t1, t0, .LBB173
	j .LBB174
.LBB172:
	j .LBB170
.LBB173:
	addiw t1, s0, -416
	li t0, 83
	sw t0, 332(t1)
	li t1, 84
	li t0, 200
	blt t1, t0, .LBB175
	j .LBB176
.LBB174:
	j .LBB172
.LBB175:
	addiw t0, s0, -416
	li t1, 84
	sw t1, 336(t0)
	li t1, 85
	li t0, 200
	blt t1, t0, .LBB177
	j .LBB178
.LBB176:
	j .LBB174
.LBB177:
	addiw t0, s0, -416
	li t1, 85
	sw t1, 340(t0)
	li t1, 86
	li t0, 200
	blt t1, t0, .LBB179
	j .LBB180
.LBB178:
	j .LBB176
.LBB179:
	addiw t0, s0, -416
	li t1, 86
	sw t1, 344(t0)
	li t1, 87
	li t0, 200
	blt t1, t0, .LBB181
	j .LBB182
.LBB180:
	j .LBB178
.LBB181:
	addiw t0, s0, -416
	li t1, 87
	sw t1, 348(t0)
	li t1, 88
	li t0, 200
	blt t1, t0, .LBB183
	j .LBB184
.LBB182:
	j .LBB180
.LBB183:
	addiw t0, s0, -416
	li t1, 88
	sw t1, 352(t0)
	li t1, 89
	li t0, 200
	blt t1, t0, .LBB185
	j .LBB186
.LBB184:
	j .LBB182
.LBB185:
	addiw t0, s0, -416
	li t1, 89
	sw t1, 356(t0)
	li t1, 90
	li t0, 200
	blt t1, t0, .LBB187
	j .LBB188
.LBB186:
	j .LBB184
.LBB187:
	addiw t0, s0, -416
	li t1, 90
	sw t1, 360(t0)
	li t1, 91
	li t0, 200
	blt t1, t0, .LBB189
	j .LBB190
.LBB188:
	j .LBB186
.LBB189:
	addiw t0, s0, -416
	li t1, 91
	sw t1, 364(t0)
	li t1, 92
	li t0, 200
	blt t1, t0, .LBB191
	j .LBB192
.LBB190:
	j .LBB188
.LBB191:
	addiw t0, s0, -416
	li t1, 92
	sw t1, 368(t0)
	li t1, 93
	li t0, 200
	blt t1, t0, .LBB193
	j .LBB194
.LBB192:
	j .LBB190
.LBB193:
	addiw t0, s0, -416
	li t1, 93
	sw t1, 372(t0)
	li t1, 94
	li t0, 200
	blt t1, t0, .LBB195
	j .LBB196
.LBB194:
	j .LBB192
.LBB195:
	addiw t0, s0, -416
	li t1, 94
	sw t1, 376(t0)
	li t1, 95
	li t0, 200
	blt t1, t0, .LBB197
	j .LBB198
.LBB196:
	j .LBB194
.LBB197:
	addiw t0, s0, -416
	li t1, 95
	sw t1, 380(t0)
	li t1, 96
	li t0, 200
	blt t1, t0, .LBB199
	j .LBB200
.LBB198:
	j .LBB196
.LBB199:
	addiw t0, s0, -416
	li t1, 96
	sw t1, 384(t0)
	li t1, 97
	li t0, 200
	blt t1, t0, .LBB201
	j .LBB202
.LBB200:
	j .LBB198
.LBB201:
	addiw t0, s0, -416
	li t1, 97
	sw t1, 388(t0)
	li t1, 98
	li t0, 200
	blt t1, t0, .LBB203
	j .LBB204
.LBB202:
	j .LBB200
.LBB203:
	addiw t1, s0, -416
	li t0, 98
	sw t0, 392(t1)
	li t1, 99
	li t0, 200
	blt t1, t0, .LBB205
	j .LBB206
.LBB204:
	j .LBB202
.LBB205:
	addiw t1, s0, -416
	li t0, 99
	sw t0, 396(t1)
	j .LBB206
.LBB206:
	j .LBB204
.LBB12:
	li t0, 100
	blt t1, t0, .LBB207
	j .LBB208
.LBB207:
	addiw t0, s0, -416
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t2, t2, t0
	addiw t1, t1, 1
	mv t2, t2
	mv t1, t1
	j .LBB12
.LBB208:
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	remw t2, t2, t1
	mv t2, t2
	mv t0, t0
	j .LBB5
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB209:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 324
	call _sysy_starttime
	call getint
	mv a0, a0
	mv a0, a0
	call func
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li a0, 328
	call _sysy_stoptime
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
