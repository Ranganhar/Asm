    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
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
    .globl  my_pow
    .type  my_pow, @function
my_pow:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB5
.LBB5:
	blt a1, zero, .LBB6
	j .LBB7
.LBB6:
	subw a1, zero, a1
	mv a0, a0
	mv a1, a1
	call my_pow
	mv ft0, a0
	li t0, 1
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	mv a0, a0
	mv a1, a1
	lui t0, %hi(.LC0)
	flw fa0, %lo(.LC0)(t0)
	mv fa0, fa0
	j .LBB8
.LBB8:
	bne a1, zero, .LBB9
	j .LBB10
.LBB9:
	li t0, 2
	remw t0, a1, t0
	bne t0, zero, .LBB11
	j .LBB13
.LBB10:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	fmul.s fa0, fa0, a0
	mv fa0, fa0
	j .LBB12
.LBB12:
	fmul.s a0, a0, a0
	li t0, 2
	divw a1, a1, t0
	mv a0, a0
	mv a1, a1
	mv fa0, fa0
	j .LBB8
.LBB13:
	mv fa0, fa0
	j .LBB12
    .size my_pow, .-my_pow
    .align  1
    .globl  my_sqrt
    .type  my_sqrt, @function
my_sqrt:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB15
.LBB15:
	li t0, 100
	fcvt.s.w ft0, t0
	fgt.s t0, a0, ft0
	beq t0, zero, .LBB16
	j .LBB17
.LBB16:
	li t0, 100
	fcvt.s.w ft0, t0
	fdiv.s a0, a0, ft0
	mv a0, a0
	call my_sqrt
	mv ft0, a0
	lui t0, %hi(.LC0)
	flw ft1, %lo(.LC0)(t0)
	fmul.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	li t0, 8
	fcvt.s.w ft0, t0
	fdiv.s ft1, a0, ft0
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
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
	j .LBB18
.LBB18:
	bne t0, zero, .LBB19
	j .LBB20
.LBB19:
	fdiv.s ft0, a0, fa0
	fadd.s ft0, fa0, ft0
	li t0, 2
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft0, ft1
	li t1, 1
	subw t0, t0, t1
	mv fa0, fa0
	mv t0, t0
	j .LBB18
.LBB20:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_sqrt, .-my_sqrt
    .align  1
    .globl  F1
    .type  F1, @function
F1:
.LBB21:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	j .LBB22
.LBB22:
	li t0, 1
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size F1, .-F1
    .align  1
    .globl  F2
    .type  F2, @function
F2:
.LBB23:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB24
.LBB24:
	fmul.s ft0, a0, a0
	li t0, 1
	fcvt.s.w ft1, t0
	fsub.s a0, ft1, ft0
	mv a0, a0
	call my_sqrt
	mv ft0, a0
	li t0, 1
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size F2, .-F2
    .align  1
    .globl  simpson
    .type  simpson, @function
simpson:
.LBB25:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft2, a0
	mv a1, a1
	mv a2, a2
	j .LBB26
.LBB26:
	fsub.s ft1, a1, ft2
	li t0, 2
	fcvt.s.w ft0, t0
	fdiv.s ft0, ft1, ft0
	fadd.s ft1, ft2, ft0
	li t0, 1
	beq a2, t0, .LBB27
	j .LBB28
.LBB27:
	mv a0, ft2
	call F1
	mv ft0, a0
	mv a0, ft1
	call F1
	mv a0, a0
	li t0, 4
	fcvt.s.w ft1, t0
	fmul.s ft1, ft1, a0
	fadd.s ft1, ft0, ft1
	mv a0, a1
	call F1
	mv ft0, a0
	fadd.s ft1, ft1, ft0
	fsub.s ft0, a1, ft2
	fmul.s ft1, ft1, ft0
	li t0, 6
	fcvt.s.w ft0, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB28:
	li t0, 2
	beq a2, t0, .LBB29
	j .LBB30
.LBB29:
	mv a0, ft2
	call F2
	mv ft0, a0
	mv a0, ft1
	call F2
	mv a0, a0
	li t0, 4
	fcvt.s.w ft1, t0
	fmul.s ft1, ft1, a0
	fadd.s ft1, ft0, ft1
	mv a0, a1
	call F2
	mv ft0, a0
	fadd.s ft0, ft1, ft0
	fsub.s ft1, a1, ft2
	fmul.s ft0, ft0, ft1
	li t0, 6
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft0, ft1
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB30:
	fcvt.s.w fa0, zero
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size simpson, .-simpson
    .align  1
    .globl  asr5
    .type  asr5, @function
