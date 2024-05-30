    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  move
    .type  move, @function
move:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	mv a0, a0
	call putint
	li a0, 32
	call putch
	mv a0, a1
	call putint
	li a0, 44
	call putch
	li a0, 32
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size move, .-move
    .align  1
    .globl  hanoi
    .type  hanoi, @function
hanoi:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv t1, a1
	mv a1, a2
	mv a3, a3
	j .LBB3
.LBB3:
	li t0, 1
	beq a0, t0, .LBB4
	j .LBB5
.LBB4:
	mv a0, t1
	mv a1, a3
	call move
	j .LBB6
.LBB5:
	li t0, 1
	subw t0, a0, t0
	mv a0, t0
	mv a1, t1
	mv a2, a3
	mv a3, a1
	call hanoi
	mv a0, t1
	mv a1, a3
	call move
	li t0, 1
	subw a0, a0, t0
	mv a0, a0
	mv a1, a1
	mv a2, t1
	mv a3, a3
	call hanoi
	j .LBB6
.LBB6:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size hanoi, .-hanoi
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	mv t0, t0
	j .LBB8
.LBB8:
	blt zero, t0, .LBB9
	j .LBB10
.LBB9:
	call getint
	mv a0, a0
	mv a0, a0
	li a1, 1
	li a2, 2
	li a3, 3
	call hanoi
	li a0, 10
	call putch
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB8
.LBB10:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
