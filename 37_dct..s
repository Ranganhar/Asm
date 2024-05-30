    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  test_block
    .bss
    .align  3
    .type  test_block, @object
    .size  test_block, 256
test_block:
    .zero  256
    .globl  test_dct
    .align  3
    .type  test_dct, @object
    .size  test_dct, 256
test_dct:
    .zero  256
    .globl  test_idct
    .align  3
    .type  test_idct, @object
    .size  test_idct, 256
test_idct:
    .zero  256
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
    .globl  write_mat
    .type  write_mat, @function
write_mat:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB25
.LBB25:
	mv t0, zero
	j .LBB26
.LBB26:
	blt t0, a1, .LBB27
	j .LBB28
.LBB27:
	addw t1, s0, a0
	li t1, 32
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	mv a0, ft0
	call putfloat
	li t1, 1
	j .LBB29
.LBB28:
	li a0, 10
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB29:
	blt t1, a2, .LBB30
	j .LBB31
.LBB30:
	li a0, 32
	call putch
	addw t0, s0, a0
	li t2, 32
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a0, 0(t0)
	mv a0, a0
	call putfloat
	addiw t1, t1, 1
	mv t1, t1
	j .LBB29
.LBB31:
	li a0, 10
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB26
    .size write_mat, .-write_mat
    .align  1
    .globl  dct
    .type  dct, @function
dct:
.LBB32:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB33
.LBB33:
	mv a4, zero
	j .LBB34
.LBB34:
	blt a4, a2, .LBB35
	j .LBB36
.LBB35:
	mv s1, zero
	j .LBB37
.LBB36:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB37:
	blt s1, a3, .LBB38
	j .LBB39
.LBB38:
	addw t1, s0, t0
	li t1, 32
	mulw t1, a4, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	fcvt.s.w ft0, zero
	fsw ft0, 0(t1)
	mv t1, zero
	j .LBB40
.LBB39:
	addiw a4, a4, 1
	mv a4, a4
	j .LBB34
.LBB40:
	blt t1, a2, .LBB41
	j .LBB42
.LBB41:
	mv t2, zero
	j .LBB43
.LBB42:
	addiw s1, s1, 1
	mv s1, s1
	j .LBB37
.LBB43:
	blt t2, a3, .LBB44
	j .LBB45
.LBB44:
	addw a0, s0, t0
	li a0, 32
	mulw a0, a4, a0
	addw a0, a0, a0
	li a0, 4
	mulw a0, s1, a0
	addw a0, a0, a0
	flw ft4, 0(a0)
	addw a0, s0, a1
	li a0, 32
	mulw a0, t1, a0
	addw a0, a0, a0
	li a0, 4
	mulw a0, t2, a0
	addw a0, a0, a0
	flw ft2, 0(a0)
	fcvt.s.w ft1, a2
	lui a0, %hi(.LC1)
	flw ft0, %lo(.LC1)(a0)
	fdiv.s ft0, ft0, ft1
	fcvt.s.w ft1, t1
	lui t1, %hi(.LC0)
	flw ft3, %lo(.LC0)(t1)
	fadd.s ft1, ft1, ft3
	fmul.s ft0, ft0, ft1
	fcvt.s.w ft1, a4
	fmul.s a0, ft0, ft1
	mv a0, a0
	call my_cos
	mv a0, a0
	fmul.s ft0, ft2, a0
	fcvt.s.w ft2, a3
	lui t1, %hi(.LC1)
	flw ft1, %lo(.LC1)(t1)
	fdiv.s ft2, ft1, ft2
	fcvt.s.w ft1, t2
	lui t1, %hi(.LC0)
	flw ft3, %lo(.LC0)(t1)
	fadd.s ft1, ft1, ft3
	fmul.s ft1, ft2, ft1
	fcvt.s.w ft2, s1
	fmul.s a0, ft1, ft2
	mv a0, a0
	call my_cos
	mv a0, a0
	fmul.s ft0, ft0, a0
	fadd.s ft0, ft4, ft0
	addw t0, s0, t0
	li t0, 32
	mulw t0, a4, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	fsw ft0, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB43
.LBB45:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB40
    .size dct, .-dct
    .align  1
    .globl  idct
    .type  idct, @function
idct:
.LBB46:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB47
.LBB47:
	mv a4, zero
	j .LBB48
.LBB48:
	blt a4, a2, .LBB49
	j .LBB50
.LBB49:
	mv s1, zero
	j .LBB51
.LBB50:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB51:
	blt s1, a3, .LBB52
	j .LBB53
.LBB52:
	addw t1, s0, a1
	flw ft1, 0(t1)
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	fmul.s ft0, ft0, ft1
	addw t1, s0, t0
	li t1, 32
	mulw t1, a4, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	fsw ft0, 0(t1)
	li t1, 1
	j .LBB54
.LBB53:
	addiw a4, a4, 1
	mv a4, a4
	j .LBB48
.LBB54:
	blt t1, a2, .LBB55
	j .LBB56
.LBB55:
	addw t2, s0, t0
	li t2, 32
	mulw t2, a4, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 0(t2)
	addw t2, s0, a1
	li t2, 32
	mulw t2, t1, t2
	addw t2, t2, t2
	flw ft2, 0(t2)
	lui t2, %hi(.LC0)
	flw ft1, %lo(.LC0)(t2)
	fmul.s ft1, ft1, ft2
	fadd.s ft0, ft0, ft1
	addw t0, s0, t0
	li t0, 32
	mulw t0, a4, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	fsw ft0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB54
