    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  long_array
    .type  long_array, @function
long_array:
.LBB0:
	addi sp, sp, -1232
	sd ra, 1224(sp)
	sd s0, 1216(sp)
	addi s0, sp, 1232
	li t0, 118784
	add sp, sp, t0
	mv a0, a0
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	mulw t1, t0, t0
	li t2, 10
	remw t2, t1, t2
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	mv t0, zero
	j .LBB5
.LBB5:
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB6
	j .LBB7
.LBB6:
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t2, t2, t1
	li t1, 10
	remw t2, t2, t1
	li t1, -81920
	addiw t1, t1, 1904
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
.LBB7:
	mv t0, zero
	j .LBB8
.LBB8:
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB9
	j .LBB10
.LBB9:
	li t1, -81920
	addiw t1, t1, 1904
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, -81920
	addiw t1, t1, 1904
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t2, t2, t1
	li t1, 100
	remw t1, t2, t1
	li t1, -118784
	addiw t1, t1, -1232
	addw t2, s0, t1
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t1, t1, t2
	li t2, -40960
	addiw t2, t2, 944
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB8
.LBB10:
	mv t1, zero
	mv t0, zero
	j .LBB11
.LBB11:
	li t2, 8192
	addiw t2, t2, 1808
	mv t2, t2
	blt t1, t2, .LBB12
	j .LBB13
.LBB12:
	li t2, 10
	blt t1, t2, .LBB14
	j .LBB15
.LBB13:
	mv a0, t0
	li t0, 118784
	add sp, sp, t0
	ld ra, 1224(sp)
	ld s0, 1216(sp)
	addi sp, sp, 1232
	ret 
.LBB14:
	li t0, -40960
	addiw t0, t0, 944
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t0, t0, t2
	li t2, 1333
	remw a0, t0, t2
	mv a0, a0
	call putint
	mv a0, a0
	j .LBB16
.LBB15:
	li t2, 20
	blt t1, t2, .LBB17
	j .LBB18
.LBB16:
	addiw t1, t1, 1
	mv t1, t1
	mv t0, a0
	j .LBB11
.LBB17:
	mv a0, t0
	li t0, 4096
	addiw t0, t0, 904
	mv t0, t0
	mv t0, t0
	j .LBB19
.LBB18:
	li t2, 30
	blt t1, t2, .LBB20
	j .LBB21
.LBB19:
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB22
	j .LBB23
.LBB22:
	li t1, -40960
	addiw t1, t1, 944
	addw t1, s0, t1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, a0, t1
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw a0, t2, t1
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB19
.LBB23:
	mv a0, a0
	call putint
	mv a0, a0
	j .LBB24
.LBB24:
	mv a0, a0
	j .LBB16
.LBB20:
	mv a0, t0
	li t0, 4096
	addiw t0, t0, 904
	mv t0, t0
	mv t0, t0
	j .LBB25
.LBB21:
	li t1, -40960
	addiw t1, t1, 944
	addw t1, s0, t1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t1, t1, a0
	addw t1, t0, t1
	li t0, 98304
	addiw t0, t0, 1684
	mv t0, t0
	remw a0, t1, t0
	mv a0, a0
	j .LBB26
.LBB25:
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB27
	j .LBB28
.LBB27:
	li t1, -4096
	addiw t1, t1, -1863
	mv t1, t1
	blt t1, t0, .LBB29
	j .LBB30
.LBB28:
	mv a0, a0
	call putint
	mv a0, a0
	j .LBB26
.LBB29:
	li t1, -81920
	addiw t1, t1, 1904
	addw t1, s0, t1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, a0, t1
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw a0, t2, t1
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB31
.LBB30:
	li t1, -118784
	addiw t1, t1, -1232
	addw t1, s0, t1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, a0, t1
	li t1, -40960
	addiw t1, t1, 944
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t1, t2, t1
	li t2, 12288
	addiw t2, t2, 1045
	mv t2, t2
	remw a0, t1, t2
	addiw t0, t0, 2
	mv a0, a0
	mv t0, t0
	j .LBB31
.LBB31:
	mv a0, a0
	mv t0, t0
	j .LBB25
.LBB26:
	mv a0, a0
	j .LBB24
    .size long_array, .-long_array
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB32:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 9
	call long_array
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
