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
	addi sp, sp, -416
	sd ra, 408(sp)
	sd s0, 400(sp)
	addi s0, sp, 416
	mv t1, zero
	j .LBB1
.LBB1:
	call getint
	mv t0, a0
	bne t0, zero, .LBB2
	j .LBB3
.LBB2:
	call getint
	mv t0, a0
	addiw t2, s0, -416
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB1
.LBB3:
	mv t1, t1
	mv t0, zero
	j .LBB4
.LBB4:
	bne t1, zero, .LBB5
	j .LBB6
.LBB5:
	li t2, 1
	subw t1, t1, t2
	addiw t2, s0, -416
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t0, t0, t2
	mv t1, t1
	mv t0, t0
	j .LBB4
.LBB6:
	li t1, 79
	remw a0, t0, t1
	mv a0, a0
	ld ra, 408(sp)
	ld s0, 400(sp)
	addi sp, sp, 416
	ret 
    .size main, .-main
