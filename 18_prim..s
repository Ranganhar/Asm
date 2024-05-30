    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  n
    .bss
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
    .globl  u
    .align  3
    .type  u, @object
    .size  u, 4020
u:
    .zero  4020
    .globl  v
    .align  3
    .type  v, @object
    .size  v, 4020
v:
    .zero  4020
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 4020
c:
    .zero  4020
    .globl  fa
    .align  3
    .type  fa, @object
    .size  fa, 4020
fa:
    .zero  4020
    .text
    .align  1
    .globl  quick_read
    .type  quick_read, @function
quick_read:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, zero
	j .LBB1
.LBB1:
	li t0, 48
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	li t0, 45
	beq t1, t0, .LBB4
	j .LBB13
.LBB6:
	mv t1, t1
	mv t0, zero
	j .LBB7
.LBB3:
	li t0, 57
	blt t0, t1, .LBB2
	j .LBB6
.LBB4:
	li t0, 1
	j .LBB5
.LBB5:
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, t0
	j .LBB1
.LBB7:
	li t2, 48
	bge t1, t2, .LBB8
	j .LBB9
.LBB10:
	li t2, 10
	mulw t0, t0, t2
	addw t0, t0, t1
	li t1, 48
	subw t0, t0, t1
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, t0
	j .LBB7
.LBB9:
	bne t0, zero, .LBB11
	j .LBB12
.LBB8:
	li t2, 57
	bge t2, t1, .LBB10
	j .LBB9
.LBB11:
	subw a0, zero, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	mv t0, t0
	j .LBB5
    .size quick_read, .-quick_read
    .align  1
    .globl  find
    .type  find, @function
find:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB15
.LBB15:
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t0, t1, .LBB16
	j .LBB17
.LBB16:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call find
	mv a0, a0
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size find, .-find
    .align  1
    .globl  same
    .type  same, @function
same:
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB19
.LBB19:
	mv a0, a0
	call find
	mv t0, a0
	mv a0, a1
	call find
	mv a0, a0
	beq t0, a0, .LBB20
	j .LBB21
.LBB20:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB21:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size same, .-same
    .align  1
    .globl  prim
    .type  prim, @function
prim:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, zero
	j .LBB23
.LBB23:
	lui t0, %hi(m)
	lw t0, %lo(m)(t0)
	blt t1, t0, .LBB24
	j .LBB25
.LBB24:
	addiw t0, t1, 1
	mv t0, t0
	j .LBB26
.LBB25:
	li t0, 1
	j .LBB27
.LBB26:
	lui t2, %hi(m)
	lw t2, %lo(m)(t2)
	blt t0, t2, .LBB28
	j .LBB29
.LBB28:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, s1, .LBB30
	j .LBB31
.LBB29:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB23
.LBB30:
	lui t2, %hi(u)
	addi t2, t2, %lo(u)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	lui t2, %hi(u)
	addi t2, t2, %lo(u)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	lui s1, %hi(u)
	addi s1, s1, %lo(u)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	sw t2, 0(s1)
	lui t2, %hi(u)
	addi t2, t2, %lo(u)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	lui t2, %hi(v)
	addi t2, t2, %lo(v)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	lui t2, %hi(v)
	addi t2, t2, %lo(v)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(v)
	addi t2, t2, %lo(v)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	lui t2, %hi(v)
	addi t2, t2, %lo(v)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t1, s0, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	sw s1, 0(t1)
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB31
.LBB31:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB26
.LBB27:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB32
	j .LBB33
.LBB32:
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB27
.LBB33:
	mv t0, zero
	mv t0, zero
	j .LBB34
.LBB34:
	lui t1, %hi(m)
	lw t1, %lo(m)(t1)
	blt t0, t1, .LBB35
	j .LBB36
.LBB35:
	lui t1, %hi(u)
	addi t1, t1, %lo(u)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(v)
	addi t1, t1, %lo(v)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call same
	mv a0, a0
	bne a0, zero, .LBB37
	j .LBB38
.LBB36:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB37:
	mv t0, t0
	mv t0, t0
	mv t0, t0
	mv t0, t0
	j .LBB34
.LBB38:
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t0, t0, t1
	lui t1, %hi(v)
	addi t1, t1, %lo(v)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(u)
	addi t1, t1, %lo(u)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call find
	mv a0, a0
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	mv t0, t0
	j .LBB34
    .size prim, .-prim
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB39:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call quick_read
	call quick_read
	mv t0, a0
	mv t1, zero
	j .LBB40
.LBB40:
	blt t1, t0, .LBB41
	j .LBB42
.LBB41:
	call quick_read
	mv t2, a0
	lui s1, %hi(u)
	addi s1, s1, %lo(u)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	sw t2, 0(s1)
	call quick_read
	mv t2, a0
	lui s1, %hi(v)
	addi s1, s1, %lo(v)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	sw t2, 0(s1)
	call quick_read
	mv a0, a0
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB40
.LBB42:
	call prim
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
