    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  if_ifElse_
    .type  if_ifElse_, @function
if_ifElse_:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 5
	li t0, 5
	beq t1, t0, .LBB1
	j .LBB6
.LBB1:
	li t1, 10
	li t0, 10
	beq t1, t0, .LBB3
	j .LBB4
.LBB2:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	li a0, 25
	j .LBB5
.LBB4:
	addiw a0, 5, 15
	mv a0, a0
	j .LBB5
.LBB5:
	mv a0, a0
	j .LBB2
.LBB6:
	li a0, 5
	j .LBB2
    .size if_ifElse_, .-if_ifElse_
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call if_ifElse_
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
