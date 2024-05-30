    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  get_one
    .type  get_one, @function
get_one:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size get_one, .-get_one
    .align  1
    .globl  deepWhileBr
    .type  deepWhileBr, @function
deepWhileBr:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB3
.LBB3:
	addw t0, a0, a1
	mv t0, t0
	j .LBB4
.LBB4:
	li t1, 75
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	li t1, 100
	blt t0, t1, .LBB7
	j .LBB13
.LBB6:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	addiw t0, t0, 42
	li t1, 99
	blt t1, t0, .LBB9
	j .LBB14
.LBB8:
	mv t0, t0
	j .LBB4
.LBB9:
	li t1, 2
	li t0, 42
	mulw t1, t0, t1
	li a0, 0
	call get_one
	mv a0, a0
	li t0, 1
	beq a0, t0, .LBB11
	j .LBB15
.LBB10:
	mv t0, t0
	j .LBB8
.LBB11:
	li t0, 2
	mulw t0, t1, t0
	mv t0, t0
	j .LBB12
.LBB12:
	mv t0, t0
	j .LBB10
.LBB13:
	mv t0, t0
	j .LBB8
.LBB14:
	mv t0, t0
	j .LBB10
.LBB15:
	mv t0, t0
	j .LBB12
    .size deepWhileBr, .-deepWhileBr
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB16:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 2
	li a1, 2
	call deepWhileBr
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
