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
	addiw t0, 837, 128
	li t0, 716
	addw t0, t0, t0
	addiw t0, t0, 241
	li t1, 412
	subw t1, t0, t1
	addiw t0, 241, 771
	li t2, 18
	subw t0, t0, t2
	addiw t0, t0, 66
	addw t1, t0, t1
	li t0, 33
	subw t1, t1, t0
	li t0, 55
	subw t0, t1, t0
	addw t0, t0, t1
	li t1, 21
	remw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
