    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  sheet1
    .bss
    .align  3
    .type  sheet1, @object
    .size  sheet1, 1000000
sheet1:
    .zero  1000000
    .globl  sheet2
    .align  3
    .type  sheet2, @object
    .size  sheet2, 1000000
sheet2:
    .zero  1000000
    .globl  active
    .data
    .align  2
    .type  active, @object
    .size  active, 4
active:
    .word  1
    .globl  width
    .bss
    .align  2
    .type  width, @object
    .size  width, 4
width:
    .zero  4
    .globl  height
    .align  2
    .type  height, @object
    .size  height, 4
height:
    .zero  4
    .globl  steps
    .align  2
    .type  steps, @object
    .size  steps, 4
steps:
    .zero  4
    .text
    .align  1
    .globl  read_map
    .type  read_map, @function
read_map:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	lui t1, %hi(width)
	sw t0, %lo(width)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(height)
	sw t0, %lo(height)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(steps)
	sw t0, %lo(steps)(t1)
	call getch
	li t1, 1
	j .LBB1
.LBB1:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	bge t0, t1, .LBB2
	j .LBB3
.LBB2:
	li t0, 1
	j .LBB4
.LBB3:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	bge t2, t0, .LBB5
	j .LBB6
.LBB5:
	call getch
	mv a0, a0
	li t1, 35
	beq a0, t1, .LBB7
	j .LBB8
.LBB6:
	call getch
	addiw t1, t1, 1
	mv t1, t1
	j .LBB1
.LBB7:
	lui t2, %hi(sheet1)
	addi t2, t2, %lo(sheet1)
	addw t2, s0, t2
	li t2, 2000
	mulw t1, t1, t2
	addw t2, t2, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 1
	sw t1, 0(t2)
	j .LBB9
.LBB8:
	lui t2, %hi(sheet1)
	addi t2, t2, %lo(sheet1)
	addw t1, s0, t2
	li t2, 2000
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	j .LBB9
.LBB9:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB4
    .size read_map, .-read_map
    .align  1
    .globl  put_map
    .type  put_map, @function
put_map:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 1
	j .LBB11
.LBB11:
	lui t1, %hi(height)
	lw t1, %lo(height)(t1)
	bge t1, t0, .LBB12
	j .LBB13
.LBB12:
	li t1, 1
	j .LBB14
.LBB13:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB14:
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	bge t2, t1, .LBB15
	j .LBB16
.LBB15:
	lui t2, %hi(sheet1)
	addi t2, t2, %lo(sheet1)
	addw t0, s0, t2
	li t2, 2000
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 1
	beq t0, t1, .LBB17
	j .LBB18
.LBB16:
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB11
.LBB17:
	li a0, 35
	call putch
	j .LBB19
.LBB18:
	li a0, 46
	call putch
	j .LBB19
.LBB19:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB14
    .size put_map, .-put_map
    .align  1
    .globl  swap12
    .type  swap12, @function
swap12:
.LBB20:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 1
	j .LBB21
.LBB21:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	bge t0, t1, .LBB22
	j .LBB23
.LBB22:
	li t0, 1
	j .LBB24
.LBB23:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB24:
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	bge t2, t0, .LBB25
	j .LBB26
.LBB25:
	lui t2, %hi(sheet2)
	addi t2, t2, %lo(sheet2)
	addw t2, s0, t2
	li t2, 2000
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(sheet1)
	addi t2, t2, %lo(sheet1)
	addw t1, s0, t2
	li t2, 2000
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB24
.LBB26:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB21
    .size swap12, .-swap12
    .align  1
    .globl  step
    .type  step, @function
step:
.LBB27:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB28
.LBB28:
	li t1, 1
	j .LBB29
.LBB29:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	bge t0, t1, .LBB30
	j .LBB31
.LBB30:
	li t0, 1
	j .LBB32
.LBB31:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB32:
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	bge t2, t0, .LBB33
	j .LBB34
