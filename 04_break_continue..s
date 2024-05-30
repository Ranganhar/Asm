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
	mv a0, zero
	mv t0, zero
	j .LBB1
.LBB1:
	li t1, 20
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	mv a0, a0
	mv t1, zero
	j .LBB4
.LBB3:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t0, 10
	blt t1, t0, .LBB5
	j .LBB6
.LBB5:
	mv a0, a0
	mv t0, zero
	j .LBB7
.LBB6:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB1
.LBB7:
	li t1, 5
	blt t0, t1, .LBB8
	j .LBB9
.LBB8:
	mv a0, a0
	mv t1, zero
	j .LBB10
.LBB9:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB4
.LBB10:
	li t0, 3
	blt t1, t0, .LBB11
	j .LBB12
.LBB11:
	addiw t0, t1, 1
	li t2, 3
	bge t0, t2, .LBB13
	j .LBB14
.LBB12:
	j .LBB15
.LBB13:
	bne t1, zero, .LBB16
	j .LBB17
.LBB14:
	mv t0, zero
	j .LBB18
.LBB16:
	bne t1, zero, .LBB19
	j .LBB20
.LBB17:
	j .LBB14
.LBB19:
	li t0, -1
	subw t0, t1, t0
	li t1, 3
	bge t0, t1, .LBB21
	j .LBB22
.LBB23:
	j .LBB17
.LBB20:
	beq t1, zero, .LBB19
	j .LBB23
.LBB21:
	j .LBB12
.LBB22:
	j .LBB23
.LBB18:
	li t1, 2
	blt t0, t1, .LBB24
	j .LBB25
.LBB24:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB18
.LBB25:
	addiw t1, t1, 1
	addiw a0, a0, 1
	mv a0, a0
	mv t1, t1
	j .LBB10
.LBB15:
	j .LBB26
.LBB26:
	j .LBB27
.LBB28:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB7
.LBB27:
	j .LBB29
.LBB29:
	j .LBB30
.LBB30:
	j .LBB28
    .size main, .-main
