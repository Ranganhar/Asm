    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  deepWhileBr
    .type  deepWhileBr, @function
deepWhileBr:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	addw a0, a0, a1
	mv a0, a0
	j .LBB2
.LBB2:
	li t0, 75
	blt a0, t0, .LBB3
	j .LBB4
.LBB3:
	li t0, 100
	blt a0, t0, .LBB5
	j .LBB11
.LBB4:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	addiw a0, a0, 42
	li t0, 99
	blt t0, a0, .LBB7
	j .LBB12
.LBB6:
	mv a0, a0
	j .LBB2
.LBB7:
	li t0, 2
	li t1, 42
	mulw t1, t1, t0
	j .LBB9
.LBB8:
	mv a0, a0
	j .LBB6
.LBB9:
	li t0, 2
	mulw a0, t1, t0
	j .LBB10
.LBB10:
	mv a0, a0
	j .LBB8
.LBB11:
	mv a0, a0
	j .LBB6
.LBB12:
	mv a0, a0
	j .LBB8
    .size deepWhileBr, .-deepWhileBr
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB13:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 2
	li a1, 2
	call deepWhileBr
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
