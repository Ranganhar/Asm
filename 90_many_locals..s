    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  foo
    .type  foo, @function
foo:
.LBB0:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	addiw a0, s0, -144
	mv a0, a0
	mv a1, a1
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	addiw t0, 3, 7
	addiw t0, t0, 5
	addiw t0, t0, 6
	addiw t0, t0, 1
	addiw t0, t0, 0
	addiw t0, t0, 3
	addiw t1, t0, 5
	addiw t0, 4, 2
	addiw t0, t0, 7
	addiw t0, t0, 9
	addiw t0, t0, 8
	addiw t0, t0, 1
	addiw t0, t0, 4
	addiw t0, t0, 6
	addw t1, t1, t0
	addiw t0, s0, -80
	lw t0, 12(t0)
	addw a0, t1, t0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size foo, .-foo
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB1:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	addiw t0, 3, 7
	addiw t0, t0, 5
	addiw t0, t0, 6
	addiw t0, t0, 1
	addiw t0, t0, 0
	addiw t0, t0, 3
	addiw t1, t0, 5
	addiw t0, 4, 2
	addiw t0, t0, 7
	addiw t0, t0, 9
	addiw t0, t0, 8
	addiw t0, t0, 1
	addiw t0, t0, 4
	addiw t2, t0, 6
	call foo
	mv t0, a0
	addw t0, t1, t0
	call foo
	mv a0, a0
	addw t2, t2, a0
	addiw t1, 4, 7
	addiw t1, t1, 2
	addiw t1, t1, 5
	addiw t1, t1, 8
	addiw t1, t1, 0
	addiw t1, t1, 6
	addiw t1, t1, 3
	addw t0, t0, t2
	addw a0, t0, t1
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