.LBB33:
	li t2, 1
	subw a2, t1, t2
	li t2, 1
	subw s1, t0, t2
	addw t2, s0, a0
	li t2, 2000
	mulw t2, a2, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	li t2, 1
	subw t2, t1, t2
	addw t2, s0, a0
	li a2, 2000
	mulw t2, t2, a2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw a2, s1, t2
	li t2, 1
	subw s1, t1, t2
	addiw a3, t0, 1
	addw t2, s0, a0
	li t2, 2000
	mulw t2, s1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a3, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, a2, t2
	li t2, 1
	subw a2, t0, t2
	addw t2, s0, a0
	li t2, 2000
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a2, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s1, t2
	addiw a2, t0, 1
	addw t2, s0, a0
	li t2, 2000
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a2, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s1, t2
	addiw a2, t1, 1
	li t2, 1
	subw a3, t0, t2
	addw t2, s0, a0
	li t2, 2000
	mulw t2, a2, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a3, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s1, t2
	addiw t2, t1, 1
	addw t2, s0, a0
	li a2, 2000
	mulw t2, t2, a2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw a2, s1, t2
	addiw a3, t1, 1
	addiw s1, t0, 1
	addw t2, s0, a0
	li t2, 2000
	mulw t2, a3, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, a2, t2
	addw t2, s0, a0
	li t2, 2000
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li t1, 1
	beq t2, t1, .LBB35
	j .LBB36
.LBB34:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB29
.LBB37:
	addw t1, s0, a1
	li t2, 2000
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 1
	sw t2, 0(t1)
	j .LBB38
.LBB36:
	li t1, 3
	beq s1, t1, .LBB39
	j .LBB40
.LBB35:
	li t1, 2
	beq s1, t1, .LBB37
	j .LBB36
.LBB38:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB32
.LBB39:
	addw t2, s0, a1
	li t2, 2000
	mulw t1, t1, t2
	addw t2, t2, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 1
	sw t1, 0(t2)
	j .LBB41
.LBB40:
	addw t2, s0, a1
	li t2, 2000
	mulw t1, t1, t2
	addw t2, t2, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 0
	sw t1, 0(t2)
	j .LBB41
.LBB41:
	j .LBB38
    .size step, .-step
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB42:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call read_map
	li a0, 95
	call _sysy_starttime
	j .LBB43
.LBB43:
	lui t0, %hi(steps)
	lw t0, %lo(steps)(t0)
	blt zero, t0, .LBB44
	j .LBB45
.LBB44:
	lui t0, %hi(active)
	lw t0, %lo(active)(t0)
	li t1, 1
	beq t0, t1, .LBB46
	j .LBB47
.LBB45:
	li a0, 106
	call _sysy_stoptime
	lui t0, %hi(active)
	lw t0, %lo(active)(t0)
	li t1, 2
	beq t0, t1, .LBB48
	j .LBB49
.LBB46:
	lui t0, %hi(sheet1)
	addi t0, t0, %lo(sheet1)
	addw t0, s0, t0
	lui t1, %hi(sheet2)
	addi t1, t1, %lo(sheet2)
	addw t1, s0, t1
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call step
	li t0, 2
	lui t1, %hi(active)
	sw t0, %lo(active)(t1)
	j .LBB50
.LBB47:
	lui t0, %hi(sheet2)
	addi t0, t0, %lo(sheet2)
	addw t0, s0, t0
	lui t1, %hi(sheet1)
	addi t1, t1, %lo(sheet1)
	addw t1, s0, t1
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call step
	li t1, 1
	lui t0, %hi(active)
	sw t1, %lo(active)(t0)
	j .LBB50
.LBB50:
	lui t0, %hi(steps)
	lw t0, %lo(steps)(t0)
	li t1, 1
	subw t1, t0, t1
	lui t0, %hi(steps)
	sw t1, %lo(steps)(t0)
	j .LBB43
.LBB48:
	call swap12
	j .LBB49
.LBB49:
	call put_map
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
