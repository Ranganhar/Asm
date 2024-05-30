    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 40000000
a:
    .zero  40000000
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 40000000
b:
    .zero  40000000
    .globl  kernelid
    .align  3
    .type  kernelid, @object
    .size  kernelid, 40000
kernelid:
    .zero  40000
    .text
    .align  1
    .globl  checkrange
    .type  checkrange, @function
checkrange:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	mv a0, a0
	j .LBB2
.LBB2:
	li t0, 1073741824
	blt t0, a0, .LBB3
	j .LBB4
.LBB3:
	li t0, 1073741824
	subw a0, a0, t0
	mv a0, a0
	j .LBB2
.LBB4:
	mv a0, a0
	j .LBB5
.LBB5:
	blt a0, zero, .LBB6
	j .LBB7
.LBB6:
	li t0, 1073741824
	addw a0, a0, t0
	mv a0, a0
	j .LBB5
.LBB7:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size checkrange, .-checkrange
    .align  1
    .globl  reduce
    .type  reduce, @function
reduce:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB9
.LBB9:
	beq a0, zero, .LBB10
	j .LBB11
.LBB10:
	addw a0, a1, a2
	mv a0, a0
	call checkrange
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	li t0, 1
	beq a0, t0, .LBB12
	j .LBB13
.LBB12:
	mv a0, zero
	li t0, 1
	j .LBB14
.LBB13:
	li t0, 2
	beq a0, t0, .LBB15
	j .LBB16
.LBB14:
	li t1, 1073741824
	blt t0, t1, .LBB17
	j .LBB18
.LBB17:
	divw t1, a1, t0
	li t2, 2
	remw s1, t1, t2
	divw t2, a2, t0
	li t1, 2
	remw t1, t2, t1
	beq s1, t1, .LBB19
	j .LBB20
.LBB18:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB19:
	li t1, 2
	mulw a0, a0, t1
	mv a0, a0
	j .LBB21
.LBB20:
	li t1, 2
	mulw t1, a0, t1
	addiw a0, t1, 1
	mv a0, a0
	j .LBB21
.LBB21:
	li t1, 2
	mulw t0, t0, t1
	mv a0, a0
	mv t0, t0
	j .LBB14
.LBB15:
	blt a2, a1, .LBB22
	j .LBB23
.LBB16:
	li t0, 3
	beq a0, t0, .LBB24
	j .LBB25
.LBB22:
	mv a0, a1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB23:
	mv a0, a2
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB24:
	mv a0, zero
	li t0, 1
	j .LBB26
.LBB25:
	li t0, 4
	beq a0, t0, .LBB27
	j .LBB28
.LBB26:
	li t1, 1073741824
	blt t0, t1, .LBB29
	j .LBB30
.LBB29:
	divw t2, a1, t0
	li t1, 2
	remw t1, t2, t1
	li t0, 1
	beq t1, t0, .LBB31
	j .LBB32
.LBB30:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB31:
	li t1, 2
	mulw t1, a0, t1
	addiw a0, t1, 1
	mv a0, a0
	j .LBB33
.LBB34:
	li t1, 2
	mulw a0, a0, t1
	mv a0, a0
	j .LBB33
.LBB32:
	divw t0, a2, t0
	li t1, 2
	remw t0, t0, t1
	li t1, 1
	beq t0, t1, .LBB31
	j .LBB34
.LBB33:
	li t1, 2
	mulw t0, t0, t1
	mv a0, a0
	mv t0, t0
	j .LBB26
.LBB27:
	mv a0, zero
	li t0, 1
	j .LBB35
.LBB28:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB35:
	li t1, 1073741824
	blt t0, t1, .LBB36
	j .LBB37
.LBB36:
	divw t1, a1, t0
	li t2, 2
	remw t1, t1, t2
	li t2, 1
	beq t1, t2, .LBB38
	j .LBB39
.LBB37:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB40:
	li t1, 2
	mulw t1, a0, t1
	addiw a0, t1, 1
	mv a0, a0
	j .LBB41
.LBB39:
	li t1, 2
	mulw a0, a0, t1
	mv a0, a0
	j .LBB41
