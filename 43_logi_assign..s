    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  2
    .type  a, @object
    .size  a, 4
a:
    .zero  4
    .globl  b
    .align  2
    .type  b, @object
    .size  b, 4
b:
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
	call getint
	mv t0, a0
	lui t1, %hi(a)
	sw t0, %lo(a)(t1)
	call getint
	mv a0, a0
	lui t0, %hi(b)
	sw a0, %lo(b)(t0)
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	lui t0, %hi(b)
	lw t0, %lo(b)(t0)
	beq t1, t0, .LBB1
	j .LBB2
.LBB3:
	li a0, 1
	j .LBB4
.LBB2:
	mv a0, zero
	j .LBB4
.LBB1:
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	li t1, 3
	bne t0, t1, .LBB3
	j .LBB2
.LBB4:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
