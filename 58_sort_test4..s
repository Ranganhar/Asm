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
    .globl  select_sort
    .type  select_sort, @function
select_sort:
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
	j .LBB2
.LBB2:
	li t0, 1
	subw t0, a1, t0
	blt t1, t0, .LBB3
	j .LBB4
.LBB3:
	addiw t2, t1, 1
	mv t2, t2
	mv t0, t1
	j .LBB5
.LBB4:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	blt t2, a1, .LBB6
	j .LBB7
.LBB6:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw s1, s0, a0
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	blt s1, t1, .LBB8
	j .LBB12
.LBB7:
	bne t0, t1, .LBB10
	j .LBB11
.LBB8:
	mv t0, t2
	j .LBB9
.LBB9:
	addiw t2, t2, 1
	mv t2, t2
	mv t0, t0
	j .LBB5
.LBB10:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t0, s0, a0
	li a2, 4
	mulw t0, t0, a2
	addw t0, t0, t0
	sw t2, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	j .LBB11
.LBB11:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB2
.LBB12:
	mv t0, t0
	j .LBB9
    .size select_sort, .-select_sort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB13:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	li t0, 10
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
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
	addiw t1, s0, -56
	li t0, 6
	sw t0, 24(t1)
	addiw t0, s0, -56
	li t1, 5
	sw t1, 28(t0)
	addiw t0, s0, -56
	li t1, 7
	sw t1, 32(t0)
	addiw t1, s0, -56
	li t0, 8
	sw t0, 36(t1)
	addiw t0, s0, -56
	lui t1, %hi(n)
	lw a1, %lo(n)(t1)
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call select_sort
	mv t0, a0
	mv t0, t0
	j .LBB14
.LBB14:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB15
	j .LBB16
.LBB15:
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
	j .LBB14
.LBB16:
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
