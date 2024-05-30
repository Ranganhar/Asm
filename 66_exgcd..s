    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  exgcd
    .type  exgcd, @function
exgcd:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv t1, a1
	mv a2, a2
	mv a3, a3
	j .LBB1
.LBB1:
	beq t1, zero, .LBB2
	j .LBB3
.LBB2:
	addw t2, s0, a2
	li t1, 1
	sw t1, 0(t2)
	addw t2, s0, a3
	li t1, 0
	sw t1, 0(t2)
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	remw a1, t0, t1
	mv a0, t1
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call exgcd
	mv a0, a0
	addw t2, s0, a2
	lw a1, 0(t2)
	addw t2, s0, a3
	lw t2, 0(t2)
	addw s1, s0, a2
	sw t2, 0(s1)
	divw t1, t0, t1
	addw t0, s0, a3
	lw t0, 0(t0)
	mulw t0, t1, t0
	subw t0, a1, t0
	addw t1, s0, a3
	sw t0, 0(t1)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size exgcd, .-exgcd
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB4:
	addi sp, sp, -32
	sd ra, 24(sp)
	sd s0, 16(sp)
	addi s0, sp, 32
	addiw a0, s0, -28
	mv a0, a0
	mv a1, a1
	li a2, 4
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -24
	mv a0, a0
	mv a1, t0
	li a2, 4
	call llvm.memcpy.p0.p0.i32
	addiw t1, s0, -24
	addiw t0, s0, -20
	li a0, 7
	li a1, 15
	addiw a2, t1, 0
	mv a2, a2
	addiw a3, t0, 0
	mv a3, a3
	call exgcd
	addiw t0, s0, -24
	lw t0, 0(t0)
	li t1, 15
	remw t0, t0, t1
	addiw t0, t0, 15
	li t1, 15
	remw t0, t0, t1
	addiw t1, s0, -24
	sw t0, 0(t1)
	addiw t0, s0, -24
	lw a0, 0(t0)
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	ret 
    .size main, .-main
