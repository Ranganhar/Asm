    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  SHIFT_TABLE
    .data
    .align  3
    .type  SHIFT_TABLE, @object
    .size  SHIFT_TABLE, 64
SHIFT_TABLE:
    .word  1
    .word  2
    .word  4
    .word  8
    .word  16
    .word  32
    .word  64
    .word  128
    .word  256
    .word  512
    .word  1024
    .word  2048
    .word  4096
    .word  8192
    .word  16384
    .word  32768
    .text
    .align  1
    .globl  long_func
    .type  long_func, @function
long_func:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 1
	mv t0, zero
	li t1, 2
	j .LBB1
.LBB1:
	blt zero, t0, .LBB2
	j .LBB3
.LBB2:
	li t2, 1
	mv t0, t0
	mv t0, zero
	mv t1, zero
	j .LBB4
.LBB3:
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t0, 2
	li s1, 1
	li a0, 1
	j .LBB5
.LBB4:
	li s1, 16
	blt t0, s1, .LBB6
	j .LBB7
.LBB6:
	li s1, 2
	remw s1, t0, s1
	bne s1, zero, .LBB8
	j .LBB717
.LBB7:
	bne t1, zero, .LBB10
	j .LBB719
.LBB12:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB9
.LBB9:
	li s1, 2
	divw t0, t0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	mv t1, t1
	j .LBB4
.LBB8:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB12
	j .LBB718
.LBB10:
	mv t0, zero
	mv s1, t1
	mv a0, a0
	j .LBB13
.LBB11:
	mv s1, t1
	mv s1, t1
	mv t1, zero
	j .LBB14
.LBB13:
	bne s1, zero, .LBB15
	j .LBB16
.LBB15:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB17
.LBB16:
	mv a0, t0
	j .LBB11
.LBB17:
	li a1, 16
	blt t0, a1, .LBB18
	j .LBB19
.LBB18:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB20
	j .LBB720
.LBB19:
	bne t2, zero, .LBB22
	j .LBB722
.LBB24:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB21
.LBB21:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB17
.LBB20:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB24
	j .LBB721
.LBB22:
	mv t2, a0
	mv t0, t0
	j .LBB25
.LBB23:
	mv t2, a0
	mv a0, a0
	j .LBB26
.LBB25:
	bne t2, zero, .LBB27
	j .LBB28
.LBB27:
	mv s1, t2
	mv t2, t0
	mv t0, zero
	mv t1, zero
	j .LBB29
.LBB28:
	mv t0, t0
	j .LBB23
.LBB29:
	li t1, 16
	blt t0, t1, .LBB30
	j .LBB31
.LBB30:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB32
	j .LBB33
.LBB31:
	mv t2, t2
	mv t0, t0
	mv t0, zero
	mv t1, zero
	j .LBB34
.LBB32:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB35
	j .LBB723
.LBB33:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB37
	j .LBB724
.LBB35:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB36
.LBB36:
	mv t1, t1
	j .LBB39
.LBB39:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB29
.LBB37:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB38
.LBB38:
	mv t1, t1
	j .LBB39
.LBB34:
	li s1, 16
	blt t0, s1, .LBB40
	j .LBB41
.LBB40:
	li s1, 2
	remw s1, t0, s1
	bne s1, zero, .LBB42
	j .LBB725
.LBB41:
	j .LBB44
.LBB45:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB43
.LBB43:
	li s1, 2
	divw t0, t0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	mv t1, t1
	j .LBB34
.LBB42:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB45
	j .LBB726
.LBB44:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB46
.LBB46:
	li s1, 16
	blt t0, s1, .LBB47
	j .LBB48
.LBB47:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB49
	j .LBB727
.LBB48:
	j .LBB51
.LBB52:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB50
.LBB50:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB46
.LBB49:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB52
	j .LBB728
.LBB51:
	mv t2, t2
	mv t0, t1
	j .LBB25
.LBB26:
	bne t2, zero, .LBB53
	j .LBB54
.LBB53:
	mv s1, t2
	mv t2, a0
	mv t0, zero
	mv t1, zero
	j .LBB55
.LBB54:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB56
	j .LBB57
.LBB55:
	li t1, 16
	blt t0, t1, .LBB58
	j .LBB59
.LBB58:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB60
	j .LBB61
.LBB59:
	mv t2, t2
	mv a0, a0
	mv t0, zero
	mv t1, zero
	j .LBB62
.LBB60:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB63
	j .LBB729
.LBB61:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB65
	j .LBB730
.LBB63:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB64
.LBB64:
	mv t1, t1
	j .LBB67
.LBB67:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB55
.LBB65:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB66
.LBB66:
	mv t1, t1
	j .LBB67
.LBB62:
	li s1, 16
	blt t0, s1, .LBB68
	j .LBB69
.LBB68:
	li s1, 2
	remw s1, a0, s1
	bne s1, zero, .LBB70
	j .LBB731
.LBB69:
	j .LBB72
.LBB73:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB71
.LBB71:
	li s1, 2
	divw a0, a0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv a0, a0
	mv t0, t0
	mv t1, t1
	j .LBB62
.LBB70:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB73
	j .LBB732
.LBB72:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB74
.LBB74:
	li s1, 16
	blt t0, s1, .LBB75
	j .LBB76
.LBB75:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB77
	j .LBB733
.LBB76:
	j .LBB79
.LBB80:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB78
.LBB78:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB74
.LBB77:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB80
	j .LBB734
.LBB79:
	mv t2, t2
	mv a0, t1
	j .LBB26
.LBB56:
	blt s1, zero, .LBB81
	j .LBB82
.LBB57:
	li t0, 1
	blt zero, t0, .LBB83
	j .LBB84
.LBB81:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB85
.LBB82:
	mv s1, zero
	j .LBB85
.LBB85:
	mv s1, s1
	j .LBB86
.LBB86:
	mv t0, t0
	mv s1, s1
	mv a0, a0
	j .LBB13
.LBB83:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB87
	j .LBB88
.LBB84:
	mv s1, s1
	j .LBB89
.LBB87:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw s1, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw t2, t1, 1
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, s1, t1
	mv s1, s1
	j .LBB90
.LBB88:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB90
.LBB90:
	mv s1, s1
	j .LBB89
.LBB89:
	mv s1, s1
	j .LBB86
.LBB14:
	bne s1, zero, .LBB91
	j .LBB92
.LBB91:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB93
.LBB92:
	li t2, 1
	li t1, 15
	bge t2, t1, .LBB94
	j .LBB95
.LBB93:
	li a0, 16
	blt t0, a0, .LBB96
	j .LBB97
.LBB96:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB98
	j .LBB735
.LBB97:
	bne t2, zero, .LBB100
	j .LBB737
.LBB102:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB99
.LBB99:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB93
.LBB98:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB102
	j .LBB736
.LBB100:
	mv t1, t1
	mv t2, s1
	j .LBB103
.LBB101:
	mv t2, s1
	mv s1, s1
	j .LBB104
.LBB103:
	bne t2, zero, .LBB105
	j .LBB106
