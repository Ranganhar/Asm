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
    .globl  swap
    .type  swap, @function
swap:
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
	addw t0, s0, a0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, a2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t2, s0, a0
	li t2, 4
	mulw t2, a1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addw t0, s0, a0
	li t0, 4
	mulw t0, a2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size swap, .-swap
    .align  1
    .globl  heap_ajust
    .type  heap_ajust, @function
heap_ajust:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv t1, a2
	j .LBB3
.LBB3:
	li t0, 2
	mulw t0, a1, t0
	addiw a2, t0, 1
	mv a1, a1
	mv a2, a2
	j .LBB4
.LBB4:
	addiw t0, t1, 1
	blt a2, t0, .LBB5
	j .LBB6
.LBB5:
	blt a2, t1, .LBB7
	j .LBB13
.LBB6:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	addiw a2, a2, 1
	mv a2, a2
	j .LBB8
.LBB8:
	addw t0, s0, a0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t2, s0, a0
	li t2, 4
	mulw t2, a2, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, t0, .LBB10
	j .LBB11
.LBB7:
	addw t0, s0, a0
	li t0, 4
	mulw t0, a2, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	addiw t0, a2, 1
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	blt t2, t0, .LBB9
	j .LBB14
.LBB10:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call swap
	li t0, 2
	mulw t0, a2, t0
	addiw t0, t0, 1
	j .LBB12
.LBB12:
	mv a1, a2
	mv a2, t0
	j .LBB4
.LBB13:
	mv a2, a2
	j .LBB8
.LBB14:
	mv a2, a2
	j .LBB8
    .size heap_ajust, .-heap_ajust
    .align  1
    .globl  heap_sort
    .type  heap_sort, @function
heap_sort:
.LBB15:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv t0, a1
	j .LBB16
.LBB16:
	li t1, 2
	divw t1, t0, t1
	li t2, 1
	subw a1, t1, t2
	mv a1, a1
	j .LBB17
.LBB17:
	li t1, -1
	blt t1, a1, .LBB18
	j .LBB19
.LBB18:
	li t1, 1
	subw a2, t0, t1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call heap_ajust
	li t0, 1
	subw a1, a1, t0
	mv a1, a1
	j .LBB17
.LBB19:
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB20
.LBB20:
	blt zero, t0, .LBB21
	j .LBB22
.LBB21:
	mv a0, a0
	li a1, 0
	mv a2, t0
	call swap
	li t1, 1
	subw a2, t0, t1
	mv a0, a0
	li a1, 0
	mv a2, a2
	call heap_ajust
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB20
.LBB22:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size heap_sort, .-heap_sort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB23:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	li t0, 10
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	addiw t1, s0, -56
	li t0, 4
	sw t0, 0(t1)
	addiw t0, s0, -56
	li t1, 3
	sw t1, 4(t0)
	addiw t1, s0, -56
	li t0, 9
	sw t0, 8(t1)
	addiw t0, s0, -56
	li t1, 2
	sw t1, 12(t0)
	addiw t1, s0, -56
	li t0, 0
	sw t0, 16(t1)
	addiw t1, s0, -56
	li t0, 1
	sw t0, 20(t1)
	addiw t1, s0, -56
	li t0, 6
	sw t0, 24(t1)
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
	lui t1, %hi(n)
	lw a1, %lo(n)(t1)
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call heap_sort
	mv t0, a0
	mv t0, t0
	j .LBB24
.LBB24:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB25
	j .LBB26
.LBB25:
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
	j .LBB24
.LBB26:
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
