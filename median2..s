    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  n
    .bss
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .globl  a
    .align  3
    .type  a, @object
    .size  a, 40000000
a:
    .zero  40000000
    .text
    .align  1
    .globl  meanless_calculation
    .type  meanless_calculation, @function
meanless_calculation:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	mv t1, zero
	mv t0, zero
	j .LBB2
.LBB2:
	blt t1, a0, .LBB3
	j .LBB4
.LBB5:
	addiw t1, t1, 1
	addw t0, t0, a0
	addw t0, t0, t1
	mv t1, t1
	mv t0, t0
	j .LBB2
.LBB4:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	blt t1, a1, .LBB5
	j .LBB4
    .size meanless_calculation, .-meanless_calculation
    .align  1
    .globl  swap
    .type  swap, @function
swap:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv t0, a1
	mv a1, a2
	j .LBB7
.LBB7:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	addw t1, s0, a0
	li t1, 4
	mulw t1, a1, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addw t1, s0, a0
	li t1, 4
	mulw t1, a1, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	mv a0, t0
	mv a1, a1
	call meanless_calculation
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size swap, .-swap
    .align  1
    .globl  median
    .type  median, @function
median:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB9
.LBB9:
	addw t0, s0, a0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	addiw a2, a2, 1
	mv t1, a1
	mv a2, a2
	mv t0, zero
	j .LBB10
.LBB10:
	j .LBB11
.LBB11:
	mv a2, a2
	mv t0, t0
	j .LBB12
.LBB13:
	addw t2, s0, a0
	li t2, 4
	mulw t2, a1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	mv a0, a0
	mv a1, a1
	mv a2, t1
	call swap
	blt a3, t1, .LBB14
	j .LBB15
.LBB12:
	blt t1, a2, .LBB16
	j .LBB30
.LBB16:
	li t2, 1
	subw a2, a2, t2
	addw t2, s0, a0
	li t2, 4
	mulw t2, a2, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, s1, .LBB18
	j .LBB19
.LBB17:
	mv t1, t1
	mv t0, t0
	j .LBB20
.LBB18:
	mv a2, a2
	j .LBB17
.LBB19:
	addiw t0, t0, 1
	mv a2, a2
	mv t0, t0
	j .LBB12
.LBB20:
	blt t1, a2, .LBB21
	j .LBB31
.LBB21:
	addiw t1, t1, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bge t2, s1, .LBB23
	j .LBB24
.LBB22:
	beq t1, a2, .LBB25
	j .LBB26
.LBB23:
	mv t1, t1
	j .LBB22
.LBB24:
	li t2, 1
	subw t0, t0, t2
	mv t1, t1
	mv t0, t0
	j .LBB20
.LBB25:
	j .LBB13
.LBB26:
	mv a0, a0
	mv a1, t1
	mv a2, a2
	call swap
	j .LBB27
.LBB27:
	mv t1, t1
	mv a2, a2
	mv t0, t0
	j .LBB10
.LBB14:
	mv a0, a0
	mv a1, a1
	mv a2, t1
	mv a3, a3
	call median
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	blt t1, a3, .LBB28
	j .LBB29
.LBB28:
	addiw a1, t1, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call median
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB29:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB30:
	mv a2, a2
	j .LBB17
.LBB31:
	mv t1, t1
	j .LBB22
    .size median, .-median
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB32:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv a0, a0
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	li a0, 59
	call _sysy_starttime
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	li t2, 1
	subw a2, t1, t2
	lui t1, %hi(n)
	lw t2, %lo(n)(t1)
	li t1, 2
	divw a3, t2, t1
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	mv a2, a2
	mv a3, a3
	call median
	li a0, 61
	call _sysy_stoptime
	lui t0, %hi(n)
	lw a0, %lo(n)(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	lui t0, %hi(n)
	lw t1, %lo(n)(t0)
	li t0, 2
	divw t1, t1, t0
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 256
	remw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
