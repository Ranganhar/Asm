    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  parent
    .bss
    .align  3
    .type  parent, @object
    .size  parent, 4020
parent:
    .zero  4020
    .text
    .align  1
    .globl  find
    .type  find, @function
find:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB1
.LBB1:
	lui t1, %hi(parent)
	addi t1, t1, %lo(parent)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t1, t0, .LBB2
	j .LBB3
.LBB2:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	lui t1, %hi(parent)
	addi t1, t1, %lo(parent)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call find
	mv a0, a0
	lui t1, %hi(parent)
	addi t1, t1, %lo(parent)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	lui t1, %hi(parent)
	addi t1, t1, %lo(parent)
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
    .size find, .-find
    .align  1
    .globl  merge
    .type  merge, @function
merge:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB5
.LBB5:
	mv a0, a0
	call find
	mv t0, a0
	mv a0, a1
	call find
	mv a0, a0
	bne t0, a0, .LBB6
	j .LBB7
.LBB6:
	lui t1, %hi(parent)
	addi t1, t1, %lo(parent)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	j .LBB7
.LBB7:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size merge, .-merge
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	call getint
	mv t2, a0
	mv t1, zero
	j .LBB9
.LBB9:
	blt t1, t0, .LBB10
	j .LBB11
.LBB10:
	lui t2, %hi(parent)
	addi t2, t2, %lo(parent)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB9
.LBB11:
	mv t1, zero
	j .LBB12
.LBB12:
	blt t1, t2, .LBB13
	j .LBB14
.LBB13:
	call getint
	mv t0, a0
	call getint
	mv a1, a0
	mv a0, t0
	mv a1, a1
	call merge
	addiw t1, t1, 1
	mv t1, t1
	j .LBB12
.LBB14:
	mv t1, zero
	mv a0, zero
	j .LBB15
.LBB15:
	blt t1, t0, .LBB16
	j .LBB17
.LBB16:
	lui t2, %hi(parent)
	addi t2, t2, %lo(parent)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	beq t2, t1, .LBB18
	j .LBB20
.LBB17:
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB18:
	addiw a0, a0, 1
	mv a0, a0
	j .LBB19
.LBB19:
	addiw t1, t1, 1
	mv t1, t1
	mv a0, a0
	j .LBB15
.LBB20:
	mv a0, a0
	j .LBB19
    .size main, .-main
