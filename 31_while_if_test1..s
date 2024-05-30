    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  whileIf
    .type  whileIf, @function
whileIf:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, zero
	mv a0, zero
	j .LBB1
.LBB1:
	li t1, 100
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	li t1, 5
	beq t0, t1, .LBB4
	j .LBB5
.LBB3:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li a0, 25
	j .LBB6
.LBB5:
	li t1, 10
	beq t0, t1, .LBB7
	j .LBB8
.LBB6:
	addiw t0, t0, 1
	mv t0, t0
	mv a0, a0
	j .LBB1
.LBB7:
	li a0, 42
	j .LBB9
.LBB8:
	li t1, 2
	mulw a0, t0, t1
	mv a0, a0
	j .LBB9
.LBB9:
	mv a0, a0
	j .LBB6
    .size whileIf, .-whileIf
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call whileIf
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
