    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  e
    .bss
    .align  3
    .type  e, @object
    .size  e, 1024
e:
    .zero  1024
    .globl  book
    .align  3
    .type  book, @object
    .size  book, 64
book:
    .zero  64
    .globl  dis
    .align  3
    .type  dis, @object
    .size  dis, 64
dis:
    .zero  64
    .globl  n
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .globl  m
    .align  2
    .type  m, @object
    .size  m, 4
m:
    .zero  4
    .globl  v1
    .align  2
    .type  v1, @object
    .size  v1, 4
v1:
    .zero  4
    .globl  v2
    .align  2
    .type  v2, @object
    .size  v2, 4
v2:
    .zero  4
    .globl  w
    .align  2
    .type  w, @object
    .size  w, 4
w:
    .zero  4
    .text
    .align  1
    .globl  Dijkstra
    .type  Dijkstra, @function
Dijkstra:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB1
.LBB1:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB2
	j .LBB3
.LBB2:
	lui t1, %hi(e)
	addi t1, t1, %lo(e)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 64(t1)
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	lui t1, %hi(book)
	addi t1, t1, %lo(book)
	addw t2, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 0
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
.LBB3:
	lui t0, %hi(book)
	addi t0, t0, %lo(book)
	addw t1, s0, t0
	li t0, 1
	sw t0, 4(t1)
	li t1, 1
	j .LBB4
.LBB4:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	li t2, 1
	subw t0, t0, t2
	bge t0, t1, .LBB5
	j .LBB6
.LBB5:
	li t1, 57344
	addiw t1, t1, -1
	mv t1, t1
	mv t1, t1
	mv t0, zero
	li t2, 1
	j .LBB7
.LBB6:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	bge s1, t2, .LBB8
	j .LBB9
.LBB8:
	lui s1, %hi(dis)
	addi s1, s1, %lo(dis)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	blt s1, t1, .LBB10
	j .LBB20
.LBB9:
	lui t2, %hi(book)
	addi t2, t2, %lo(book)
	addw s1, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw s1, s1, t2
	li t2, 1
	sw t2, 0(s1)
	li t0, 1
	j .LBB12
.LBB13:
	lui t0, %hi(dis)
	addi t0, t0, %lo(dis)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	mv t1, t1
	mv t0, t2
	j .LBB11
.LBB11:
	addiw t2, t2, 1
	mv t1, t1
	mv t0, t0
	mv t2, t2
	j .LBB7
.LBB10:
	lui s1, %hi(book)
	addi s1, s1, %lo(book)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	beq s1, zero, .LBB13
	j .LBB21
.LBB12:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	bge t2, t0, .LBB14
	j .LBB15
.LBB14:
	lui t1, %hi(e)
	addi t1, t1, %lo(e)
	addw t1, s0, t1
	li t1, 64
	mulw t1, t0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 57344
	addiw t2, t2, -1
	mv t2, t2
	blt t1, t2, .LBB16
	j .LBB17
.LBB15:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB4
.LBB16:
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(e)
	addi t1, t1, %lo(e)
	addw t1, s0, t1
	li t1, 64
	mulw t1, t0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t1, t2, t1
	blt t1, s1, .LBB18
	j .LBB19
.LBB17:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB12
.LBB18:
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(e)
	addi t1, t1, %lo(e)
	addw t1, s0, t1
	li t1, 64
	mulw t1, t0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t2, t1
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	j .LBB19
.LBB19:
	j .LBB17
.LBB20:
	mv t1, t1
	mv t0, t0
	j .LBB11
.LBB21:
	mv t1, t1
	mv t0, t0
	j .LBB11
    .size Dijkstra, .-Dijkstra
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(m)
	sw t0, %lo(m)(t1)
	li t1, 1
	j .LBB23
.LBB23:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	bge t0, t1, .LBB24
	j .LBB25
.LBB24:
	li t0, 1
	j .LBB26
.LBB25:
	li t0, 1
	j .LBB27
.LBB26:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	bge t2, t0, .LBB28
	j .LBB29
.LBB28:
	beq t1, t0, .LBB30
	j .LBB31
.LBB29:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB23
.LBB30:
	lui t2, %hi(e)
	addi t2, t2, %lo(e)
	addw t2, s0, t2
	li t2, 64
	mulw t1, t1, t2
	addw t2, t2, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 0
	sw t1, 0(t2)
	j .LBB32
.LBB31:
	lui t2, %hi(e)
	addi t2, t2, %lo(e)
	addw t1, s0, t2
	li t2, 64
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 57344
	addiw t2, t2, -1
	mv t2, t2
	sw t2, 0(t1)
	j .LBB32
.LBB32:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB26
.LBB27:
	lui t1, %hi(m)
	lw t1, %lo(m)(t1)
	bge t1, t0, .LBB33
	j .LBB34
.LBB33:
	call getint
	mv t2, a0
	call getint
	mv t1, a0
	call getint
	mv a0, a0
	lui s1, %hi(e)
	addi s1, s1, %lo(e)
	addw t1, s0, s1
	li s1, 64
	mulw t2, t2, s1
	addw t1, t1, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB27
.LBB34:
	call Dijkstra
	li t0, 1
	j .LBB35
.LBB35:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB36
	j .LBB37
.LBB36:
	lui t1, %hi(dis)
	addi t1, t1, %lo(dis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB35
.LBB37:
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
