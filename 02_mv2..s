    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  x
    .bss
    .align  2
    .type  x, @object
    .size  x, 4
x:
    .zero  4
    .globl  A
    .align  3
    .type  A, @object
    .size  A, 16160400
A:
    .zero  16160400
    .globl  B
    .align  3
    .type  B, @object
    .size  B, 8040
B:
    .zero  8040
    .globl  C
    .align  3
    .type  C, @object
    .size  C, 8040
C:
    .zero  8040
    .text
    .align  1
    .globl  mv
    .type  mv, @function
mv:
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
	addw t1, s0, a3
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	li t2, 11
	mv t0, zero
	mv t1, zero
	j .LBB5
.LBB5:
	blt t1, a0, .LBB6
	j .LBB7
.LBB6:
	mv t2, t2
	mv t0, t0
	mv t0, zero
	j .LBB8
.LBB7:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB8:
	blt t0, a0, .LBB9
	j .LBB10
.LBB9:
	addw s1, s0, a1
	li s1, 0
	addiw s1, s1, -152
	mv s1, s1
	mulw s1, t1, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	beq s1, zero, .LBB11
	j .LBB12
.LBB10:
	addiw t1, t1, 1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB5
.LBB11:
	addw t1, s0, a2
	li s1, 4
	mulw t1, t1, s1
	addw t1, t1, t1
	lw t1, 0(t1)
	mulw t2, t2, t1
	addw t1, s0, a2
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t2, t1
	subw t0, t0, t2
	mv t2, t2
	mv t0, t0
	j .LBB13
.LBB12:
	addw s1, s0, a3
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw a4, 0(s1)
	addw s1, s0, a1
	li s1, 0
	addiw s1, s1, -152
	mv s1, s1
	mulw s1, t1, s1
	addw s1, s1, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw a1, 0(s1)
	addw s1, s0, a2
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	mulw s1, a1, s1
	addw s1, a4, s1
	addw t1, s0, a3
	li a1, 4
	mulw t1, t1, a1
	addw t1, t1, t1
	sw s1, 0(t1)
	mv t2, t2
	mv t0, t0
	j .LBB13
.LBB13:
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t0, t0
	j .LBB8
    .size mv, .-mv
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a1, a0
	mv t0, zero
	j .LBB15
.LBB15:
	blt t0, a1, .LBB16
	j .LBB17
.LBB16:
	mv t1, zero
	j .LBB18
.LBB17:
	mv t0, zero
	j .LBB19
.LBB18:
	blt t1, a1, .LBB20
	j .LBB21
.LBB20:
	call getint
	mv a0, a0
	lui t2, %hi(A)
	addi t2, t2, %lo(A)
	addw t0, s0, t2
	li t2, 0
	addiw t2, t2, -152
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB18
.LBB21:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB15
.LBB19:
	blt t0, a1, .LBB22
	j .LBB23
.LBB22:
	call getint
	mv a0, a0
	lui t1, %hi(B)
	addi t1, t1, %lo(B)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB19
.LBB23:
	li a0, 59
	call _sysy_starttime
	mv s1, zero
	j .LBB24
.LBB24:
	li t0, 50
	blt s1, t0, .LBB25
	j .LBB26
.LBB25:
	lui t0, %hi(A)
	addi t0, t0, %lo(A)
	addw t0, s0, t0
	lui t1, %hi(B)
	addi t1, t1, %lo(B)
	addw t2, s0, t1
	lui t1, %hi(C)
	addi t1, t1, %lo(C)
	addw t1, s0, t1
	mv a0, a1
	addiw a1, t0, 0
	mv a1, a1
	addiw a2, t2, 0
	mv a2, a2
	addiw a3, t1, 0
	mv a3, a3
	call mv
	lui t0, %hi(A)
	addi t0, t0, %lo(A)
	addw t2, s0, t0
	lui t0, %hi(C)
	addi t0, t0, %lo(C)
	addw t0, s0, t0
	lui t1, %hi(B)
	addi t1, t1, %lo(B)
	addw t1, s0, t1
	mv a0, a1
	addiw a1, t2, 0
	mv a1, a1
	addiw a2, t0, 0
	mv a2, a2
	addiw a3, t1, 0
	mv a3, a3
	call mv
	addiw s1, s1, 1
	mv s1, s1
	j .LBB24
.LBB26:
	li a0, 67
	call _sysy_stoptime
	lui t0, %hi(C)
	addi t0, t0, %lo(C)
	addw t0, s0, t0
	mv a0, a1
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
