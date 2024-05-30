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
	li t1, 5
	li t1, 5
	subw t1, t1, t1
	addw t1, t0, t1
	addiw t0, 1, 3
	subw t2, zero, t0
	li t0, 2
	remw t0, t2, t0
	subw a0, t1, t0
	mv a0, a0
	call putint
	li t0, 2
	li t0, -2
	remw t0, t0, t0
	addiw t1, t0, 67
	li t0, 5
	li t0, 5
	subw t0, t0, t0
	subw t0, zero, t0
	addw t0, t1, t0
	addiw t2, 1, 2
	li t1, 2
	remw t1, t2, t1
	subw t1, zero, t1
	subw t0, t0, t1
	addiw a0, t0, 3
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
