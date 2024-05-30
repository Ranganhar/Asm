    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  ifElseIf
    .type  ifElseIf, @function
ifElseIf:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 5
	li t0, 6
	beq t1, t0, .LBB1
	j .LBB2
.LBB1:
	li a0, 5
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	li t1, 10
	li t0, 10
	beq t1, t0, .LBB4
	j .LBB5
.LBB2:
	li t1, 10
	li t0, 11
	beq t1, t0, .LBB1
	j .LBB3
.LBB6:
	li a0, 25
	j .LBB7
.LBB5:
	li t1, 10
	li t0, 10
	beq t1, t0, .LBB8
	j .LBB9
.LBB4:
	li t1, 5
	li t0, 1
	beq t1, t0, .LBB6
	j .LBB5
.LBB7:
	j .LBB10
.LBB11:
	addiw a0, 5, 15
	mv a0, a0
	j .LBB12
.LBB9:
	li t0, 5
	subw a0, zero, t0
	mv a0, a0
	j .LBB12
.LBB8:
	li t1, 5
	li t0, -5
	beq t1, t0, .LBB11
	j .LBB9
.LBB12:
	mv a0, a0
	j .LBB7
.LBB10:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size ifElseIf, .-ifElseIf
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB13:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call ifElseIf
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
