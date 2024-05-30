    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t1, a0
	mv t0, zero
	j .LBB1
.LBB1:
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	call getint
	mv a0, a0
	blt zero, a0, .LBB4
	j .LBB5
.LBB3:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB6:
	blt zero, a0, .LBB7
	j .LBB8
.LBB5:
	addiw a0, 0, 100
	mv a0, a0
	j .LBB9
.LBB4:
	li t0, 100
	blt a0, t0, .LBB6
	j .LBB5
.LBB10:
	blt zero, a0, .LBB11
	j .LBB12
.LBB8:
	addiw a0, 0, 99
	mv a0, a0
	j .LBB13
.LBB7:
	li t0, 99
	blt a0, t0, .LBB10
	j .LBB8
.LBB14:
	blt zero, a0, .LBB15
	j .LBB16
.LBB12:
	addiw a0, 0, 98
	mv a0, a0
	j .LBB17
.LBB11:
	li t0, 98
	blt a0, t0, .LBB14
	j .LBB12
.LBB18:
	blt zero, a0, .LBB19
	j .LBB20
.LBB16:
	addiw a0, 0, 97
	mv a0, a0
	j .LBB21
.LBB15:
	li t0, 97
	blt a0, t0, .LBB18
	j .LBB16
.LBB22:
	blt zero, a0, .LBB23
	j .LBB24
.LBB20:
	addiw a0, 0, 96
	mv a0, a0
	j .LBB25
.LBB19:
	li t0, 96
	blt a0, t0, .LBB22
	j .LBB20
.LBB26:
	blt zero, a0, .LBB27
	j .LBB28
.LBB24:
	addiw a0, 0, 95
	mv a0, a0
	j .LBB29
.LBB23:
	li t0, 95
	blt a0, t0, .LBB26
	j .LBB24
.LBB30:
	blt zero, a0, .LBB31
	j .LBB32
.LBB28:
	addiw a0, 0, 94
	mv a0, a0
	j .LBB33
.LBB27:
	li t0, 94
	blt a0, t0, .LBB30
	j .LBB28
.LBB34:
	blt zero, a0, .LBB35
	j .LBB36
.LBB32:
	addiw a0, 0, 93
	mv a0, a0
	j .LBB37
.LBB31:
	li t0, 93
	blt a0, t0, .LBB34
	j .LBB32
.LBB38:
	blt zero, a0, .LBB39
	j .LBB40
.LBB36:
	addiw a0, 0, 92
	mv a0, a0
	j .LBB41
.LBB35:
	li t0, 92
	blt a0, t0, .LBB38
	j .LBB36
.LBB42:
	blt zero, a0, .LBB43
	j .LBB44
.LBB40:
	addiw a0, 0, 91
	mv a0, a0
	j .LBB45
.LBB39:
	li t0, 91
	blt a0, t0, .LBB42
	j .LBB40
.LBB46:
	blt zero, a0, .LBB47
	j .LBB48
.LBB44:
	addiw a0, 0, 90
	mv a0, a0
	j .LBB49
.LBB43:
	li t0, 90
	blt a0, t0, .LBB46
	j .LBB44
.LBB50:
	blt zero, a0, .LBB51
	j .LBB52
.LBB48:
	addiw a0, 0, 89
	mv a0, a0
	j .LBB53
.LBB47:
	li t0, 89
	blt a0, t0, .LBB50
	j .LBB48
.LBB54:
	blt zero, a0, .LBB55
	j .LBB56
.LBB52:
	addiw a0, 0, 88
	mv a0, a0
	j .LBB57
.LBB51:
	li t0, 88
	blt a0, t0, .LBB54
	j .LBB52
.LBB58:
	blt zero, a0, .LBB59
	j .LBB60
.LBB56:
	addiw a0, 0, 87
	mv a0, a0
	j .LBB61
.LBB55:
	li t0, 87
	blt a0, t0, .LBB58
	j .LBB56
.LBB62:
	blt zero, a0, .LBB63
	j .LBB64
.LBB60:
	addiw a0, 0, 86
	mv a0, a0
	j .LBB65
