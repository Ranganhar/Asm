    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .data
    .align  2
    .type  a, @object
    .size  a, 4
a:
    .word  1
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
    .word  1
    .globl  d
    .align  2
    .type  d, @object
    .size  d, 4
d:
    .word  2
    .globl  e
    .align  2
    .type  e, @object
    .size  e, 4
e:
    .word  4
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
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	lui t1, %hi(b)
	lw t1, %lo(b)(t1)
	mulw t1, t0, t1
	lui t0, %hi(c)
	lw t0, %lo(c)(t0)
	divw t2, t1, t0
	lui t0, %hi(e)
	lw t1, %lo(e)(t0)
	lui t0, %hi(d)
	lw t0, %lo(d)(t0)
	addw t0, t1, t0
	beq t2, t0, .LBB1
	j .LBB2
.LBB3:
	li a0, 1
	j .LBB4
.LBB4:
	mv a0, a0
	call putint
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
	lui t2, %hi(c)
	lw t2, %lo(c)(t2)
	mulw t0, t0, t2
	subw s1, t1, t0
	lui t0, %hi(d)
	lw t0, %lo(d)(t0)
	lui t1, %hi(a)
	lw t1, %lo(a)(t1)
	lui t2, %hi(c)
	lw t2, %lo(c)(t2)
	divw t1, t1, t2
	subw t0, t0, t1
	beq s1, t0, .LBB3
	j .LBB5
.LBB1:
	lui t0, %hi(a)
	lw t2, %lo(a)(t0)
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	lui t0, %hi(b)
	lw t0, %lo(b)(t0)
	addw t0, t1, t0
	mulw t0, t2, t0
	lui t1, %hi(c)
	lw t1, %lo(c)(t1)
	addw t2, t0, t1
	lui t0, %hi(d)
	lw t1, %lo(d)(t0)
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	addw t0, t1, t0
	bge t0, t2, .LBB3
	j .LBB2
.LBB5:
	mv a0, zero
	j .LBB4
    .size main, .-main
