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
	addi sp, sp, -544
	sd ra, 536(sp)
	sd s0, 528(sp)
	addi s0, sp, 544
	addiw a0, s0, -256
	mv a0, a0
	mv a1, a1
	li a2, 80
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -176
	mv a0, a0
	mv a1, t1
	li a2, 80
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -696
	mv a0, a0
	mv a1, t0
	li a2, 160
	call llvm.memcpy.p0.p0.i32
	mv t0, zero
	j .LBB1
.LBB1:
	li t1, 20
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	addiw t1, s0, -176
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -376
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
.LBB3:
	mv t0, zero
	j .LBB4
.LBB4:
	li t1, 20
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	addiw t1, s0, -96
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -276
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB4
.LBB6:
	addiw t0, 20, 20
	li t1, 1
	subw t2, t0, t1
	mv t0, zero
	j .LBB7
.LBB7:
	bge t2, t0, .LBB8
	j .LBB9
.LBB8:
	addiw s1, s0, -536
	li t1, 4
	mulw t1, t0, t1
	addw s1, s1, t1
	li t1, 0
	sw t1, 0(s1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB7
.LBB9:
	li t0, 1
	li t1, 20
	subw t1, t1, t0
	mv t2, t2
	mv t1, t1
	j .LBB10
.LBB10:
	li t0, -1
	blt t0, t1, .LBB11
	j .LBB12
.LBB11:
	addiw t0, s0, -276
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	li t0, 1
	li t0, 20
	subw t0, t0, t0
	mv t2, t2
	mv t0, t0
	j .LBB13
.LBB12:
	addiw t0, s0, -536
	lw t0, 0(t0)
	bne t0, zero, .LBB14
	j .LBB15
.LBB13:
	li t1, -1
	blt t1, t0, .LBB16
	j .LBB17
.LBB16:
	addiw t1, s0, -536
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	addiw t1, s0, -376
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t1, s1, t1
	addw a0, a0, t1
	li t0, 10
	bge a0, t0, .LBB18
	j .LBB19
.LBB17:
	addiw t0, t2, 20
	li t2, 1
	subw t2, t0, t2
	li t0, 1
	subw t1, t1, t0
	mv t2, t2
	mv t1, t1
	j .LBB10
.LBB18:
	addiw t1, s0, -536
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	li t1, 1
	subw s1, t2, t1
	addiw t1, s0, -536
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 10
	divw t1, a0, t1
	addw a0, s1, t1
	li t1, 1
	subw s1, t2, t1
	addiw t1, s0, -536
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB20
.LBB19:
	addiw t1, s0, -536
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB20
.LBB20:
	li t1, 1
	subw t0, t0, t1
	li t1, 1
	subw t2, t2, t1
	mv t2, t2
	mv t0, t0
	j .LBB13
.LBB14:
	addiw t0, s0, -536
	lw a0, 0(t0)
	mv a0, a0
	call putint
	j .LBB15
.LBB15:
	li t0, 1
	j .LBB21
.LBB21:
	addiw t1, 20, 20
	li t2, 1
	subw t1, t1, t2
	bge t1, t0, .LBB22
	j .LBB23
.LBB22:
	addiw t1, s0, -536
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB21
.LBB23:
	mv a0, zero
	ld ra, 536(sp)
	ld s0, 528(sp)
	addi sp, sp, 544
	ret 
    .size main, .-main
