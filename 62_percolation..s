    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  array
    .bss
    .align  3
    .type  array, @object
    .size  array, 440
array:
    .zero  440
    .globl  n
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .text
    .align  1
    .globl  init
    .type  init, @function
init:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 1
	j .LBB2
.LBB2:
	mulw t1, a0, a0
	addiw t1, t1, 1
	bge t1, t0, .LBB3
	j .LBB4
.LBB3:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, -1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size init, .-init
    .align  1
    .globl  findfa
    .type  findfa, @function
findfa:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB6
.LBB6:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t1, t0, .LBB7
	j .LBB8
.LBB7:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB8:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call findfa
	mv a0, a0
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size findfa, .-findfa
    .align  1
    .globl  mmerge
    .type  mmerge, @function
mmerge:
.LBB9:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB10
.LBB10:
	mv a0, a0
	call findfa
	mv t0, a0
	mv a0, a1
	call findfa
	mv a0, a0
	bne t0, a0, .LBB11
	j .LBB12
.LBB11:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB12
.LBB12:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size mmerge, .-mmerge
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB13:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB14
.LBB14:
	bne t0, zero, .LBB15
	j .LBB16
.LBB15:
	li t1, 1
	subw t0, t0, t1
	li t1, 4
	lui t2, %hi(n)
	sw t1, %lo(n)(t2)
	lui t1, %hi(n)
	lw a0, %lo(n)(t1)
	mv a0, a0
	call init
	lui t1, %hi(n)
	lw t2, %lo(n)(t1)
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	mulw t1, t2, t1
	addiw t1, t1, 1
	mv t0, zero
	mv t2, zero
	j .LBB17
.LBB16:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	li s1, 10
	blt t2, s1, .LBB18
	j .LBB19
.LBB18:
	call getint
	mv a2, a0
	call getint
	mv s1, a0
	beq t0, zero, .LBB20
	j .LBB44
.LBB19:
	beq t0, zero, .LBB22
	j .LBB23
.LBB20:
	lui a0, %hi(n)
	lw a0, %lo(n)(a0)
	li a1, 1
	subw a1, a2, a1
	mulw a0, a0, a1
	addw a0, a0, s1
	lui a1, %hi(array)
	addi a1, a1, %lo(array)
	addw a1, s0, a1
	li a1, 4
	mulw a1, a0, a1
	addw a1, a1, a1
	sw a0, 0(a1)
	li t0, 1
	beq a2, t0, .LBB24
	j .LBB25
.LBB21:
	addiw t2, t2, 1
	mv t0, t0
	mv t2, t2
	j .LBB17
.LBB24:
	lui a1, %hi(array)
	addi a1, a1, %lo(array)
	addw a3, s0, a1
	li a1, 0
	sw a1, 0(a3)
	mv a0, a0
	li a1, 0
	call mmerge
	j .LBB25
.LBB25:
	lui a1, %hi(n)
	lw a1, %lo(n)(a1)
	beq a2, a1, .LBB26
	j .LBB27
.LBB26:
	lui a1, %hi(array)
	addi a1, a1, %lo(array)
	addw a1, s0, a1
	li a1, 4
	mulw a1, t1, a1
	addw a1, a1, a1
	sw t1, 0(a1)
	mv a0, a0
	mv a1, t1
	call mmerge
	j .LBB27
.LBB27:
	lui a1, %hi(n)
	lw a1, %lo(n)(a1)
	blt s1, a1, .LBB28
	j .LBB29
.LBB30:
	addiw a1, a0, 1
	mv a0, a0
	mv a1, a1
	call mmerge
	j .LBB29
.LBB29:
	li t0, 1
	blt t0, s1, .LBB31
	j .LBB32
.LBB28:
	addiw t1, a0, 1
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	bne t0, t1, .LBB30
	j .LBB29
.LBB33:
	li s1, 1
	subw a1, a0, s1
	mv a0, a0
	mv a1, a1
	call mmerge
	j .LBB32
.LBB32:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	blt a2, s1, .LBB34
	j .LBB35
.LBB31:
	li t0, 1
	subw t1, a0, t0
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	bne t0, t1, .LBB33
	j .LBB32
.LBB36:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	addw a1, a0, s1
	mv a0, a0
	mv a1, a1
	call mmerge
	j .LBB35
.LBB35:
	li t0, 1
	blt t0, a2, .LBB37
	j .LBB38
.LBB34:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	addw t0, a0, t0
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	bne t0, t1, .LBB36
	j .LBB35
.LBB39:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	subw a1, a0, s1
	mv a0, a0
	mv a1, a1
	call mmerge
	j .LBB38
.LBB38:
	lui s1, %hi(array)
	addi s1, s1, %lo(array)
	addw s1, s0, s1
	lw s1, 0(s1)
	li t0, -1
	bne s1, t0, .LBB40
	j .LBB45
.LBB37:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	subw t1, a0, t0
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	bne t0, t1, .LBB39
	j .LBB38
.LBB42:
	addiw a0, t2, 1
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t0, 1
	j .LBB41
.LBB41:
	mv t0, t0
	j .LBB21
.LBB40:
	lui s1, %hi(array)
	addi s1, s1, %lo(array)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	li t0, -1
	bne s1, t0, .LBB43
	j .LBB46
.LBB43:
	li a0, 0
	call findfa
	mv t0, a0
	mv a0, t1
	call findfa
	mv a0, a0
	beq t0, a0, .LBB42
	j .LBB47
.LBB22:
	li a0, -1
	call putint
	li a0, 10
	call putch
	j .LBB23
.LBB23:
	mv t0, t0
	j .LBB14
.LBB44:
	mv t0, t0
	j .LBB21
.LBB45:
	mv t0, t0
	j .LBB41
.LBB46:
	mv t0, t0
	j .LBB41
.LBB47:
	mv t0, t0
	j .LBB41
    .size main, .-main