.LBB105:
	mv s1, t2
	mv t2, t1
	mv t0, zero
	mv t1, zero
	j .LBB107
.LBB106:
	mv t1, t1
	j .LBB101
.LBB107:
	li t1, 16
	blt t0, t1, .LBB108
	j .LBB109
.LBB108:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB110
	j .LBB111
.LBB109:
	mv t2, t2
	mv t1, t1
	mv t0, zero
	mv t1, zero
	j .LBB112
.LBB110:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB113
	j .LBB738
.LBB111:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB115
	j .LBB739
.LBB113:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB114
.LBB114:
	mv t1, t1
	j .LBB117
.LBB117:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB107
.LBB115:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB116
.LBB116:
	mv t1, t1
	j .LBB117
.LBB112:
	li s1, 16
	blt t0, s1, .LBB118
	j .LBB119
.LBB118:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB120
	j .LBB740
.LBB119:
	j .LBB122
.LBB123:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB121
.LBB121:
	li s1, 2
	divw t1, t1, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	mv t1, t1
	j .LBB112
.LBB120:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB123
	j .LBB741
.LBB122:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB124
.LBB124:
	li s1, 16
	blt t0, s1, .LBB125
	j .LBB126
.LBB125:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB127
	j .LBB742
.LBB126:
	j .LBB129
.LBB130:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB128
.LBB128:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB124
.LBB127:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB130
	j .LBB743
.LBB129:
	mv t1, t1
	mv t2, t2
	j .LBB103
.LBB104:
	bne s1, zero, .LBB131
	j .LBB132
.LBB131:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB133
.LBB132:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB134
	j .LBB135
.LBB133:
	li t1, 16
	blt t0, t1, .LBB136
	j .LBB137
.LBB136:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB138
	j .LBB139
.LBB137:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB140
.LBB138:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB141
	j .LBB744
.LBB139:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB143
	j .LBB745
.LBB141:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB142
.LBB142:
	mv t1, t1
	j .LBB145
.LBB145:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB133
.LBB143:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB144
.LBB144:
	mv t1, t1
	j .LBB145
.LBB140:
	li a0, 16
	blt t0, a0, .LBB146
	j .LBB147
.LBB146:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB148
	j .LBB746
.LBB147:
	j .LBB150
.LBB151:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB149
.LBB149:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB140
.LBB148:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB151
	j .LBB747
.LBB150:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB152
.LBB152:
	li s1, 16
	blt t0, s1, .LBB153
	j .LBB154
.LBB153:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB155
	j .LBB748
.LBB154:
	j .LBB157
.LBB158:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB156
.LBB156:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB152
.LBB155:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB158
	j .LBB749
.LBB157:
	mv t2, t1
	mv s1, s1
	j .LBB104
.LBB134:
	blt s1, zero, .LBB159
	j .LBB160
.LBB135:
	li t0, 1
	blt zero, t0, .LBB161
	j .LBB162
.LBB159:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB163
.LBB160:
	mv s1, zero
	j .LBB163
.LBB163:
	mv s1, s1
	j .LBB164
.LBB164:
	mv s1, t2
	mv s1, s1
	mv t1, t1
	j .LBB14
.LBB161:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB165
	j .LBB166
.LBB162:
	mv s1, s1
	j .LBB167
.LBB165:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw t0, s1, t0
	li t1, 65536
	addw a0, t0, t1
	li t0, 1
	li t0, 15
	subw t0, t0, t0
	addiw s1, t0, 1
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	subw s1, a0, t0
	mv s1, s1
	j .LBB168
.LBB166:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw s1, s1, t0
	mv s1, s1
	j .LBB168
.LBB168:
	mv s1, s1
	j .LBB167
.LBB167:
	mv s1, s1
	j .LBB164
.LBB94:
	blt t0, zero, .LBB169
	j .LBB170
.LBB95:
	li t1, 1
	blt zero, t1, .LBB171
	j .LBB172
.LBB169:
	li t0, 57344
	addiw t0, t0, -1
	mv t0, t0
	mv t0, t0
	j .LBB173
.LBB170:
	mv t0, zero
	j .LBB173
.LBB173:
	mv t0, t0
	j .LBB174
.LBB174:
	mv a0, a0
	mv t0, t0
	mv t1, t1
	j .LBB1
.LBB171:
	li t1, 24576
	addiw t1, t1, -1
	mv t1, t1
	blt t1, t0, .LBB175
	j .LBB176
.LBB172:
	mv t0, t0
	j .LBB177
.LBB175:
	lui t2, %hi(SHIFT_TABLE)
	addi t2, t2, %lo(SHIFT_TABLE)
	addw t2, s0, t2
	lw t2, 4(t2)
	divw t0, t0, t2
	li t1, 65536
	addw s1, t0, t1
	li t0, 1
	li t0, 15
	subw t0, t0, t0
	addiw t2, t0, 1
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	subw t0, s1, t0
	mv t0, t0
	j .LBB178
.LBB176:
	lui t2, %hi(SHIFT_TABLE)
	addi t2, t2, %lo(SHIFT_TABLE)
	addw t2, s0, t2
	lw t2, 4(t2)
	divw t0, t0, t2
	mv t0, t0
	j .LBB178
.LBB178:
	mv t0, t0
	j .LBB177
.LBB177:
	mv t0, t0
	j .LBB174
.LBB5:
	blt zero, s1, .LBB179
	j .LBB180
.LBB179:
	li t2, 1
	mv s1, s1
	mv t1, zero
	mv t0, zero
	j .LBB181
.LBB180:
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t1, 2
	j .LBB182
.LBB181:
	li a1, 16
	blt t1, a1, .LBB183
	j .LBB184
.LBB183:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB185
	j .LBB750
.LBB184:
	bne t0, zero, .LBB187
	j .LBB752
.LBB189:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t0, t0, a0
	mv t0, t0
	j .LBB186
.LBB186:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t2, t2, a0
	addiw t1, t1, 1
	mv t2, t2
	mv s1, s1
	mv t1, t1
	mv t0, t0
	j .LBB181
.LBB185:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB189
	j .LBB751
.LBB187:
	mv s1, a0
	mv s1, t0
	mv a0, zero
	j .LBB190
.LBB188:
	mv s1, t0
	mv s1, t0
	mv t0, zero
	j .LBB191
.LBB190:
	bne s1, zero, .LBB192
	j .LBB193
.LBB192:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB194
.LBB193:
	mv a0, a0
	j .LBB188
.LBB194:
	li a0, 16
	blt t0, a0, .LBB195
	j .LBB196
.LBB195:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB197
	j .LBB753
.LBB196:
	bne t2, zero, .LBB199
	j .LBB755
.LBB201:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB198
.LBB198:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB194
.LBB197:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB201
	j .LBB754
.LBB199:
	mv a0, a0
	mv t2, s1
	j .LBB202
.LBB200:
	mv t2, s1
	mv s1, s1
	j .LBB203
.LBB202:
	bne t2, zero, .LBB204
	j .LBB205
.LBB204:
	mv s1, t2
	mv t2, a0
	mv t0, zero
	mv t1, zero
	j .LBB206
