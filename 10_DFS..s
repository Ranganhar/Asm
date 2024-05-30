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
    .globl  to
    .align  3
    .type  to, @object
    .size  to, 20020
to:
    .zero  20020
    .globl  next
    .align  3
    .type  next, @object
    .size  next, 20020
next:
    .zero  20020
    .globl  head
    .align  3
    .type  head, @object
    .size  head, 4020
head:
    .zero  4020
    .globl  cnt
    .data
    .align  2
    .type  cnt, @object
    .size  cnt, 4
cnt:
    .zero  4
    .globl  vis
    .bss
    .align  3
    .type  vis, @object
    .size  vis, 4020
vis:
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
    .globl  add_edge
    .type  add_edge, @function
add_edge:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB15
.LBB15:
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(to)
	addi t0, t0, %lo(to)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t2, %lo(cnt)(t0)
	lui t0, %hi(next)
	addi t0, t0, %lo(next)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	lui t1, %hi(head)
	addi t1, t1, %lo(head)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	addiw t1, t0, 1
	lui t0, %hi(cnt)
	sw t1, %lo(cnt)(t0)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	lui t1, %hi(to)
	addi t1, t1, %lo(to)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw a0, 0(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(next)
	addi t0, t0, %lo(next)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	addiw t1, t0, 1
	lui t0, %hi(cnt)
	sw t1, %lo(cnt)(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size add_edge, .-add_edge
    .align  1
    .globl  init
    .type  init, @function
init:
.LBB16:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, zero
	j .LBB17
.LBB17:
	li t1, 1005
	blt t0, t1, .LBB18
	j .LBB19
.LBB18:
	lui t1, %hi(head)
	addi t1, t1, %lo(head)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, -1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB17
.LBB19:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size init, .-init
    .align  1
    .globl  clear
    .type  clear, @function
clear:
.LBB20:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB21
.LBB21:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB22
	j .LBB23
.LBB22:
	lui t1, %hi(vis)
	addi t1, t1, %lo(vis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB21
.LBB23:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size clear, .-clear
    .align  1
    .globl  same
    .type  same, @function
same:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB25
.LBB25:
	lui t0, %hi(vis)
	addi t0, t0, %lo(vis)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	li t1, 1
	sw t1, 0(t0)
	beq a0, a1, .LBB26
	j .LBB27
.LBB26:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB28
.LBB28:
	li t1, -1
	bne t0, t1, .LBB29
	j .LBB30
.LBB29:
	lui t1, %hi(to)
	addi t1, t1, %lo(to)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(vis)
	addi t1, t1, %lo(vis)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t1, zero, .LBB31
	j .LBB32
.LBB30:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB33:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB32:
	lui t1, %hi(next)
	addi t1, t1, %lo(next)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB28
.LBB31:
	mv a0, a0
	mv a1, a1
	call same
	mv a0, a0
	bne a0, zero, .LBB33
	j .LBB32
    .size same, .-same
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB34:
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
	j .LBB35
.LBB35:
	lui t0, %hi(m)
	lw t0, %lo(m)(t0)
	bne t0, zero, .LBB36
	j .LBB37
.LBB36:
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB38
.LBB37:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB38:
	li t1, 81
	bne t0, t1, .LBB39
	j .LBB40
.LBB41:
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB38
.LBB40:
	li t1, 81
	beq t0, t1, .LBB42
	j .LBB43
.LBB39:
	li t1, 85
	bne t0, t1, .LBB41
	j .LBB40
.LBB42:
	call quick_read
	mv t0, a0
	call quick_read
	mv a1, a0
	call clear
	mv a0, t0
	mv a1, a1
	call same
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	j .LBB44
.LBB43:
	call quick_read
	mv t0, a0
	call quick_read
	mv a1, a0
	mv a0, t0
	mv a1, a1
	call add_edge
	j .LBB44
.LBB44:
	lui t0, %hi(m)
	lw t1, %lo(m)(t0)
	li t0, 1
	subw t1, t1, t0
	lui t0, %hi(m)
	sw t1, %lo(m)(t0)
	j .LBB35
    .size main, .-main
