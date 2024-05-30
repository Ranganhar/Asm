    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  myabs
    .type  myabs, @function
myabs:
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
	fcvt.s.w ft0, zero
	flt.s t0, fa0, ft0
	beq t0, zero, .LBB4
	j .LBB5
.LBB4:
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s fa0, ft0, fa0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	mv fa0, undef
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size myabs, .-myabs
    .align  1
    .globl  func
    .type  func, @function
func:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv ft0, a0
	mv a1, a1
	j .LBB7
.LBB7:
	blt a1, zero, .LBB8
	j .LBB9
.LBB8:
	fcvt.s.w fa0, zero
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	li t0, 1
	subw a1, a1, t0
	mv a0, ft0
	mv a1, a1
	call func
	mv a0, a0
	fadd.s ft1, ft0, a0
	mv a0, ft1
	mv a1, a1
	call func
	mv ft0, a0
	fsub.s fa0, ft1, ft0
	mv fa0, fa0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 21
	call _sysy_starttime
	call getint
	mv a1, a0
	lui t0, %hi(.LC0)
	flw a0, %lo(.LC0)(t0)
	mv a0, a0
	mv a1, a1
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	call func
	mv a0, a0
	lui t0, %hi(.LC0)
	flw ft0, %lo(.LC0)(t0)
	fsub.s ft1, a0, ft0
	fcvt.s.w ft0, zero
	feq.s t0, ft1, ft0
	beq t0, zero, .LBB11
	j .LBB12
.LBB11:
	li a0, 112
	call putch
	j .LBB12
.LBB12:
	li a0, 32
	call _sysy_stoptime
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
    .word  1065361605