.LBB205:
	mv a0, a0
	j .LBB200
.LBB206:
	li t1, 16
	blt t0, t1, .LBB207
	j .LBB208
.LBB207:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB209
	j .LBB210
.LBB208:
	mv t2, t2
	mv a0, a0
	mv t0, zero
	mv t1, zero
	j .LBB211
.LBB209:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB212
	j .LBB756
.LBB210:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB214
	j .LBB757
.LBB212:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB213
.LBB213:
	mv t1, t1
	j .LBB216
.LBB216:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB206
.LBB214:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB215
.LBB215:
	mv t1, t1
	j .LBB216
.LBB211:
	li s1, 16
	blt t0, s1, .LBB217
	j .LBB218
.LBB217:
	li s1, 2
	remw s1, a0, s1
	bne s1, zero, .LBB219
	j .LBB758
.LBB218:
	j .LBB221
.LBB222:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB220
.LBB220:
	li s1, 2
	divw a0, a0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv a0, a0
	mv t0, t0
	mv t1, t1
	j .LBB211
.LBB219:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB222
	j .LBB759
.LBB221:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB223
.LBB223:
	li s1, 16
	blt t0, s1, .LBB224
	j .LBB225
.LBB224:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB226
	j .LBB760
.LBB225:
	j .LBB228
.LBB229:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB227
.LBB227:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB223
.LBB226:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB229
	j .LBB761
.LBB228:
	mv a0, t1
	mv t2, t2
	j .LBB202
.LBB203:
	bne s1, zero, .LBB230
	j .LBB231
.LBB230:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB232
.LBB231:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB233
	j .LBB234
.LBB232:
	li t1, 16
	blt t0, t1, .LBB235
	j .LBB236
.LBB235:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB237
	j .LBB238
.LBB236:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB239
.LBB237:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB240
	j .LBB762
.LBB238:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB242
	j .LBB763
.LBB240:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB241
.LBB241:
	mv t1, t1
	j .LBB244
.LBB244:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB232
.LBB242:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB243
.LBB243:
	mv t1, t1
	j .LBB244
.LBB239:
	li a0, 16
	blt t0, a0, .LBB245
	j .LBB246
.LBB245:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB247
	j .LBB764
.LBB246:
	j .LBB249
.LBB250:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB248
.LBB248:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB239
.LBB247:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB250
	j .LBB765
.LBB249:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB251
.LBB251:
	li s1, 16
	blt t0, s1, .LBB252
	j .LBB253
.LBB252:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB254
	j .LBB766
.LBB253:
	j .LBB256
.LBB257:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB255
.LBB255:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB251
.LBB254:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB257
	j .LBB767
.LBB256:
	mv t2, t1
	mv s1, s1
	j .LBB203
.LBB233:
	blt s1, zero, .LBB258
	j .LBB259
.LBB234:
	li t0, 1
	blt zero, t0, .LBB260
	j .LBB261
.LBB258:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB262
.LBB259:
	mv s1, zero
	j .LBB262
.LBB262:
	mv s1, s1
	j .LBB263
.LBB263:
	mv s1, t2
	mv s1, s1
	mv a0, a0
	j .LBB190
.LBB260:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB264
	j .LBB265
.LBB261:
	mv s1, s1
	j .LBB266
.LBB264:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw t0, s1, t0
	li t0, 65536
	addw t0, t0, t0
	li t1, 1
	li t1, 15
	subw t1, t1, t1
	addiw t1, t1, 1
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw t1, s0, s1
	li s1, 4
	mulw t1, t1, s1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, t0, t1
	mv s1, s1
	j .LBB267
.LBB265:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw s1, s1, t0
	mv s1, s1
	j .LBB267
.LBB267:
	mv s1, s1
	j .LBB266
.LBB266:
	mv s1, s1
	j .LBB263
.LBB191:
	bne s1, zero, .LBB268
	j .LBB269
.LBB268:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB270
.LBB269:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB271
	j .LBB272
.LBB270:
	li a0, 16
	blt t0, a0, .LBB273
	j .LBB274
.LBB273:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB275
	j .LBB768
.LBB274:
	bne t2, zero, .LBB277
	j .LBB770
.LBB279:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB276
.LBB276:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB270
.LBB275:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB279
	j .LBB769
.LBB277:
	mv t0, t0
	mv t2, s1
	j .LBB280
.LBB278:
	mv t2, s1
	mv s1, s1
	j .LBB281
.LBB280:
	bne t2, zero, .LBB282
	j .LBB283
.LBB282:
	mv s1, t2
	mv t2, t0
	mv t0, zero
	mv t1, zero
	j .LBB284
.LBB283:
	mv t0, t0
	j .LBB278
.LBB284:
	li t1, 16
	blt t0, t1, .LBB285
	j .LBB286
.LBB285:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB287
	j .LBB288
.LBB286:
	mv t2, t2
	mv t0, t0
	mv t0, zero
	mv t1, zero
	j .LBB289
.LBB287:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB290
	j .LBB771
.LBB288:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB292
	j .LBB772
.LBB290:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB291
.LBB291:
	mv t1, t1
	j .LBB294
.LBB294:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB284
.LBB292:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB293
.LBB293:
	mv t1, t1
	j .LBB294
.LBB289:
	li s1, 16
	blt t0, s1, .LBB295
	j .LBB296
.LBB295:
	li s1, 2
	remw s1, t0, s1
	bne s1, zero, .LBB297
	j .LBB773
.LBB296:
	j .LBB299
.LBB300:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB298
.LBB298:
	li s1, 2
	divw t0, t0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	mv t1, t1
	j .LBB289
.LBB297:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB300
	j .LBB774
.LBB299:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB301
.LBB301:
	li s1, 16
	blt t0, s1, .LBB302
	j .LBB303
.LBB302:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB304
	j .LBB775
.LBB303:
	j .LBB306
.LBB307:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB305
.LBB305:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB301
.LBB304:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB307
	j .LBB776
.LBB306:
	mv t0, t1
	mv t2, t2
	j .LBB280
.LBB281:
	bne s1, zero, .LBB308
	j .LBB309
.LBB308:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB310
.LBB309:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB311
	j .LBB312
.LBB310:
	li t1, 16
	blt t0, t1, .LBB313
	j .LBB314
.LBB313:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB315
	j .LBB316
.LBB314:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB317
.LBB315:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB318
	j .LBB777
.LBB316:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB320
	j .LBB778
.LBB318:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB319
.LBB319:
	mv t1, t1
	j .LBB322
.LBB322:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB310
.LBB320:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB321
.LBB321:
	mv t1, t1
	j .LBB322
.LBB317:
	li a0, 16
	blt t0, a0, .LBB323
	j .LBB324
.LBB323:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB325
	j .LBB779
.LBB324:
	j .LBB327
.LBB328:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB326
.LBB326:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB317
.LBB325:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB328
	j .LBB780
.LBB327:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB329
.LBB329:
	li s1, 16
	blt t0, s1, .LBB330
	j .LBB331
.LBB330:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB332
	j .LBB781
.LBB331:
	j .LBB334
