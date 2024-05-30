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
	addi sp, sp, -176
	sd ra, 168(sp)
	sd s0, 160(sp)
	addi s0, sp, 176
	addiw a0, s0, -208
	mv a0, a0
	mv a1, a1
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -176
	mv a0, a0
	mv a1, s1
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -144
	mv a0, a0
	mv a1, t2
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw t2, s0, -176
	lw t2, 24(t2)
	addiw a0, s0, -112
	mv a0, a0
	mv a1, t1
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw t1, s0, -80
	sw t2, 24(t1)
	addiw t1, s0, -80
	lw t2, 20(t1)
	addiw t1, s0, -112
	lw t1, 20(t1)
	addiw a0, s0, -80
	mv a0, a0
	mv a1, t0
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -48
	sw t2, 0(t0)
	addiw t0, s0, -48
	sw t1, 4(t0)
	addiw t0, s0, -48
	lw t1, 28(t0)
	addiw t0, s0, -48
	lw t0, 0(t0)
	addw t0, t1, t0
	addiw t1, s0, -48
	lw t1, 4(t1)
	addw t0, t0, t1
	addiw t1, s0, -80
	lw t1, 24(t1)
	addw a0, t0, t1
	mv a0, a0
	ld ra, 168(sp)
	ld s0, 160(sp)
	addi sp, sp, 176
	ret 
    .size main, .-main
