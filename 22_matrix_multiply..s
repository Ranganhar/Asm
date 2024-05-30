    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 40000
a:
    .zero  40000
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 40000
b:
    .zero  40000
    .globl  res
    .align  3
    .type  res, @object
    .size  res, 40000
res:
    .zero  40000
    .globl  n1
    .align  2
    .type  n1, @object
    .size  n1, 4
n1:
    .zero  4
    .globl  m1
    .align  2
    .type  m1, @object
    .size  m1, 4
m1:
    .zero  4
    .globl  n2
    .align  2
    .type  n2, @object
    .size  n2, 4
n2:
    .zero  4
    .globl  m2
    .align  2
    .type  m2, @object
    .size  m2, 4
m2:
    .zero  4
    .text
    .align  1
    .globl  matrix_multiply
    .type  matrix_multiply, @function
matrix_multiply:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, zero
	j .LBB1
.LBB1:
	lui t1, %hi(m1)
	lw t1, %lo(m1)(t1)
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	mv t1, zero
	j .LBB4
.LBB3:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	lui t2, %hi(n2)
	lw t2, %lo(n2)(t2)
	blt t1, t2, .LBB5
	j .LBB6
.LBB5:
	mv t2, zero
	j .LBB7
.LBB6:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
.LBB7:
	lui s1, %hi(n1)
	lw s1, %lo(n1)(s1)
	blt t2, s1, .LBB8
	j .LBB9
.LBB8:
	lui s1, %hi(res)
	addi s1, s1, %lo(res)
	addw s1, s0, s1
	li s1, 400
	mulw s1, t0, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw a0, 0(s1)
	lui s1, %hi(a)
	addi s1, s1, %lo(a)
	addw s1, s0, s1
	li s1, 400
	mulw s1, t0, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw a1, 0(s1)
	lui s1, %hi(b)
	addi s1, s1, %lo(b)
	addw s1, s0, s1
	li s1, 400
	mulw s1, t2, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	mulw s1, a1, s1
	addw a0, a0, s1
	lui s1, %hi(res)
	addi s1, s1, %lo(res)
	addw t0, s0, s1
	li s1, 400
	mulw t0, t0, s1
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB7
.LBB9:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB4
    .size matrix_multiply, .-matrix_multiply
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	lui t1, %hi(m1)
	sw t0, %lo(m1)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(n1)
	sw t0, %lo(n1)(t1)
	mv t0, zero
	j .LBB11
.LBB11:
	lui t1, %hi(m1)
	lw t1, %lo(m1)(t1)
	blt t0, t1, .LBB12
	j .LBB13
.LBB12:
	mv t1, zero
	j .LBB14
.LBB13:
	call getint
	mv t0, a0
	lui t1, %hi(m2)
	sw t0, %lo(m2)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(n2)
	sw t0, %lo(n2)(t1)
	mv t0, zero
	j .LBB15
.LBB14:
	lui t2, %hi(n1)
	lw t2, %lo(n1)(t2)
	blt t1, t2, .LBB16
	j .LBB17
.LBB16:
	call getint
	mv a0, a0
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t0, s0, t2
	li t2, 400
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB14
.LBB17:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB11
.LBB15:
	lui t1, %hi(m2)
	lw t1, %lo(m2)(t1)
	blt t0, t1, .LBB18
	j .LBB19
.LBB18:
	mv t1, zero
	j .LBB20
.LBB19:
	call matrix_multiply
	mv t0, zero
	j .LBB21
.LBB20:
	lui t2, %hi(n2)
	lw t2, %lo(n2)(t2)
	blt t1, t2, .LBB22
	j .LBB23
.LBB22:
	call getint
	mv a0, a0
	lui t2, %hi(b)
	addi t2, t2, %lo(b)
	addw t0, s0, t2
	li t2, 400
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB20
.LBB23:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB15
.LBB21:
	lui t1, %hi(m1)
	lw t1, %lo(m1)(t1)
	blt t0, t1, .LBB24
	j .LBB25
.LBB24:
	mv t1, zero
	j .LBB26
.LBB25:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	lui t2, %hi(n2)
	lw t2, %lo(n2)(t2)
	blt t1, t2, .LBB27
	j .LBB28
.LBB27:
	lui t2, %hi(res)
	addi t2, t2, %lo(res)
	addw t0, s0, t2
	li t2, 400
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t1, t1, 1
	mv t1, t1
	j .LBB26
.LBB28:
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB21
    .size main, .-main