.LBB38:
	divw t1, a2, t0
	li t0, 2
	remw t0, t1, t0
	li t1, 1
	beq t0, t1, .LBB40
	j .LBB39
.LBB41:
	li t1, 2
	mulw t0, t0, t1
	mv a0, a0
	mv t0, t0
	j .LBB35
    .size reduce, .-reduce
    .align  1
    .globl  getvalue
    .type  getvalue, @function
getvalue:
.LBB42:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	j .LBB43
.LBB43:
	blt a3, zero, .LBB44
	j .LBB45
.LBB44:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB46:
	mulw t0, a3, a2
	addw t1, t0, a4
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB45:
	blt a4, zero, .LBB44
	j .LBB47
.LBB47:
	bge a3, a1, .LBB44
	j .LBB48
.LBB48:
	bge a4, a2, .LBB44
	j .LBB46
    .size getvalue, .-getvalue
    .align  1
    .globl  convn
    .type  convn, @function
convn:
.LBB49:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t2, a0
	mv a0, a1
	mv t2, a2
	mv s1, a3
	mv a2, a4
	mv a5, a5
	j .LBB50
.LBB50:
	mv t0, zero
	j .LBB51
.LBB51:
	j .LBB52
.LBB52:
	mv t1, zero
	j .LBB53
.LBB54:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB53:
	j .LBB55
.LBB55:
	li a1, 2
	divw a1, a5, a1
	subw a3, t0, a1
	mv a3, a3
	mv a1, zero
	j .LBB56
.LBB57:
	addiw t0, t0, 1
	bge t0, s1, .LBB58
	j .LBB59
.LBB56:
	j .LBB60
.LBB60:
	li a4, 2
	divw a4, a5, a4
	subw a4, t1, a4
	mv a4, a4
	mv a1, a1
	j .LBB61
.LBB62:
	mulw a0, t0, a2
	addw a0, a0, t1
	addw t2, s0, t2
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	sw a1, 0(t2)
	addiw t1, t1, 1
	bge t1, a2, .LBB63
	j .LBB64
.LBB61:
	j .LBB65
.LBB65:
	mv a0, a0
	mv a1, s1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	call getvalue
	mv a2, a0
	mv a0, t2
	mv a1, a1
	mv a2, a2
	call reduce
	mv a1, a0
	addiw a4, a4, 1
	li t2, 2
	divw t2, a5, t2
	addw t1, t1, t2
	bge a4, t1, .LBB66
	j .LBB67
.LBB68:
	addiw a3, a3, 1
	li s1, 2
	divw s1, a5, s1
	addw s1, t0, s1
	bge a3, s1, .LBB69
	j .LBB70
.LBB66:
	j .LBB68
.LBB67:
	mv a4, a4
	mv a1, a1
	j .LBB61
.LBB69:
	j .LBB62
.LBB70:
	mv a3, a3
	mv a1, a1
	j .LBB56
.LBB63:
	j .LBB57
.LBB64:
	mv t1, t1
	j .LBB53
.LBB58:
	j .LBB54
.LBB59:
	mv t0, t0
	j .LBB51
    .size convn, .-convn
    .align  1
    .globl  memmove
    .type  memmove, @function
memmove:
.LBB71:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB72
.LBB72:
	mv t0, zero
	j .LBB73
.LBB73:
	blt t0, a2, .LBB74
	j .LBB75
.LBB74:
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB73
.LBB75:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size memmove, .-memmove
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB76:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a5, a0
	call getint
	mv a3, a0
	call getint
	mv a4, a0
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	lui t0, %hi(kernelid)
	addi t0, t0, %lo(kernelid)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv s1, a0
	li a0, 109
	call _sysy_starttime
	mv t2, zero
	j .LBB77
.LBB77:
	blt t2, s1, .LBB78
	j .LBB79
.LBB78:
	lui t0, %hi(kernelid)
	addi t0, t0, %lo(kernelid)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t1, s0, t0
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	addiw a2, t0, 0
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	call convn
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t1, s0, t0
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	mulw a2, a3, a4
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a2
	call memmove
	addiw t2, t2, 1
	mv t2, t2
	j .LBB77
.LBB79:
	li a0, 116
	call _sysy_stoptime
	mulw a0, a3, a4
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