.LBB335:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB333
.LBB333:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB329
.LBB332:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB335
	j .LBB782
.LBB334:
	mv t2, t1
	mv s1, s1
	j .LBB281
.LBB311:
	blt s1, zero, .LBB336
	j .LBB337
.LBB312:
	li t0, 1
	blt zero, t0, .LBB338
	j .LBB339
.LBB336:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB340
.LBB337:
	mv s1, zero
	j .LBB340
.LBB340:
	mv s1, s1
	j .LBB341
.LBB341:
	mv s1, t2
	mv s1, s1
	mv t0, t0
	j .LBB191
.LBB338:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB342
	j .LBB343
.LBB339:
	mv s1, s1
	j .LBB344
.LBB342:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw s1, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw t1, t1, 1
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw t1, s0, a0
	li a0, 4
	mulw t1, t1, a0
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, s1, t1
	mv s1, s1
	j .LBB345
.LBB343:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB345
.LBB345:
	mv s1, s1
	j .LBB344
.LBB344:
	mv s1, s1
	j .LBB341
.LBB271:
	blt s1, zero, .LBB346
	j .LBB347
.LBB272:
	li t0, 1
	blt zero, t0, .LBB348
	j .LBB349
.LBB346:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB350
.LBB347:
	mv s1, zero
	j .LBB350
.LBB350:
	mv s1, s1
	j .LBB351
.LBB351:
	mv t0, t0
	mv s1, s1
	mv a0, a0
	j .LBB5
.LBB348:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB352
	j .LBB353
.LBB349:
	mv s1, s1
	j .LBB354
.LBB352:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw s1, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw t2, t1, 1
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, s1, t1
	mv s1, s1
	j .LBB355
.LBB353:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB355
.LBB355:
	mv s1, s1
	j .LBB354
.LBB354:
	mv s1, s1
	j .LBB351
.LBB182:
	li t0, 16
	blt t1, t0, .LBB356
	j .LBB357
.LBB356:
	li t0, 2
	mv s1, t1
	li a0, 1
	j .LBB358
.LBB357:
	mv t2, zero
	j .LBB359
.LBB358:
	blt zero, s1, .LBB360
	j .LBB361
.LBB360:
	li t2, 1
	mv s1, s1
	mv t1, zero
	mv t0, zero
	j .LBB362
.LBB361:
	mv a0, a0
	call putint
	li a0, 10
	call putch
	addiw t1, t1, 1
	mv t1, t1
	j .LBB182
.LBB362:
	li a1, 16
	blt t1, a1, .LBB363
	j .LBB364
.LBB363:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB365
	j .LBB783
.LBB364:
	bne t0, zero, .LBB367
	j .LBB785
.LBB369:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t0, t0, a0
	mv t0, t0
	j .LBB366
.LBB366:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t2, t2, a0
	addiw t1, t1, 1
	mv t2, t2
	mv s1, s1
	mv t1, t1
	mv t0, t0
	j .LBB362
.LBB365:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB369
	j .LBB784
.LBB367:
	mv s1, a0
	mv s1, t0
	mv a0, zero
	j .LBB370
.LBB368:
	mv s1, t0
	mv s1, t0
	mv t0, zero
	j .LBB371
.LBB370:
	bne s1, zero, .LBB372
	j .LBB373
.LBB372:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB374
.LBB373:
	mv a0, a0
	j .LBB368
.LBB374:
	li a0, 16
	blt t0, a0, .LBB375
	j .LBB376
.LBB375:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB377
	j .LBB786
.LBB376:
	bne t2, zero, .LBB379
	j .LBB788
.LBB381:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB378
.LBB378:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB374
.LBB377:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB381
	j .LBB787
.LBB379:
	mv a0, a0
	mv t2, s1
	j .LBB382
.LBB380:
	mv t2, s1
	mv s1, s1
	j .LBB383
.LBB382:
	bne t2, zero, .LBB384
	j .LBB385
.LBB384:
	mv s1, t2
	mv t2, a0
	mv t0, zero
	mv t1, zero
	j .LBB386
.LBB385:
	mv a0, a0
	j .LBB380
.LBB386:
	li t1, 16
	blt t0, t1, .LBB387
	j .LBB388
.LBB387:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB389
	j .LBB390
.LBB388:
	mv t2, t2
	mv a0, a0
	mv t0, zero
	mv t1, zero
	j .LBB391
.LBB389:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB392
	j .LBB789
.LBB390:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB394
	j .LBB790
.LBB392:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB393
.LBB393:
	mv t1, t1
	j .LBB396
.LBB396:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB386
.LBB394:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB395
.LBB395:
	mv t1, t1
	j .LBB396
.LBB391:
	li s1, 16
	blt t0, s1, .LBB397
	j .LBB398
.LBB397:
	li s1, 2
	remw s1, a0, s1
	bne s1, zero, .LBB399
	j .LBB791
.LBB398:
	j .LBB401
.LBB402:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB400
.LBB400:
	li s1, 2
	divw a0, a0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv a0, a0
	mv t0, t0
	mv t1, t1
	j .LBB391
.LBB399:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB402
	j .LBB792
.LBB401:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB403
.LBB403:
	li s1, 16
	blt t0, s1, .LBB404
	j .LBB405
.LBB404:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB406
	j .LBB793
.LBB405:
	j .LBB408
.LBB409:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB407
.LBB407:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB403
.LBB406:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB409
	j .LBB794
.LBB408:
	mv a0, t1
	mv t2, t2
	j .LBB382
.LBB383:
	bne s1, zero, .LBB410
	j .LBB411
.LBB410:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB412
.LBB411:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB413
	j .LBB414
.LBB412:
	li t1, 16
	blt t0, t1, .LBB415
	j .LBB416
.LBB415:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB417
	j .LBB418
.LBB416:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB419
.LBB417:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB420
	j .LBB795
.LBB418:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB422
	j .LBB796
.LBB420:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB421
.LBB421:
	mv t1, t1
	j .LBB424
.LBB424:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB412
.LBB422:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB423
.LBB423:
	mv t1, t1
	j .LBB424
.LBB419:
	li a0, 16
	blt t0, a0, .LBB425
	j .LBB426
.LBB425:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB427
	j .LBB797
.LBB426:
	j .LBB429
.LBB430:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB428
.LBB428:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB419
.LBB427:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB430
	j .LBB798
.LBB429:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB431
.LBB431:
	li s1, 16
	blt t0, s1, .LBB432
	j .LBB433
.LBB432:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB434
	j .LBB799
.LBB433:
	j .LBB436
.LBB437:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB435
.LBB435:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB431
.LBB434:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB437
	j .LBB800
.LBB436:
	mv t2, t1
	mv s1, s1
	j .LBB383
.LBB413:
	blt s1, zero, .LBB438
	j .LBB439
.LBB414:
	li t0, 1
	blt zero, t0, .LBB440
	j .LBB441
.LBB438:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB442
.LBB439:
	mv s1, zero
	j .LBB442
.LBB442:
	mv s1, s1
	j .LBB443
.LBB443:
	mv s1, t2
	mv s1, s1
	mv a0, a0
	j .LBB370