.LBB56:
	li t1, 1
	j .LBB57
.LBB57:
	blt t1, a3, .LBB58
	j .LBB59
.LBB58:
	addw t2, s0, t0
	li t2, 32
	mulw t2, a4, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft2, 0(t2)
	addw t2, s0, a1
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	flw ft0, 0(t2)
	lui t2, %hi(.LC0)
	flw ft1, %lo(.LC0)(t2)
	fmul.s ft0, ft1, ft0
	fadd.s ft0, ft2, ft0
	addw t0, s0, t0
	li t0, 32
	mulw t0, a4, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	fsw ft0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB57
.LBB59:
	li t1, 1
	j .LBB60
.LBB60:
	blt t1, a2, .LBB61
	j .LBB62
.LBB61:
	li t2, 1
	j .LBB63
.LBB62:
	addw t1, s0, t0
	li t1, 32
	mulw t1, a4, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	lui t1, %hi(.LC1)
	flw ft1, %lo(.LC1)(t1)
	fmul.s ft0, ft0, ft1
	fcvt.s.w ft1, a2
	fdiv.s ft0, ft0, ft1
	lui t1, %hi(.LC1)
	flw ft1, %lo(.LC1)(t1)
	fmul.s ft0, ft0, ft1
	fcvt.s.w ft1, a3
	fdiv.s ft0, ft0, ft1
	addw t0, s0, t0
	li t0, 32
	mulw t0, a4, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	fsw ft0, 0(t0)
	addiw s1, s1, 1
	mv s1, s1
	j .LBB51
.LBB63:
	blt t2, a3, .LBB64
	j .LBB65
.LBB64:
	addw a0, s0, t0
	li a0, 32
	mulw a0, a4, a0
	addw a0, a0, a0
	li a0, 4
	mulw a0, s1, a0
	addw a0, a0, a0
	flw ft3, 0(a0)
	addw a0, s0, a1
	li a0, 32
	mulw a0, t1, a0
	addw a0, a0, a0
	li a0, 4
	mulw a0, t2, a0
	addw a0, a0, a0
	flw ft4, 0(a0)
	fcvt.s.w ft1, a2
	lui a0, %hi(.LC1)
	flw ft0, %lo(.LC1)(a0)
	fdiv.s ft1, ft0, ft1
	fcvt.s.w ft2, a4
	lui a0, %hi(.LC0)
	flw ft0, %lo(.LC0)(a0)
	fadd.s ft0, ft2, ft0
	fmul.s ft0, ft1, ft0
	fcvt.s.w ft1, t1
	fmul.s a0, ft0, ft1
	mv a0, a0
	call my_cos
	mv a0, a0
	fmul.s ft2, ft4, a0
	fcvt.s.w ft0, a3
	lui t1, %hi(.LC1)
	flw ft1, %lo(.LC1)(t1)
	fdiv.s ft0, ft1, ft0
	fcvt.s.w ft1, s1
	lui t1, %hi(.LC0)
	flw ft4, %lo(.LC0)(t1)
	fadd.s ft1, ft1, ft4
	fmul.s ft0, ft0, ft1
	fcvt.s.w ft1, t2
	fmul.s a0, ft0, ft1
	mv a0, a0
	call my_cos
	mv a0, a0
	fmul.s ft0, ft2, a0
	fadd.s ft0, ft3, ft0
	addw t0, s0, t0
	li t0, 32
	mulw t0, a4, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	fsw ft0, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB63
.LBB65:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB60
    .size idct, .-idct
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB66:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a1, a0
	call getint
	mv a2, a0
	mv t0, zero
	j .LBB67
.LBB67:
	blt t0, a1, .LBB68
	j .LBB69
.LBB68:
	mv t1, zero
	j .LBB70
.LBB69:
	lui t0, %hi(test_dct)
	addi t0, t0, %lo(test_dct)
	addw t1, s0, t0
	lui t0, %hi(test_block)
	addi t0, t0, %lo(test_block)
	addw t0, s0, t0
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a1
	mv a3, a2
	call dct
	lui t0, %hi(test_dct)
	addi t0, t0, %lo(test_dct)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call write_mat
	lui t0, %hi(test_idct)
	addi t0, t0, %lo(test_idct)
	addw t0, s0, t0
	lui t1, %hi(test_dct)
	addi t1, t1, %lo(test_dct)
	addw t1, s0, t1
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	mv a2, a1
	mv a3, a2
	call idct
	lui t0, %hi(test_idct)
	addi t0, t0, %lo(test_idct)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call write_mat
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB70:
	blt t1, a2, .LBB71
	j .LBB72
.LBB71:
	call getfloat
	mv a0, a0
	lui t2, %hi(test_block)
	addi t2, t2, %lo(test_block)
	addw t0, s0, t2
	li t2, 32
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	fsw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB70
.LBB72:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB67
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
    .align  2
.LC0:
    .word  1056964608
    .align  2
.LC0:
    .word  1048576000
    .align  2
.LC1:
    .word  1073741824
