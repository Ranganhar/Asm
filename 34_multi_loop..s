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
	mv t1, zero
	j .LBB1
.LBB1:
	li t0, 3
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	mv a0, a0
	mv t0, zero
	j .LBB4
.LBB3:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t1, 4
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	mv a0, a0
	mv t1, zero
	j .LBB7
.LBB6:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB1
.LBB7:
	li t0, 5
	blt t1, t0, .LBB8
	j .LBB9
.LBB8:
	mv a0, a0
	mv t0, zero
	j .LBB10
.LBB9:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB4
.LBB10:
	li t1, 3
	blt t0, t1, .LBB11
	j .LBB12
.LBB11:
	mv a0, a0
	mv t1, zero
	j .LBB13
.LBB12:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB7
.LBB13:
	li t0, 5
	blt t1, t0, .LBB14
	j .LBB15
.LBB14:
	mv a0, a0
	mv t0, zero
	j .LBB16
.LBB15:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB10
.LBB16:
	li t1, 4
	blt t0, t1, .LBB17
	j .LBB18
.LBB17:
	mv a0, a0
	mv t1, zero
	j .LBB19
.LBB18:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB13
.LBB19:
	li t0, 6
	blt t1, t0, .LBB20
	j .LBB21
.LBB20:
	mv a0, a0
	mv t0, zero
	j .LBB22
.LBB21:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB16
.LBB22:
	li t1, 5
	blt t0, t1, .LBB23
	j .LBB24
.LBB23:
	mv a0, a0
	mv t1, zero
	j .LBB25
.LBB24:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB19
.LBB25:
	li t0, 5
	blt t1, t0, .LBB26
	j .LBB27
.LBB26:
	mv a0, a0
	mv t0, zero
	j .LBB28
.LBB27:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB22
.LBB28:
	li t1, 3
	blt t0, t1, .LBB29
	j .LBB30
.LBB29:
	mv a0, a0
	mv t1, zero
	j .LBB31
.LBB30:
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB25
.LBB31:
	li t0, 6
	blt t1, t0, .LBB32
	j .LBB33
.LBB32:
	mv a0, a0
	mv t0, zero
	j .LBB34
.LBB33:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB28
.LBB34:
	li t1, 7
	blt t0, t1, .LBB35
	j .LBB36
.LBB35:
	mv a0, a0
	mv t1, zero
	j .LBB37
.LBB36:
	addiw t1, t1, 2
	mv a0, a0
	mv t1, t1
	j .LBB31
.LBB37:
	li t0, 5
	blt t1, t0, .LBB38
	j .LBB39
.LBB38:
	mv a0, a0
	mv t0, zero
	j .LBB40
.LBB39:
	addiw t0, t0, 2
	mv a0, a0
	mv t0, t0
	j .LBB34
.LBB40:
	li t1, 3
	blt t0, t1, .LBB41
	j .LBB42
.LBB41:
	mv a0, a0
	mv t1, zero
	j .LBB43
.LBB42:
	addiw t1, t1, 2
	mv a0, a0
	mv t1, t1
	j .LBB37
.LBB43:
	li t0, 6
	blt t1, t0, .LBB44
	j .LBB45
.LBB44:
	addiw t0, a0, 3
	li t2, 999
	remw a0, t0, t2
	addiw t1, t1, 3
	mv a0, a0
	mv t1, t1
	j .LBB43
.LBB45:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB40
    .size main, .-main
