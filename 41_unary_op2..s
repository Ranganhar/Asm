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
	li t0, -4
	li t0, 56
	subw t0, t0, t0
	addiw t0, t0, 4
	subw t0, zero, t1
	bne t0, zero, .LBB1
	j .LBB2
.LBB1:
	li a0, -1
	j .LBB3
.LBB2:
	addiw a0, 0, 4
	mv a0, a0
	j .LBB3
.LBB3:
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