.LBB59:
	li t0, 86
	blt a0, t0, .LBB62
	j .LBB60
.LBB66:
	blt zero, a0, .LBB67
	j .LBB68
.LBB64:
	addiw a0, 0, 85
	mv a0, a0
	j .LBB69
.LBB63:
	li t0, 85
	blt a0, t0, .LBB66
	j .LBB64
.LBB70:
	blt zero, a0, .LBB71
	j .LBB72
.LBB68:
	addiw a0, 0, 84
	mv a0, a0
	j .LBB73
.LBB67:
	li t0, 84
	blt a0, t0, .LBB70
	j .LBB68
.LBB74:
	blt zero, a0, .LBB75
	j .LBB76
.LBB72:
	addiw a0, 0, 83
	mv a0, a0
	j .LBB77
.LBB71:
	li t0, 83
	blt a0, t0, .LBB74
	j .LBB72
.LBB78:
	blt zero, a0, .LBB79
	j .LBB80
.LBB76:
	addiw a0, 0, 82
	mv a0, a0
	j .LBB81
.LBB75:
	li t0, 82
	blt a0, t0, .LBB78
	j .LBB76
.LBB82:
	blt zero, a0, .LBB83
	j .LBB84
.LBB80:
	addiw a0, 0, 81
	mv a0, a0
	j .LBB85
.LBB79:
	li t0, 81
	blt a0, t0, .LBB82
	j .LBB80
.LBB86:
	blt zero, a0, .LBB87
	j .LBB88
.LBB84:
	addiw a0, 0, 80
	mv a0, a0
	j .LBB89
.LBB83:
	li t0, 80
	blt a0, t0, .LBB86
	j .LBB84
.LBB90:
	blt zero, a0, .LBB91
	j .LBB92
.LBB88:
	addiw a0, 0, 79
	mv a0, a0
	j .LBB93
.LBB87:
	li t0, 79
	blt a0, t0, .LBB90
	j .LBB88
.LBB94:
	blt zero, a0, .LBB95
	j .LBB96
.LBB92:
	addiw a0, 0, 78
	mv a0, a0
	j .LBB97
.LBB91:
	li t0, 78
	blt a0, t0, .LBB94
	j .LBB92
.LBB98:
	blt zero, a0, .LBB99
	j .LBB100
.LBB96:
	addiw a0, 0, 77
	mv a0, a0
	j .LBB101
.LBB95:
	li t0, 77
	blt a0, t0, .LBB98
	j .LBB96
.LBB102:
	blt zero, a0, .LBB103
	j .LBB104
.LBB100:
	addiw a0, 0, 76
	mv a0, a0
	j .LBB105
.LBB99:
	li t0, 76
	blt a0, t0, .LBB102
	j .LBB100
.LBB106:
	blt zero, a0, .LBB107
	j .LBB108
.LBB104:
	addiw a0, 0, 75
	mv a0, a0
	j .LBB109
.LBB103:
	li t0, 75
	blt a0, t0, .LBB106
	j .LBB104
.LBB110:
	blt zero, a0, .LBB111
	j .LBB112
.LBB108:
	addiw a0, 0, 74
	mv a0, a0
	j .LBB113
.LBB107:
	li t0, 74
	blt a0, t0, .LBB110
	j .LBB108
.LBB114:
	blt zero, a0, .LBB115
	j .LBB116
.LBB112:
	addiw a0, 0, 73
	mv a0, a0
	j .LBB117
.LBB111:
	li t0, 73
	blt a0, t0, .LBB114
	j .LBB112
.LBB118:
	blt zero, a0, .LBB119
	j .LBB120
.LBB116:
	addiw a0, 0, 72
	mv a0, a0
	j .LBB121
.LBB115:
	li t0, 72
	blt a0, t0, .LBB118
	j .LBB116
.LBB122:
	blt zero, a0, .LBB123
	j .LBB124
.LBB120:
	addiw a0, 0, 71
	mv a0, a0
	j .LBB125
.LBB119:
	li t0, 71
	blt a0, t0, .LBB122
	j .LBB120
