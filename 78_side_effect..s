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
    .word  -1
    .globl  b
    .align  2
    .type  b, @object
    .size  b, 4
b:
    .word  1
    .text
    .align  1
    .globl  inc_a
    .type  inc_a, @function
inc_a:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	addiw t0, t0, 1
	lui t1, %hi(a)
	sw t0, %lo(a)(t1)
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size inc_a, .-inc_a
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB1:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 5
	j .LBB2
.LBB2:
	bge t1, zero, .LBB3
	j .LBB4
.LBB3:
	call inc_a
	mv t0, a0
	bne t0, zero, .LBB5
	j .LBB6
.LBB4:
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	j .LBB6
.LBB6:
	call inc_a
	mv t0, a0
	li t1, 14
	blt t0, t1, .LBB8
	j .LBB9
.LBB5:
	call inc_a
	mv t0, a0
	bne t0, zero, .LBB10
	j .LBB6
.LBB10:
	call inc_a
	mv t0, a0
	bne t0, zero, .LBB7
	j .LBB6
.LBB8:
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	lui t0, %hi(b)
	lw t2, %lo(b)(t0)
	li t0, 2
	mulw t0, t2, t0
	lui t2, %hi(b)
	sw t0, %lo(b)(t2)
	j .LBB11
.LBB12:
	call inc_a
	j .LBB11
.LBB9:
	call inc_a
	mv t0, a0
	bne t0, zero, .LBB13
	j .LBB12
.LBB13:
	call inc_a
	mv t0, a0
	call inc_a
	mv a0, a0
	subw t0, t0, a0
	addiw t0, t0, 1
	bne t0, zero, .LBB8
	j .LBB12
.LBB11:
	li t0, 1
	subw t1, t1, t0
	mv t1, t1
	j .LBB2
    .size main, .-main
