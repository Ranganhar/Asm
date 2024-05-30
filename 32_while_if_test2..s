    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  ifWhile
    .type  ifWhile, @function
ifWhile:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 5
	beq zero, t0, .LBB1
	j .LBB2
.LBB1:
	li t0, 3
	j .LBB3
.LBB2:
	mv t0, zero
	li a0, 3
	j .LBB4
.LBB3:
	li t1, 2
	beq t0, t1, .LBB5
	j .LBB6
.LBB5:
	addiw t0, t0, 2
	mv t0, t0
	j .LBB3
.LBB6:
	addiw a0, t0, 25
	mv a0, a0
	j .LBB7
.LBB7:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t1, 5
	blt t0, t1, .LBB8
	j .LBB9
.LBB8:
	li t1, 2
	mulw a0, a0, t1
	addiw t0, t0, 1
	mv t0, t0
	mv a0, a0
	j .LBB4
.LBB9:
	mv a0, a0
	j .LBB7
    .size ifWhile, .-ifWhile
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call ifWhile
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
