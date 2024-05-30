    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  reverse
    .type  reverse, @function
reverse:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB1
.LBB1:
	li t1, 1
	bge t1, t0, .LBB2
	j .LBB3
.LBB2:
	call getint
	mv a0, a0
	mv a0, a0
	call putint
	j .LBB4
.LBB3:
	call getint
	mv a0, a0
	li t1, 1
	subw t0, t0, t1
	mv a0, t0
	call reverse
	mv a0, a0
	call putint
	j .LBB4
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size reverse, .-reverse
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 200
	call reverse
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
