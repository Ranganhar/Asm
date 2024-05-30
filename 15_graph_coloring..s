    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  printSolution
    .type  printSolution, @function
printSolution:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	li t1, 4
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	li a0, 10
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size printSolution, .-printSolution
    .align  1
    .globl  printMessage
    .type  printMessage, @function
printMessage:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 78
	call putch
	li a0, 111
	call putch
	li a0, 116
	call putch
	li a0, 32
	call putch
	li a0, 101
	call putch
	li a0, 120
	call putch
	li a0, 105
	call putch
	li a0, 115
	call putch
	li a0, 116
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size printMessage, .-printMessage
    .align  1
    .globl  isSafe
    .type  isSafe, @function
isSafe:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB7
.LBB7:
	mv t0, zero
	j .LBB8
.LBB8:
	li t1, 4
	blt t0, t1, .LBB9
	j .LBB10
.LBB9:
	addiw t1, t0, 1
	mv t1, t1
	j .LBB11
.LBB10:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	li t2, 4
	blt t1, t2, .LBB12
	j .LBB13
.LBB12:
	addw t2, s0, a0
	li t2, 16
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB14
	j .LBB15
.LBB13:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB8
.LBB16:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
.LBB14:
	addw t2, s0, a1
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t0, s0, a1
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t0, 0(t0)
	beq s1, t0, .LBB16
	j .LBB15
    .size isSafe, .-isSafe
    .align  1
    .globl  graphColoring
    .type  graphColoring, @function
graphColoring:
.LBB17:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv t1, a2
	mv a3, a3
	j .LBB18
.LBB18:
	li t0, 4
	beq t1, t0, .LBB19
	j .LBB20
.LBB19:
	mv a0, a0
	mv a1, a3
	call isSafe
	mv a0, a0
	bne a0, zero, .LBB21
	j .LBB22
.LBB20:
	li t0, 1
	j .LBB23
.LBB21:
	mv a0, a3
	call printSolution
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB22:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB23:
	bge a1, t0, .LBB24
	j .LBB25
.LBB24:
	addw t2, s0, a3
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw a2, t1, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call graphColoring
	mv a0, a0
	bne a0, zero, .LBB26
	j .LBB27
.LBB25:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB27:
	addw t1, s0, a3
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB23
    .size graphColoring, .-graphColoring
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB28:
	addi sp, sp, -96
	sd ra, 88(sp)
	sd s0, 80(sp)
	addi s0, sp, 96
	addiw a0, s0, -160
	mv a0, a0
	mv a1, a1
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	mv t0, zero
	j .LBB29
.LBB29:
	li t1, 4
	blt t0, t1, .LBB30
	j .LBB31
.LBB30:
	addiw t1, s0, -32
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB29
.LBB31:
	addiw t0, s0, -96
	addiw t1, s0, -32
	addiw a0, t0, 0
	mv a0, a0
	li a1, 3
	li a2, 0
	addiw a3, t1, 0
	mv a3, a3
	call graphColoring
	mv a0, a0
	beq a0, zero, .LBB32
	j .LBB33
.LBB32:
	call printMessage
	j .LBB33
.LBB33:
	mv a0, zero
	ld ra, 88(sp)
	ld s0, 80(sp)
	addi sp, sp, 96
	ret 
    .size main, .-main
