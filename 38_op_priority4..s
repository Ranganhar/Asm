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
    .globl  c
    .align  2
    .type  c, @object
    .size  c, 4
c:
    .zero  4
    .globl  d
    .align  2
    .type  d, @object
    .size  d, 4
d:
    .zero  4
    .globl  e
    .align  2
    .type  e, @object
    .size  e, 4
e:
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
	mv t0, a0
	lui t1, %hi(b)
	sw t0, %lo(b)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(c)
	sw t0, %lo(c)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(d)
	sw t0, %lo(d)(t1)
	call getint
	mv a0, a0
	lui t0, %hi(e)
	sw a0, %lo(e)(t0)
	lui t0, %hi(a)
	lw t2, %lo(a)(t0)
	lui t0, %hi(b)
	lw t0, %lo(b)(t0)
	lui t1, %hi(c)
	lw t1, %lo(c)(t1)
	mulw t0, t0, t1
	subw t1, t2, t0
	lui t0, %hi(d)
	lw s1, %lo(d)(t0)
	lui t0, %hi(a)
	lw t2, %lo(a)(t0)
	lui t0, %hi(c)
	lw t0, %lo(c)(t0)
	divw t0, t2, t0
	subw t0, s1, t0
	bne t1, t0, .LBB1
	j .LBB2
.LBB1:
	li a0, 1
	j .LBB3
.LBB3:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB2:
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	lui t0, %hi(b)
	lw t0, %lo(b)(t0)
	mulw t1, t1, t0
	lui t0, %hi(c)
	lw t0, %lo(c)(t0)
	divw t2, t1, t0
	lui t0, %hi(e)
	lw t1, %lo(e)(t0)
	lui t0, %hi(d)
	lw t0, %lo(d)(t0)
	addw t0, t1, t0
	beq t2, t0, .LBB1
	j .LBB4
.LBB4:
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	lui t0, %hi(b)
	lw t0, %lo(b)(t0)
	addw t1, t1, t0
	lui t0, %hi(c)
	lw t0, %lo(c)(t0)
	addw t2, t1, t0
	lui t0, %hi(d)
	lw t1, %lo(d)(t0)
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	addw t0, t1, t0
	beq t2, t0, .LBB1
	j .LBB5
.LBB5:
	mv a0, zero
	j .LBB3
    .size main, .-main
