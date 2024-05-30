    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  pos
    .data
    .align  2
    .type  pos, @object
    .size  pos, 4
pos:
    .zero  4
    .globl  buffer
    .bss
    .align  3
    .type  buffer, @object
    .size  buffer, 200000000
buffer:
    .zero  200000000
    .text
    .align  1
    .globl  is_number
    .type  is_number, @function
is_number:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 48
	bge a0, t0, .LBB2
	j .LBB3
.LBB2:
	li t0, 57
	bge t0, a0, .LBB4
	j .LBB5
.LBB3:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size is_number, .-is_number
    .align  1
    .globl  skip_space
    .type  skip_space, @function
skip_space:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB7
.LBB7:
	j .LBB8
.LBB8:
	j .LBB9
.LBB9:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB10
	j .LBB11
.LBB12:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB10:
	j .LBB12
.LBB11:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 32
	beq t0, t1, .LBB13
	j .LBB14
.LBB13:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB15
.LBB14:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 9
	beq t0, t1, .LBB16
	j .LBB17
.LBB15:
	j .LBB8
.LBB16:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB18
.LBB17:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 10
	beq t0, t1, .LBB19
	j .LBB20
.LBB18:
	j .LBB15
.LBB19:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB21
.LBB20:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 13
	beq t0, t1, .LBB22
	j .LBB23
.LBB21:
	j .LBB18
.LBB22:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB24
.LBB23:
	j .LBB12
.LBB24:
	j .LBB21
    .size skip_space, .-skip_space
    .align  1
    .globl  detect_item
    .type  detect_item, @function
detect_item:
.LBB25:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	mv a0, a0
	mv s1, a1
	mv a1, a2
	j .LBB26
.LBB26:
	lui a2, %hi(pos)
	lw a2, %lo(pos)(a2)
	bge a2, a1, .LBB27
	j .LBB28
.LBB27:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB28:
	mv a0, s1
	mv a1, a1
	call skip_space
	beq a0, zero, .LBB29
	j .LBB30
.LBB29:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 123
	beq t0, t1, .LBB31
	j .LBB32
.LBB30:
	li a2, 1
	beq a0, a2, .LBB33
	j .LBB34
.LBB31:
	li a0, 4
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB32:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 91
	beq t0, t1, .LBB35
	j .LBB36
.LBB35:
	li a0, 3
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB36:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 34
	beq t0, t1, .LBB37
	j .LBB38
.LBB37:
	li a0, 2
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB38:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call is_number
	mv a0, a0
	li t0, 1
	beq a0, t0, .LBB39
	j .LBB40
.LBB39:
	li a0, 1
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB40:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB41
	j .LBB42
.LBB41:
	li a0, 1
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB42:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB43
	j .LBB44
.LBB43:
	li a0, 1
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB44:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 116
	beq t0, t1, .LBB45
	j .LBB46
.LBB45:
	li a0, 5
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB46:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 102
	beq t0, t1, .LBB47
	j .LBB48
.LBB47:
	li a0, 6
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB48:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 110
	beq t0, t1, .LBB49
	j .LBB50
.LBB49:
	li a0, 7
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB50:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB33:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB51
	j .LBB52
.LBB34:
	li a2, 2
	beq a0, a2, .LBB53
	j .LBB54
.LBB51:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB55
.LBB52:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB56
	j .LBB57
.LBB55:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB58
	j .LBB59
.LBB56:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB57
.LBB57:
	j .LBB55
.LBB58:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB59:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call is_number
	mv a0, a0
	beq a0, zero, .LBB60
	j .LBB61
.LBB60:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB61:
	j .LBB62
.LBB62:
	j .LBB63
.LBB63:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB64
	j .LBB65
.LBB64:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call is_number
	mv a0, a0
	li t0, 1
	bne a0, t0, .LBB66
	j .LBB67
.LBB65:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB68
	j .LBB69
.LBB66:
	j .LBB65
.LBB67:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB63
.LBB68:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 46
	beq t0, t1, .LBB70
	j .LBB71
.LBB69:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB72
	j .LBB73
.LBB70:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB74
.LBB71:
	j .LBB69
.LBB74:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB75
	j .LBB76
.LBB75:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call is_number
	mv a0, a0
	li t0, 1
	bne a0, t0, .LBB77
	j .LBB78
.LBB76:
	j .LBB71
.LBB77:
	j .LBB76
.LBB78:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB74
.LBB72:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 101
	beq t0, t1, .LBB79
	j .LBB80
.LBB73:
	j .LBB81
.LBB79:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB82
	j .LBB83
.LBB80:
	j .LBB73
.LBB82:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB84
	j .LBB85
