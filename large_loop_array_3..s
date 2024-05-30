    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  COUNT
    .data
    .align  2
    .type  COUNT, @object
    .size  COUNT, 4
COUNT:
    .word  100000
    .text
    .align  1
    .globl  loop
    .type  loop, @function
loop:
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
	lui t1, %hi(.LC0)
	flw fa0, %lo(.LC0)(t1)
	mv fa0, fa0
	j .LBB2
.LBB2:
	blt t0, a2, .LBB3
	j .LBB4
.LBB3:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft1, 0(t1)
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	fmul.s ft0, ft1, ft0
	fadd.s fa0, fa0, ft0
	addiw t0, t0, 1
	mv t0, t0
	mv fa0, fa0
	j .LBB2
.LBB4:
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size loop, .-loop
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 65536
	add sp, sp, t0
	call getint
	mv a2, a0
	li a0, 21
	call _sysy_starttime
	mv t0, zero
	mv t2, zero
	lui t1, %hi(.LC0)
	flw ft2, %lo(.LC0)(t1)
	mv ft2, ft2
	lui t1, %hi(.LC0)
	flw ft1, %lo(.LC0)(t1)
	mv ft1, ft1
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	mv ft0, ft0
	j .LBB6
.LBB6:
	lui t1, %hi(COUNT)
	lw t1, %lo(COUNT)(t1)
	blt t2, t1, .LBB7
	j .LBB8
.LBB7:
	li t1, 10
	remw t1, t2, t1
	bne t1, zero, .LBB9
	j .LBB10
.LBB8:
	li a0, 38
	call _sysy_stoptime
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fsub.s ft1, ft2, ft0
	lui t0, %hi(.LC2)
	flw ft0, %lo(.LC2)(t0)
	fle.s t0, ft1, ft0
	beq t0, zero, .LBB11
	j .LBB12
.LBB9:
	lui t1, %hi(.LC0)
	flw ft1, %lo(.LC0)(t1)
	mv ft1, ft1
	lui t1, %hi(.LC0)
	flw ft0, %lo(.LC0)(t1)
	mv ft0, ft0
	j .LBB13
.LBB10:
	lui t1, %hi(.LC3)
	flw ft3, %lo(.LC3)(t1)
	fadd.s ft1, ft1, ft3
	lui t1, %hi(.LC4)
	flw ft3, %lo(.LC4)(t1)
	fadd.s ft0, ft0, ft3
	mv ft1, ft1
	mv ft0, ft0
	j .LBB13
.LBB13:
	mv t0, t0
	j .LBB14
.LBB14:
	blt t0, a2, .LBB15
	j .LBB16
.LBB15:
	fcvt.s.w ft2, t0
	fadd.s ft1, ft1, ft2
	li t1, -65536
	addiw t1, t1, -16
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fsw ft1, 0(t1)
	fcvt.s.w ft1, t0
	fadd.s ft0, ft0, ft1
	li t1, -32768
	addiw t1, t1, -16
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fsw ft0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB14
.LBB16:
	li t0, -65536
	addiw t0, t0, -16
	addw t1, s0, t0
	li t0, -32768
	addiw t0, t0, -16
	addw t0, s0, t0
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a2
	call loop
	mv a0, a0
	fadd.s ft2, ft2, a0
	addiw t2, t2, 1
	mv t0, t0
	mv t2, t2
	mv ft2, ft2
	mv ft1, ft1
	mv ft0, ft0
	j .LBB6
.LBB17:
	li a0, 10
	call putint
	mv a0, zero
	li t0, 65536
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	li a0, 1
	call putint
	li a0, 1
	li t0, 65536
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	lui t0, %hi(.LC1)
	flw ft0, %lo(.LC1)(t0)
	fsub.s ft1, ft2, ft0
	lui t0, %hi(.LC5)
	flw ft0, %lo(.LC5)(t0)
	fge.s t0, ft1, ft0
	beq t0, zero, .LBB17
	j .LBB12
    .size main, .-main
    .section    .rodata
    .align  2
.LC0:
    .word  0
    .align  2
.LC0:
    .word  1065353216
    .align  2
.LC1:
    .word  1518488747
    .align  2
.LC2:
    .word  897988541
    .align  2
.LC3:
    .word  1036831949
    .align  2
.LC4:
    .word  1045220557
    .align  2
.LC5:
    .word  -1249495107