.LBB440:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB444
	j .LBB445
.LBB441:
	mv s1, s1
	j .LBB446
.LBB444:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw t0, s1, t0
	li t1, 65536
	addw t1, t0, t1
	li t0, 1
	li t0, 15
	subw t0, t0, t0
	addiw s1, t0, 1
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	subw s1, t1, t0
	mv s1, s1
	j .LBB447
.LBB445:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw s1, s1, t0
	mv s1, s1
	j .LBB447
.LBB447:
	mv s1, s1
	j .LBB446
.LBB446:
	mv s1, s1
	j .LBB443
.LBB371:
	bne s1, zero, .LBB448
	j .LBB449
.LBB448:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB450
.LBB449:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB451
	j .LBB452
.LBB450:
	li a0, 16
	blt t0, a0, .LBB453
	j .LBB454
.LBB453:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB455
	j .LBB801
.LBB454:
	bne t2, zero, .LBB457
	j .LBB803
.LBB459:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB456
.LBB456:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB450
.LBB455:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB459
	j .LBB802
.LBB457:
	mv t0, t0
	mv t2, s1
	j .LBB460
.LBB458:
	mv t2, s1
	mv s1, s1
	j .LBB461
.LBB460:
	bne t2, zero, .LBB462
	j .LBB463
.LBB462:
	mv s1, t2
	mv t2, t0
	mv t0, zero
	mv t1, zero
	j .LBB464
.LBB463:
	mv t0, t0
	j .LBB458
.LBB464:
	li t1, 16
	blt t0, t1, .LBB465
	j .LBB466
.LBB465:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB467
	j .LBB468
.LBB466:
	mv t2, t2
	mv t0, t0
	mv t0, zero
	mv t1, zero
	j .LBB469
.LBB467:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB470
	j .LBB804
.LBB468:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB472
	j .LBB805
.LBB470:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB471
.LBB471:
	mv t1, t1
	j .LBB474
.LBB474:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB464
.LBB472:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB473
.LBB473:
	mv t1, t1
	j .LBB474
.LBB469:
	li s1, 16
	blt t0, s1, .LBB475
	j .LBB476
.LBB475:
	li s1, 2
	remw s1, t0, s1
	bne s1, zero, .LBB477
	j .LBB806
.LBB476:
	j .LBB479
.LBB480:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB478
.LBB478:
	li s1, 2
	divw t0, t0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	mv t1, t1
	j .LBB469
.LBB477:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB480
	j .LBB807
.LBB479:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB481
.LBB481:
	li s1, 16
	blt t0, s1, .LBB482
	j .LBB483
.LBB482:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB484
	j .LBB808
.LBB483:
	j .LBB486
.LBB487:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB485
.LBB485:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB481
.LBB484:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB487
	j .LBB809
.LBB486:
	mv t0, t1
	mv t2, t2
	j .LBB460
.LBB461:
	bne s1, zero, .LBB488
	j .LBB489
.LBB488:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB490
.LBB489:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB491
	j .LBB492
.LBB490:
	li t1, 16
	blt t0, t1, .LBB493
	j .LBB494
.LBB493:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB495
	j .LBB496
.LBB494:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB497
.LBB495:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB498
	j .LBB810
.LBB496:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB500
	j .LBB811
.LBB498:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB499
.LBB499:
	mv t1, t1
	j .LBB502
.LBB502:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB490
.LBB500:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB501
.LBB501:
	mv t1, t1
	j .LBB502
.LBB497:
	li a0, 16
	blt t0, a0, .LBB503
	j .LBB504
.LBB503:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB505
	j .LBB812
.LBB504:
	j .LBB507
.LBB508:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB506
.LBB506:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB497
.LBB505:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB508
	j .LBB813
.LBB507:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB509
.LBB509:
	li s1, 16
	blt t0, s1, .LBB510
	j .LBB511
.LBB510:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB512
	j .LBB814
.LBB511:
	j .LBB514
.LBB515:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB513
.LBB513:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB509
.LBB512:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB515
	j .LBB815
.LBB514:
	mv t2, t1
	mv s1, s1
	j .LBB461
.LBB491:
	blt s1, zero, .LBB516
	j .LBB517
.LBB492:
	li t0, 1
	blt zero, t0, .LBB518
	j .LBB519
.LBB516:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB520
.LBB517:
	mv s1, zero
	j .LBB520
.LBB520:
	mv s1, s1
	j .LBB521
.LBB521:
	mv s1, t2
	mv s1, s1
	mv t0, t0
	j .LBB371
.LBB518:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB522
	j .LBB523
.LBB519:
	mv s1, s1
	j .LBB524
.LBB522:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw s1, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw t1, t1, 1
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw t1, s0, a0
	li a0, 4
	mulw t1, t1, a0
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, s1, t1
	mv s1, s1
	j .LBB525
.LBB523:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB525
.LBB525:
	mv s1, s1
	j .LBB524
.LBB524:
	mv s1, s1
	j .LBB521
.LBB451:
	blt s1, zero, .LBB526
	j .LBB527
.LBB452:
	li t0, 1
	blt zero, t0, .LBB528
	j .LBB529
.LBB526:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB530
.LBB527:
	mv s1, zero
	j .LBB530
.LBB530:
	mv s1, s1
	j .LBB531
.LBB531:
	mv t0, t0
	mv s1, s1
	mv a0, a0
	j .LBB358
.LBB528:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB532
	j .LBB533
.LBB529:
	mv s1, s1
	j .LBB534
.LBB532:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw t2, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw s1, t1, 1
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, t2, t1
	mv s1, s1
	j .LBB535
.LBB533:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB535
.LBB535:
	mv s1, s1
	j .LBB534
.LBB534:
	mv s1, s1
	j .LBB531
.LBB359:
	li t0, 16
	blt t2, t0, .LBB536
	j .LBB537
.LBB536:
	li t0, 2
	mv a0, t2
	li t1, 1
	j .LBB538
.LBB537:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB538:
	blt zero, a0, .LBB539
	j .LBB540
.LBB539:
	li s1, 1
	mv a0, a0
	mv t2, zero
	mv t0, zero
	j .LBB541
.LBB540:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	bne t0, t1, .LBB542
	j .LBB543
.LBB541:
	li a1, 16
	blt t2, a1, .LBB544
	j .LBB545
.LBB544:
	li t1, 2
	remw t1, a0, t1
	bne t1, zero, .LBB546
	j .LBB816
.LBB545:
	bne t0, zero, .LBB548
	j .LBB818
.LBB550:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 1
	mulw t1, t0, t1
	addw t0, t0, t1
	mv t0, t0
	j .LBB547
.LBB547:
	li t1, 2
	divw a0, a0, t1
	li t1, 2
	divw s1, s1, t1
	addiw t2, t2, 1
	mv s1, s1
	mv a0, a0
	mv t2, t2
	mv t0, t0
	j .LBB541
.LBB546:
	li t1, 2
	remw t1, s1, t1
	bne t1, zero, .LBB550
	j .LBB817
.LBB548:
	mv s1, t1
	mv s1, t0
	mv t1, zero
	j .LBB551
