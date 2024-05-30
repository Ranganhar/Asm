    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  float_abs
    .type  float_abs, @function
float_abs:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv fa0, a0
	j .LBB1
.LBB1:
	fcvt.s.w ft0, zero
	flt.s t0, fa0, ft0
	beq t0, zero, .LBB2
	j .LBB3
.LBB2:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s fa0, ft0, fa0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size float_abs, .-float_abs
    .align  1
    .globl  circle_area
    .type  circle_area, @function
circle_area:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB5
.LBB5:
	fcvt.s.w ft0, t0
	lui t1, %hi(.LC0)
	flw ft1, %lo(.LC0)(t1)
	fmul.s ft1, ft1, ft0
	fcvt.s.w ft0, t0
	fmul.s ft0, ft1, ft0
	mulw t0, t0, t0
	fcvt.s.w ft1, t0
	lui t0, %hi(.LC0)
	flw ft2, %lo(.LC0)(t0)
	fmul.s ft1, ft1, ft2
	fadd.s ft1, ft0, ft1
	li t0, 2
	fcvt.s.w ft0, t0
	fdiv.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size circle_area, .-circle_area
    .align  1
    .globl  float_eq
    .type  float_eq, @function
float_eq:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB7
.LBB7:
	fsub.s a0, a0, a1
	mv a0, a0
	call float_abs
	mv a0, a0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	flt.s t0, a0, ft0
	beq t0, zero, .LBB8
	j .LBB9
.LBB8:
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fcvt.w.s a0, ft0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size float_eq, .-float_eq
    .align  1
    .globl  error
    .type  error, @function
error:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 101
	call putch
	li a0, 114
	call putch
	li a0, 114
	call putch
	li a0, 111
	call putch
	li a0, 114
	call putch
	li a0, 10
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size error, .-error
    .align  1
    .globl  ok
    .type  ok, @function
ok:
.LBB11:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 111
	call putch
	li a0, 107
	call putch
	li a0, 10
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size ok, .-ok
    .align  1
    .globl  assert
    .type  assert, @function
assert:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB13
.LBB13:
	beq a0, zero, .LBB14
	j .LBB15
.LBB14:
	call error
	j .LBB16
.LBB15:
	call ok
	j .LBB16
.LBB16:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size assert, .-assert
    .align  1
    .globl  assert_not
    .type  assert_not, @function
assert_not:
.LBB17:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB18
.LBB18:
	bne a0, zero, .LBB19
	j .LBB20
.LBB19:
	call error
	j .LBB21
.LBB20:
	call ok
	j .LBB21
.LBB21:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size assert_not, .-assert_not
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB22:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	lui t0, %hi(.LC0)
	flw a0, %lo(.LC0)(t0)
	mv a0, a0
	lui t0, %hi(.LC1)
	flw a1, %lo(.LC1)(t0)
	mv a1, a1
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	call float_eq
	mv a0, a0
	mv a0, a0
	call assert_not
	lui t0, %hi(.LC2)
	flw a0, %lo(.LC2)(t0)
	mv a0, a0
	lui t0, %hi(.LC3)
	flw a1, %lo(.LC3)(t0)
	mv a1, a1
	lui t0, %hi(.LC2)
	flw ft0, %lo(.LC2)(t0)
	lui t0, %hi(.LC3)
	flw ft0, %lo(.LC3)(t0)
	call float_eq
	mv a0, a0
	mv a0, a0
	call assert_not
	lui t0, %hi(.LC3)
	flw a0, %lo(.LC3)(t0)
	mv a0, a0
	lui t0, %hi(.LC3)
	flw a1, %lo(.LC3)(t0)
	mv a1, a1
	lui t0, %hi(.LC3)
	flw ft0, %lo(.LC3)(t0)
	call float_eq
	mv a0, a0
	mv a0, a0
	call assert
	lui t0, %hi(.LC4)
	flw ft0, %lo(.LC4)(t0)
	fcvt.w.s a0, ft0
	mv a0, a0
	call circle_area
	mv ft0, a0
	li a0, 5
	call circle_area
	mv a1, a0
	mv a0, ft0
	mv a1, a1
	call float_eq
	mv a0, a0
	mv a0, a0
	call assert
	lui t0, %hi(.LC5)
	flw a0, %lo(.LC5)(t0)
	mv a0, a0
	lui t0, %hi(.LC6)
	flw a1, %lo(.LC6)(t0)
	mv a1, a1
	lui t0, %hi(.LC5)
	flw ft0, %lo(.LC5)(t0)
	lui t0, %hi(.LC6)
	flw ft0, %lo(.LC6)(t0)
	call float_eq
	mv a0, a0
	mv a0, a0
	call assert_not
	j .LBB23
.LBB23:
	call ok
	j .LBB24
.LBB24:
	j .LBB25
.LBB25:
	call ok
	j .LBB26
.LBB26:
	j .LBB27
.LBB27:
	j .LBB28
.LBB29:
	call ok
	j .LBB30
.LBB28:
	j .LBB29
.LBB30:
	addiw a0, s0, -96
	mv a0, a0
	mv a1, a1
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -56
	addiw a0, t0, 0
	mv a0, a0
	call getfarray
	mv t2, a0
	mv t1, zero
	li t0, 1
	j .LBB31
.LBB31:
	li s1, 999993344
	addiw s1, s1, -1536
	mv s1, s1
	blt t0, s1, .LBB32
	j .LBB33
.LBB32:
	call getfloat
	mv ft1, a0
	lui t2, %hi(.LC0)
	flw ft0, %lo(.LC0)(t2)
	fmul.s ft0, ft0, ft1
	fmul.s ft0, ft0, ft1
	fcvt.w.s a0, ft1
	mv a0, a0
	call circle_area
	mv a0, a0
	addiw t2, s0, -56
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	flw ft2, 0(t2)
	fadd.s ft1, ft2, ft1
	addiw t2, s0, -56
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	fsw ft1, 0(t2)
	mv a0, ft0
	call putfloat
	li a0, 32
	call putch
	fcvt.w.s a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	fcvt.s.w ft1, t0
	lui t0, %hi(.LC7)
	flw ft0, %lo(.LC7)(t0)
	fmul.s ft0, ft1, ft0
	fcvt.w.s t0, ft0
	addiw t1, t1, 1
	mv t1, t1
	mv t0, t0
	j .LBB31
.LBB33:
	addiw t0, s0, -56
	mv a0, t2
	addiw a1, t0, 0
	mv a1, a1
	call putfarray
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
    .section    .rodata
    .align  2
.LC0:
    .word  0
    .align  2
.LC0:
    .word  1078530011
    .align  2
.LC0:
    .word  897988541
    .align  2
.LC1:
    .word  1065353216
    .align  2
.LC0:
    .word  1033895936
    .align  2
.LC1:
    .word  -956241920
    .align  2
.LC2:
    .word  1119752446
    .align  2
.LC3:
    .word  1107966695
    .align  2
.LC4:
    .word  1085276160
    .align  2
.LC5:
    .word  1130954752
    .align  2
.LC6:
    .word  1166012416
    .align  2
.LC7:
    .word  1092616192
