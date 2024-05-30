    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 16384
a:
    .zero  16384
    .text
    .align  1
    .globl  f1
    .type  f1, @function
f1:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t1, -4096
	addiw t1, t1, -96
	mv t1, t1
	sw t1, 20(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t1, s0, t0
	li t0, 3
	li t2, 12288
	addiw t2, t2, 2041
	addw t1, t1, t2
	sw t0, 1671(t1)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t1, 7
	li t2, 8192
	addiw t2, t2, -8
	addw t0, t0, t2
	sw t1, 4(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t1, 0
	addiw t1, t1, -4
	addw t0, t0, t1
	lw t0, 676(t0)
	addiw t1, t0, 9
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t2, 8192
	addiw t2, t2, -8
	addw t0, t0, t2
	lw t2, 4(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	lw t1, 20(t0)
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size f1, .-f1
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 32768
	add sp, sp, t1
	li t1, -49152
	addiw t1, t1, -16
	addw a0, s0, t1
	mv a0, a0
	mv a1, a1
	li a2, 16384
	call llvm.memcpy.p0.p0.i32
	li t1, -32768
	addiw t1, t1, -16
	addw a0, s0, t1
	mv a0, a0
	mv a1, t0
	li a2, 16384
	call llvm.memcpy.p0.p0.i32
	li t0, -16384
	addiw t0, t0, -16
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call f1
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t0, -16384
	addiw t0, t0, -16
	addw t0, s0, t0
	lw a0, 32(t0)
	mv a0, a0
	li t0, 32768
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
