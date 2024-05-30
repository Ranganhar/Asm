    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  b
    .data
    .align  2
    .type  b, @object
    .size  b, 4
b:
    .word  5
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 16
c:
    .word  6
    .word  7
    .word  8
    .word  9
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -224
	sd ra, 216(sp)
	sd s0, 208(sp)
	addi s0, sp, 224
	li a0, 3
	call putint
	li a0, 3
	call putint
	li a0, 1
	call putint
	li a0, 10
	call putch
	j .LBB1
.LBB1:
	li t2, 1
	li t1, 5
	blt t2, t1, .LBB2
	j .LBB3
.LBB2:
	addiw t0, 0, 1
	bne t0, zero, .LBB4
	j .LBB5
.LBB3:
	li a0, 1
	call putint
	li a0, 10
	call putch
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t2, s0, t1
	li t1, 1
	sw t1, 8(t2)
	addiw a0, s0, -144
	mv a0, a0
	mv a1, a1
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	lw t1, 8(t1)
	bne t1, zero, .LBB6
	j .LBB7
.LBB4:
	j .LBB3
.LBB5:
	j .LBB1
.LBB6:
	addiw a0, s0, -360
	mv a0, a0
	mv a1, t0
	li a2, 140
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -220
	lw a0, 40(t0)
	mv a0, a0
	call putint
	addiw t0, s0, -220
	lw a0, 44(t0)
	mv a0, a0
	call putint
	addiw t0, s0, -220
	lw a0, 48(t0)
	mv a0, a0
	call putint
	j .LBB7
.LBB7:
	li a0, 10
	call putch
	lui t0, %hi(b)
	lw a0, %lo(b)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	lui t0, %hi(c)
	addi t0, t0, %lo(c)
	addw t0, s0, t0
	lw a0, 0(t0)
	mv a0, a0
	call putint
	lui t0, %hi(c)
	addi t0, t0, %lo(c)
	addw t0, s0, t0
	lw a0, 4(t0)
	mv a0, a0
	call putint
	lui t0, %hi(c)
	addi t0, t0, %lo(c)
	addw t0, s0, t0
	lw a0, 8(t0)
	mv a0, a0
	call putint
	lui t0, %hi(c)
	addi t0, t0, %lo(c)
	addw t0, s0, t0
	lw a0, 12(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 216(sp)
	ld s0, 208(sp)
	addi sp, sp, 224
	ret 
    .size main, .-main