.LBB83:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB86
	j .LBB87
.LBB84:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB85
.LBB85:
	j .LBB83
.LBB86:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB88
	j .LBB89
.LBB87:
	j .LBB90
.LBB88:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB89
.LBB89:
	j .LBB87
.LBB90:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB91
	j .LBB92
.LBB91:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call is_number
	mv a0, a0
	li t0, 1
	bne a0, t0, .LBB93
	j .LBB94
.LBB92:
	j .LBB80
.LBB93:
	j .LBB92
.LBB94:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB90
.LBB81:
	j .LBB95
.LBB53:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB96
.LBB54:
	li a1, 3
	beq a0, a1, .LBB97
	j .LBB98
.LBB96:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB99
	j .LBB100
.LBB99:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 34
	beq t0, t1, .LBB101
	j .LBB102
.LBB100:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB103
	j .LBB104
.LBB101:
	j .LBB100
.LBB102:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 92
	beq t0, t1, .LBB105
	j .LBB106
.LBB105:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 2
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB107
.LBB106:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB107
.LBB107:
	j .LBB96
.LBB103:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB104:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 34
	bne t0, t1, .LBB108
	j .LBB109
.LBB108:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB109:
	j .LBB110
.LBB110:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB111
.LBB111:
	j .LBB81
.LBB97:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB112
	j .LBB113
.LBB98:
	li a1, 4
	beq a0, a1, .LBB114
	j .LBB115
.LBB112:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 93
	beq t0, t1, .LBB116
	j .LBB117
.LBB113:
	li a0, 0
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB118
	j .LBB119
.LBB116:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	li a0, 1
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB117:
	j .LBB113
.LBB118:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB119:
	mv a0, s1
	mv a1, a1
	call skip_space
	j .LBB120
.LBB120:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 44
	beq t0, t1, .LBB121
	j .LBB122
.LBB121:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	mv a0, s1
	mv a1, a1
	call skip_space
	li a0, 0
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB123
	j .LBB124
.LBB122:
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB125
	j .LBB126
.LBB123:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB124:
	mv a0, s1
	mv a1, a1
	call skip_space
	j .LBB120
.LBB125:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB126:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 93
	bne t0, t1, .LBB127
	j .LBB128
.LBB127:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB128:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	j .LBB129
.LBB129:
	j .LBB111
.LBB114:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	blt t0, a1, .LBB130
	j .LBB131
.LBB115:
	li a1, 5
	beq a0, a1, .LBB132
	j .LBB133
.LBB130:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 125
	beq t0, t1, .LBB134
	j .LBB135
.LBB131:
	li a0, 2
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB136
	j .LBB137
.LBB134:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	li a0, 1
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB135:
	j .LBB131
.LBB136:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB137:
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB138
	j .LBB139
.LBB138:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB139:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 58
	bne t0, t1, .LBB140
	j .LBB141
.LBB140:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB141:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	mv a0, s1
	mv a1, a1
	call skip_space
	li a0, 0
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB142
	j .LBB143
.LBB142:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB143:
	mv a0, s1
	mv a1, a1
	call skip_space
	j .LBB144
.LBB144:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 44
	beq t0, t1, .LBB145
	j .LBB146
.LBB145:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 1
	lui t1, %hi(pos)
	sw t0, %lo(pos)(t1)
	mv a0, s1
	mv a1, a1
	call skip_space
	li a0, 2
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB147
	j .LBB148
.LBB146:
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB149
	j .LBB150
.LBB147:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB148:
	mv a0, s1
	mv a1, a1
	call skip_space
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	bge t0, a1, .LBB151
	j .LBB152
.LBB151:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB152:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 58
	bne t0, t1, .LBB153
	j .LBB154
.LBB153:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB154:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	mv a0, s1
	mv a1, a1
	call skip_space
	li a0, 0
	mv a1, s1
	mv a2, a1
	call detect_item
	mv a0, a0
	beq a0, zero, .LBB155
	j .LBB156
.LBB155:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB156:
	mv a0, s1
	mv a1, a1
	call skip_space
	j .LBB144
.LBB149:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB150:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 125
	bne t0, t1, .LBB157
	j .LBB158
.LBB157:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB158:
	j .LBB159
.LBB159:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB160
.LBB160:
	j .LBB129
.LBB132:
	addiw a0, s0, -64
	mv a0, a0
	mv a1, t2
	li a2, 16
	call llvm.memcpy.p0.p0.i32
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 3
	bge t0, a1, .LBB161
	j .LBB162
.LBB133:
	li t2, 6
	beq a0, t2, .LBB163
	j .LBB164
