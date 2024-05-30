    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  matrix
    .bss
    .align  3
    .type  matrix, @object
    .size  matrix, 80000000
matrix:
    .zero  80000000
    .globl  a
    .align  3
    .type  a, @object
    .size  a, 400000
a:
    .zero  400000
    .text
    .align  1
    .globl  transpose
    .type  transpose, @function
transpose:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB1
.LBB1:
	divw a0, a0, a2
	mv t1, zero
	j .LBB2
.LBB2:
	blt t1, a0, .LBB3
	j .LBB4
.LBB3:
	mv t0, zero
	j .LBB5
.LBB4:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	blt t0, a2, .LBB6
	j .LBB7
.LBB6:
	blt t1, t0, .LBB8
	j .LBB9
.LBB7:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB2
.LBB8:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
.LBB9:
	mulw t2, t1, a2
	addw s1, t2, t0
	addw t2, s0, a1
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	mulw t2, t1, a2
	addw t2, t2, t0
	addw t2, s0, a1
	li a3, 4
	mulw t2, t2, a3
	addw t2, t2, t2
	lw t2, 0(t2)
	mulw a0, t0, a0
	addw a0, a0, t1
	addw a0, s0, a1
	li a3, 4
	mulw a0, a0, a3
	addw a0, a0, a0
	sw t2, 0(a0)
	mulw t1, t1, a2
	addw t1, t1, t0
	addw t1, s0, a1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
    .size transpose, .-transpose
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t2, a0
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv s1, a0
	li a0, 28
	call _sysy_starttime
	mv t0, zero
	j .LBB11
.LBB11:
	blt t0, t2, .LBB12
	j .LBB13
.LBB12:
	lui t1, %hi(matrix)
	addi t1, t1, %lo(matrix)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB11
.LBB13:
	mv t1, zero
	j .LBB14
.LBB14:
	blt t1, s1, .LBB15
	j .LBB16
.LBB15:
	lui t0, %hi(matrix)
	addi t0, t0, %lo(matrix)
	addw t0, s0, t0
	lui a0, %hi(a)
	addi a0, a0, %lo(a)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a2, 0(a0)
	mv a0, t2
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a2
	call transpose
	addiw t1, t1, 1
	mv t1, t1
	j .LBB14
.LBB16:
	mv t0, zero
	mv a0, zero
	j .LBB17
.LBB17:
	blt t0, s1, .LBB18
	j .LBB19
.LBB18:
	mulw t2, t0, t0
	lui t1, %hi(matrix)
	addi t1, t1, %lo(matrix)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t1, t2, t1
	addw a0, a0, t1
	addiw t0, t0, 1
	mv t0, t0
	mv a0, a0
	j .LBB17
.LBB19:
	blt a0, zero, .LBB20
	j .LBB22
.LBB20:
	subw a0, zero, a0
	mv a0, a0
	j .LBB21
.LBB21:
	li a0, 47
	call _sysy_stoptime
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB22:
	mv a0, a0
	j .LBB21
    .size main, .-main
