    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  value
    .bss
    .align  3
    .type  value, @object
    .size  value, 40000
value:
    .zero  40000
    .globl  left_child
    .align  3
    .type  left_child, @object
    .size  left_child, 40000
left_child:
    .zero  40000
    .globl  right_child
    .align  3
    .type  right_child, @object
    .size  right_child, 40000
right_child:
    .zero  40000
    .globl  now
    .align  2
    .type  now, @object
    .size  now, 4
now:
    .zero  4
    .text
    .align  1
    .globl  search
    .type  search, @function
search:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	li t0, -1
	beq a0, t0, .LBB2
	j .LBB3
.LBB2:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	blt t0, a1, .LBB5
	j .LBB6
.LBB3:
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, a1, .LBB2
	j .LBB4
.LBB5:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	mv a1, a1
	call search
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB6:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	mv a1, a1
	call search
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size search, .-search
    .align  1
    .globl  find_minimum
    .type  find_minimum, @function
find_minimum:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB8
.LBB8:
	li t0, -1
	beq a0, t0, .LBB9
	j .LBB10
.LBB9:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB10:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	bne t0, t1, .LBB11
	j .LBB12
.LBB11:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call find_minimum
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	j .LBB13
.LBB13:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size find_minimum, .-find_minimum
    .align  1
    .globl  new_node
    .type  new_node, @function
new_node:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB15
.LBB15:
	lui t0, %hi(now)
	lw t1, %lo(now)(t0)
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	lui t0, %hi(now)
	lw t1, %lo(now)(t0)
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, -1
	sw t0, 0(t1)
	lui t0, %hi(now)
	lw t1, %lo(now)(t0)
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, -1
	sw t1, 0(t0)
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	addiw t1, t0, 1
	lui t0, %hi(now)
	sw t1, %lo(now)(t0)
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	li t1, 1
	subw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size new_node, .-new_node
    .align  1
    .globl  insert
    .type  insert, @function
insert:
.LBB16:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	j .LBB17
.LBB17:
	li t1, -1
	beq t0, t1, .LBB18
	j .LBB19
.LBB18:
	mv a0, a1
	call new_node
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB19:
	lui t1, %hi(value)
	addi t1, t1, %lo(value)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	blt t1, a1, .LBB20
	j .LBB21
.LBB20:
	lui t1, %hi(right_child)
	addi t1, t1, %lo(right_child)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	mv a1, a1
	call insert
	mv a0, a0
	lui t1, %hi(right_child)
	addi t1, t1, %lo(right_child)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB22
.LBB21:
	lui t1, %hi(left_child)
	addi t1, t1, %lo(left_child)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	mv a1, a1
	call insert
	mv a0, a0
	lui t1, %hi(left_child)
	addi t1, t1, %lo(left_child)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB22
.LBB22:
	j .LBB23
.LBB23:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size insert, .-insert
    .align  1
    .globl  delete
    .type  delete, @function
delete:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, a0
	mv a1, a1
	j .LBB25
.LBB25:
	li t0, -1
	beq t1, t0, .LBB26
	j .LBB27
.LBB26:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	blt t0, a1, .LBB28
	j .LBB29
.LBB28:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	mv a1, a1
	call delete
	mv a0, a0
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB30
.LBB29:
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	blt a1, t0, .LBB31
	j .LBB32
.LBB30:
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB31:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	mv a1, a1
	call delete
	mv a0, a0
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB33
.LBB32:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, -1
	beq t0, t2, .LBB34
	j .LBB35
.LBB33:
	j .LBB30
.LBB36:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB35:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, -1
	beq t0, t2, .LBB37
	j .LBB38
.LBB34:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, -1
	beq t0, t2, .LBB36
	j .LBB35
.LBB37:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, -1
	beq t0, t2, .LBB39
	j .LBB40
.LBB41:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call find_minimum
	mv t0, a0
	lui t2, %hi(value)
	addi t2, t2, %lo(value)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(value)
	addi t2, t2, %lo(value)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	lui t2, %hi(right_child)
	addi t2, t2, %lo(right_child)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	lui t2, %hi(value)
	addi t2, t2, %lo(value)
	addw t0, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw a1, 0(t0)
	mv a0, a0
	mv a1, a1
	call delete
	mv a0, a0
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB42
.LBB38:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, -1
	beq t0, t2, .LBB37
	j .LBB41
.LBB39:
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB40:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB42:
	j .LBB43
.LBB43:
	j .LBB33
    .size delete, .-delete
    .align  1
    .globl  inorder
    .type  inorder, @function
inorder:
.LBB44:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB45
.LBB45:
	li t0, -1
	bne a0, t0, .LBB46
	j .LBB47
.LBB46:
	lui t0, %hi(left_child)
	addi t0, t0, %lo(left_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv a0, t0
	call inorder
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv a0, t0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(right_child)
	addi t0, t0, %lo(right_child)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call inorder
	j .LBB47
.LBB47:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size inorder, .-inorder
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB48:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 0
	lui t1, %hi(now)
	sw t0, %lo(now)(t1)
	call getint
	mv t0, a0
	beq t0, zero, .LBB49
	j .LBB50
.LBB49:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB50:
	call getint
	mv a0, a0
	mv a0, a0
	call new_node
	mv t2, a0
	li t1, 1
	j .LBB51
.LBB51:
	blt t1, t0, .LBB52
	j .LBB53
.LBB52:
	call getint
	mv a1, a0
	mv a0, t2
	mv a1, a1
	call insert
	addiw t1, t1, 1
	mv t1, t1
	j .LBB51
.LBB53:
	mv a0, t2
	call inorder
	li a0, 10
	call putch
	call getint
	mv t1, a0
	mv t2, t2
	mv t0, zero
	j .LBB54
.LBB54:
	blt t0, t1, .LBB55
	j .LBB56
.LBB55:
	call getint
	mv a1, a0
	mv a0, t2
	mv a1, a1
	call delete
	mv t2, a0
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	j .LBB54
.LBB56:
	mv a0, t2
	call inorder
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
