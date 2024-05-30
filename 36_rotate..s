    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  image
    .bss
    .align  3
    .type  image, @object
    .size  image, 4194304
image:
    .zero  4194304
    .globl  width
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
    .text
    .align  1
    .globl  my_fabs
    .type  my_fabs, @function
my_fabs:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv fa0, a0
	j .LBB1
.LBB1:
	fcvt.s.w ft0, zero
	fgt.s t0, fa0, ft0
	beq t0, zero, .LBB2
	j .LBB3
.LBB2:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s fa0, ft0, fa0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_fabs, .-my_fabs
    .align  1
    .globl  p
    .type  p, @function
p:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	j .LBB5
.LBB5:
	li t0, 3
	fcvt.s.w ft1, t0
	fmul.s ft2, ft1, ft0
	li t0, 4
	fcvt.s.w ft1, t0
	fmul.s ft1, ft1, ft0
	fmul.s ft1, ft1, ft0
	fmul.s ft0, ft1, ft0
	fsub.s fa0, ft2, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size p, .-p
    .align  1
    .globl  my_sin_impl
    .type  my_sin_impl, @function
my_sin_impl:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv fa0, a0
	j .LBB7
.LBB7:
	mv a0, fa0
	call my_fabs
	mv a0, a0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fle.s t0, a0, ft0
	beq t0, zero, .LBB8
	j .LBB9
.LBB8:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fdiv.s a0, fa0, ft0
	mv a0, a0
	call my_sin_impl
	mv a0, a0
	mv a0, a0
	call p
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_sin_impl, .-my_sin_impl
    .align  1
    .globl  my_sin
    .type  my_sin, @function
my_sin:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB11
.LBB11:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fgt.s t0, a0, ft0
	beq t0, zero, .LBB12
	j .LBB13
.LBB12:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fdiv.s ft0, a0, ft0
	fcvt.w.s t0, ft0
	fcvt.s.w ft0, t0
	lui t0, %hi(.LC0)
	flw ft1, %lo(.LC0)(t0)
	fmul.s ft0, ft0, ft1
	fsub.s a0, a0, ft0
	mv a0, a0
	j .LBB14
.LBB14:
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fgt.s t0, a0, ft0
	beq t0, zero, .LBB15
	j .LBB20
.LBB13:
	lui t0, %hi(.LC2)
	flw ft0, %lo(.LC2)(t0)
	flt.s t0, a0, ft0
	beq t0, zero, .LBB12
	j .LBB19
.LBB15:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s a0, a0, ft0
	mv a0, a0
	j .LBB16
.LBB16:
	lui t0, %hi(.LC3)
	flw ft0, %lo(.LC3)(t0)
	flt.s t0, a0, ft0
	beq t0, zero, .LBB17
	j .LBB21
.LBB17:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fadd.s a0, a0, ft0
	mv a0, a0
	j .LBB18
.LBB18:
	mv a0, a0
	call my_sin_impl
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB19:
	mv a0, a0
	j .LBB14
.LBB20:
	mv a0, a0
	j .LBB16
.LBB21:
	mv a0, a0
	j .LBB18
    .size my_sin, .-my_sin
    .align  1
    .globl  my_cos
    .type  my_cos, @function
my_cos:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB23
.LBB23:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fadd.s a0, a0, ft0
	mv a0, a0
	call my_sin
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_cos, .-my_cos
    .align  1
    .globl  read_image
    .type  read_image, @function
read_image:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv t0, a0
	li t1, 80
	bne t0, t1, .LBB25
	j .LBB26
.LBB25:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	call getint
	mv t0, a0
	lui t1, %hi(width)
	sw t0, %lo(width)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(height)
	sw t0, %lo(height)(t1)
	lui t0, %hi(width)
	lw t0, %lo(width)(t0)
	li t1, 1024
	blt t1, t0, .LBB28
	j .LBB29
.LBB26:
	call getch
	mv t0, a0
	li t1, 50
	bne t0, t1, .LBB25
	j .LBB27
.LBB28:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB30:
	mv t0, zero
	j .LBB31
.LBB29:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	li t1, 1024
	blt t1, t0, .LBB28
	j .LBB32
.LBB32:
	call getint
	mv a0, a0
	li t0, 255
	bne a0, t0, .LBB28
	j .LBB30
