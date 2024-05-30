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
    .globl  counting_sort
    .type  counting_sort, @function
counting_sort:
.LBB0:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	li t1, 10
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	mv t0, zero
	j .LBB5
.LBB5:
	blt t0, a2, .LBB6
	j .LBB7
.LBB6:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addiw s1, t1, 1
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addiw t1, s0, -56
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
.LBB7:
	li t0, 1
	j .LBB8
.LBB8:
	li t1, 10
	blt t0, t1, .LBB9
	j .LBB10
.LBB9:
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, 1
	subw s1, t0, t1
	addiw t1, s0, -56
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t2, t1
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB8
.LBB10:
	mv a2, a2
	j .LBB11
.LBB11:
	blt zero, a2, .LBB12
	j .LBB13
.LBB12:
	li t0, 1
	subw t1, a2, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -56
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	li t0, 1
	subw t2, t1, t0
	li t0, 1
	subw t1, a2, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addiw t0, s0, -56
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	li t0, 1
	subw t1, a2, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	li t0, 1
	subw t2, a2, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	addiw t0, s0, -56
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s0, a1
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	sw t1, 0(t0)
	li t0, 1
	subw a2, a2, t0
	mv a2, a2
	j .LBB11
.LBB13:
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size counting_sort, .-counting_sort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB14:
	addi sp, sp, -96
	sd ra, 88(sp)
	sd s0, 80(sp)
	addi s0, sp, 96
	li t1, 10
	lui t0, %hi(n)
	sw t1, %lo(n)(t0)
	addiw t1, s0, -96
	li t0, 4
	sw t0, 0(t1)
	addiw t1, s0, -96
	li t0, 3
	sw t0, 4(t1)
	addiw t0, s0, -96
	li t1, 9
	sw t1, 8(t0)
	addiw t0, s0, -96
	li t1, 2
	sw t1, 12(t0)
	addiw t0, s0, -96
	li t1, 0
	sw t1, 16(t0)
	addiw t1, s0, -96
	li t0, 1
	sw t0, 20(t1)
	addiw t1, s0, -96
	li t0, 6
	sw t0, 24(t1)
	addiw t0, s0, -96
	li t1, 5
	sw t1, 28(t0)
	addiw t0, s0, -96
	li t1, 7
	sw t1, 32(t0)
	addiw t1, s0, -96
	li t0, 8
	sw t0, 36(t1)
	addiw t0, s0, -96
	addiw t1, s0, -56
	lui t2, %hi(n)
	lw a2, %lo(n)(t2)
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	mv a2, a2
	call counting_sort
	mv t0, a0
	mv t0, t0
	j .LBB15
.LBB15:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB16
	j .LBB17
.LBB16:
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
	j .LBB15
.LBB17:
	mv a0, zero
	ld ra, 88(sp)
	ld s0, 80(sp)
	addi sp, sp, 96
	ret 
    .size main, .-main
