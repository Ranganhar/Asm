    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  M
    .bss
    .align  2
    .type  M, @object
    .size  M, 4
M:
    .zero  4
    .globl  L
    .align  2
    .type  L, @object
    .size  L, 4
L:
    .zero  4
    .globl  N
    .align  2
    .type  N, @object
    .size  N, 4
N:
    .zero  4
    .text
    .align  1
    .globl  tran
    .type  tran, @function
tran:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	ld t1, 0(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB1
.LBB1:
	addw t0, s0, a2
	flw ft0, 4(t0)
	addw t0, s0, a7
	fsw ft0, 8(t0)
	addw t0, s0, a1
	flw ft0, 8(t0)
	addw t0, s0, t1
	fsw ft0, 4(t0)
	addw t0, s0, a1
	flw ft0, 0(t0)
	addw t0, s0, a6
	fsw ft0, 4(t0)
	addw t0, s0, a2
	flw ft0, 0(t0)
	addw t0, s0, a6
	fsw ft0, 8(t0)
	addw t0, s0, a0
	flw ft0, 4(t0)
	addw t0, s0, a7
	fsw ft0, 0(t0)
	addw t0, s0, a0
	flw ft0, 8(t0)
	addw t0, s0, t1
	fsw ft0, 0(t0)
	addw t0, s0, a1
	flw ft0, 4(t0)
	addw t0, s0, a7
	fsw ft0, 4(t0)
	addw t0, s0, a2
	flw ft0, 8(t0)
	addw t0, s0, t1
	fsw ft0, 8(t0)
	addw t0, s0, a0
	flw ft0, 0(t0)
	addw t0, s0, a6
	fsw ft0, 0(t0)
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size tran, .-tran
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -144
	sd ra, 136(sp)
	sd s0, 128(sp)
	addi s0, sp, 144
	li t1, 3
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	li t1, 3
	lui t0, %hi(M)
	sw t1, %lo(M)(t0)
	li t0, 3
	lui t1, %hi(L)
	sw t0, %lo(L)(t1)
	mv t0, zero
	j .LBB3
.LBB3:
	lui t1, %hi(M)
	lw t1, %lo(M)(t1)
	blt t0, t1, .LBB4
	j .LBB5
.LBB4:
	addiw t1, s0, -112
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t1, s0, -100
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t1, s0, -88
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t1, s0, -76
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t1, s0, -64
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t1, s0, -52
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	fcvt.s.w ft0, t0
	fsw ft0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB3
.LBB5:
	addiw t1, s0, -112
	addiw a4, s0, -100
	addiw t2, s0, -88
	addiw a3, s0, -76
	addiw a2, s0, -64
	addiw s1, s0, -52
	addiw a1, s0, -136
	addiw t0, s0, -40
	addiw t0, s0, -28
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, a4, 0
	mv a1, a1
	addiw a2, t2, 0
	mv a2, a2
	addiw a3, a3, 0
	mv a3, a3
	addiw a4, a2, 0
	mv a4, a4
	addiw a5, s1, 0
	mv a5, a5
	addiw a6, a1, 0
	mv a6, a6
	addiw a7, t0, 0
	mv a7, a7
	call tran
	mv t0, a0
	mv t0, t0
	j .LBB6
.LBB6:
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	blt t0, t1, .LBB7
	j .LBB8
.LBB7:
	addiw t1, s0, -136
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	fcvt.w.s a0, ft0
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB6
.LBB8:
	li a0, 10
	call putch
	mv t0, zero
	j .LBB9
.LBB9:
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	blt t0, t1, .LBB10
	j .LBB11
.LBB10:
	addiw t1, s0, -40
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	fcvt.w.s a0, ft0
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB9
.LBB11:
	li a0, 10
	call putch
	mv t0, zero
	j .LBB12
.LBB12:
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	blt t0, t1, .LBB13
	j .LBB14
.LBB13:
	addiw t1, s0, -28
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	fcvt.w.s a0, ft0
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB12
.LBB14:
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 136(sp)
	ld s0, 128(sp)
	addi sp, sp, 144
	ret 
    .size main, .-main
