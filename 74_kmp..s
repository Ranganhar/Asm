    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  get_next
    .type  get_next, @function
get_next:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	addw t1, s0, a1
	li t0, -1
	sw t0, 0(t1)
	mv t1, zero
	li t0, -1
	j .LBB2
.LBB2:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB3
	j .LBB4
.LBB3:
	li t2, -1
	beq t0, t2, .LBB5
	j .LBB6
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	addiw t0, t0, 1
	addiw t1, t1, 1
	addw t2, s0, a1
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	mv t1, t1
	mv t0, t0
	j .LBB7
.LBB8:
	addw t0, s0, a1
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t1, t1
	mv t0, t0
	j .LBB7
.LBB6:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	beq s1, t2, .LBB5
	j .LBB8
.LBB7:
	mv t1, t1
	mv t0, t0
	j .LBB2
    .size get_next, .-get_next
    .align  1
    .globl  KMP
    .type  KMP, @function
KMP:
.LBB9:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 16384
	add sp, sp, t0
	mv a0, a0
	mv a1, a1
	j .LBB10
.LBB10:
	li t0, -16384
	addiw t0, t0, -16
	addw t0, s0, t0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call get_next
	mv t0, zero
	mv t1, zero
	j .LBB11
.LBB11:
	addw t2, s0, a1
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB12
	j .LBB13
.LBB12:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s0, a1
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	beq t2, s1, .LBB14
	j .LBB15
.LBB13:
	li a0, -1
	li t0, 16384
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB14:
	addiw t0, t0, 1
	addiw t1, t1, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	beq t2, zero, .LBB16
	j .LBB17
.LBB15:
	li t0, -16384
	addiw t0, t0, -16
	addw t0, s0, t0
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, -1
	beq t0, t1, .LBB18
	j .LBB21
.LBB16:
	mv a0, t1
	li t0, 16384
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	mv t0, t0
	mv t1, t1
	j .LBB20
.LBB20:
	mv t0, t0
	mv t1, t1
	j .LBB11
.LBB18:
	addiw t0, t0, 1
	addiw t1, t1, 1
	mv t0, t0
	mv t1, t1
	j .LBB19
.LBB19:
	mv t0, t0
	mv t1, t1
	j .LBB20
.LBB21:
	mv t0, t0
	mv t1, t1
	j .LBB19
    .size KMP, .-KMP
    .align  1
    .globl  read_str
    .type  read_str, @function
read_str:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB23
.LBB23:
	mv t1, zero
	j .LBB24
.LBB24:
	j .LBB25
.LBB25:
	call getch
	mv a0, a0
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li t0, 10
	beq t2, t0, .LBB26
	j .LBB27
.LBB28:
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t2, 0
	sw t2, 0(t0)
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	j .LBB28
.LBB27:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB24
    .size read_str, .-read_str
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB29:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, 32768
	add sp, sp, t0
	li t0, -32768
	addiw t0, t0, -16
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call read_str
	li t0, -16384
	addiw t0, t0, -16
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call read_str
	li t0, -32768
	addiw t0, t0, -16
	addw t0, s0, t0
	li t1, -16384
	addiw t1, t1, -16
	addw t1, s0, t1
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call KMP
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	li t0, 32768
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
