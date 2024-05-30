    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .data
    .align  2
    .type  a, @object
    .size  a, 4
a:
    .word  7
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
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	li t1, 1
	beq t1, t0, .LBB1
	j .LBB2
.LBB1:
	addiw t0, 1, 1
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB2:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB3:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, zero
	mv t0, zero
	j .LBB4
.LBB4:
	li t2, 100
	blt t0, t2, .LBB5
	j .LBB6
.LBB5:
	call func
	mv a0, a0
	li t0, 1
	beq a0, t0, .LBB7
	j .LBB12
.LBB6:
	li t0, 100
	blt t1, t0, .LBB9
	j .LBB10
.LBB7:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB8
.LBB8:
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB4
.LBB9:
	li a0, 1
	call putint
	j .LBB11
.LBB10:
	li a0, 0
	call putint
	j .LBB11
.LBB11:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	mv t1, t1
	j .LBB8
    .size main, .-main
