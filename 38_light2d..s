    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  seed
    .data
    .align  2
    .type  seed, @object
    .size  seed, 4
seed:
    .zero  4
    .text
    .align  1
    .globl  rand
    .type  rand, @function
rand:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(seed)
	lw t1, %lo(seed)(t0)
	li t0, 19972096
	addiw t0, t0, -158
	mv t0, t0
	mulw t0, t1, t0
	li t0, 16384
	addiw t0, t0, -1243
	addw t0, t0, t0
	li t1, 99999744
	addiw t1, t1, 263
	mv t1, t1
	remw t0, t0, t1
	lui t1, %hi(seed)
	sw t0, %lo(seed)(t1)
	lui t0, %hi(seed)
	lw t0, %lo(seed)(t0)
	blt t0, zero, .LBB1
	j .LBB2
.LBB1:
	lui t0, %hi(seed)
	lw t0, %lo(seed)(t0)
	li t0, 99999744
	addiw t0, t0, 263
	addw t0, t0, t0
	lui t1, %hi(seed)
	sw t0, %lo(seed)(t1)
	j .LBB2
.LBB2:
	lui t0, %hi(seed)
	lw a0, %lo(seed)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size rand, .-rand
    .align  1
    .globl  my_fabs
    .type  my_fabs, @function
my_fabs:
.LBB3:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv fa0, a0
	j .LBB4
.LBB4:
	fcvt.s.w ft0, zero
	fgt.s t0, fa0, ft0
	beq t0, zero, .LBB5
	j .LBB6
.LBB5:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB6:
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
    .globl  my_sqrt
    .type  my_sqrt, @function
my_sqrt:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB8
.LBB8:
	li t0, 8
	fcvt.s.w ft0, t0
	fdiv.s ft1, a0, ft0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fadd.s ft2, ft1, ft0
	li t0, 2
	fcvt.s.w ft0, t0
	fmul.s ft1, ft0, a0
	li t0, 4
	fcvt.s.w ft0, t0
	fadd.s ft0, ft0, a0
	fdiv.s ft0, ft1, ft0
	fadd.s fa0, ft2, ft0
	mv fa0, fa0
	li t0, 10
	j .LBB9
.LBB9:
	bne t0, zero, .LBB10
	j .LBB11
.LBB10:
	fdiv.s ft0, a0, fa0
	fadd.s ft0, fa0, ft0
	li t0, 2
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft0, ft1
	li t1, 1
	subw t0, t0, t1
	mv fa0, fa0
	mv t0, t0
	j .LBB9
.LBB11:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_sqrt, .-my_sqrt
    .align  1
    .globl  p
    .type  p, @function
p:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	j .LBB13
.LBB13:
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
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv fa0, a0
	j .LBB15
.LBB15:
	mv a0, fa0
	call my_fabs
	mv a0, a0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fle.s t0, a0, ft0
	beq t0, zero, .LBB16
	j .LBB17
.LBB16:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
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
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB19
.LBB19:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fgt.s t0, a0, ft0
	beq t0, zero, .LBB20
	j .LBB21
.LBB20:
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
	j .LBB22
.LBB22:
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fgt.s t0, a0, ft0
	beq t0, zero, .LBB23
	j .LBB28
.LBB21:
	lui t0, %hi(.LC2)
	flw ft0, %lo(.LC2)(t0)
	flt.s t0, a0, ft0
	beq t0, zero, .LBB20
	j .LBB27
.LBB23:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s a0, a0, ft0
	mv a0, a0
	j .LBB24
.LBB24:
	lui t0, %hi(.LC3)
	flw ft0, %lo(.LC3)(t0)
	flt.s t0, a0, ft0
	beq t0, zero, .LBB25
	j .LBB29
.LBB25:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fadd.s a0, a0, ft0
	mv a0, a0
	j .LBB26
.LBB26:
	mv a0, a0
	call my_sin_impl
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	mv a0, a0
	j .LBB22
