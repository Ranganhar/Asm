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
    .globl  fa
    .align  3
    .type  fa, @object
    .size  fa, 400020
fa:
    .zero  400020
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
    .globl  init
    .type  init, @function
init:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB15
.LBB15:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB16
	j .LBB17
.LBB16:
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB15
.LBB17:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size init, .-init
    .align  1
    .globl  find
    .type  find, @function
find:
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB19
.LBB19:
	lui t1, %hi(fa)
	addi t1, t1, %lo(fa)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t1, t0, .LBB20
	j .LBB21
.LBB20:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB21:
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
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB23
.LBB23:
	mv a0, a0
	call find
	mv t0, a0
	mv a0, a1
	call find
	mv a0, a0
	beq t0, a0, .LBB24
	j .LBB25
.LBB24:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB25:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size same, .-same
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB26:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call quick_read
	mv t0, a0
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	call quick_read
	mv t0, a0
	lui t1, %hi(m)
	sw t0, %lo(m)(t1)
	call init
	j .LBB27
.LBB27:
	lui t0, %hi(m)
	lw t0, %lo(m)(t0)
	bne t0, zero, .LBB28
	j .LBB29
.LBB28:
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB30
.LBB29:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB30:
	li t1, 81
	bne t0, t1, .LBB31
	j .LBB32
.LBB33:
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB30
.LBB32:
	li t1, 81
	beq t0, t1, .LBB34
	j .LBB35
.LBB31:
	li t1, 85
	bne t0, t1, .LBB33
	j .LBB32
.LBB34:
	call quick_read
	mv t0, a0
	call quick_read
	mv a1, a0
	mv a0, t0
	mv a1, a1
	call same
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	j .LBB36
.LBB35:
	call quick_read
	mv a0, a0
	mv a0, a0
	call find
	mv t0, a0
	call quick_read
	mv a0, a0
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
	j .LBB36
.LBB36:
	lui t0, %hi(m)
	lw t1, %lo(m)(t0)
	li t0, 1
	subw t1, t1, t0
	lui t0, %hi(m)
	sw t1, %lo(m)(t0)
	j .LBB27
    .size main, .-main
