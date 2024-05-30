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
	addi sp, sp, -416
	sd ra, 408(sp)
	sd s0, 400(sp)
	addi s0, sp, 416
	addiw a0, s0, -376
	mv a0, a0
	mv a1, a1
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -316
	mv a0, a0
	mv a1, a0
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -256
	mv a0, a0
	mv a1, s1
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -196
	mv a0, a0
	mv a1, t2
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -136
	mv a0, a0
	mv a1, t1
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -508
	mv a0, a0
	mv a1, t0
	li a2, 96
	call llvm.memcpy.p0.p0.i32
	li a0, 4
	ld ra, 408(sp)
	ld s0, 400(sp)
	addi sp, sp, 416
	ret 
    .size main, .-main
