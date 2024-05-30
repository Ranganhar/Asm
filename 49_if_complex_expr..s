    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	li t1, -2
	mulw t1, t1, t0
	li t0, 2
	divw t0, t1, t0
	blt t0, zero, .LBB1
	j .LBB2
.LBB1:
	li a0, 2
	call putint
	j .LBB3
.LBB3:
	li t0, 2
	li t0, -2
	remw t0, t0, t0
	addiw t0, t0, 67
	blt t0, zero, .LBB4
	j .LBB5
.LBB2:
	li t0, 5
	li t0, 5
	subw t0, t0, t0
	bne t0, zero, .LBB6
	j .LBB3
.LBB6:
	addiw t1, 1, 3
	li t0, 2
	remw t0, t1, t0
	bne t0, zero, .LBB1
	j .LBB3
.LBB4:
	li a0, 4
	call putint
	j .LBB7
.LBB7:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	li t0, 5
	li t0, 5
	subw t0, t0, t0
	bne t0, zero, .LBB8
	j .LBB7
.LBB8:
	addiw t1, 1, 2
	li t0, 2
	remw t0, t1, t0
	bne t0, zero, .LBB4
	j .LBB7
    .size main, .-main
