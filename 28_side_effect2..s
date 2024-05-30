    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  sum
    .data
    .align  2
    .type  sum, @object
    .size  sum, 4
sum:
    .zero  4
    .globl  array
    .bss
    .align  3
    .type  array, @object
    .size  array, 80
array:
    .zero  80
    .text
    .align  1
    .globl  f
    .type  f, @function
f:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addiw t0, t0, 1
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	bge a0, a1, .LBB2
	j .LBB3
.LBB2:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t1, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t1, t1, t0
	li t0, 1
	sw t0, 0(t1)
	beq a0, zero, .LBB5
	j .LBB6
.LBB3:
	li t0, 20
	bge a0, t0, .LBB2
	j .LBB4
.LBB5:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB6:
	li t0, 1
	subw t1, a0, t0
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size f, .-f
    .align  1
    .globl  g
    .type  g, @function
g:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB8
.LBB8:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addiw t0, t0, 2
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	bge a0, a1, .LBB9
	j .LBB10
.LBB9:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	beq a0, zero, .LBB12
	j .LBB13
.LBB10:
	li t0, 20
	bge a0, t0, .LBB9
	j .LBB11
.LBB12:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	li t0, 1
	subw t1, a0, t0
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size g, .-g
    .align  1
    .globl  h
    .type  h, @function
h:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB15
.LBB15:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addiw t0, t0, 3
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	blt a0, zero, .LBB16
	j .LBB17
.LBB16:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB18:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	li t0, 20
	bge a0, t0, .LBB16
	j .LBB18
    .size h, .-h
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB19:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a1, zero
	j .LBB20
.LBB20:
	li t0, 20
	blt a1, t0, .LBB21
	j .LBB22
.LBB21:
	li a0, 0
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB23
	j .LBB24
.LBB22:
	mv a1, zero
	j .LBB25
.LBB26:
	j .LBB24
.LBB24:
	addiw a1, a1, 1
	mv a1, a1
	j .LBB20
.LBB23:
	li a0, 1
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB27
	j .LBB24
.LBB27:
	li a0, 2
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB28
	j .LBB24
.LBB28:
	li a0, 3
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB29
	j .LBB24
.LBB29:
	li a0, 4
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB30
	j .LBB24
.LBB30:
	li a0, 5
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB31
	j .LBB24
.LBB31:
	li a0, 6
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB32
	j .LBB24
.LBB32:
	li a0, 7
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB33
	j .LBB24
.LBB33:
	li a0, 8
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB34
	j .LBB24
.LBB34:
	li a0, 9
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB35
	j .LBB24
.LBB35:
	li a0, 10
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB36
	j .LBB24
.LBB36:
	li a0, 11
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB37
	j .LBB24
.LBB37:
	li a0, 12
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB38
	j .LBB24
.LBB38:
	li a0, 13
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB39
	j .LBB24
.LBB39:
	li a0, 14
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB40
	j .LBB24
.LBB40:
	li a0, 15
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB41
	j .LBB24
.LBB41:
	li a0, 16
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB42
	j .LBB24
.LBB42:
	li a0, 17
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB43
	j .LBB24
.LBB43:
	li a0, 18
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB44
	j .LBB24
.LBB44:
	li a0, 19
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB26
	j .LBB24
.LBB25:
	li t0, 20
	blt a1, t0, .LBB45
	j .LBB46
.LBB45:
	li a0, 0
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB48
.LBB46:
	li a1, 1
	j .LBB49
.LBB47:
	j .LBB50
.LBB50:
	addiw a1, a1, 1
	mv a1, a1
	j .LBB25
.LBB48:
	li a0, 1
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB51
.LBB51:
	li a0, 2
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB52
.LBB52:
	li a0, 3
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB53
.LBB53:
	li a0, 4
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB54
.LBB54:
	li a0, 5
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB55
.LBB55:
	li a0, 6
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB56
.LBB56:
	li a0, 7
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB57
.LBB57:
	li a0, 8
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB58
.LBB58:
	li a0, 9
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB59
.LBB59:
	li a0, 10
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB60
.LBB60:
	li a0, 11
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB61
.LBB61:
	li a0, 12
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB62
.LBB62:
	li a0, 13
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB63
.LBB63:
	li a0, 14
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB64
.LBB64:
	li a0, 15
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB65
.LBB65:
	li a0, 16
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB66
.LBB66:
	li a0, 17
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB67
.LBB67:
	li a0, 18
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB68
.LBB68:
	li a0, 19
	mv a1, a1
	call g
	mv a0, a0
	bne a0, zero, .LBB47
	j .LBB50