.LBB126:
	blt zero, a0, .LBB127
	j .LBB128
.LBB124:
	addiw a0, 0, 70
	mv a0, a0
	j .LBB129
.LBB123:
	li t0, 70
	blt a0, t0, .LBB126
	j .LBB124
.LBB130:
	blt zero, a0, .LBB131
	j .LBB132
.LBB128:
	addiw a0, 0, 69
	mv a0, a0
	j .LBB133
.LBB127:
	li t0, 69
	blt a0, t0, .LBB130
	j .LBB128
.LBB134:
	blt zero, a0, .LBB135
	j .LBB136
.LBB132:
	addiw a0, 0, 68
	mv a0, a0
	j .LBB137
.LBB131:
	li t0, 68
	blt a0, t0, .LBB134
	j .LBB132
.LBB138:
	blt zero, a0, .LBB139
	j .LBB140
.LBB136:
	addiw a0, 0, 67
	mv a0, a0
	j .LBB141
.LBB135:
	li t0, 67
	blt a0, t0, .LBB138
	j .LBB136
.LBB142:
	blt zero, a0, .LBB143
	j .LBB144
.LBB140:
	addiw a0, 0, 66
	mv a0, a0
	j .LBB145
.LBB139:
	li t0, 66
	blt a0, t0, .LBB142
	j .LBB140
.LBB146:
	blt zero, a0, .LBB147
	j .LBB148
.LBB144:
	addiw a0, 0, 65
	mv a0, a0
	j .LBB149
.LBB143:
	li t0, 65
	blt a0, t0, .LBB146
	j .LBB144
.LBB150:
	blt zero, a0, .LBB151
	j .LBB152
.LBB148:
	addiw a0, 0, 64
	mv a0, a0
	j .LBB153
.LBB147:
	li t0, 64
	blt a0, t0, .LBB150
	j .LBB148
.LBB154:
	blt zero, a0, .LBB155
	j .LBB156
.LBB152:
	addiw a0, 0, 63
	mv a0, a0
	j .LBB157
.LBB151:
	li t0, 63
	blt a0, t0, .LBB154
	j .LBB152
.LBB158:
	blt zero, a0, .LBB159
	j .LBB160
.LBB156:
	addiw a0, 0, 62
	mv a0, a0
	j .LBB161
.LBB155:
	li t0, 62
	blt a0, t0, .LBB158
	j .LBB156
.LBB162:
	blt zero, a0, .LBB163
	j .LBB164
.LBB160:
	addiw a0, 0, 61
	mv a0, a0
	j .LBB165
.LBB159:
	li t0, 61
	blt a0, t0, .LBB162
	j .LBB160
.LBB166:
	blt zero, a0, .LBB167
	j .LBB168
.LBB164:
	addiw a0, 0, 60
	mv a0, a0
	j .LBB169
.LBB163:
	li t0, 60
	blt a0, t0, .LBB166
	j .LBB164
.LBB170:
	blt zero, a0, .LBB171
	j .LBB172
.LBB168:
	addiw a0, 0, 59
	mv a0, a0
	j .LBB173
.LBB167:
	li t0, 59
	blt a0, t0, .LBB170
	j .LBB168
.LBB174:
	blt zero, a0, .LBB175
	j .LBB176
.LBB172:
	addiw a0, 0, 58
	mv a0, a0
	j .LBB177
.LBB171:
	li t0, 58
	blt a0, t0, .LBB174
	j .LBB172
.LBB178:
	blt zero, a0, .LBB179
	j .LBB180
.LBB176:
	addiw a0, 0, 57
	mv a0, a0
	j .LBB181
.LBB175:
	li t0, 57
	blt a0, t0, .LBB178
	j .LBB176
.LBB182:
	blt zero, a0, .LBB183
	j .LBB184
.LBB180:
	addiw a0, 0, 56
	mv a0, a0
	j .LBB185
.LBB179:
	li t0, 56
	blt a0, t0, .LBB182
	j .LBB180
.LBB186:
	blt zero, a0, .LBB187
	j .LBB188
