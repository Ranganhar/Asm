    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  array
    .bss
    .align  3
    .type  array, @object
    .size  array, 4000
array:
    .zero  4000
    .text
    .align  1
    .globl  swap
    .type  swap, @function
swap:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size swap, .-swap
    .align  1
    .globl  findPivot
    .type  findPivot, @function
findPivot:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv t0, a1
	j .LBB3
.LBB3:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	mv a1, a0
	mv a0, a0
	j .LBB4
.LBB4:
	blt a0, t0, .LBB5
	j .LBB6
.LBB5:
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	bge t2, t1, .LBB7
	j .LBB9
.LBB6:
	mv a0, a1
	mv a1, t0
	call swap
	mv a0, a1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	mv a0, a0
	mv a1, a1
	call swap
	addiw a1, a1, 1
	mv a1, a1
	j .LBB8
.LBB8:
	addiw a0, a0, 1
	mv a1, a1
	mv a0, a0
	j .LBB4
.LBB9:
	mv a1, a1
	j .LBB8
    .size findPivot, .-findPivot
    .align  1
    .globl  findSmallest
    .type  findSmallest, @function
findSmallest:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB11
.LBB11:
	beq t0, a1, .LBB12
	j .LBB13
.LBB12:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	mv a0, t0
	mv a1, a1
	call findPivot
	mv t1, a0
	beq a2, t1, .LBB14
	j .LBB15
.LBB14:
	mv t0, zero
	j .LBB16
.LBB15:
	blt a2, t1, .LBB17
	j .LBB18
.LBB16:
	blt t0, t1, .LBB19
	j .LBB20
.LBB19:
	lui t2, %hi(array)
	addi t2, t2, %lo(array)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB20:
	j .LBB21
.LBB21:
	j .LBB22
.LBB17:
	li t2, 1
	subw a1, t1, t2
	mv a0, t0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call findSmallest
	j .LBB23
.LBB18:
	addiw a0, t1, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call findSmallest
	j .LBB23
.LBB23:
	j .LBB21
.LBB22:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size findSmallest, .-findSmallest
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a3, a0
	call getint
	mv a2, a0
	mv t0, zero
	j .LBB25
.LBB25:
	blt t0, a3, .LBB26
	j .LBB27
.LBB26:
	call getint
	mv a0, a0
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB25
.LBB27:
	li t0, 1
	subw a1, a3, t0
	li a0, 0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call findSmallest
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
