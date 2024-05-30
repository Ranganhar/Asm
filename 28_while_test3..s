    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  g
    .bss
    .align  2
    .type  g, @object
    .size  g, 4
g:
    .zero  4
    .globl  h
    .align  2
    .type  h, @object
    .size  h, 4
h:
    .zero  4
    .globl  f
    .align  2
    .type  f, @object
    .size  f, 4
f:
    .zero  4
    .globl  e
    .align  2
    .type  e, @object
    .size  e, 4
e:
    .zero  4
    .text
    .align  1
    .globl  EightWhile
    .type  EightWhile, @function
EightWhile:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 5
	li t0, 6
	li t1, 7
	li t2, 10
	j .LBB1
.LBB1:
	li t0, 20
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	addiw t1, t1, 3
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB4
.LBB3:
	addw t0, t0, t2
	addw t0, t1, t0
	addw s1, t0, t1
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	addw t1, t0, t2
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	subw t1, t1, t0
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	addw t0, t1, t0
	subw a0, s1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t1, 10
	blt t0, t1, .LBB5
	j .LBB6
.LBB5:
	addiw t0, t0, 1
	mv t1, t1
	mv t2, t2
	j .LBB7
.LBB6:
	li s1, 2
	subw t0, t0, s1
	mv t1, t1
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB1
.LBB7:
	li t0, 7
	beq t1, t0, .LBB8
	j .LBB9
.LBB8:
	li t0, 1
	subw t1, t1, t0
	mv t2, t2
	j .LBB10
.LBB9:
	addiw t1, t1, 1
	mv t0, t0
	mv t1, t1
	mv t2, t2
	j .LBB4
.LBB10:
	li t0, 20
	blt t2, t0, .LBB11
	j .LBB12
.LBB11:
	addiw t2, t2, 3
	j .LBB13
.LBB12:
	li t0, 1
	subw t2, t2, t0
	mv t1, t1
	mv t2, t2
	j .LBB7
.LBB13:
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	li t1, 1
	blt t1, t0, .LBB14
	j .LBB15
.LBB14:
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	li t1, 1
	subw t1, t0, t1
	lui t0, %hi(e)
	sw t1, %lo(e)(t0)
	j .LBB16
.LBB15:
	lui t0, %hi(e)
	lw t0, %lo(e)(t0)
	addiw t0, t0, 1
	lui t1, %hi(e)
	sw t0, %lo(e)(t1)
	mv t2, t2
	j .LBB10
.LBB16:
	lui t0, %hi(f)
	lw t0, %lo(f)(t0)
	li t1, 2
	blt t1, t0, .LBB17
	j .LBB18
.LBB17:
	lui t0, %hi(f)
	lw t0, %lo(f)(t0)
	li t1, 2
	subw t0, t0, t1
	lui t1, %hi(f)
	sw t0, %lo(f)(t1)
	j .LBB19
.LBB18:
	lui t0, %hi(f)
	lw t0, %lo(f)(t0)
	addiw t1, t0, 1
	lui t0, %hi(f)
	sw t1, %lo(f)(t0)
	j .LBB13
.LBB19:
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	li t1, 3
	blt t0, t1, .LBB20
	j .LBB21
.LBB20:
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	addiw t0, t0, 10
	lui t1, %hi(g)
	sw t0, %lo(g)(t1)
	j .LBB22
.LBB21:
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	li t1, 8
	subw t1, t0, t1
	lui t0, %hi(g)
	sw t1, %lo(g)(t0)
	j .LBB16
.LBB22:
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	li t1, 10
	blt t0, t1, .LBB23
	j .LBB24
.LBB23:
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	addiw t1, t0, 8
	lui t0, %hi(h)
	sw t1, %lo(h)(t0)
	j .LBB22
.LBB24:
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	li t1, 1
	subw t1, t0, t1
	lui t0, %hi(h)
	sw t1, %lo(h)(t0)
	j .LBB19
    .size EightWhile, .-EightWhile
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB25:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 1
	lui t0, %hi(g)
	sw t1, %lo(g)(t0)
	li t1, 2
	lui t0, %hi(h)
	sw t1, %lo(h)(t0)
	li t1, 4
	lui t0, %hi(e)
	sw t1, %lo(e)(t0)
	li t1, 6
	lui t0, %hi(f)
	sw t1, %lo(f)(t0)
	call EightWhile
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
