    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  A
    .bss
    .align  3
    .type  A, @object
    .size  A, 4194304
A:
    .zero  4194304
    .globl  B
    .align  3
    .type  B, @object
    .size  B, 4194304
B:
    .zero  4194304
    .globl  C
    .align  3
    .type  C, @object
    .size  C, 4194304
C:
    .zero  4194304
    .text
    .align  1
    .globl  mm
    .type  mm, @function
mm:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	blt t0, a0, .LBB3
	j .LBB4
.LBB3:
	mv t1, zero
	j .LBB5
.LBB4:
	mv t2, zero
	j .LBB6
.LBB5:
	blt t1, a0, .LBB7
	j .LBB8
.LBB7:
	addw t0, s0, a3
	li t2, 4096
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t2, 0
	sw t2, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB5
.LBB8:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB6:
	blt t2, a0, .LBB9
	j .LBB10
.LBB9:
	mv t1, zero
	j .LBB11
.LBB10:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	blt t1, a0, .LBB12
	j .LBB13
.LBB12:
	addw t0, s0, a1
	li t0, 4096
	mulw t0, t1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, zero, .LBB14
	j .LBB15
.LBB13:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB6
.LBB14:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
.LBB15:
	mv t0, zero
	j .LBB16
.LBB16:
	blt t0, a0, .LBB17
	j .LBB18
.LBB17:
	addw s1, s0, a3
	li s1, 4096
	mulw s1, t1, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw a4, 0(s1)
	addw s1, s0, a1
	li s1, 4096
	mulw s1, t1, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw a1, 0(s1)
	addw t2, s0, a2
	li s1, 4096
	mulw t2, t2, s1
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	mulw t2, a1, t2
	addw s1, a4, t2
	addw t1, s0, a3
	li t2, 4096
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB18:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
    .size mm, .-mm
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB19:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a1, a0
	mv t0, zero
	j .LBB20
.LBB20:
	blt t0, a1, .LBB21
	j .LBB22
.LBB21:
	mv t1, zero
	j .LBB23
.LBB22:
	mv t0, zero
	j .LBB24
.LBB23:
	blt t1, a1, .LBB25
	j .LBB26
.LBB25:
	call getint
	mv a0, a0
	lui t2, %hi(A)
	addi t2, t2, %lo(A)
	addw t0, s0, t2
	li t2, 4096
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB23
.LBB26:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB20
.LBB24:
	blt t0, a1, .LBB27
	j .LBB28
.LBB27:
	mv t1, zero
	j .LBB29
.LBB28:
	li a0, 65
	call _sysy_starttime
	mv s1, zero
	j .LBB30
.LBB29:
	blt t1, a1, .LBB31
	j .LBB32
.LBB31:
	call getint
	mv a0, a0
	lui t2, %hi(B)
	addi t2, t2, %lo(B)
	addw t0, s0, t2
	li t2, 4096
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB29
.LBB32:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB24
.LBB30:
	li t0, 5
	blt s1, t0, .LBB33
	j .LBB34
.LBB33:
	lui t0, %hi(A)
	addi t0, t0, %lo(A)
	addw t2, s0, t0
	lui t0, %hi(B)
	addi t0, t0, %lo(B)
	addw t0, s0, t0
	lui t1, %hi(C)
	addi t1, t1, %lo(C)
	addw t1, s0, t1
	mv a0, a1
	addiw a1, t2, 0
	mv a1, a1
	addiw a2, t0, 0
	mv a2, a2
	addiw a3, t1, 0
	mv a3, a3
	call mm
	lui t0, %hi(A)
	addi t0, t0, %lo(A)
	addw t1, s0, t0
	lui t0, %hi(C)
	addi t0, t0, %lo(C)
	addw t2, s0, t0
	lui t0, %hi(B)
	addi t0, t0, %lo(B)
	addw t0, s0, t0
	mv a0, a1
	addiw a1, t1, 0
	mv a1, a1
	addiw a2, t2, 0
	mv a2, a2
	addiw a3, t0, 0
	mv a3, a3
	call mm
	addiw s1, s1, 1
	mv s1, s1
	j .LBB30
.LBB34:
	mv t0, zero
	mv a0, zero
	j .LBB35
.LBB35:
	blt t0, a1, .LBB36
	j .LBB37
.LBB36:
	mv t1, zero
	mv a0, a0
	j .LBB38
.LBB37:
	li a0, 84
	call _sysy_stoptime
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB38:
	blt t1, a1, .LBB39
	j .LBB40
.LBB39:
	lui t2, %hi(B)
	addi t2, t2, %lo(B)
	addw t0, s0, t2
	li t2, 4096
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, a0, t0
	addiw t1, t1, 1
	mv t1, t1
	mv a0, a0
	j .LBB38
.LBB40:
	addiw t0, t0, 1
	mv t0, t0
	mv a0, a0
	j .LBB35
    .size main, .-main