.LBB184:
	addiw a0, 0, 55
	mv a0, a0
	j .LBB189
.LBB183:
	li t0, 55
	blt a0, t0, .LBB186
	j .LBB184
.LBB190:
	blt zero, a0, .LBB191
	j .LBB192
.LBB188:
	addiw a0, 0, 54
	mv a0, a0
	j .LBB193
.LBB187:
	li t0, 54
	blt a0, t0, .LBB190
	j .LBB188
.LBB194:
	blt zero, a0, .LBB195
	j .LBB196
.LBB192:
	addiw a0, 0, 53
	mv a0, a0
	j .LBB197
.LBB191:
	li t0, 53
	blt a0, t0, .LBB194
	j .LBB192
.LBB198:
	blt zero, a0, .LBB199
	j .LBB200
.LBB196:
	addiw a0, 0, 52
	mv a0, a0
	j .LBB201
.LBB195:
	li t0, 52
	blt a0, t0, .LBB198
	j .LBB196
.LBB202:
	blt zero, a0, .LBB203
	j .LBB204
.LBB200:
	addiw a0, 0, 51
	mv a0, a0
	j .LBB205
.LBB199:
	li t0, 51
	blt a0, t0, .LBB202
	j .LBB200
.LBB206:
	blt zero, a0, .LBB207
	j .LBB208
.LBB204:
	addiw a0, 0, 50
	mv a0, a0
	j .LBB209
.LBB203:
	li t0, 50
	blt a0, t0, .LBB206
	j .LBB204
.LBB210:
	blt zero, a0, .LBB211
	j .LBB212
.LBB208:
	addiw a0, 0, 49
	mv a0, a0
	j .LBB213
.LBB207:
	li t0, 49
	blt a0, t0, .LBB210
	j .LBB208
.LBB214:
	blt zero, a0, .LBB215
	j .LBB216
.LBB212:
	addiw a0, 0, 48
	mv a0, a0
	j .LBB217
.LBB211:
	li t0, 48
	blt a0, t0, .LBB214
	j .LBB212
.LBB218:
	blt zero, a0, .LBB219
	j .LBB220
.LBB216:
	addiw a0, 0, 47
	mv a0, a0
	j .LBB221
.LBB215:
	li t0, 47
	blt a0, t0, .LBB218
	j .LBB216
.LBB222:
	blt zero, a0, .LBB223
	j .LBB224
.LBB220:
	addiw a0, 0, 46
	mv a0, a0
	j .LBB225
.LBB219:
	li t0, 46
	blt a0, t0, .LBB222
	j .LBB220
.LBB226:
	blt zero, a0, .LBB227
	j .LBB228
.LBB224:
	addiw a0, 0, 45
	mv a0, a0
	j .LBB229
.LBB223:
	li t0, 45
	blt a0, t0, .LBB226
	j .LBB224
.LBB230:
	blt zero, a0, .LBB231
	j .LBB232
.LBB228:
	addiw a0, 0, 44
	mv a0, a0
	j .LBB233
.LBB227:
	li t0, 44
	blt a0, t0, .LBB230
	j .LBB228
.LBB234:
	blt zero, a0, .LBB235
	j .LBB236
.LBB232:
	addiw a0, 0, 43
	mv a0, a0
	j .LBB237
.LBB231:
	li t0, 43
	blt a0, t0, .LBB234
	j .LBB232
.LBB238:
	blt zero, a0, .LBB239
	j .LBB240
.LBB236:
	addiw a0, 0, 42
	mv a0, a0
	j .LBB241
.LBB235:
	li t0, 42
	blt a0, t0, .LBB238
	j .LBB236
.LBB242:
	blt zero, a0, .LBB243
	j .LBB244
.LBB240:
	addiw a0, 0, 41
	mv a0, a0
	j .LBB245
.LBB239:
	li t0, 41
	blt a0, t0, .LBB242
	j .LBB240
.LBB246:
	blt zero, a0, .LBB247
	j .LBB248
.LBB244:
	addiw a0, 0, 40
	mv a0, a0
	j .LBB249
