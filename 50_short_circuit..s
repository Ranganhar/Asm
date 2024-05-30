    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  g
    .data
    .align  2
    .type  g, @object
    .size  g, 4
g:
    .zero  4
    .text
    .align  1
    .globl  func
    .type  func, @function
func:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	addw t1, t0, a0
	lui t0, %hi(g)
	sw t1, %lo(g)(t0)
	lui t0, %hi(g)
	lw a0, %lo(g)(t0)
	mv a0, a0
	call putint
	lui t0, %hi(g)
	lw a0, %lo(g)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	li t1, 10
	blt t1, t0, .LBB3
	j .LBB4
.LBB5:
	j .LBB6
.LBB4:
	j .LBB6
.LBB3:
	mv a0, t0
	call func
	mv a0, a0
	bne a0, zero, .LBB5
	j .LBB4
.LBB6:
	call getint
	mv t0, a0
	li t1, 11
	blt t1, t0, .LBB7
	j .LBB8
.LBB9:
	j .LBB10
.LBB8:
	j .LBB10
.LBB7:
	mv a0, t0
	call func
	mv a0, a0
	bne a0, zero, .LBB9
	j .LBB8
.LBB10:
	call getint
	mv t0, a0
	li t1, 99
	bge t1, t0, .LBB11
	j .LBB12
.LBB11:
	j .LBB13
.LBB14:
	j .LBB13
.LBB12:
	mv a0, t0
	call func
	mv a0, a0
	bne a0, zero, .LBB11
	j .LBB14
.LBB13:
	call getint
	mv a0, a0
	li t0, 100
	bge t0, a0, .LBB15
	j .LBB16
.LBB15:
	j .LBB17
.LBB18:
	j .LBB17
.LBB16:
	mv a0, a0
	call func
	mv a0, a0
	bne a0, zero, .LBB15
	j .LBB18
.LBB17:
	li a0, 99
	call func
	mv a0, a0
	beq a0, zero, .LBB19
	j .LBB20
.LBB21:
	j .LBB22
.LBB20:
	j .LBB22
.LBB19:
	li a0, 100
	call func
	mv a0, a0
	bne a0, zero, .LBB21
	j .LBB20
.LBB22:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
