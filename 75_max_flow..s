    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  size
    .bss
    .align  3
    .type  size, @object
    .size  size, 40
size:
    .zero  40
    .globl  to
    .align  3
    .type  to, @object
    .size  to, 400
to:
    .zero  400
    .globl  cap
    .align  3
    .type  cap, @object
    .size  cap, 400
cap:
    .zero  400
    .globl  rev
    .align  3
    .type  rev, @object
    .size  rev, 400
rev:
    .zero  400
    .globl  used
    .align  3
    .type  used, @object
    .size  used, 40
used:
    .zero  40
    .text
    .align  1
    .globl  my_memset
    .type  my_memset, @function
my_memset:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	blt t0, a2, .LBB3
	j .LBB4
.LBB3:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_memset, .-my_memset
    .align  1
    .globl  add_node
    .type  add_node, @function
add_node:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB6
.LBB6:
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(to)
	addi t0, t0, %lo(to)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(cap)
	addi t0, t0, %lo(cap)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a2, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(rev)
	addi t0, t0, %lo(rev)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(to)
	addi t0, t0, %lo(to)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(cap)
	addi t0, t0, %lo(cap)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(rev)
	addi t0, t0, %lo(rev)
	addw t0, s0, t0
	li t0, 40
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw t1, t0, 1
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw t1, t0, 1
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size add_node, .-add_node
    .align  1
    .globl  dfs
    .type  dfs, @function
dfs:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	mv a2, a2
	j .LBB8
.LBB8:
	beq t0, a1, .LBB9
	j .LBB10
.LBB9:
	mv a0, a2
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB10:
	lui t1, %hi(used)
	addi t1, t1, %lo(used)
	addw t2, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 1
	sw t1, 0(t2)
	mv t1, zero
	j .LBB11
.LBB11:
	lui t2, %hi(size)
	addi t2, t2, %lo(size)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t1, t2, .LBB12
	j .LBB13
.LBB12:
	lui t2, %hi(to)
	addi t2, t2, %lo(to)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(used)
	addi t2, t2, %lo(used)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB14
	j .LBB15
.LBB13:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB14:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
.LBB15:
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bge zero, t2, .LBB16
	j .LBB17
.LBB16:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
.LBB17:
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt a2, t2, .LBB18
	j .LBB19
.LBB18:
	mv a2, a2
	j .LBB20
.LBB19:
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a2, 0(t2)
	mv a2, a2
	j .LBB20
.LBB20:
	lui t2, %hi(to)
	addi t2, t2, %lo(to)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call dfs
	mv a0, a0
	blt zero, a0, .LBB21
	j .LBB22
.LBB21:
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, t2, a0
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	lui t2, %hi(to)
	addi t2, t2, %lo(to)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(rev)
	addi t2, t2, %lo(rev)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a1, 0(t2)
	lui t2, %hi(cap)
	addi t2, t2, %lo(cap)
	addw t2, s0, t2
	li t2, 40
	mulw t2, s1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw a1, t2, a0
	lui t2, %hi(to)
	addi t2, t2, %lo(to)
	addw t2, s0, t2
	li t2, 40
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	lui s1, %hi(rev)
	addi s1, s1, %lo(rev)
	addw t0, s0, s1
	li s1, 40
	mulw t0, t0, s1
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(cap)
	addi t0, t0, %lo(cap)
	addw t0, s0, t0
	li t0, 40
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB22:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
    .size dfs, .-dfs
    .align  1
    .globl  max_flow
    .type  max_flow, @function
max_flow:
.LBB23:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB24
.LBB24:
	mv t1, zero
	j .LBB25
.LBB25:
	j .LBB26
.LBB26:
	lui t0, %hi(used)
	addi t0, t0, %lo(used)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	li a2, 10
	call my_memset
	mv a0, a0
	mv a1, a1
	li a2, 1879048192
	call dfs
	mv a0, a0
	beq a0, zero, .LBB27
	j .LBB28
.LBB27:
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB28:
	addw t1, t1, a0
	mv t1, t1
	j .LBB25
    .size max_flow, .-max_flow
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB29:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a1, a0
	call getint
	mv t1, a0
	lui t0, %hi(size)
	addi t0, t0, %lo(size)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	li a2, 10
	call my_memset
	mv t1, t1
	j .LBB30
.LBB30:
	blt zero, t1, .LBB31
	j .LBB32
.LBB31:
	call getint
	mv t0, a0
	call getint
	mv a1, a0
	call getint
	mv a2, a0
	mv a0, t0
	mv a1, a1
	mv a2, a2
	call add_node
	li t0, 1
	subw t1, t1, t0
	mv t1, t1
	j .LBB30
.LBB32:
	li a0, 1
	mv a1, a1
	call max_flow
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