.LBB161:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB162:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -48
	lw t0, 0(t0)
	bne t1, t0, .LBB165
	j .LBB166
.LBB165:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB166:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -48
	lw t0, 4(t0)
	bne t1, t0, .LBB167
	j .LBB168
.LBB167:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB168:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 2
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -48
	lw t0, 8(t0)
	bne t1, t0, .LBB169
	j .LBB170
.LBB169:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB170:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 3
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -48
	lw t0, 12(t0)
	bne t1, t0, .LBB171
	j .LBB172
.LBB171:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB172:
	j .LBB173
.LBB173:
	j .LBB174
.LBB174:
	j .LBB175
.LBB175:
	j .LBB176
.LBB176:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 4
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB177
.LBB177:
	j .LBB160
.LBB163:
	addiw a0, s0, -88
	mv a0, a0
	mv a1, t1
	li a2, 20
	call llvm.memcpy.p0.p0.i32
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 4
	bge t0, a1, .LBB178
	j .LBB179
.LBB164:
	li t1, 7
	beq a0, t1, .LBB180
	j .LBB181
.LBB178:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB179:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -68
	lw t0, 0(t0)
	bne t1, t0, .LBB182
	j .LBB183
.LBB182:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB183:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -68
	lw t0, 4(t0)
	bne t1, t0, .LBB184
	j .LBB185
.LBB184:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB185:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 2
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -68
	lw t0, 8(t0)
	bne t1, t0, .LBB186
	j .LBB187
.LBB186:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB187:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 3
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -68
	lw t0, 12(t0)
	bne t1, t0, .LBB188
	j .LBB189
.LBB188:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB189:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 4
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -68
	lw t0, 16(t0)
	bne t1, t0, .LBB190
	j .LBB191
.LBB190:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB191:
	j .LBB192
.LBB192:
	j .LBB193
.LBB193:
	j .LBB194
.LBB194:
	j .LBB195
.LBB195:
	j .LBB196
.LBB196:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 5
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB197
.LBB197:
	j .LBB177
.LBB180:
	addiw a0, s0, -48
	mv a0, a0
	mv a1, t0
	li a2, 16
	call llvm.memcpy.p0.p0.i32
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t0, t0, 3
	bge t0, a1, .LBB198
	j .LBB199
.LBB181:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB198:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB199:
	lui t0, %hi(pos)
	lw t1, %lo(pos)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -32
	lw t0, 0(t0)
	bne t1, t0, .LBB200
	j .LBB201
.LBB200:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB201:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 1
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -32
	lw t0, 4(t0)
	bne t1, t0, .LBB202
	j .LBB203
.LBB202:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB203:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 2
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -32
	lw t0, 8(t0)
	bne t1, t0, .LBB204
	j .LBB205
.LBB204:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB205:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 3
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -32
	lw t0, 12(t0)
	bne t1, t0, .LBB206
	j .LBB207
.LBB206:
	mv a0, zero
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
.LBB207:
	j .LBB208
.LBB208:
	j .LBB209
.LBB209:
	j .LBB210
.LBB210:
	j .LBB211
.LBB211:
	lui t0, %hi(pos)
	lw t0, %lo(pos)(t0)
	addiw t1, t0, 4
	lui t0, %hi(pos)
	sw t1, %lo(pos)(t0)
	j .LBB212
.LBB212:
	j .LBB197
.LBB95:
	li a0, 1
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size detect_item, .-detect_item
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB213:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv t0, a0
	mv a1, zero
	mv t0, t0
	j .LBB214
.LBB214:
	li t1, 35
	bne t0, t1, .LBB215
	j .LBB216
.LBB215:
	lui t1, %hi(buffer)
	addi t1, t1, %lo(buffer)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a1, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	addiw a1, a1, 1
	call getch
	mv t0, a0
	mv a1, a1
	mv t0, t0
	j .LBB214
.LBB216:
	lui t0, %hi(buffer)
	addi t0, t0, %lo(buffer)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call skip_space
	lui t0, %hi(buffer)
	addi t0, t0, %lo(buffer)
	addw t0, s0, t0
	li a0, 0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a1
	call detect_item
	mv a0, a0
	lui t0, %hi(buffer)
	addi t0, t0, %lo(buffer)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call skip_space
	bne a0, zero, .LBB217
	j .LBB218
.LBB217:
	li a0, 111
	call putch
	li a0, 107
	call putch
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB218:
	li a0, 110
	call putch
	li a0, 111
	call putch
	li a0, 116
	call putch
	li a0, 32
	call putch
	li a0, 111
	call putch
	li a0, 107
	call putch
	li a0, 10
	call putch
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
