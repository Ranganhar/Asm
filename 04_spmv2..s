    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  x
    .bss
    .align  3
    .type  x, @object
    .size  x, 400040
x:
    .zero  400040
    .globl  y
    .align  3
    .type  y, @object
    .size  y, 12000000
y:
    .zero  12000000
    .globl  v
    .align  3
    .type  v, @object
    .size  v, 12000000
v:
    .zero  12000000
    .globl  a
    .align  3
    .type  a, @object
    .size  a, 400040
a:
    .zero  400040
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 400040
b:
    .zero  400040
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 400040
c:
    .zero  400040
    .text
    .align  1
    .globl  spmv
    .type  spmv, @function
spmv:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	blt t0, a0, .LBB3
	j .LBB4
.LBB3:
	addw t2, s0, a5
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 0
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	mv t0, zero
	j .LBB5
.LBB5:
	blt t0, a0, .LBB6
	j .LBB7
.LBB6:
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv t1, t1
	j .LBB8
.LBB7:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB8:
	addiw s1, t0, 1
	addw t2, s0, a1
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t1, t2, .LBB9
	j .LBB10
.LBB9:
	addw t2, s0, a2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t2, s0, a5
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a3
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s1, t2
	addw t2, s0, a2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t2, s0, a5
	li a0, 4
	mulw t2, t2, a0
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB8
.LBB10:
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv t1, t1
	j .LBB11
.LBB11:
	addiw t2, t0, 1
	addw t2, s0, a1
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t1, t2, .LBB12
	j .LBB13
.LBB12:
	addw t2, s0, a2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a5
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	addw t2, s0, a3
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a4
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a3, 0(t2)
	li t2, 1
	subw t2, a3, t2
	mulw t2, s1, t2
	addw s1, a0, t2
	addw t2, s0, a2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	addw t2, s0, a5
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB11
.LBB13:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
    .size spmv, .-spmv
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv a0, a0
	li t0, 1
	subw a0, a0, t0
	lui t0, %hi(y)
	addi t0, t0, %lo(y)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	lui t0, %hi(v)
	addi t0, t0, %lo(v)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	li a0, 39
	call _sysy_starttime
	mv a2, zero
	j .LBB15
.LBB15:
	li t0, 100
	blt a2, t0, .LBB16
	j .LBB17
.LBB16:
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw a1, s0, t0
	lui t0, %hi(y)
	addi t0, t0, %lo(y)
	addw s1, s0, t0
	lui t0, %hi(v)
	addi t0, t0, %lo(v)
	addw t2, s0, t0
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t1, s0, t0
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	mv a0, a0
	addiw a1, a1, 0
	mv a1, a1
	addiw a2, s1, 0
	mv a2, a2
	addiw a3, t2, 0
	mv a3, a3
	addiw a4, t1, 0
	mv a4, a4
	addiw a5, t0, 0
	mv a5, a5
	call spmv
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw t0, s0, t0
	lui t1, %hi(y)
	addi t1, t1, %lo(y)
	addw t1, s0, t1
	lui t2, %hi(v)
	addi t2, t2, %lo(v)
	addw a1, s0, t2
	lui t2, %hi(b)
	addi t2, t2, %lo(b)
	addw s1, s0, t2
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	addiw a2, t1, 0
	mv a2, a2
	addiw a3, a1, 0
	mv a3, a3
	addiw a4, s1, 0
	mv a4, a4
	addiw a5, t2, 0
	mv a5, a5
	call spmv
	addiw a2, a2, 1
	mv a2, a2
	j .LBB15
.LBB17:
	li a0, 47
	call _sysy_stoptime
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
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
