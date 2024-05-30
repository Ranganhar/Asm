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
    .globl  f
    .align  3
    .type  f, @object
    .size  f, 800400
f:
    .zero  800400
    .globl  dep
    .align  3
    .type  dep, @object
    .size  dep, 40020
dep:
    .zero  40020
    .globl  to
    .align  3
    .type  to, @object
    .size  to, 40020
to:
    .zero  40020
    .globl  next
    .align  3
    .type  next, @object
    .size  next, 40020
next:
    .zero  40020
    .globl  head
    .align  3
    .type  head, @object
    .size  head, 40020
head:
    .zero  40020
    .globl  cnt
    .data
    .align  2
    .type  cnt, @object
    .size  cnt, 4
cnt:
    .zero  4
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
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	addiw t1, t0, 1
	lui t0, %hi(cnt)
	sw t1, %lo(cnt)(t0)
	lui t0, %hi(f)
	addi t0, t0, %lo(f)
	addw t0, s0, t0
	li t0, 80
	mulw t0, a1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
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
	lui t0, %hi(dep)
	addi t0, t0, %lo(dep)
	addw t1, s0, t0
	li t0, 1061101568
	addiw t0, t0, -193
	mv t0, t0
	sw t0, 0(t1)
	li t0, 1
	j .LBB17
.LBB17:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB18
	j .LBB19
.LBB18:
	lui t1, %hi(head)
	addi t1, t1, %lo(head)
	addw t2, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, -1
	sw t1, 0(t2)
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
    .globl  tree
    .type  tree, @function
tree:
.LBB20:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB21
.LBB21:
	lui t0, %hi(dep)
	addi t0, t0, %lo(dep)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	mv t0, zero
	j .LBB22
.LBB22:
	lui t1, %hi(f)
	addi t1, t1, %lo(f)
	addw t1, s0, t1
	li t1, 80
	mulw t1, a0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	bne t1, zero, .LBB23
	j .LBB24
.LBB23:
	lui t1, %hi(f)
	addi t1, t1, %lo(f)
	addw t1, s0, t1
	li t1, 80
	mulw t1, a0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(f)
	addi t1, t1, %lo(f)
	addw t1, s0, t1
	li t1, 80
	mulw t1, t2, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw s1, t0, 1
	lui t1, %hi(f)
	addi t1, t1, %lo(f)
	addw t1, s0, t1
	li t1, 80
	mulw t1, a0, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB22
.LBB24:
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB25
.LBB25:
	li t1, -1
	bne t0, t1, .LBB26
	j .LBB27
.LBB26:
	lui t1, %hi(to)
	addi t1, t1, %lo(to)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	addiw a1, a1, 1
	mv a0, a0
	mv a1, a1
	call tree
	lui t1, %hi(next)
	addi t1, t1, %lo(next)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB25
.LBB27:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size tree, .-tree
    .align  1
    .globl  LCA
    .type  LCA, @function
LCA:
.LBB28:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB29
.LBB29:
	lui t0, %hi(dep)
	addi t0, t0, %lo(dep)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(dep)
	addi t0, t0, %lo(dep)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	blt t1, t0, .LBB30
	j .LBB45
.LBB30:
	mv t1, a0
	mv a0, a1
	j .LBB31
.LBB31:
	mv a0, a0
	li t0, 19
	j .LBB32
.LBB32:
	lui t2, %hi(dep)
	addi t2, t2, %lo(dep)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(dep)
	addi t2, t2, %lo(dep)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, s1, .LBB33
	j .LBB34
.LBB33:
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, a0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB35
	j .LBB46
.LBB34:
	beq a0, t1, .LBB37
	j .LBB38
.LBB39:
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, a0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	mv a0, a0
	j .LBB36
.LBB36:
	li t2, 1
	subw t0, t0, t2
	mv a0, a0
	mv t0, t0
	j .LBB32
.LBB35:
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, a0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(dep)
	addi t2, t2, %lo(dep)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(dep)
	addi t2, t2, %lo(dep)
	addw t1, s0, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	bge s1, t1, .LBB39
	j .LBB47
.LBB37:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB38:
	mv t1, t1
	mv a0, a0
	li t0, 19
	j .LBB40
.LBB40:
	bge t0, zero, .LBB41
	j .LBB42
.LBB41:
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, a0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne s1, t2, .LBB43
	j .LBB48
.LBB42:
	lui t0, %hi(f)
	addi t0, t0, %lo(f)
	addw t0, s0, t0
	li t0, 80
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB43:
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t2, s0, t2
	li t2, 80
	mulw t2, a0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	lui t2, %hi(f)
	addi t2, t2, %lo(f)
	addw t1, s0, t2
	li t2, 80
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv t1, t1
	mv a0, a0
	j .LBB44
.LBB44:
	li t2, 1
	subw t0, t0, t2
	mv t1, t1
	mv a0, a0
	mv t0, t0
	j .LBB40
.LBB45:
	mv t1, a1
	mv a0, a0
	j .LBB31
.LBB46:
	mv a0, a0
	j .LBB36
.LBB47:
	mv a0, a0
	j .LBB36
.LBB48:
	mv t1, t1
	mv a0, a0
	j .LBB44
    .size LCA, .-LCA
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB49:
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
	li t0, 1
	j .LBB50
.LBB50:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bne t0, t1, .LBB51
	j .LBB52
.LBB51:
	call quick_read
	mv t1, a0
	call quick_read
	mv a1, a0
	mv a0, t1
	mv a1, a1
	call add_edge
	addiw t0, t0, 1
	mv t0, t0
	j .LBB50
.LBB52:
	li a0, 1
	li a1, 1
	call tree
	j .LBB53
.LBB53:
	lui t0, %hi(m)
	lw t0, %lo(m)(t0)
	bne t0, zero, .LBB54
	j .LBB55
.LBB54:
	call quick_read
	mv t0, a0
	call quick_read
	mv a1, a0
	mv a0, t0
	mv a1, a1
	call LCA
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	lui t0, %hi(m)
	lw t1, %lo(m)(t0)
	li t0, 1
	subw t1, t1, t0
	lui t0, %hi(m)
	sw t1, %lo(m)(t0)
	j .LBB53
.LBB55:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