.LBB549:
	mv s1, t0
	mv s1, t0
	mv t0, zero
	j .LBB552
.LBB551:
	bne s1, zero, .LBB553
	j .LBB554
.LBB553:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB555
.LBB554:
	mv t1, t1
	j .LBB549
.LBB555:
	li a0, 16
	blt t0, a0, .LBB556
	j .LBB557
.LBB556:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB558
	j .LBB819
.LBB557:
	bne t2, zero, .LBB560
	j .LBB821
.LBB562:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB559
.LBB559:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB555
.LBB558:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB562
	j .LBB820
.LBB560:
	mv t1, t1
	mv t2, s1
	j .LBB563
.LBB561:
	mv t2, s1
	mv s1, s1
	j .LBB564
.LBB563:
	bne t2, zero, .LBB565
	j .LBB566
.LBB565:
	mv s1, t2
	mv t2, t1
	mv t0, zero
	mv t1, zero
	j .LBB567
.LBB566:
	mv t1, t1
	j .LBB561
.LBB567:
	li t1, 16
	blt t0, t1, .LBB568
	j .LBB569
.LBB568:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB570
	j .LBB571
.LBB569:
	mv t2, t2
	mv t1, t1
	mv t0, zero
	mv t1, zero
	j .LBB572
.LBB570:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB573
	j .LBB822
.LBB571:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB575
	j .LBB823
.LBB573:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB574
.LBB574:
	mv t1, t1
	j .LBB577
.LBB577:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB567
.LBB575:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB576
.LBB576:
	mv t1, t1
	j .LBB577
.LBB572:
	li s1, 16
	blt t0, s1, .LBB578
	j .LBB579
.LBB578:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB580
	j .LBB824
.LBB579:
	j .LBB582
.LBB583:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB581
.LBB581:
	li s1, 2
	divw t1, t1, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	mv t1, t1
	j .LBB572
.LBB580:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB583
	j .LBB825
.LBB582:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB584
.LBB584:
	li s1, 16
	blt t0, s1, .LBB585
	j .LBB586
.LBB585:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB587
	j .LBB826
.LBB586:
	j .LBB589
.LBB590:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB588
.LBB588:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB584
.LBB587:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB590
	j .LBB827
.LBB589:
	mv t1, t1
	mv t2, t2
	j .LBB563
.LBB564:
	bne s1, zero, .LBB591
	j .LBB592
.LBB591:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB593
.LBB592:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB594
	j .LBB595
.LBB593:
	li t1, 16
	blt t0, t1, .LBB596
	j .LBB597
.LBB596:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB598
	j .LBB599
.LBB597:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB600
.LBB598:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB601
	j .LBB828
.LBB599:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB603
	j .LBB829
.LBB601:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB602
.LBB602:
	mv t1, t1
	j .LBB605
.LBB605:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB593
.LBB603:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB604
.LBB604:
	mv t1, t1
	j .LBB605
.LBB600:
	li a0, 16
	blt t0, a0, .LBB606
	j .LBB607
.LBB606:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB608
	j .LBB830
.LBB607:
	j .LBB610
.LBB611:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB609
.LBB609:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB600
.LBB608:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB611
	j .LBB831
.LBB610:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB612
.LBB612:
	li s1, 16
	blt t0, s1, .LBB613
	j .LBB614
.LBB613:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB615
	j .LBB832
.LBB614:
	j .LBB617
.LBB618:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB616
.LBB616:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB612
.LBB615:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB618
	j .LBB833
.LBB617:
	mv t2, t1
	mv s1, s1
	j .LBB564
.LBB594:
	blt s1, zero, .LBB619
	j .LBB620
.LBB595:
	li t0, 1
	blt zero, t0, .LBB621
	j .LBB622
.LBB619:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB623
.LBB620:
	mv s1, zero
	j .LBB623
.LBB623:
	mv s1, s1
	j .LBB624
.LBB624:
	mv s1, t2
	mv s1, s1
	mv t1, t1
	j .LBB551
.LBB621:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB625
	j .LBB626
.LBB622:
	mv s1, s1
	j .LBB627
.LBB625:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw t0, s1, t0
	li t1, 65536
	addw a0, t0, t1
	li t0, 1
	li t0, 15
	subw t0, t0, t0
	addiw s1, t0, 1
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	subw s1, a0, t0
	mv s1, s1
	j .LBB628
.LBB626:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	divw s1, s1, t0
	mv s1, s1
	j .LBB628
.LBB628:
	mv s1, s1
	j .LBB627
.LBB627:
	mv s1, s1
	j .LBB624
.LBB552:
	bne s1, zero, .LBB629
	j .LBB630
.LBB629:
	li t1, 1
	mv s1, s1
	mv t0, zero
	mv t2, zero
	j .LBB631
.LBB630:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB632
	j .LBB633
.LBB631:
	li a0, 16
	blt t0, a0, .LBB634
	j .LBB635
.LBB634:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB636
	j .LBB834
.LBB635:
	bne t2, zero, .LBB638
	j .LBB836
.LBB640:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t2, t2, a0
	mv t2, t2
	j .LBB637
.LBB637:
	li a0, 2
	divw s1, s1, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv s1, s1
	mv t0, t0
	mv t2, t2
	j .LBB631
.LBB636:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB640
	j .LBB835
.LBB638:
	mv t0, t0
	mv t2, s1
	j .LBB641
.LBB639:
	mv t2, s1
	mv s1, s1
	j .LBB642
.LBB641:
	bne t2, zero, .LBB643
	j .LBB644
.LBB643:
	mv s1, t2
	mv t2, t0
	mv t0, zero
	mv t1, zero
	j .LBB645
.LBB644:
	mv t0, t0
	j .LBB639
.LBB645:
	li t1, 16
	blt t0, t1, .LBB646
	j .LBB647
.LBB646:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB648
	j .LBB649
.LBB647:
	mv t2, t2
	mv t0, t0
	mv t0, zero
	mv t1, zero
	j .LBB650
.LBB648:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB651
	j .LBB837
.LBB649:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB653
	j .LBB838
.LBB651:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB652
.LBB652:
	mv t1, t1
	j .LBB655
.LBB655:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB645
.LBB653:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB654
.LBB654:
	mv t1, t1
	j .LBB655
.LBB650:
	li s1, 16
	blt t0, s1, .LBB656
	j .LBB657
.LBB656:
	li s1, 2
	remw s1, t0, s1
	bne s1, zero, .LBB658
	j .LBB839
.LBB657:
	j .LBB660
.LBB661:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t1, t1, s1
	mv t1, t1
	j .LBB659
.LBB659:
	li s1, 2
	divw t0, t0, s1
	li s1, 2
	divw t2, t2, s1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	mv t1, t1
	j .LBB650
.LBB658:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB661
	j .LBB840
.LBB660:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv t2, zero
	j .LBB662
.LBB662:
	li s1, 16
	blt t0, s1, .LBB663
	j .LBB664
.LBB663:
	li s1, 2
	remw s1, t2, s1
	bne s1, zero, .LBB665
	j .LBB841