.LBB243:
	li t0, 40
	blt a0, t0, .LBB246
	j .LBB244
.LBB250:
	blt zero, a0, .LBB251
	j .LBB252
.LBB248:
	addiw a0, 0, 39
	mv a0, a0
	j .LBB253
.LBB247:
	li t0, 39
	blt a0, t0, .LBB250
	j .LBB248
.LBB254:
	blt zero, a0, .LBB255
	j .LBB256
.LBB252:
	addiw a0, 0, 38
	mv a0, a0
	j .LBB257
.LBB251:
	li t0, 38
	blt a0, t0, .LBB254
	j .LBB252
.LBB258:
	blt zero, a0, .LBB259
	j .LBB260
.LBB256:
	addiw a0, 0, 37
	mv a0, a0
	j .LBB261
.LBB255:
	li t0, 37
	blt a0, t0, .LBB258
	j .LBB256
.LBB262:
	blt zero, a0, .LBB263
	j .LBB264
.LBB260:
	addiw a0, 0, 36
	mv a0, a0
	j .LBB265
.LBB259:
	li t0, 36
	blt a0, t0, .LBB262
	j .LBB260
.LBB266:
	blt zero, a0, .LBB267
	j .LBB268
.LBB264:
	addiw a0, 0, 35
	mv a0, a0
	j .LBB269
.LBB263:
	li t0, 35
	blt a0, t0, .LBB266
	j .LBB264
.LBB270:
	blt zero, a0, .LBB271
	j .LBB272
.LBB268:
	addiw a0, 0, 34
	mv a0, a0
	j .LBB273
.LBB267:
	li t0, 34
	blt a0, t0, .LBB270
	j .LBB268
.LBB274:
	blt zero, a0, .LBB275
	j .LBB276
.LBB272:
	addiw a0, 0, 33
	mv a0, a0
	j .LBB277
.LBB271:
	li t0, 33
	blt a0, t0, .LBB274
	j .LBB272
.LBB278:
	blt zero, a0, .LBB279
	j .LBB280
.LBB276:
	addiw a0, 0, 32
	mv a0, a0
	j .LBB281
.LBB275:
	li t0, 32
	blt a0, t0, .LBB278
	j .LBB276
.LBB282:
	blt zero, a0, .LBB283
	j .LBB284
.LBB280:
	addiw a0, 0, 31
	mv a0, a0
	j .LBB285
.LBB279:
	li t0, 31
	blt a0, t0, .LBB282
	j .LBB280
.LBB286:
	blt zero, a0, .LBB287
	j .LBB288
.LBB284:
	addiw a0, 0, 30
	mv a0, a0
	j .LBB289
.LBB283:
	li t0, 30
	blt a0, t0, .LBB286
	j .LBB284
.LBB290:
	blt zero, a0, .LBB291
	j .LBB292
.LBB288:
	addiw a0, 0, 29
	mv a0, a0
	j .LBB293
.LBB287:
	li t0, 29
	blt a0, t0, .LBB290
	j .LBB288
.LBB294:
	blt zero, a0, .LBB295
	j .LBB296
.LBB292:
	addiw a0, 0, 28
	mv a0, a0
	j .LBB297
.LBB291:
	li t0, 28
	blt a0, t0, .LBB294
	j .LBB292
.LBB298:
	blt zero, a0, .LBB299
	j .LBB300
.LBB296:
	addiw a0, 0, 27
	mv a0, a0
	j .LBB301
.LBB295:
	li t0, 27
	blt a0, t0, .LBB298
	j .LBB296
.LBB302:
	blt zero, a0, .LBB303
	j .LBB304
.LBB300:
	addiw a0, 0, 26
	mv a0, a0
	j .LBB305
.LBB299:
	li t0, 26
	blt a0, t0, .LBB302
	j .LBB300
.LBB306:
	blt zero, a0, .LBB307
	j .LBB308
.LBB304:
	addiw a0, 0, 25
	mv a0, a0
	j .LBB309