.LBB28:
	mv a0, a0
	j .LBB24
.LBB29:
	mv a0, a0
	j .LBB26
    .size my_sin, .-my_sin
    .align  1
    .globl  my_cos
    .type  my_cos, @function
my_cos:
.LBB30:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB31
.LBB31:
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
    .globl  circle_sdf
    .type  circle_sdf, @function
circle_sdf:
.LBB32:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	j .LBB33
.LBB33:
	fsub.s ft0, a0, a2
	fsub.s ft1, a1, a3
	fmul.s ft2, ft0, ft0
	fmul.s ft0, ft1, ft1
	fadd.s a0, ft2, ft0
	mv a0, a0
	call my_sqrt
	mv ft0, a0
	fsub.s fa0, ft0, a4
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size circle_sdf, .-circle_sdf
    .align  1
    .globl  scene
    .type  scene, @function
scene:
.LBB34:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft1, a0
	mv a1, a1
	mv t0, a2
	j .LBB35
.LBB35:
	mv a0, ft1
	mv a1, a1
	lui t1, %hi(.LC0)
	flw a2, %lo(.LC0)(t1)
	mv a2, a2
	lui t1, %hi(.LC0)
	flw a3, %lo(.LC0)(t1)
	mv a3, a3
	lui t1, %hi(.LC1)
	flw a4, %lo(.LC1)(t1)
	mv a4, a4
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	lui t1, %hi(.LC1)
	flw ft0, %lo(.LC1)(t1)
	call circle_sdf
	mv ft0, a0
	mv a0, ft1
	mv a1, a1
	lui t1, %hi(.LC2)
	flw a2, %lo(.LC2)(t1)
	mv a2, a2
	lui t1, %hi(.LC2)
	flw a3, %lo(.LC2)(t1)
	mv a3, a3
	lui t1, %hi(.LC3)
	flw a4, %lo(.LC3)(t1)
	mv a4, a4
	lui t1, %hi(.LC2)
	flw ft0, %lo(.LC2)(t1)
	lui t1, %hi(.LC3)
	flw ft0, %lo(.LC3)(t1)
	call circle_sdf
	mv a0, a0
	flt.s t1, ft0, a0
	beq t1, zero, .LBB36
	j .LBB37
.LBB36:
	addw t1, s0, t0
	fsw ft0, 0(t1)
	addw t0, s0, t0
	lui t1, %hi(.LC1)
	flw ft0, %lo(.LC1)(t1)
	fsw ft0, 4(t0)
	j .LBB38
.LBB37:
	addw t1, s0, t0
	fsw a0, 0(t1)
	addw t0, s0, t0
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	fsw ft0, 4(t0)
	j .LBB38
.LBB38:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size scene, .-scene
    .align  1
    .globl  trace
    .type  trace, @function
trace:
.LBB39:
	addi sp, sp, -32
	sd ra, 24(sp)
	sd s0, 16(sp)
	addi s0, sp, 32
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB40
.LBB40:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	mv ft0, ft0
	mv t1, zero
	j .LBB41
.LBB41:
	li t0, 10
	blt t1, t0, .LBB42
	j .LBB43
.LBB44:
	fmul.s ft1, a2, ft0
	fadd.s a0, a0, ft1
	fmul.s ft1, a3, ft0
	fadd.s a1, a1, ft1
	addiw t0, s0, -24
	mv a0, a0
	mv a1, a1
	addiw a2, t0, 0
	mv a2, a2
	call scene
	addiw t0, s0, -24
	flw ft1, 0(t0)
	lui t0, %hi(.LC0)
	flw ft2, %lo(.LC0)(t0)
	flt.s t0, ft1, ft2
	beq t0, zero, .LBB45
	j .LBB46
.LBB43:
	lui t0, %hi(.LC0)
	flw fa0, %lo(.LC0)(t0)
	mv fa0, fa0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	ret 