.LBB664:
	j .LBB667
.LBB668:
	lui s1, %hi(SHIFT_TABLE)
	addi s1, s1, %lo(SHIFT_TABLE)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, 1
	mulw s1, t0, s1
	addw t2, t2, s1
	mv t2, t2
	j .LBB666
.LBB666:
	li s1, 2
	divw t2, t2, s1
	li s1, 2
	divw t1, t1, s1
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv t2, t2
	j .LBB662
.LBB665:
	li s1, 2
	remw s1, t1, s1
	bne s1, zero, .LBB668
	j .LBB842
.LBB667:
	mv t0, t1
	mv t2, t2
	j .LBB641
.LBB642:
	bne s1, zero, .LBB669
	j .LBB670
.LBB669:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB671
.LBB670:
	li t1, 1
	li t0, 15
	bge t1, t0, .LBB672
	j .LBB673
.LBB671:
	li t1, 16
	blt t0, t1, .LBB674
	j .LBB675
.LBB674:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB676
	j .LBB677
.LBB675:
	mv s1, s1
	mv t2, t2
	mv t0, zero
	mv t1, zero
	j .LBB678
.LBB676:
	li a0, 2
	remw a0, s1, a0
	beq a0, zero, .LBB679
	j .LBB843
.LBB677:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB681
	j .LBB844
.LBB679:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB680
.LBB680:
	mv t1, t1
	j .LBB683
.LBB683:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB671
.LBB681:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB682
.LBB682:
	mv t1, t1
	j .LBB683
.LBB678:
	li a0, 16
	blt t0, a0, .LBB684
	j .LBB685
.LBB684:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB686
	j .LBB845
.LBB685:
	j .LBB688
.LBB689:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw t1, t1, a0
	mv t1, t1
	j .LBB687
.LBB687:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw s1, s1, a0
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB678
.LBB686:
	li a0, 2
	remw a0, s1, a0
	bne a0, zero, .LBB689
	j .LBB846
.LBB688:
	lui t0, %hi(SHIFT_TABLE)
	addi t0, t0, %lo(SHIFT_TABLE)
	addw t0, s0, t0
	lw t0, 4(t0)
	mulw t2, t1, t0
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t2, t2
	mv t0, zero
	mv s1, zero
	j .LBB690
.LBB690:
	li s1, 16
	blt t0, s1, .LBB691
	j .LBB692
.LBB691:
	li a0, 2
	remw a0, t2, a0
	bne a0, zero, .LBB693
	j .LBB847
.LBB692:
	j .LBB695
.LBB696:
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	mulw a0, t0, a0
	addw s1, s1, a0
	mv s1, s1
	j .LBB694
.LBB694:
	li a0, 2
	divw t2, t2, a0
	li a0, 2
	divw t1, t1, a0
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	mv t0, t0
	mv s1, s1
	j .LBB690
.LBB693:
	li a0, 2
	remw a0, t1, a0
	bne a0, zero, .LBB696
	j .LBB848
.LBB695:
	mv t2, t1
	mv s1, s1
	j .LBB642
.LBB672:
	blt s1, zero, .LBB697
	j .LBB698
.LBB673:
	li t0, 1
	blt zero, t0, .LBB699
	j .LBB700
.LBB697:
	li s1, 57344
	addiw s1, s1, -1
	mv s1, s1
	mv s1, s1
	j .LBB701
.LBB698:
	mv s1, zero
	j .LBB701
.LBB701:
	mv s1, s1
	j .LBB702
.LBB702:
	mv s1, t2
	mv s1, s1
	mv t0, t0
	j .LBB552
.LBB699:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, s1, .LBB703
	j .LBB704
.LBB700:
	mv s1, s1
	j .LBB705
.LBB703:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw t1, s1, t1
	li t0, 65536
	addw s1, t1, t0
	li t1, 1
	li t0, 15
	subw t1, t0, t1
	addiw a0, t1, 1
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw s1, s1, t1
	mv s1, s1
	j .LBB706
.LBB704:
	lui t1, %hi(SHIFT_TABLE)
	addi t1, t1, %lo(SHIFT_TABLE)
	addw t1, s0, t1
	lw t1, 4(t1)
	divw s1, s1, t1
	mv s1, s1
	j .LBB706
.LBB706:
	mv s1, s1
	j .LBB705
.LBB705:
	mv s1, s1
	j .LBB702
.LBB632:
	blt a0, zero, .LBB707
	j .LBB708
.LBB633:
	li t0, 1
	blt zero, t0, .LBB709
	j .LBB710
.LBB707:
	li a0, 57344
	addiw a0, a0, -1
	mv a0, a0
	mv a0, a0
	j .LBB711
.LBB708:
	mv a0, zero
	j .LBB711
.LBB711:
	mv a0, a0
	j .LBB712
.LBB712:
	mv t0, t0
	mv a0, a0
	mv t1, t1
	j .LBB538
.LBB709:
	li t0, 24576
	addiw t0, t0, -1
	mv t0, t0
	blt t0, a0, .LBB713
	j .LBB714
.LBB710:
	mv a0, a0
	j .LBB715
.LBB713:
	lui t2, %hi(SHIFT_TABLE)
	addi t2, t2, %lo(SHIFT_TABLE)
	addw t2, s0, t2
	lw t2, 4(t2)
	divw t2, a0, t2
	li t0, 65536
	addw s1, t2, t0
	li t2, 1
	li t0, 15
	subw t2, t0, t2
	addiw t2, t2, 1
	lui a0, %hi(SHIFT_TABLE)
	addi a0, a0, %lo(SHIFT_TABLE)
	addw t2, s0, a0
	li a0, 4
	mulw t2, t2, a0
	addw t2, t2, t2
	lw t2, 0(t2)
	subw a0, s1, t2
	mv a0, a0
	j .LBB716
.LBB714:
	lui t2, %hi(SHIFT_TABLE)
	addi t2, t2, %lo(SHIFT_TABLE)
	addw t2, s0, t2
	lw t2, 4(t2)
	divw a0, a0, t2
	mv a0, a0
	j .LBB716
.LBB716:
	mv a0, a0
	j .LBB715
.LBB715:
	mv a0, a0
	j .LBB712
.LBB542:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB543:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB359
.LBB717:
	mv t1, t1
	j .LBB9
.LBB718:
	mv t1, t1
	j .LBB9
.LBB719:
	mv a0, a0
	j .LBB11
.LBB720:
	mv t2, t2
	j .LBB21
.LBB721:
	mv t2, t2
	j .LBB21
.LBB722:
	mv t0, t0
	j .LBB23
.LBB723:
	mv t1, t1
	j .LBB36
.LBB724:
	mv t1, t1
	j .LBB38
.LBB725:
	mv t1, t1
	j .LBB43
.LBB726:
	mv t1, t1
	j .LBB43
.LBB727:
	mv t2, t2
	j .LBB50
.LBB728:
	mv t2, t2
	j .LBB50
.LBB729:
	mv t1, t1
	j .LBB64
.LBB730:
	mv t1, t1
	j .LBB66
.LBB731:
	mv t1, t1
	j .LBB71
