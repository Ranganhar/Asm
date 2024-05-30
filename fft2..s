    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  d
    .bss
    .align  2
    .type  d, @object
    .size  d, 4
d:
    .zero  4
    .globl  temp
    .align  3
    .type  temp, @object
    .size  temp, 8388608
temp:
    .zero  8388608
    .globl  a
    .align  3
    .type  a, @object
    .size  a, 8388608
a:
    .zero  8388608
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 8388608
b:
    .zero  8388608
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 8388608
c:
    .zero  8388608
    .text
    .align  1
    .globl  multiply
    .type  multiply, @function
multiply:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv t1, a1
	j .LBB1
.LBB1:
	beq t1, zero, .LBB2
	j .LBB3
.LBB2:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	li t2, 1
	beq t1, t2, .LBB4
	j .LBB5
.LBB4:
	li t1, 998244352
	addiw t1, t1, 1
	mv t1, t1
	remw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	li t2, 2
	divw a1, t1, t2
	mv a0, t0
	mv a1, a1
	call multiply
	mv a0, a0
	addw t2, a0, a0
	li s1, 998244352
	addiw s1, s1, 1
	mv s1, s1
	remw a0, t2, s1
	li t2, 2
	remw t1, t1, t2
	li t2, 1
	beq t1, t2, .LBB6
	j .LBB7
.LBB6:
	addw t1, a0, t0
	li t0, 998244352
	addiw t0, t0, 1
	mv t0, t0
	remw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size multiply, .-multiply
    .align  1
    .globl  power
    .type  power, @function
power:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv t1, a1
	j .LBB9
.LBB9:
	beq t1, zero, .LBB10
	j .LBB11
.LBB10:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB11:
	li t2, 2
	divw a1, t1, t2
	mv a0, t0
	mv a1, a1
	call power
	mv a1, a0
	mv a0, a1
	mv a1, a1
	call multiply
	mv a0, a0
	li t2, 2
	remw t1, t1, t2
	li t2, 1
	beq t1, t2, .LBB12
	j .LBB13
.LBB12:
	mv a0, a0
	mv a1, t0
	call multiply
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size power, .-power
    .align  1
    .globl  memmove
    .type  memmove, @function
memmove:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB15
.LBB15:
	mv t0, zero
	j .LBB16
.LBB16:
	blt t0, a3, .LBB17
	j .LBB18
.LBB17:
	addw t1, s0, a2
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	addw t2, a1, t0
	addw t1, s0, a0
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB18:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size memmove, .-memmove
    .align  1
    .globl  fft
    .type  fft, @function
fft:
.LBB19:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv s1, a0
	mv a5, a1
	mv a4, a2
	mv a1, a3
	j .LBB20
.LBB20:
	li t0, 1
	beq a4, t0, .LBB21
	j .LBB22
.LBB21:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB22:
	mv t0, zero
	j .LBB23
.LBB23:
	blt t0, a4, .LBB24
	j .LBB25
.LBB24:
	li t1, 2
	remw t1, t0, t1
	beq t1, zero, .LBB26
	j .LBB27
.LBB25:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	mv a0, s1
	mv a1, a5
	addiw a2, t0, 0
	mv a2, a2
	mv a3, a4
	call memmove
	li t0, 2
	divw a2, a4, t0
	mv a0, a1
	mv a1, a1
	call multiply
	mv a3, a0
	mv a0, s1
	mv a1, a5
	mv a2, a2
	mv a3, a3
	call fft
	li t0, 2
	divw t0, a4, t0
	addw t0, a5, t0
	li t1, 2
	divw a2, a4, t1
	mv a0, a1
	mv a1, a1
	call multiply
	mv a3, a0
	mv a0, s1
	mv a1, t0
	mv a2, a2
	mv a3, a3
	call fft
	li t2, 1
	mv t0, zero
	j .LBB28
.LBB26:
	addw t1, t0, a5
	addw t1, s0, s1
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 2
	divw t2, t0, t1
	lui t1, %hi(temp)
	addi t1, t1, %lo(temp)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	j .LBB29
.LBB27:
	addw t2, t0, a5
	addw t1, s0, s1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, 2
	divw s1, a4, t1
	li t1, 2
	divw t1, t0, t1
	addw s1, s1, t1
	lui t1, %hi(temp)
	addi t1, t1, %lo(temp)
	addw t1, s0, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	j .LBB29
