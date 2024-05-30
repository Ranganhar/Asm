    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 3600
a:
    .zero  3600
    .globl  step
    .data
    .align  3
    .type  step, @object
    .size  step, 32
step:
    .word  1
    .zero  4
    .word  -1
    .zero  8
    .word  1
    .zero  4
    .word  -1
    .globl  w
    .bss
    .align  2
    .type  w, @object
    .size  w, 4
w:
    .zero  4
    .globl  h
    .align  2
    .type  h, @object
    .size  h, 4
h:
    .zero  4
    .globl  x_0
    .align  2
    .type  x_0, @object
    .size  x_0, 4
x_0:
    .zero  4
    .globl  y_0
    .align  2
    .type  y_0, @object
    .size  y_0, 4
y_0:
    .zero  4
    .globl  x_1
    .align  2
    .type  x_1, @object
    .size  x_1, 4
x_1:
    .zero  4
    .globl  y_1
    .align  2
    .type  y_1, @object
    .size  y_1, 4
y_1:
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
	mv a3, a1
	mv a2, a2
	j .LBB1
.LBB1:
	li t0, 10
	blt t0, a2, .LBB2
	j .LBB3
.LBB2:
	li a0, 1073741824
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	mv t1, zero
	li t0, 1073741824
	mv t0, t0
	j .LBB4
.LBB4:
	li t2, 4
	blt t1, t2, .LBB5
	j .LBB6
.LBB5:
	mv t2, zero
	mv s1, a0
	mv a3, a3
	j .LBB7
.LBB6:
	li t1, 10
	blt t1, t0, .LBB8
	j .LBB9
.LBB7:
	lui a0, %hi(a)
	addi a0, a0, %lo(a)
	addw a0, s0, a0
	li a0, 120
	mulw a0, s1, a0
	addw a0, a0, a0
	li a0, 4
	mulw a0, a3, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li t0, 1
	bne a0, t0, .LBB10
	j .LBB11
.LBB10:
	lui t0, %hi(x_1)
	lw t0, %lo(x_1)(t0)
	beq s1, t0, .LBB12
	j .LBB13
.LBB11:
	lui a0, %hi(x_1)
	lw a0, %lo(x_1)(a0)
	beq s1, a0, .LBB14
	j .LBB15
.LBB16:
	j .LBB11
.LBB13:
	lui t0, %hi(step)
	addi t0, t0, %lo(step)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw s1, s1, t0
	lui t0, %hi(step)
	addi t0, t0, %lo(step)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 4(t0)
	addw a3, a3, t0
	addiw t2, t2, 1
	mv t2, t2
	mv s1, s1
	mv a3, a3
	j .LBB7
.LBB12:
	lui t0, %hi(y_1)
	lw t0, %lo(y_1)(t0)
	beq a3, t0, .LBB16
	j .LBB13
.LBB17:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	li t0, 1
	bge t0, t2, .LBB18
	j .LBB19
.LBB14:
	lui t0, %hi(y_1)
	lw t0, %lo(y_1)(t0)
	beq a3, t0, .LBB17
	j .LBB15
.LBB18:
	addiw t1, t1, 1
	mv t1, t1
	mv t0, t0
	mv t0, t0
	j .LBB4
.LBB19:
	beq s1, zero, .LBB20
	j .LBB21
.LBB20:
	addiw t1, t1, 1
	mv t1, t1
	mv t0, t0
	mv t0, t0
	j .LBB4
.LBB22:
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw a0, s0, t2
	li t2, 120
	mulw t2, s1, t2
	addw a0, a0, t2
	li t2, 4
	mulw t2, a3, t2
	addw a0, a0, t2
	li t2, 0
	sw t2, 0(a0)
	lui t2, %hi(step)
	addi t2, t2, %lo(step)
	addw t2, s0, t2
	li t2, 8
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw a0, s1, t2
	lui t2, %hi(step)
	addi t2, t2, %lo(step)
	addw t2, s0, t2
	li t2, 8
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 4(t2)
	subw a1, a3, t2
	addiw a2, a2, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call search
	mv a0, a0
	addiw t0, a0, 1
	blt t0, t0, .LBB23
	j .LBB27
.LBB21:
	lui t2, %hi(h)
	lw t2, %lo(h)(t2)
	addiw t2, t2, 1
	beq s1, t2, .LBB20
	j .LBB25
.LBB25:
	beq a3, zero, .LBB20
	j .LBB26
.LBB26:
	lui t2, %hi(w)
	lw t2, %lo(w)(t2)
	addiw t2, t2, 1
	beq a3, t2, .LBB20
	j .LBB22
.LBB23:
	mv t0, t0
	j .LBB24
.LBB24:
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 120
	mulw t2, s1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, a3, t2
	addw t2, t2, t2
	li s1, 1
	sw s1, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	mv t0, t0
	j .LBB4
.LBB8:
	li a0, 1073741824
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	mv t0, t0
	j .LBB24
    .size search, .-search
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB28:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	lui t1, %hi(w)
	sw t0, %lo(w)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(h)
	sw t0, %lo(h)(t1)
	j .LBB29
.LBB29:
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	bne t0, zero, .LBB30
	j .LBB31
.LBB30:
	mv t0, zero
	j .LBB32
.LBB31:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB32:
	li t1, 30
	blt t0, t1, .LBB33
	j .LBB34
.LBB33:
	mv t1, zero
	j .LBB35
.LBB34:
	li t1, 1
	j .LBB36
.LBB35:
	li t0, 30
	blt t1, t0, .LBB37
	j .LBB38
.LBB37:
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 120
	mulw t0, t0, t2
	addw t2, t2, t0
	li t0, 4
	mulw t0, t1, t0
	addw t2, t2, t0
	li t0, 1
	sw t0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB35
.LBB38:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB32
.LBB36:
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	bge t0, t1, .LBB39
	j .LBB40
.LBB39:
	li t0, 1
	j .LBB41
.LBB40:
	lui t0, %hi(x_0)
	lw a0, %lo(x_0)(t0)
	lui t0, %hi(y_0)
	lw a1, %lo(y_0)(t0)
	mv a0, a0
	mv a1, a1
	li a2, 1
	call search
	mv a0, a0
	li t0, 10
	bge t0, a0, .LBB42
	j .LBB43
.LBB41:
	lui t2, %hi(w)
	lw t2, %lo(w)(t2)
	bge t2, t0, .LBB44
	j .LBB45
.LBB44:
	call getint
	mv a0, a0
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 120
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 120
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li s1, 2
	beq t2, s1, .LBB46
	j .LBB47
.LBB45:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB36
.LBB46:
	lui t2, %hi(x_0)
	sw t1, %lo(x_0)(t2)
	lui t1, %hi(y_0)
	sw t0, %lo(y_0)(t1)
	j .LBB48
.LBB47:
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 120
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li s1, 3
	beq t2, s1, .LBB49
	j .LBB50
.LBB48:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB41
.LBB49:
	lui t2, %hi(x_1)
	sw t1, %lo(x_1)(t2)
	lui t1, %hi(y_1)
	sw t0, %lo(y_1)(t1)
	j .LBB50
.LBB50:
	j .LBB48
.LBB42:
	mv a0, a0
	call putint
	li a0, 10
	call putch
	j .LBB51
.LBB43:
	li a0, -1
	call putint
	li a0, 10
	call putch
	j .LBB51
.LBB51:
	call getint
	mv t0, a0
	lui t1, %hi(w)
	sw t0, %lo(w)(t1)
	call getint
	mv a0, a0
	lui t0, %hi(h)
	sw a0, %lo(h)(t0)
	j .LBB29
    .size main, .-main
