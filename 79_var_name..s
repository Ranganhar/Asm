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
	addi sp, sp, -96
	sd ra, 88(sp)
	sd s0, 80(sp)
	addi s0, sp, 96
	addiw a0, s0, -176
	mv a0, a0
	mv a1, a1
	li a2, 80
	call llvm.memcpy.p0.p0.i32
	li t0, 2
	mv a0, zero
	j .LBB1
.LBB1:
	li t1, 20
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	addiw t1, s0, -96
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 1
	subw t2, t0, t1
	addiw t1, s0, -96
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t1, s1, t1
	li t2, 2
	subw t2, t0, t2
	addiw t2, s0, -96
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t1, t1, t2
	addiw t2, s0, -96
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addiw t1, s0, -96
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw a0, a0, t1
	addiw t1, s0, -96
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv a0, t1
	call putint
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	mv a0, a0
	j .LBB1
.LBB3:
	mv a0, a0
	ld ra, 88(sp)
	ld s0, 80(sp)
	addi sp, sp, 96
	ret 
    .size main, .-main