asr5:
.LBB31:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft1, a0
	mv a1, a1
	mv ft4, a2
	mv ft3, a3
	mv a4, a4
	j .LBB32
.LBB32:
	fsub.s ft2, a1, ft1
	li t0, 2
	fcvt.s.w ft0, t0
	fdiv.s ft0, ft2, ft0
	fadd.s ft2, ft1, ft0
	mv a0, ft1
	mv a1, ft2
	mv a2, a4
	call simpson
	mv ft0, a0
	mv a0, ft2
	mv a1, a1
	mv a2, a4
	call simpson
	mv a3, a0
	fadd.s ft5, ft0, a3
	fsub.s a0, ft5, ft3
	mv a0, a0
	call my_fabs
	mv a0, a0
	li t0, 15
	fcvt.s.w ft5, t0
	fmul.s ft5, ft5, ft4
	fle.s t0, a0, ft5
	beq t0, zero, .LBB33
	j .LBB34
.LBB33:
	fadd.s ft1, ft0, a3
	fadd.s ft0, ft0, a3
	fsub.s ft2, ft0, ft3
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fdiv.s ft0, ft2, ft0
	fadd.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB34:
	li t0, 2
	fcvt.s.w ft3, t0
	fdiv.s a2, ft4, ft3
	mv a0, ft1
	mv a1, ft2
	mv a2, a2
	mv a3, ft0
	mv a4, a4
	call asr5
	mv ft1, a0
	li t0, 2
	fcvt.s.w ft0, t0
	fdiv.s a2, ft4, ft0
	mv a0, ft2
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	call asr5
	mv ft0, a0
	fadd.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size asr5, .-asr5
    .align  1
    .globl  asr4
    .type  asr4, @function
asr4:
.LBB35:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	mv a1, a1
	mv a2, a2
	mv a4, a3
	j .LBB36
.LBB36:
	mv a0, ft0
	mv a1, a1
	mv a2, a4
	call simpson
	mv a3, a0
	mv a0, ft0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	call asr5
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size asr4, .-asr4
    .align  1
    .globl  eee
    .type  eee, @function
eee:
.LBB37:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	j .LBB38
.LBB38:
	lui t0, %hi(.LC0)
	flw ft1, %lo(.LC0)(t0)
	fgt.s t0, ft0, ft1
	beq t0, zero, .LBB39
	j .LBB40
.LBB39:
	li t0, 2
	fcvt.s.w ft1, t0
	fdiv.s a0, ft0, ft1
	mv a0, a0
	call eee
	mv ft0, a0
	fmul.s fa0, ft0, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB40:
	li t0, 1
	fcvt.s.w ft1, t0
	fadd.s ft3, ft1, ft0
	fmul.s ft2, ft0, ft0
	li t0, 2
	fcvt.s.w ft1, t0
	fdiv.s ft1, ft2, ft1
	fadd.s ft2, ft3, ft1
	mv a0, ft0
	li a1, 3
	call my_pow
	mv a0, a0
	li t0, 6
	fcvt.s.w ft1, t0
	fdiv.s ft1, a0, ft1
	fadd.s ft1, ft2, ft1
	mv a0, ft0
	li a1, 4
	call my_pow
	mv a0, a0
	li t0, 24
	fcvt.s.w ft2, t0
	fdiv.s ft2, a0, ft2
	fadd.s ft2, ft1, ft2
	mv a0, ft0
	li a1, 5
	call my_pow
	mv ft0, a0
	li t0, 120
	fcvt.s.w ft1, t0
	fdiv.s ft0, ft0, ft1
	fadd.s fa0, ft2, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size eee, .-eee
    .align  1
    .globl  my_exp
    .type  my_exp, @function
my_exp:
.LBB41:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB42
.LBB42:
	fcvt.s.w ft0, zero
	flt.s t0, a0, ft0
	beq t0, zero, .LBB43
	j .LBB44