.LBB303:
	li t0, 25
	blt a0, t0, .LBB306
	j .LBB304
.LBB310:
	blt zero, a0, .LBB311
	j .LBB312
.LBB308:
	addiw a0, 0, 24
	mv a0, a0
	j .LBB313
.LBB307:
	li t0, 24
	blt a0, t0, .LBB310
	j .LBB308
.LBB314:
	blt zero, a0, .LBB315
	j .LBB316
.LBB312:
	addiw a0, 0, 23
	mv a0, a0
	j .LBB317
.LBB311:
	li t0, 23
	blt a0, t0, .LBB314
	j .LBB312
.LBB318:
	blt zero, a0, .LBB319
	j .LBB320
.LBB316:
	addiw a0, 0, 22
	mv a0, a0
	j .LBB321
.LBB315:
	li t0, 22
	blt a0, t0, .LBB318
	j .LBB316
.LBB322:
	blt zero, a0, .LBB323
	j .LBB324
.LBB320:
	addiw a0, 0, 21
	mv a0, a0
	j .LBB325
.LBB319:
	li t0, 21
	blt a0, t0, .LBB322
	j .LBB320
.LBB326:
	blt zero, a0, .LBB327
	j .LBB328
.LBB324:
	addiw a0, 0, 20
	mv a0, a0
	j .LBB329
.LBB323:
	li t0, 20
	blt a0, t0, .LBB326
	j .LBB324
.LBB330:
	blt zero, a0, .LBB331
	j .LBB332
.LBB328:
	addiw a0, 0, 19
	mv a0, a0
	j .LBB333
.LBB327:
	li t0, 19
	blt a0, t0, .LBB330
	j .LBB328
.LBB334:
	blt zero, a0, .LBB335
	j .LBB336
.LBB332:
	addiw a0, 0, 18
	mv a0, a0
	j .LBB337
.LBB331:
	li t0, 18
	blt a0, t0, .LBB334
	j .LBB332
.LBB338:
	blt zero, a0, .LBB339
	j .LBB340
.LBB336:
	addiw a0, 0, 17
	mv a0, a0
	j .LBB341
.LBB335:
	li t0, 17
	blt a0, t0, .LBB338
	j .LBB336
.LBB342:
	blt zero, a0, .LBB343
	j .LBB344
.LBB340:
	addiw a0, 0, 16
	mv a0, a0
	j .LBB345
.LBB339:
	li t0, 16
	blt a0, t0, .LBB342
	j .LBB340
.LBB346:
	blt zero, a0, .LBB347
	j .LBB348
.LBB344:
	addiw a0, 0, 15
	mv a0, a0
	j .LBB349
.LBB343:
	li t0, 15
	blt a0, t0, .LBB346
	j .LBB344
.LBB350:
	blt zero, a0, .LBB351
	j .LBB352
.LBB348:
	addiw a0, 0, 14
	mv a0, a0
	j .LBB353
.LBB347:
	li t0, 14
	blt a0, t0, .LBB350
	j .LBB348
.LBB354:
	blt zero, a0, .LBB355
	j .LBB356
.LBB352:
	addiw a0, 0, 13
	mv a0, a0
	j .LBB357
.LBB351:
	li t0, 13
	blt a0, t0, .LBB354
	j .LBB352
.LBB358:
	blt zero, a0, .LBB359
	j .LBB360
.LBB356:
	addiw a0, 0, 12
	mv a0, a0
	j .LBB361
.LBB355:
	li t0, 12
	blt a0, t0, .LBB358
	j .LBB356
.LBB362:
	blt zero, a0, .LBB363
	j .LBB364
.LBB360:
	addiw a0, 0, 11
	mv a0, a0
	j .LBB365
.LBB359:
	li t0, 11
	blt a0, t0, .LBB362
	j .LBB360
.LBB366:
	blt zero, a0, .LBB367
	j .LBB368
.LBB364:
	addiw a0, 0, 10
	mv a0, a0
	j .LBB369
.LBB363:
	li t0, 10
	blt a0, t0, .LBB366
	j .LBB364
