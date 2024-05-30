    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  2
    .type  a, @object
    .size  a, 4
a:
    .zero  4
    .globl  b
    .align  2
    .type  b, @object
    .size  b, 4
b:
    .zero  4
    .globl  d
    .align  2
    .type  d, @object
    .size  d, 4
d:
    .zero  4
    .text
    .align  1
    .globl  set_a
    .type  set_a, @function
set_a:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	lui t0, %hi(a)
	sw a0, %lo(a)(t0)
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size set_a, .-set_a
    .align  1
    .globl  set_b
    .type  set_b, @function
set_b:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB3
.LBB3:
	lui t0, %hi(b)
	sw a0, %lo(b)(t0)
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size set_b, .-set_b
    .align  1
    .globl  set_d
    .type  set_d, @function
set_d:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB5
.LBB5:
	lui t0, %hi(d)
	sw a0, %lo(d)(t0)
	lui t0, %hi(d)
	lw a0, %lo(d)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size set_d, .-set_d
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 2
	lui t1, %hi(a)
	sw t0, %lo(a)(t1)
	li t0, 3
	lui t1, %hi(b)
	sw t0, %lo(b)(t1)
	li a0, 0
	call set_a
	mv a0, a0
	bne a0, zero, .LBB7
	j .LBB8
.LBB9:
	j .LBB8
.LBB8:
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	li t1, 2
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	li t0, 3
	lui t1, %hi(b)
	sw t0, %lo(b)(t1)
	li a0, 0
	call set_a
	mv a0, a0
	bne a0, zero, .LBB10
	j .LBB11
.LBB7:
	li a0, 1
	call set_b
	mv a0, a0
	bne a0, zero, .LBB9
	j .LBB8
.LBB12:
	j .LBB11
.LBB11:
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t1, 2
	lui t0, %hi(d)
	sw t1, %lo(d)(t0)
	li a0, 3
	call set_d
	mv a0, a0
	bne a0, zero, .LBB13
	j .LBB14
.LBB10:
	li a0, 1
	call set_b
	mv a0, a0
	bne a0, zero, .LBB12
	j .LBB11
.LBB13:
	j .LBB14
.LBB14:
	lui t0, %hi(d)
	lw a0, %lo(d)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	j .LBB15
.LBB15:
	j .LBB16
.LBB16:
	lui t0, %hi(d)
	lw a0, %lo(d)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	j .LBB17
.LBB17:
	li a0, 65
	call putch
	j .LBB18
.LBB18:
	j .LBB19
.LBB19:
	j .LBB20
.LBB20:
	j .LBB21
.LBB21:
	li a0, 68
	call putch
	j .LBB22
.LBB22:
	j .LBB23
.LBB23:
	j .LBB24
.LBB24:
	li a0, 70
	call putch
	j .LBB25
.LBB25:
	li a0, 10
	call putch
	j .LBB26
.LBB26:
	bne zero, zero, .LBB27
	j .LBB28
.LBB29:
	li a0, 32
	call putch
	j .LBB26
.LBB28:
	bne zero, zero, .LBB30
	j .LBB31
.LBB27:
	li t0, 1
	bne t0, zero, .LBB29
	j .LBB28
.LBB30:
	li a0, 67
	call putch
	j .LBB32
.LBB32:
	li t0, 1
	bge zero, t0, .LBB33
	j .LBB34
.LBB31:
	li t0, 1
	bne t0, zero, .LBB30
	j .LBB32
.LBB33:
	li a0, 72
	call putch
	j .LBB35
.LBB35:
	li t1, 2
	li t0, 1
	bge t1, t0, .LBB36
	j .LBB37
.LBB34:
	li t0, 1
	bge zero, t0, .LBB33
	j .LBB35
.LBB38:
	li a0, 73
	call putch
	j .LBB37
.LBB37:
	beq zero, t2, .LBB39
	j .LBB40
.LBB36:
	li t1, 4
	li t0, 3
	bne t1, t0, .LBB38
	j .LBB37
.LBB41:
	li a0, 74
	call putch
	j .LBB42
.LBB42:
	beq zero, s1, .LBB43
	j .LBB44
.LBB40:
	li t1, 4
	li t0, 4
	bge t1, t0, .LBB41
	j .LBB42
.LBB39:
	li t1, 3
	li t0, 3
	blt t1, t0, .LBB41
	j .LBB40
.LBB43:
	li a0, 75
	call putch
	j .LBB45
.LBB45:
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB44:
	li t1, 3
	li t0, 3
	blt t1, t0, .LBB46
	j .LBB45
.LBB46:
	li t1, 4
	li t0, 4
	bge t1, t0, .LBB43
	j .LBB45
    .size main, .-main
