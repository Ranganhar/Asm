    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  t
    .data
    .align  3
    .type  t, @object
    .size  t, 8040
t:
    .zero  8040
    .globl  dp
    .align  3
    .type  dp, @object
    .size  dp, 140700
dp:
    .zero  140700
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	call getint
	mv s1, a0
	li t1, 1
	j .LBB1
.LBB1:
	bge t0, t1, .LBB2
	j .LBB3
.LBB2:
	call getint
	mv a0, a0
	li t2, 2
	remw s1, a0, t2
	lui t2, %hi(t)
	addi t2, t2, %lo(t)
	addw t2, s0, t2
	li t2, 8
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	li s1, 1
	sw s1, 0(t2)
	li t2, 1
	subw t2, t1, t2
	lui s1, %hi(dp)
	addi s1, s1, %lo(dp)
	addw t2, s0, s1
	li s1, 140
	mulw t2, t2, s1
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(t)
	addi t2, t2, %lo(t)
	addw t2, s0, t2
	li t2, 8
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 4(t2)
	addw s1, s1, t2
	lui t2, %hi(dp)
	addi t2, t2, %lo(dp)
	addw t2, s0, t2
	li t2, 140
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB1
.LBB3:
	li t2, 1
	j .LBB4
.LBB4:
	bge t0, t2, .LBB5
	j .LBB6
.LBB5:
	li t1, 1
	j .LBB7
.LBB6:
	mv t1, zero
	mv a0, zero
	j .LBB8
.LBB7:
	bge s1, t1, .LBB9
	j .LBB10
.LBB9:
	li t0, 1
	subw a0, t2, t0
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 140
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	addiw t0, t1, 1
	li a1, 2
	remw a1, t0, a1
	lui t0, %hi(t)
	addi t0, t0, %lo(t)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a2, a0, t0
	li t0, 1
	subw a1, t2, t0
	li t0, 1
	subw t0, t1, t0
	lui a0, %hi(dp)
	addi a0, a0, %lo(dp)
	addw t0, s0, a0
	li a0, 140
	mulw a0, a1, a0
	addw t0, t0, a0
	li a0, 4
	mulw t0, t0, a0
	addw t0, t0, t0
	lw a0, 0(t0)
	addiw a1, t1, 1
	li t0, 2
	remw a1, a1, t0
	lui t0, %hi(t)
	addi t0, t0, %lo(t)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, a0, t0
	blt t0, a2, .LBB11
	j .LBB12
.LBB10:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB4
.LBB11:
	li t0, 1
	subw a0, t2, t0
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 140
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	addiw t0, t1, 1
	li a1, 2
	remw a1, t0, a1
	lui t0, %hi(t)
	addi t0, t0, %lo(t)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, a0, t0
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 140
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB13
.LBB12:
	li t0, 1
	subw a1, t2, t0
	li t0, 1
	subw a0, t1, t0
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 140
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a1, 0(t0)
	addiw a0, t1, 1
	li t0, 2
	remw a0, a0, t0
	lui t0, %hi(t)
	addi t0, t0, %lo(t)
	addw t0, s0, t0
	li t0, 8
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, a1, t0
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 140
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	j .LBB13
.LBB13:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB7
.LBB8:
	bge s1, t1, .LBB14
	j .LBB15
.LBB14:
	lui t2, %hi(dp)
	addi t2, t2, %lo(dp)
	addw t2, s0, t2
	li t2, 140
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt a0, t2, .LBB16
	j .LBB18
.LBB15:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB16:
	lui t2, %hi(dp)
	addi t2, t2, %lo(dp)
	addw t0, s0, t2
	li t2, 140
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	j .LBB17
.LBB17:
	addiw t1, t1, 1
	mv t1, t1
	mv a0, a0
	j .LBB8
.LBB18:
	mv a0, a0
	j .LBB17
    .size main, .-main
