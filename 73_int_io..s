    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  my_getint
    .type  my_getint, @function
my_getint:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	j .LBB1
.LBB1:
	j .LBB2
.LBB2:
	call getch
	mv a0, a0
	li t0, 48
	subw t0, a0, t0
	blt t0, zero, .LBB3
	j .LBB4
.LBB5:
	mv t0, t0
	j .LBB6
.LBB3:
	j .LBB1
.LBB7:
	j .LBB5
.LBB4:
	li t1, 9
	blt t1, t0, .LBB3
	j .LBB7
.LBB6:
	j .LBB8
.LBB8:
	call getch
	mv a0, a0
	li t1, 48
	subw t2, a0, t1
	bge t2, zero, .LBB9
	j .LBB10
.LBB11:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	li t1, 10
	mulw t0, t0, t1
	addw t0, t0, t2
	j .LBB13
.LBB10:
	j .LBB11
.LBB9:
	li t0, 9
	bge t0, t2, .LBB12
	j .LBB10
.LBB13:
	mv t0, t0
	j .LBB6
    .size my_getint, .-my_getint
    .align  1
    .globl  my_putint
    .type  my_putint, @function
my_putint:
.LBB14:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	mv a0, a0
	j .LBB15
.LBB15:
	mv a0, a0
	mv t0, zero
	j .LBB16
.LBB16:
	blt zero, a0, .LBB17
	j .LBB18
.LBB17:
	li t1, 10
	remw t1, a0, t1
	addiw t2, t1, 48
	addiw t1, s0, -80
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	li t1, 10
	divw a0, a0, t1
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB16
.LBB18:
	mv t0, t0
	j .LBB19
.LBB19:
	blt zero, t0, .LBB20
	j .LBB21
.LBB20:
	li t1, 1
	subw t0, t0, t1
	addiw t1, s0, -80
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putch
	mv t0, t0
	j .LBB19
.LBB21:
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size my_putint, .-my_putint
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call my_getint
	mv t0, a0
	mv t0, t0
	j .LBB23
.LBB23:
	blt zero, t0, .LBB24
	j .LBB25
.LBB24:
	call my_getint
	mv a0, a0
	mv a0, a0
	call my_putint
	li a0, 10
	call putch
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB23
.LBB25:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
