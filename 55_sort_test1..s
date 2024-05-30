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
    .text
    .align  1
    .globl  bubblesort
    .type  bubblesort, @function
bubblesort:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	mv t1, zero
	j .LBB2
.LBB2:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	li t2, 1
	subw t0, t0, t2
	blt t1, t0, .LBB3
	j .LBB4
.LBB3:
	mv t0, zero
	j .LBB5
.LBB4:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	subw t2, t2, t1
	li s1, 1
	subw t2, t2, s1
	blt t0, t2, .LBB6
	j .LBB7
.LBB6:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addiw t2, t0, 1
	addw t2, s0, a0
	li a1, 4
	mulw t2, t2, a1
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, s1, .LBB8
	j .LBB9
.LBB7:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB2
.LBB8:
	addiw s1, t0, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw a2, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a1, 0(t2)
	addiw s1, t0, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	sw a1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a2, 0(t2)
	j .LBB9
.LBB9:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
    .size bubblesort, .-bubblesort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	li t1, 10
	lui t0, %hi(n)
	sw t1, %lo(n)(t0)
	addiw t0, s0, -56
	li t1, 4
	sw t1, 0(t0)
	addiw t0, s0, -56
	li t1, 3
	sw t1, 4(t0)
	addiw t0, s0, -56
	li t1, 9
	sw t1, 8(t0)
	addiw t0, s0, -56
	li t1, 2
	sw t1, 12(t0)
	addiw t0, s0, -56
	li t1, 0
	sw t1, 16(t0)
	addiw t0, s0, -56
	li t1, 1
	sw t1, 20(t0)
	addiw t0, s0, -56
	li t1, 6
	sw t1, 24(t0)
	addiw t1, s0, -56
	li t0, 5
	sw t0, 28(t1)
	addiw t0, s0, -56
	li t1, 7
	sw t1, 32(t0)
	addiw t0, s0, -56
	li t1, 8
	sw t1, 36(t0)
	addiw t0, s0, -56
	addiw a0, t0, 0
	mv a0, a0
	call bubblesort
	mv t0, a0
	mv t0, t0
	j .LBB11
.LBB11:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB12
	j .LBB13
.LBB12:
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB11
.LBB13:
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
