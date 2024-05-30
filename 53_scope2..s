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
	li t1, -4096
	addiw t1, t1, -707
	mv t1, t1
	lui t0, %hi(k)
	sw t1, %lo(k)(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	blt t0, t1, .LBB1
	j .LBB2
.LBB1:
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t1, t0, 1
	lui t0, %hi(k)
	sw t1, %lo(k)(t0)
	li a0, 112
	j .LBB3
.LBB2:
	lui t0, %hi(k)
	lw a0, %lo(k)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	li t0, 10
	blt t0, a0, .LBB4
	j .LBB5
.LBB4:
	li t0, 88
	subw a0, a0, t0
	li t0, 1000
	blt a0, t0, .LBB6
	j .LBB8
.LBB5:
	mv a0, a0
	call putint
	j .LBB2
.LBB6:
	li t0, 10
	subw t0, a0, t0
	addiw t0, t0, 11
	addiw a0, t0, 11
	mv a0, a0
	j .LBB7
.LBB7:
	mv a0, a0
	j .LBB3
.LBB8:
	mv a0, a0
	j .LBB7
    .size main, .-main