.LBB370:
	blt zero, a0, .LBB371
	j .LBB372
.LBB368:
	addiw a0, 0, 9
	mv a0, a0
	j .LBB373
.LBB367:
	li t0, 9
	blt a0, t0, .LBB370
	j .LBB368
.LBB374:
	blt zero, a0, .LBB375
	j .LBB376
.LBB372:
	addiw a0, 0, 8
	mv a0, a0
	j .LBB377
.LBB371:
	li t0, 8
	blt a0, t0, .LBB374
	j .LBB372
.LBB378:
	blt zero, a0, .LBB379
	j .LBB380
.LBB376:
	addiw a0, 0, 7
	mv a0, a0
	j .LBB381
.LBB375:
	li t0, 7
	blt a0, t0, .LBB378
	j .LBB376
.LBB382:
	blt zero, a0, .LBB383
	j .LBB384
.LBB380:
	addiw a0, 0, 6
	mv a0, a0
	j .LBB385
.LBB379:
	li t0, 6
	blt a0, t0, .LBB382
	j .LBB380
.LBB386:
	blt zero, a0, .LBB387
	j .LBB388
.LBB384:
	addiw a0, 0, 5
	mv a0, a0
	j .LBB389
.LBB383:
	li t0, 5
	blt a0, t0, .LBB386
	j .LBB384
.LBB390:
	blt zero, a0, .LBB391
	j .LBB392
.LBB388:
	addiw a0, 0, 4
	mv a0, a0
	j .LBB393
.LBB387:
	li t0, 4
	blt a0, t0, .LBB390
	j .LBB388
.LBB394:
	blt zero, a0, .LBB395
	j .LBB396
.LBB392:
	addiw a0, 0, 3
	mv a0, a0
	j .LBB397
.LBB391:
	li t0, 3
	blt a0, t0, .LBB394
	j .LBB392
.LBB398:
	addiw a0, 0, 1
	mv a0, a0
	j .LBB399
.LBB396:
	addiw a0, 0, 2
	mv a0, a0
	j .LBB399
.LBB395:
	li t0, 2
	blt a0, t0, .LBB398
	j .LBB396
.LBB399:
	mv a0, a0
	j .LBB397
.LBB397:
	mv a0, a0
	j .LBB393
.LBB393:
	mv a0, a0
	j .LBB389
.LBB389:
	mv a0, a0
	j .LBB385
.LBB385:
	mv a0, a0
	j .LBB381
.LBB381:
	mv a0, a0
	j .LBB377
.LBB377:
	mv a0, a0
	j .LBB373
.LBB373:
	mv a0, a0
	j .LBB369
.LBB369:
	mv a0, a0
	j .LBB365
.LBB365:
	mv a0, a0
	j .LBB361
.LBB361:
	mv a0, a0
	j .LBB357
.LBB357:
	mv a0, a0
	j .LBB353
.LBB353:
	mv a0, a0
	j .LBB349
.LBB349:
	mv a0, a0
	j .LBB345
.LBB345:
	mv a0, a0
	j .LBB341
.LBB341:
	mv a0, a0
	j .LBB337
.LBB337:
	mv a0, a0
	j .LBB333
.LBB333:
	mv a0, a0
	j .LBB329
.LBB329:
	mv a0, a0
	j .LBB325
.LBB325:
	mv a0, a0
	j .LBB321
.LBB321:
	mv a0, a0
	j .LBB317
.LBB317:
	mv a0, a0
	j .LBB313
.LBB313:
	mv a0, a0
	j .LBB309
.LBB309:
	mv a0, a0
	j .LBB305
.LBB305:
	mv a0, a0
	j .LBB301
.LBB301:
	mv a0, a0
	j .LBB297
.LBB297:
	mv a0, a0
	j .LBB293
.LBB293:
	mv a0, a0
	j .LBB289
.LBB289:
	mv a0, a0
	j .LBB285
.LBB285:
	mv a0, a0
	j .LBB281
.LBB281:
	mv a0, a0
	j .LBB277
.LBB277:
	mv a0, a0
	j .LBB273
