    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  k
    .bss
    .align  2
    .type  k, @object
    .size  k, 4
k:
    .zero  4
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
	li t1, 1
	lui t0, %hi(k)
	sw t1, %lo(k)(t0)
	mv t0, zero
	j .LBB1
.LBB1:
	li t1, 9
	bge t1, t0, .LBB2
	j .LBB3
.LBB2:
	addiw t0, t0, 1
	lui t1, %hi(k)
	lw t1, %lo(k)(t1)
	addiw t0, t1, 1
	lui t1, %hi(k)
	lw t1, %lo(k)(t1)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addw t1, t1, t2
	lui t2, %hi(k)
	sw t1, %lo(k)(t2)
	mv t0, t0
	j .LBB1
.LBB3:
	lui t0, %hi(k)
	lw a0, %lo(k)(t0)
	mv a0, a0
	call putint
	lui t0, %hi(k)
	lw a0, %lo(k)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
