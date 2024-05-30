    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  buf
    .bss
    .align  3
    .type  buf, @object
    .size  buf, 800
buf:
    .zero  800
    .text
    .align  1
    .globl  merge_sort
    .type  merge_sort, @function
merge_sort:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	addiw t0, a0, 1
	bge t0, a1, .LBB2
	j .LBB3
.LBB2:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	addw t0, a0, a1
	li t1, 2
	divw s1, t0, t1
	mv a0, a0
	mv a1, s1
	call merge_sort
	mv a0, s1
	mv a1, a1
	call merge_sort
	mv t2, a0
	mv t1, s1
	mv t0, a0
	j .LBB4
.LBB4:
	blt t2, s1, .LBB5
	j .LBB6
.LBB7:
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t2, a0
	addw a0, a0, a0
	lw a1, 0(a0)
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	blt a1, a0, .LBB8
	j .LBB9
.LBB6:
	mv t2, t2
	mv t0, t0
	j .LBB10
.LBB5:
	blt t1, a1, .LBB7
	j .LBB6
.LBB8:
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t2, a0
	addw a0, a0, a0
	lw a1, 0(a0)
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	sw a1, 400(a0)
	addiw t2, t2, 1
	mv t2, t2
	mv t1, t1
	j .LBB11
.LBB9:
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a1, 0(a0)
	lui a0, %hi(buf)
	addi a0, a0, %lo(buf)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	sw a1, 400(a0)
	addiw t1, t1, 1
	mv t2, t2
	mv t1, t1
	j .LBB11
.LBB11:
	addiw t0, t0, 1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB4
.LBB10:
	blt t2, s1, .LBB12
	j .LBB13
.LBB12:
	lui t1, %hi(buf)
	addi t1, t1, %lo(buf)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(buf)
	addi t1, t1, %lo(buf)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 400(t1)
	addiw t2, t2, 1
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	j .LBB10
.LBB13:
	mv t1, t1
	mv t0, t0
	j .LBB14
.LBB14:
	blt t1, a1, .LBB15
	j .LBB16
.LBB15:
	lui t2, %hi(buf)
	addi t2, t2, %lo(buf)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(buf)
	addi t2, t2, %lo(buf)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw s1, 400(t2)
	addiw t1, t1, 1
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB14
.LBB16:
	mv a0, a0
	j .LBB17
.LBB17:
	blt a0, a1, .LBB18
	j .LBB19
.LBB18:
	lui t0, %hi(buf)
	addi t0, t0, %lo(buf)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t1, 400(t0)
	lui t0, %hi(buf)
	addi t0, t0, %lo(buf)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	addiw a0, a0, 1
	mv a0, a0
	j .LBB17
.LBB19:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size merge_sort, .-merge_sort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB20:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(buf)
	addi t0, t0, %lo(buf)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv a0, a0
	li a0, 0
	mv a1, a0
	call merge_sort
	lui t0, %hi(buf)
	addi t0, t0, %lo(buf)
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
