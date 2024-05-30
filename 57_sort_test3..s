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
    .globl  QuickSort
    .type  QuickSort, @function
QuickSort:
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
	blt a1, a2, .LBB2
	j .LBB3
.LBB2:
	addw t0, s0, a0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw a3, 0(t0)
	mv t1, a2
	mv t0, a1
	j .LBB4
.LBB3:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	mv t1, t1
	j .LBB7
.LBB6:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a3, 0(t1)
	li t1, 1
	subw t0, t0, t1
	mv a0, a0
	mv a1, a1
	mv a2, t0
	call QuickSort
	addiw a1, t0, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call QuickSort
	j .LBB3
.LBB7:
	blt t0, t1, .LBB8
	j .LBB9
.LBB10:
	li t2, 1
	subw t1, t1, t2
	mv t1, t1
	j .LBB7
.LBB9:
	blt t0, t1, .LBB11
	j .LBB19
.LBB8:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	li t2, 1
	subw t2, a3, t2
	blt t2, s1, .LBB10
	j .LBB9
.LBB11:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB12
.LBB12:
	mv t0, t0
	j .LBB13
.LBB13:
	blt t0, t1, .LBB14
	j .LBB15
.LBB16:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB13
.LBB15:
	blt t0, t1, .LBB17
	j .LBB20
.LBB14:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, a3, .LBB16
	j .LBB15
.LBB17:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	li t2, 1
	subw t1, t1, t2
	mv t1, t1
	j .LBB18
.LBB18:
	mv t1, t1
	mv t0, t0
	j .LBB4
.LBB19:
	mv t0, t0
	j .LBB12
.LBB20:
	mv t1, t1
	j .LBB18
    .size QuickSort, .-QuickSort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB21:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	li t1, 10
	lui t0, %hi(n)
	sw t1, %lo(n)(t0)
	addiw t1, s0, -56
	li t0, 4
	sw t0, 0(t1)
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
	addiw t0, s0, -56
	li t1, 5
	sw t1, 28(t0)
	addiw t0, s0, -56
	li t1, 7
	sw t1, 32(t0)
	addiw t0, s0, -56
	li t1, 8
	sw t1, 36(t0)
	addiw t0, s0, -56
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	li a2, 9
	call QuickSort
	mv t0, a0
	mv t0, t0
	j .LBB22
.LBB22:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB23
	j .LBB24
.LBB23:
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
	j .LBB22
.LBB24:
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