.LBB273:
	mv a0, a0
	j .LBB269
.LBB269:
	mv a0, a0
	j .LBB265
.LBB265:
	mv a0, a0
	j .LBB261
.LBB261:
	mv a0, a0
	j .LBB257
.LBB257:
	mv a0, a0
	j .LBB253
.LBB253:
	mv a0, a0
	j .LBB249
.LBB249:
	mv a0, a0
	j .LBB245
.LBB245:
	mv a0, a0
	j .LBB241
.LBB241:
	mv a0, a0
	j .LBB237
.LBB237:
	mv a0, a0
	j .LBB233
.LBB233:
	mv a0, a0
	j .LBB229
.LBB229:
	mv a0, a0
	j .LBB225
.LBB225:
	mv a0, a0
	j .LBB221
.LBB221:
	mv a0, a0
	j .LBB217
.LBB217:
	mv a0, a0
	j .LBB213
.LBB213:
	mv a0, a0
	j .LBB209
.LBB209:
	mv a0, a0
	j .LBB205
.LBB205:
	mv a0, a0
	j .LBB201
.LBB201:
	mv a0, a0
	j .LBB197
.LBB197:
	mv a0, a0
	j .LBB193
.LBB193:
	mv a0, a0
	j .LBB189
.LBB189:
	mv a0, a0
	j .LBB185
.LBB185:
	mv a0, a0
	j .LBB181
.LBB181:
	mv a0, a0
	j .LBB177
.LBB177:
	mv a0, a0
	j .LBB173
.LBB173:
	mv a0, a0
	j .LBB169
.LBB169:
	mv a0, a0
	j .LBB165
.LBB165:
	mv a0, a0
	j .LBB161
.LBB161:
	mv a0, a0
	j .LBB157
.LBB157:
	mv a0, a0
	j .LBB153
.LBB153:
	mv a0, a0
	j .LBB149
.LBB149:
	mv a0, a0
	j .LBB145
.LBB145:
	mv a0, a0
	j .LBB141
.LBB141:
	mv a0, a0
	j .LBB137
.LBB137:
	mv a0, a0
	j .LBB133
.LBB133:
	mv a0, a0
	j .LBB129
.LBB129:
	mv a0, a0
	j .LBB125
.LBB125:
	mv a0, a0
	j .LBB121
.LBB121:
	mv a0, a0
	j .LBB117
.LBB117:
	mv a0, a0
	j .LBB113
.LBB113:
	mv a0, a0
	j .LBB109
.LBB109:
	mv a0, a0
	j .LBB105
.LBB105:
	mv a0, a0
	j .LBB101
.LBB101:
	mv a0, a0
	j .LBB97
.LBB97:
	mv a0, a0
	j .LBB93
.LBB93:
	mv a0, a0
	j .LBB89
.LBB89:
	mv a0, a0
	j .LBB85
.LBB85:
	mv a0, a0
	j .LBB81
.LBB81:
	mv a0, a0
	j .LBB77
.LBB77:
	mv a0, a0
	j .LBB73
.LBB73:
	mv a0, a0
	j .LBB69
.LBB69:
	mv a0, a0
	j .LBB65
.LBB65:
	mv a0, a0
	j .LBB61
.LBB61:
	mv a0, a0
	j .LBB57
.LBB57:
	mv a0, a0
	j .LBB53
.LBB53:
	mv a0, a0
	j .LBB49
.LBB49:
	mv a0, a0
	j .LBB45
.LBB45:
	mv a0, a0
	j .LBB41
.LBB41:
	mv a0, a0
	j .LBB37
.LBB37:
	mv a0, a0
	j .LBB33
.LBB33:
	mv a0, a0
	j .LBB29
.LBB29:
	mv a0, a0
	j .LBB25
.LBB25:
	mv a0, a0
	j .LBB21
.LBB21:
	mv a0, a0
	j .LBB17
.LBB17:
	mv a0, a0
	j .LBB13
.LBB13:
	mv a0, a0
	j .LBB9
.LBB9:
	mv a0, a0
	call putint
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
    .size main, .-main