.LBB732:
	mv t1, t1
	j .LBB71
.LBB733:
	mv t2, t2
	j .LBB78
.LBB734:
	mv t2, t2
	j .LBB78
.LBB735:
	mv t2, t2
	j .LBB99
.LBB736:
	mv t2, t2
	j .LBB99
.LBB737:
	mv t1, t1
	j .LBB101
.LBB738:
	mv t1, t1
	j .LBB114
.LBB739:
	mv t1, t1
	j .LBB116
.LBB740:
	mv t1, t1
	j .LBB121
.LBB741:
	mv t1, t1
	j .LBB121
.LBB742:
	mv t2, t2
	j .LBB128
.LBB743:
	mv t2, t2
	j .LBB128
.LBB744:
	mv t1, t1
	j .LBB142
.LBB745:
	mv t1, t1
	j .LBB144
.LBB746:
	mv t1, t1
	j .LBB149
.LBB747:
	mv t1, t1
	j .LBB149
.LBB748:
	mv s1, s1
	j .LBB156
.LBB749:
	mv s1, s1
	j .LBB156
.LBB750:
	mv t0, t0
	j .LBB186
.LBB751:
	mv t0, t0
	j .LBB186
.LBB752:
	mv a0, a0
	j .LBB188
.LBB753:
	mv t2, t2
	j .LBB198
.LBB754:
	mv t2, t2
	j .LBB198
.LBB755:
	mv a0, a0
	j .LBB200
.LBB756:
	mv t1, t1
	j .LBB213
.LBB757:
	mv t1, t1
	j .LBB215
.LBB758:
	mv t1, t1
	j .LBB220
.LBB759:
	mv t1, t1
	j .LBB220
.LBB760:
	mv t2, t2
	j .LBB227
.LBB761:
	mv t2, t2
	j .LBB227
.LBB762:
	mv t1, t1
	j .LBB241
.LBB763:
	mv t1, t1
	j .LBB243
.LBB764:
	mv t1, t1
	j .LBB248
.LBB765:
	mv t1, t1
	j .LBB248
.LBB766:
	mv s1, s1
	j .LBB255
.LBB767:
	mv s1, s1
	j .LBB255
.LBB768:
	mv t2, t2
	j .LBB276
.LBB769:
	mv t2, t2
	j .LBB276
.LBB770:
	mv t0, t0
	j .LBB278
.LBB771:
	mv t1, t1
	j .LBB291
.LBB772:
	mv t1, t1
	j .LBB293
.LBB773:
	mv t1, t1
	j .LBB298
.LBB774:
	mv t1, t1
	j .LBB298
.LBB775:
	mv t2, t2
	j .LBB305
.LBB776:
	mv t2, t2
	j .LBB305
.LBB777:
	mv t1, t1
	j .LBB319
.LBB778:
	mv t1, t1
	j .LBB321
.LBB779:
	mv t1, t1
	j .LBB326
.LBB780:
	mv t1, t1
	j .LBB326
.LBB781:
	mv s1, s1
	j .LBB333
.LBB782:
	mv s1, s1
	j .LBB333
.LBB783:
	mv t0, t0
	j .LBB366
.LBB784:
	mv t0, t0
	j .LBB366
.LBB785:
	mv a0, a0
	j .LBB368
.LBB786:
	mv t2, t2
	j .LBB378
.LBB787:
	mv t2, t2
	j .LBB378
.LBB788:
	mv a0, a0
	j .LBB380
.LBB789:
	mv t1, t1
	j .LBB393
.LBB790:
	mv t1, t1
	j .LBB395
.LBB791:
	mv t1, t1
	j .LBB400
.LBB792:
	mv t1, t1
	j .LBB400
.LBB793:
	mv t2, t2
	j .LBB407
.LBB794:
	mv t2, t2
	j .LBB407
.LBB795:
	mv t1, t1
	j .LBB421
.LBB796:
	mv t1, t1
	j .LBB423
.LBB797:
	mv t1, t1
	j .LBB428
.LBB798:
	mv t1, t1
	j .LBB428
.LBB799:
	mv s1, s1
	j .LBB435
.LBB800:
	mv s1, s1
	j .LBB435
.LBB801:
	mv t2, t2
	j .LBB456
.LBB802:
	mv t2, t2
	j .LBB456
.LBB803:
	mv t0, t0
	j .LBB458
.LBB804:
	mv t1, t1
	j .LBB471
.LBB805:
	mv t1, t1
	j .LBB473
.LBB806:
	mv t1, t1
	j .LBB478
.LBB807:
	mv t1, t1
	j .LBB478
.LBB808:
	mv t2, t2
	j .LBB485
.LBB809:
	mv t2, t2
	j .LBB485
.LBB810:
	mv t1, t1
	j .LBB499
.LBB811:
	mv t1, t1
	j .LBB501
.LBB812:
	mv t1, t1
	j .LBB506
.LBB813:
	mv t1, t1
	j .LBB506
.LBB814:
	mv s1, s1
	j .LBB513
.LBB815:
	mv s1, s1
	j .LBB513
.LBB816:
	mv t0, t0
	j .LBB547
.LBB817:
	mv t0, t0
	j .LBB547
.LBB818:
	mv t1, t1
	j .LBB549
.LBB819:
	mv t2, t2
	j .LBB559
.LBB820:
	mv t2, t2
	j .LBB559
.LBB821:
	mv t1, t1
	j .LBB561
.LBB822:
	mv t1, t1
	j .LBB574
.LBB823:
	mv t1, t1
	j .LBB576
.LBB824:
	mv t1, t1
	j .LBB581
.LBB825:
	mv t1, t1
	j .LBB581
.LBB826:
	mv t2, t2
	j .LBB588
.LBB827:
	mv t2, t2
	j .LBB588
.LBB828:
	mv t1, t1
	j .LBB602
.LBB829:
	mv t1, t1
	j .LBB604
.LBB830:
	mv t1, t1
	j .LBB609
.LBB831:
	mv t1, t1
	j .LBB609
.LBB832:
	mv s1, s1
	j .LBB616
.LBB833:
	mv s1, s1
	j .LBB616
.LBB834:
	mv t2, t2
	j .LBB637
.LBB835:
	mv t2, t2
	j .LBB637
.LBB836:
	mv t0, t0
	j .LBB639
.LBB837:
	mv t1, t1
	j .LBB652
.LBB838:
	mv t1, t1
	j .LBB654
.LBB839:
	mv t1, t1
	j .LBB659
.LBB840:
	mv t1, t1
	j .LBB659
.LBB841:
	mv t2, t2
	j .LBB666
.LBB842:
	mv t2, t2
	j .LBB666
.LBB843:
	mv t1, t1
	j .LBB680
.LBB844:
	mv t1, t1
	j .LBB682
.LBB845:
	mv t1, t1
	j .LBB687
.LBB846:
	mv t1, t1
	j .LBB687
.LBB847:
	mv s1, s1
	j .LBB694
.LBB848:
	mv s1, s1
	j .LBB694
    .size long_func, .-long_func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB849:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call long_func
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