.LBB29:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB23
.LBB28:
	li t1, 2
	divw t1, a4, t1
	blt t0, t1, .LBB30
	j .LBB31
.LBB30:
	addw a0, a5, t0
	addw t1, s0, s1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw a3, 0(t1)
	addw a0, a5, t0
	li t1, 2
	divw t1, a4, t1
	addw a0, a0, t1
	addw t1, s0, s1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv a0, t2
	mv a1, t1
	call multiply
	mv a0, a0
	addw a2, a3, a0
	li a0, 998244352
	addiw a0, a0, 1
	mv a0, a0
	remw a2, a2, a0
	addw a6, a5, t0
	addw a0, s0, s1
	li a0, 4
	mulw a0, a6, a0
	addw a0, a0, a0
	sw a2, 0(a0)
	mv a0, t2
	mv a1, t1
	call multiply
	mv a0, a0
	subw t1, a3, a0
	li a0, 998244352
	addiw a0, a0, 1
	addw a0, t1, a0
	li t1, 998244352
	addiw t1, t1, 1
	mv t1, t1
	remw a2, a0, t1
	addw a0, a5, t0
	li t1, 2
	divw t1, a4, t1
	addw t1, a0, t1
	addw t1, s0, s1
	li s1, 4
	mulw t1, t1, s1
	addw t1, t1, t1
	sw a2, 0(t1)
	mv a0, t2
	mv a1, a1
	call multiply
	mv t2, a0
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	j .LBB28
.LBB31:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size fft, .-fft
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB32:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv t2, a0
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv t1, a0
	li a0, 60
	call _sysy_starttime
	li t0, 1
	lui s1, %hi(d)
	sw t0, %lo(d)(s1)
	j .LBB33
.LBB33:
	lui t0, %hi(d)
	lw a0, %lo(d)(t0)
	addw s1, t2, t1
	li t0, 1
	subw t0, s1, t0
	blt a0, t0, .LBB34
	j .LBB35
.LBB34:
	lui t0, %hi(d)
	lw t0, %lo(d)(t0)
	li s1, 2
	mulw s1, t0, s1
	lui t0, %hi(d)
	sw s1, %lo(d)(t0)
	j .LBB33
.LBB35:
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	lui s1, %hi(d)
	lw a2, %lo(d)(s1)
	lui s1, %hi(d)
	lw s1, %lo(d)(s1)
	li t1, 998244352
	divw a1, t1, s1
	li a0, 3
	mv a1, a1
	call power
	mv a3, a0
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	mv a2, a2
	mv a3, a3
	call fft
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	lui s1, %hi(d)
	lw a2, %lo(d)(s1)
	lui s1, %hi(d)
	lw s1, %lo(d)(s1)
	li t1, 998244352
	divw a1, t1, s1
	li a0, 3
	mv a1, a1
	call power
	mv a3, a0
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	mv a2, a2
	mv a3, a3
	call fft
	mv t0, zero
	j .LBB36
.LBB36:
	lui s1, %hi(d)
	lw s1, %lo(d)(s1)
	blt t0, s1, .LBB37
	j .LBB38
.LBB37:
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call multiply
	mv a0, a0
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB36
.LBB38:
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	lui s1, %hi(d)
	lw a2, %lo(d)(s1)
	lui s1, %hi(d)
	lw s1, %lo(d)(s1)
	li t1, 998244352
	divw s1, t1, s1
	li t1, 998244352
	subw a1, t1, s1
	li a0, 3
	mv a1, a1
	call power
	mv a3, a0
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	mv a2, a2
	mv a3, a3
	call fft
	mv t0, zero
	j .LBB39
.LBB39:
	lui s1, %hi(d)
	lw s1, %lo(d)(s1)
	blt t0, s1, .LBB40
	j .LBB41
.LBB40:
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	lui t2, %hi(d)
	lw a0, %lo(d)(t2)
	mv a0, a0
	li a1, 998236160
	addiw a1, a1, -1
	mv a1, a1
	call power
	mv a1, a0
	mv a0, t1
	mv a1, a1
	call multiply
	mv a0, a0
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB39
.LBB41:
	li a0, 79
	call _sysy_stoptime
	addw t1, t2, t1
	li t0, 1
	subw a0, t1, t0
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