.LBB49:
	li t0, 20
	blt a1, t0, .LBB69
	j .LBB70
.LBB71:
	addiw a1, a1, 1
	mv a1, a1
	j .LBB49
.LBB70:
	li a0, 0
	call h
	mv a0, a0
	bne a0, zero, .LBB72
	j .LBB73
.LBB69:
	li t0, 1
	subw a0, a1, t0
	mv a0, a0
	mv a1, a1
	call f
	mv a0, a0
	bne a0, zero, .LBB71
	j .LBB70
.LBB74:
	li t0, 1
	j .LBB75
.LBB75:
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t0, t1, t0
	li a0, 4
	call h
	mv a0, a0
	beq a0, zero, .LBB76
	j .LBB77
.LBB73:
	li a0, 2
	call h
	mv a0, a0
	beq a0, zero, .LBB74
	j .LBB78
.LBB72:
	li a0, 1
	call h
	mv a0, a0
	bne a0, zero, .LBB74
	j .LBB73
.LBB78:
	li a0, 3
	call h
	mv a0, a0
	bne a0, zero, .LBB74
	j .LBB100
.LBB76:
	li t1, 1
	j .LBB79
.LBB79:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	mulw t0, t0, t1
	li a0, 9
	call h
	mv a0, a0
	bne a0, zero, .LBB80
	j .LBB81
.LBB77:
	li a0, 5
	call h
	mv a0, a0
	bne a0, zero, .LBB82
	j .LBB83
.LBB83:
	li a0, 8
	call h
	mv a0, a0
	beq a0, zero, .LBB76
	j .LBB101
.LBB82:
	li a0, 6
	call h
	mv a0, a0
	beq a0, zero, .LBB84
	j .LBB83
.LBB84:
	li a0, 7
	call h
	mv a0, a0
	bne a0, zero, .LBB76
	j .LBB83
.LBB85:
	li t1, 1
	j .LBB86
.LBB86:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	subw t0, t0, t1
	li a0, 0
	call h
	mv a0, a0
	bne a0, zero, .LBB87
	j .LBB88
.LBB81:
	li a0, 11
	call h
	mv a0, a0
	beq a0, zero, .LBB85
	j .LBB89
.LBB80:
	li a0, 10
	call h
	mv a0, a0
	beq a0, zero, .LBB85
	j .LBB81
.LBB89:
	li a0, 12
	call h
	mv a0, a0
	beq a0, zero, .LBB85
	j .LBB90
.LBB90:
	li a0, 13
	call h
	mv a0, a0
	beq a0, zero, .LBB85
	j .LBB91
.LBB91:
	li a0, 14
	call h
	mv a0, a0
	bne a0, zero, .LBB92
	j .LBB102
.LBB92:
	li a0, 15
	call h
	mv a0, a0
	bne a0, zero, .LBB85
	j .LBB103
.LBB93:
	li t1, 1
	j .LBB94
.LBB94:
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addw a0, t0, t1
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB88:
	li a0, 5
	call h
	mv a0, a0
	bne a0, zero, .LBB93
	j .LBB95
.LBB87:
	li a0, 2
	call h
	mv a0, a0
	bne a0, zero, .LBB96
	j .LBB88
.LBB96:
	li a0, 3
	call h
	mv a0, a0
	beq a0, zero, .LBB97
	j .LBB88
.LBB97:
	li a0, 4
	call h
	mv a0, a0
	beq a0, zero, .LBB93
	j .LBB88
.LBB95:
	li a0, 6
	call h
	mv a0, a0
	bne a0, zero, .LBB98
	j .LBB99
.LBB99:
	li a0, 8
	call h
	mv a0, a0
	bne a0, zero, .LBB93
	j .LBB104
.LBB98:
	li a0, 7
	call h
	mv a0, a0
	beq a0, zero, .LBB93
	j .LBB99
.LBB100:
	mv t0, zero
	j .LBB75
.LBB101:
	mv t1, zero
	j .LBB79
.LBB102:
	mv t1, zero
	j .LBB86
.LBB103:
	mv t1, zero
	j .LBB86
.LBB104:
	mv t1, zero
	j .LBB94
    .size main, .-main
