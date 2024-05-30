    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  n
    .bss
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -48
	sd ra, 40(sp)
	sd s0, 32(sp)
	addi s0, sp, 48
	call getint
	mv a0, a0
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 5
	beq a0, t0, .LBB2
	j .LBB3
.LBB2:
	addiw a0, a0, 1
	mv a0, a0
	j .LBB1
.LBB3:
	addiw a0, 0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw t0, a0, 1
	sd t0, -32(s0)
	ld t0, -32(s0)
	addiw t0, t0, 1
	sd t0, -40(s0)
	ld t0, -40(s0)
	addiw a0, t0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw a0, a0, 1
	addiw t0, a0, 1
	sd t0, -48(s0)
	ld t0, -48(s0)
	addiw t0, t0, 1
	sd t0, -56(s0)
	ld t0, -56(s0)
	addiw a0, t0, 1
	li a0, 0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	ld a0, -32(s0)
	mv a0, a0
	call putint
	ld a0, -40(s0)
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	ld a0, -48(s0)
	mv a0, a0
	call putint
	ld a0, -56(s0)
	mv a0, a0
	call putint
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, a0
	ld ra, 40(sp)
	ld s0, 32(sp)
	addi sp, sp, 48
	ret 
    .size main, .-main
