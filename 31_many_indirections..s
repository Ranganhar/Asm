    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  array
    .bss
    .align  3
    .type  array, @object
    .size  array, 8000
array:
    .zero  8000
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
	mv t0, zero
	j .LBB1
.LBB1:
	li t1, 20
	blt t0, t1, .LBB2
	j .LBB3
.LBB2:
	mv t1, zero
	j .LBB4
.LBB3:
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t1, 4096
	addiw t1, t1, 2045
	addw t0, t0, t1
	lw t1, 1551(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 4096
	addiw t1, t1, 2045
	addw t0, t0, t1
	lw t1, 1059(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 4096
	addiw t1, t1, 2045
	addw t0, t0, t1
	lw t0, 659(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	li t1, 4096
	addiw t1, t1, 2045
	addw t0, t0, t1
	lw t1, 259(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw t0, 1906(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw t1, 1506(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw t1, 1106(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw t1, 706(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw t1, 306(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 2047
	lw t1, 1953(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 2047
	lw t1, 1553(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 2047
	lw t1, 1153(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 2047
	lw t1, 753(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 2047
	lw t1, 353(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 2000(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 1600(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t1, 1200(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 800(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 400(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t1, 4096
	addiw t1, t1, 2045
	addw t0, t0, t1
	lw t0, 1531(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 400
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 68(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 400
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 64(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 400
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 60(t0)
	lui t1, %hi(array)
	addi t1, t1, %lo(array)
	addw t0, s0, t1
	li t1, 400
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t1, 56(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 52(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 48(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 44(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 40(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 36(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 32(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 28(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 24(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 20(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 16(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 12(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 8(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 4(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(array)
	addi t0, t0, %lo(array)
	addw t0, s0, t0
	li t0, 400
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 224(t0)
	addw a0, t2, t0
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t0, 100
	blt t1, t0, .LBB5
	j .LBB6
.LBB5:
	lui t2, %hi(array)
	addi t2, t2, %lo(array)
	addw t0, s0, t2
	li t2, 400
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB4
.LBB6:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
    .size main, .-main
