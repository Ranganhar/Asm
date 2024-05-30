    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  func1
    .type  func1, @function
func1:
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
	beq a2, zero, .LBB2
	j .LBB3
.LBB2:
	mulw a0, a0, a1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	subw a1, a1, a2
	mv a0, a0
	mv a1, a1
	li a2, 0
	call func1
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func1, .-func1
    .align  1
    .globl  func2
    .type  func2, @function
func2:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB5
.LBB5:
	bne a1, zero, .LBB6
	j .LBB7
.LBB6:
	remw a0, a0, a1
	mv a0, a0
	li a1, 0
	call func2
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func2, .-func2
    .align  1
    .globl  func3
    .type  func3, @function
func3:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB9
.LBB9:
	beq a1, zero, .LBB10
	j .LBB11
.LBB10:
	addiw a0, a0, 1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	addw a0, a0, a1
	mv a0, a0
	li a1, 0
	call func3
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func3, .-func3
    .align  1
    .globl  func4
    .type  func4, @function
func4:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB13
.LBB13:
	bne a0, zero, .LBB14
	j .LBB15
.LBB14:
	mv a0, a1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	mv a0, a2
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func4, .-func4
    .align  1
    .globl  func5
    .type  func5, @function
func5:
.LBB16:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB17
.LBB17:
	subw a0, zero, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func5, .-func5
    .align  1
    .globl  func6
    .type  func6, @function
func6:
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB19
.LBB19:
	bne a0, zero, .LBB20
	j .LBB21
.LBB22:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB21:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB20:
	bne a1, zero, .LBB22
	j .LBB21
    .size func6, .-func6
    .align  1
    .globl  func7
    .type  func7, @function
func7:
.LBB23:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB24
.LBB24:
	beq a0, zero, .LBB25
	j .LBB26
.LBB25:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func7, .-func7
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB27:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	call getint
	mv a3, a0
	call getint
	mv a7, a0
	call getint
	mv a6, a0
	call getint
	mv a1, a0
	mv t1, zero
	j .LBB28
.LBB28:
	li t0, 10
	blt t1, t0, .LBB29
	j .LBB30
.LBB29:
	call getint
	mv t0, a0
	addiw t2, s0, -56
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB28
.LBB30:
	mv a0, a3
	call func7
	mv t1, a0
	mv a0, a7
	call func5
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call func6
	mv a0, a0
	mv a0, a0
	mv a1, a6
	call func2
	mv a0, a0
	mv a0, a0
	mv a1, a1
	call func3
	mv a0, a0
	mv a0, a0
	call func5
	mv a5, a0
	addiw t0, s0, -56
	lw t2, 0(t0)
	addiw t0, s0, -56
	lw a0, 4(t0)
	mv a0, a0
	call func5
	mv a4, a0
	addiw t0, s0, -56
	lw t0, 8(t0)
	addiw t1, s0, -56
	lw a0, 12(t1)
	mv a0, a0
	call func7
	mv t1, a0
	mv a0, t0
	mv a1, t1
	call func6
	mv s1, a0
	addiw t0, s0, -56
	lw t0, 16(t0)
	addiw t1, s0, -56
	lw a0, 20(t1)
	mv a0, a0
	call func7
	mv t1, a0
	mv a0, t0
	mv a1, t1
	call func2
	mv a2, a0
	mv a0, a4
	mv a1, s1
	mv a2, a2
	call func4
	mv a0, a0
	addiw t0, s0, -56
	lw t0, 24(t0)
	mv a0, a0
	mv a1, t0
	call func3
	mv a0, a0
	addiw t0, s0, -56
	lw t0, 28(t0)
	mv a0, a0
	mv a1, t0
	call func2
	mv s1, a0
	addiw t0, s0, -56
	lw t0, 32(t0)
	addiw t1, s0, -56
	lw a0, 36(t1)
	mv a0, a0
	call func7
	mv t1, a0
	mv a0, t0
	mv a1, t1
	call func3
	mv t0, a0
	mv a0, s1
	mv a1, t0
	mv a2, a3
	call func1
	mv a2, a0
	mv a0, a5
	mv a1, t2
	mv a2, a2
	call func4
	mv t1, a0
	mv a0, a6
	call func7
	mv t0, a0
	mv a0, t0
	mv a1, a1
	call func3
	mv a1, a0
	mv a0, a7
	mv a1, a1
	call func2
	mv a1, a0
	mv a0, t1
	mv a1, a1
	call func3
	mv t0, a0
	addiw t1, s0, -56
	lw a1, 0(t1)
	addiw t1, s0, -56
	lw a2, 4(t1)
	mv a0, t0
	mv a1, a1
	mv a2, a2
	call func1
	mv t0, a0
	addiw t1, s0, -56
	lw a1, 8(t1)
	mv a0, t0
	mv a1, a1
	call func2
	mv s1, a0
	addiw t0, s0, -56
	lw a1, 12(t0)
	addiw t0, s0, -56
	lw t1, 16(t0)
	addiw t0, s0, -56
	lw t0, 20(t0)
	mv a0, t0
	call func5
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call func3
	mv t1, a0
	addiw t0, s0, -56
	lw t0, 24(t0)
	mv a0, t0
	call func5
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call func2
	mv t2, a0
	addiw t0, s0, -56
	lw t1, 28(t0)
	addiw t0, s0, -56
	lw t0, 32(t0)
	mv a0, t0
	call func7
	mv a2, a0
	mv a0, t2
	mv a1, t1
	mv a2, a2
	call func1
	mv t1, a0
	addiw t0, s0, -56
	lw t0, 36(t0)
	mv a0, t0
	call func5
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call func2
	mv t0, a0
	mv a0, t0
	mv a1, a3
	call func3
	mv a2, a0
	mv a0, s1
	mv a1, a1
	mv a2, a2
	call func1
	mv t0, a0
	mv a0, t0
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
    .size main, .-main
