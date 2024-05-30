    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  loopCount
    .data
    .align  2
    .type  loopCount, @object
    .size  loopCount, 4
loopCount:
    .zero  4
    .globl  global
    .align  2
    .type  global, @object
    .size  global, 4
global:
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
	lui t0, %hi(global)
	sw a0, %lo(global)(t0)
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
	mv a0, a0
	lui t0, %hi(loopCount)
	sw a0, %lo(loopCount)(t0)
	li a0, 98304
	addiw a0, a0, 1712
	mv a0, a0
	call _sysy_starttime
	mv t2, zero
	mv a0, zero
	j .LBB3
.LBB3:
	lui t0, %hi(loopCount)
	lw t0, %lo(loopCount)(t0)
	blt a0, t0, .LBB4
	j .LBB5
.LBB4:
	mv t1, zero
	mv t0, zero
	j .LBB6
.LBB5:
	li a0, 98304
	addiw a0, a0, 1728
	mv a0, a0
	call _sysy_stoptime
	mv a0, t2
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB6:
	li s1, 60
	blt t0, s1, .LBB7
	j .LBB8
.LBB7:
	mv a0, a0
	call func
	lui t2, %hi(global)
	lw t2, %lo(global)(t2)
	addw t1, t1, t2
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB6
.LBB8:
	li t0, 60
	divw t0, t1, t0
	addw t1, t2, t0
	li t0, 134209536
	addiw t0, t0, 1
	mv t0, t0
	remw t2, t1, t0
	addiw a0, a0, 1
	mv t2, t2
	mv a0, a0
	j .LBB3
    .size main, .-main
