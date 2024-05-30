    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  FourWhile
    .type  FourWhile, @function
FourWhile:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 5
	li t0, 6
	li t1, 7
	li t2, 10
	j .LBB1
.LBB1:
	li t0, 20
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	addiw t1, t1, 3
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB4
.LBB3:
	addw t0, t0, t2
	addw t0, t1, t0
	addw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t1, 10
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	j .LBB7
.LBB6:
	li s1, 2
	subw t0, t0, s1
	mv t1, t1
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB1
.LBB7:
	li t0, 7
	beq t1, t0, .LBB8
	j .LBB9
.LBB8:
	li t0, 1
	subw t1, t1, t0
	mv t2, t2
	j .LBB10
.LBB9:
	addiw t1, t1, 1
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB4
.LBB10:
	li t0, 20
	blt t2, t0, .LBB11
	j .LBB12
.LBB11:
	addiw t2, t2, 3
	mv t2, t2
	j .LBB10
.LBB12:
	li t0, 1
	subw t2, t2, t0
	mv t1, t1
	mv t2, t2
	j .LBB7
    .size FourWhile, .-FourWhile
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB13:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call FourWhile
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