.LBB31:
	lui t1, %hi(height)
	lw t1, %lo(height)(t1)
	blt t0, t1, .LBB33
	j .LBB34
.LBB33:
	mv t1, zero
	j .LBB35
.LBB34:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB35:
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	blt t1, t2, .LBB36
	j .LBB37
.LBB36:
	call getint
	mv a0, a0
	lui t2, %hi(width)
	lw t2, %lo(width)(t2)
	mulw t0, t0, t2
	addw t2, t0, t1
	lui t0, %hi(image)
	addi t0, t0, %lo(image)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB35
.LBB37:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB31
    .size read_image, .-read_image
    .align  1
    .globl  rotate
    .type  rotate, @function
rotate:
.LBB38:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	mv a2, a2
	j .LBB39
.LBB39:
	mv a0, a2
	call my_sin
	mv ft0, a0
	mv a0, a2
	call my_cos
	mv a0, a0
	lui t1, %hi(width)
	lw t2, %lo(width)(t1)
	li t1, 2
	divw t2, t2, t1
	lui t1, %hi(height)
	lw s1, %lo(height)(t1)
	li t1, 2
	divw t1, s1, t1
	subw s1, t0, t2
	subw t0, a1, t1
	fcvt.s.w ft1, s1
	fmul.s ft1, ft1, a0
	fcvt.s.w ft2, t0
	fmul.s ft2, ft2, ft0
	fsub.s ft1, ft1, ft2
	fcvt.s.w ft2, t2
	fadd.s ft1, ft1, ft2
	fcvt.w.s t2, ft1
	fcvt.s.w ft1, s1
	fmul.s ft1, ft1, ft0
	fcvt.s.w ft0, t0
	fmul.s ft0, ft0, a0
	fadd.s ft1, ft1, ft0
	fcvt.s.w ft0, t1
	fadd.s ft0, ft1, ft0
	fcvt.w.s t1, ft0
	blt t2, zero, .LBB40
	j .LBB41
.LBB40:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB42:
	lui t0, %hi(width)
	lw t0, %lo(width)(t0)
	mulw t0, t1, t0
	addw t1, t0, t2
	lui t0, %hi(image)
	addi t0, t0, %lo(image)
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
.LBB41:
	lui t0, %hi(width)
	lw t0, %lo(width)(t0)
	bge t2, t0, .LBB40
	j .LBB43
.LBB43:
	blt t1, zero, .LBB40
	j .LBB44
.LBB44:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	bge t1, t0, .LBB40
	j .LBB42
    .size rotate, .-rotate
    .align  1
    .globl  write_pgm
    .type  write_pgm, @function
write_pgm:
.LBB45:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a2, a0
	j .LBB46
.LBB46:
	li a0, 80
	call putch
	li a0, 50
	call putch
	li a0, 10
	call putch
	lui t0, %hi(width)
	lw a0, %lo(width)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(height)
	lw a0, %lo(height)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	li a0, 255
	call putint
	li a0, 10
	call putch
	mv a1, zero
	j .LBB47
.LBB47:
	lui t0, %hi(height)
	lw t0, %lo(height)(t0)
	blt a1, t0, .LBB48
	j .LBB49
.LBB48:
	mv t0, zero
	j .LBB50
.LBB49:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB50:
	lui t1, %hi(width)
	lw t1, %lo(width)(t1)
	blt t0, t1, .LBB51
	j .LBB52
.LBB51:
	mv a0, t0
	mv a1, a1
	mv a2, a2
	call rotate
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB50
.LBB52:
	li a0, 10
	call putch
	addiw a1, a1, 1
	mv a1, a1
	j .LBB47
    .size write_pgm, .-write_pgm
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB53:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getfloat
	mv ft0, a0
	call getch
	call read_image
	mv a0, a0
	blt a0, zero, .LBB54
	j .LBB55
.LBB54:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB55:
	mv a0, ft0
	call write_pgm
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
    .section    .rodata
    .align  2
.LC0:
    .word  0
    .align  2
.LC0:
    .word  897988541
    .align  2
.LC1:
    .word  1077936128
    .align  2
.LC0:
    .word  1086918619
    .align  2
.LC1:
    .word  1078530011
    .align  2
.LC2:
    .word  -1060565029
    .align  2
.LC3:
    .word  -1068953637
    .align  2
.LC0:
    .word  1070141403