.LBB43:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s a0, ft0, a0
	mv a0, a0
	call my_exp
	mv ft0, a0
	li t0, 1
	fcvt.s.w ft1, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB44:
	fcvt.w.s a1, a0
	fcvt.s.w ft0, a1
	fsub.s ft0, a0, ft0
	lui t0, %hi(.LC0)
	flw a0, %lo(.LC0)(t0)
	mv a0, a0
	mv a1, a1
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	call my_pow
	mv ft1, a0
	mv a0, ft0
	call eee
	mv ft0, a0
	fmul.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_exp, .-my_exp
    .align  1
    .globl  my_ln
    .type  my_ln, @function
my_ln:
.LBB45:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a1, a0
	j .LBB46
.LBB46:
	li t0, 1
	fcvt.s.w a0, t0
	mv a0, a0
	mv a1, a1
	lui t0, %hi(.LC0)
	flw a2, %lo(.LC0)(t0)
	mv a2, a2
	li a3, 1
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	call asr4
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_ln, .-my_ln
    .align  1
    .globl  my_log
    .type  my_log, @function
my_log:
.LBB47:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	mv a0, a1
	j .LBB48
.LBB48:
	mv a0, a0
	call my_ln
	mv ft1, a0
	mv a0, ft0
	call my_ln
	mv ft0, a0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_log, .-my_log
    .align  1
    .globl  my_powf
    .type  my_powf, @function
my_powf:
.LBB49:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB50
.LBB50:
	mv a0, a0
	call my_ln
	mv a0, a0
	fmul.s a0, a1, a0
	mv a0, a0
	call my_exp
	mv fa0, a0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size my_powf, .-my_powf
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB51:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	mv t0, t0
	j .LBB52
.LBB52:
	bne t0, zero, .LBB53
	j .LBB54
.LBB53:
	call getfloat
	mv ft0, a0
	call getfloat
	mv a1, a0
	mv a0, ft0
	call my_fabs
	mv a0, a0
	mv a0, a0
	call putfloat
	li a0, 32
	call putch
	mv a0, ft0
	li a1, 2
	call my_pow
	mv a0, a0
	mv a0, a0
	call putfloat
	li a0, 32
	call putch
	mv a0, ft0
	call my_sqrt
	mv a0, a0
	mv a0, a0
	call putfloat
	li a0, 32
	call putch
	mv a0, ft0
	call my_exp
	mv a0, a0
	mv a0, a0
	call putfloat
	li a0, 32
	call putch
	fcvt.s.w ft1, zero
	fgt.s t1, ft0, ft1
	beq t1, zero, .LBB55
	j .LBB56
.LBB54:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB55:
	mv a0, ft0
	call my_ln
	mv a0, a0
	mv a0, a0
	call putfloat
	j .LBB57
.LBB56:
	li a0, 45
	call putch
	j .LBB57
.LBB57:
	li a0, 32
	call putch
	fcvt.s.w ft1, zero
	fgt.s t1, ft0, ft1
	beq t1, zero, .LBB58
	j .LBB59
.LBB60:
	mv a0, ft0
	mv a1, a1
	call my_log
	mv a0, a0
	mv a0, a0
	call putfloat
	j .LBB61
.LBB59:
	li a0, 45
	call putch
	j .LBB61
.LBB58:
	fcvt.s.w ft1, zero
	fgt.s t0, a1, ft1
	beq t0, zero, .LBB60
	j .LBB59
.LBB61:
	li a0, 32
	call putch
	fcvt.s.w ft1, zero
	fgt.s t1, ft0, ft1
	beq t1, zero, .LBB62
	j .LBB63
.LBB62:
	mv a0, ft0
	mv a1, a1
	call my_powf
	mv a0, a0
	mv a0, a0
	call putfloat
	j .LBB64
.LBB63:
	li a0, 45
	call putch
	j .LBB64
.LBB64:
	li a0, 10
	call putch
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB52
    .size main, .-main
    .section    .rodata
    .align  2
.LC0:
    .word  0
    .align  2
.LC0:
    .word  1065353216
    .align  2
.LC0:
    .word  1092616192
    .align  2
.LC1:
    .word  1056964608
    .align  2
.LC0:
    .word  1097859072
    .align  2
.LC0:
    .word  981668463
    .align  2
.LC0:
    .word  1076754516
    .align  2
.LC0:
    .word  841731191
