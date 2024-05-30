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
	li a0, 97
	call putch
	li a0, 10
	call putch
	addiw t1, 1, 2
	addiw t0, t1, 3
	addiw t0, t0, 4
	addw t2, zero, t1
	addw t2, t2, t0
	addiw s1, t0, 5
	addiw a1, s1, 6
	addw a0, t1, a1
	addw t0, t2, a0
	addw t0, t0, s1
	addw t1, t0, a1
	addw t2, s1, a0
	addiw t0, a1, 7
	addiw t0, t0, 8
	addw t1, t1, t0
	addw t1, t1, t2
	addw t1, t1, a1
	addw t2, t2, t0
	addiw s1, a1, 9
	addiw t0, t0, 10
	addiw s1, s1, 12
	addiw t0, t1, 11
	addw t0, t0, s1
	addw t0, t0, a1
	addw a1, a1, s1
	addiw t1, s1, 13
	addiw t1, t1, 11
	addiw t0, t0, 11
	addw t0, t0, s1
	addw t0, t0, t1
	subw t0, t0, a1
	subw t0, t0, t2
	subw t1, t0, a0
	li t0, 77
	remw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