.LBB42:
	lui t0, %hi(.LC0)
	flw ft1, %lo(.LC0)(t0)
	flt.s t0, ft0, ft1
	beq t0, zero, .LBB44
	j .LBB43
.LBB45:
	addiw t0, s0, -24
	flw fa0, 4(t0)
	mv fa0, fa0
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	ret 
.LBB46:
	addiw t0, s0, -24
	flw ft1, 0(t0)
	fadd.s ft0, ft0, ft1
	addiw t1, t1, 1
	mv ft0, ft0
	mv t1, t1
	j .LBB41
    .size trace, .-trace
    .align  1
    .globl  sample
    .type  sample, @function
sample:
.LBB47:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	mv a1, a1
	j .LBB48
.LBB48:
	mv t0, zero
	lui t1, %hi(.LC0)
	flw ft2, %lo(.LC0)(t1)
	mv ft2, ft2
	j .LBB49
.LBB49:
	li t1, 24
	blt t0, t1, .LBB50
	j .LBB51
.LBB50:
	call rand
	mv a0, a0
	fcvt.s.w ft3, a0
	li t1, 99999744
	addiw t1, t1, 262
	mv t1, t1
	fcvt.s.w ft1, t1
	fdiv.s ft1, ft3, ft1
	fcvt.s.w ft3, t0
	fadd.s ft3, ft3, ft1
	lui t1, %hi(.LC0)
	flw ft1, %lo(.LC0)(t1)
	fmul.s ft3, ft1, ft3
	li t0, 24
	fcvt.s.w ft1, t0
	fdiv.s ft1, ft3, ft1
	mv a0, ft1
	call my_cos
	mv a2, a0
	mv a0, ft1
	call my_sin
	mv a3, a0
	mv a0, ft0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call trace
	mv a0, a0
	fadd.s ft2, ft2, a0
	addiw t0, t0, 1
	mv t0, t0
	mv ft2, ft2
	j .LBB49
.LBB51:
	li t0, 24
	fcvt.s.w ft0, t0
	fdiv.s fa0, ft2, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size sample, .-sample
    .align  1
    .globl  write_pgm
    .type  write_pgm, @function
write_pgm:
.LBB52:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 80
	call putch
	li a0, 50
	call putch
	li a0, 10
	call putch
	li a0, 192
	call putint
	li a0, 32
	call putch
	li a0, 192
	call putint
	li a0, 32
	call putch
	li a0, 255
	call putint
	li a0, 10
	call putch
	mv t1, zero
	j .LBB53
.LBB53:
	li t0, 192
	blt t1, t0, .LBB54
	j .LBB55
.LBB54:
	mv t0, zero
	j .LBB56
.LBB55:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB56:
	li t2, 192
	blt t0, t2, .LBB57
	j .LBB58
.LBB57:
	fcvt.s.w ft1, t0
	fcvt.s.w ft0, t1
	li t0, 192
	fcvt.s.w ft2, t0
	fdiv.s a0, ft1, ft2
	li t0, 192
	fcvt.s.w ft1, t0
	fdiv.s a1, ft0, ft1
	mv a0, a0
	mv a1, a1
	call sample
	mv a0, a0
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	fmul.s ft0, a0, ft0
	fcvt.w.s a0, ft0
	li t0, 255
	blt t0, a0, .LBB59
	j .LBB61
.LBB58:
	li a0, 10
	call putch
	addiw t1, t1, 1
	mv t1, t1
	j .LBB53
.LBB59:
	li a0, 255
	j .LBB60
.LBB60:
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB56
.LBB61:
	mv a0, a0
	j .LBB60
    .size write_pgm, .-write_pgm
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB62:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
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
    .word  1056964608
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
    .align  2
.LC0:
    .word  1053609165
    .align  2
.LC1:
    .word  1036831949
    .align  2
.LC2:
    .word  1058642330
    .align  2
.LC3:
    .word  1028443341
    .align  2
.LC0:
    .word  1073741824
    .align  2
.LC0:
    .word  1132396544
