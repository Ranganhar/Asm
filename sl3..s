    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  x
    .bss
    .align  3
    .type  x, @object
    .size  x, 864000000
x:
    .zero  864000000
    .globl  y
    .align  3
    .type  y, @object
    .size  y, 864000000
y:
    .zero  864000000
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
	mv s1, a0
	call getint
	mv a0, a0
	li a0, 13
	call _sysy_starttime
	mv t2, zero
	j .LBB1
.LBB1:
	blt t2, s1, .LBB2
	j .LBB3
.LBB2:
	mv t0, zero
	j .LBB4
.LBB3:
	li t2, 1
	li t1, 1
	j .LBB5
.LBB4:
	blt t0, s1, .LBB6
	j .LBB7
.LBB6:
	mv t1, zero
	j .LBB8
.LBB7:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB1
.LBB8:
	blt t1, s1, .LBB9
	j .LBB10
.LBB9:
	lui a0, %hi(x)
	addi a0, a0, %lo(x)
	addw a1, s0, a0
	li a0, 1433600
	addiw a0, a0, -1792
	mv a0, a0
	mulw a0, t2, a0
	addw a1, a1, a0
	li a0, -4096
	addiw a0, a0, -1696
	mv a0, a0
	mulw a0, t0, a0
	addw a1, a1, a0
	li a0, 4
	mulw a0, t1, a0
	addw a1, a1, a0
	li a0, 1
	sw a0, 0(a1)
	lui a0, %hi(y)
	addi a0, a0, %lo(y)
	addw t0, s0, a0
	li a0, 1433600
	addiw a0, a0, -1792
	mv a0, a0
	mulw t2, t2, a0
	addw t0, t0, t2
	li t2, -4096
	addiw t2, t2, -1696
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t2, 0
	sw t2, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB8
.LBB10:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB4
.LBB5:
	li t0, 1
	subw t0, s1, t0
	blt t1, t0, .LBB11
	j .LBB12
.LBB11:
	li t2, 1
	j .LBB13
.LBB12:
	li a0, 53
	call _sysy_stoptime
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw t0, s0, t0
	mv a0, s1
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	li t0, 2
	divw a1, s1, t0
	li t0, 2
	divw a0, s1, t0
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw t0, s0, t0
	li t0, 1433600
	addiw t0, t0, -1792
	mv t0, t0
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, -4096
	addiw t0, t0, -1696
	mv t0, t0
	mulw t0, a0, t0
	addw t0, t0, t0
	mv a0, s1
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	li t0, 1
	subw t1, t1, t0
	li t0, 1
	subw t2, t2, t0
	lui t0, %hi(x)
	addi t0, t0, %lo(x)
	addw t0, s0, t0
	li t0, 1433600
	addiw t0, t0, -1792
	mv t0, t0
	mulw t0, t1, t0
	addw t0, t0, t0
	li t0, -4096
	addiw t0, t0, -1696
	mv t0, t0
	mulw t0, t2, t0
	addw t0, t0, t0
	mv a0, s1
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	li t0, 1
	subw t0, s1, t0
	blt t2, t0, .LBB14
	j .LBB15
.LBB14:
	li t0, 1
	j .LBB16
.LBB15:
	addiw t1, t1, 1
	mv t2, t2
	mv t1, t1
	j .LBB5
.LBB16:
	li a1, 1
	subw a1, s1, a1
	blt t0, a1, .LBB17
	j .LBB18
.LBB17:
	li a1, 1
	subw a2, t1, a1
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw a1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw a1, a2, a1
	addw a1, a1, a1
	li a1, -4096
	addiw a1, a1, -1696
	mv a1, a1
	mulw a1, t2, a1
	addw a1, a1, a1
	li a1, 4
	mulw a1, t0, a1
	addw a1, a1, a1
	lw a3, 0(a1)
	addiw a2, t1, 1
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw a1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw a1, a2, a1
	addw a1, a1, a1
	li a1, -4096
	addiw a1, a1, -1696
	mv a1, a1
	mulw a1, t2, a1
	addw a1, a1, a1
	li a1, 4
	mulw a1, t0, a1
	addw a1, a1, a1
	lw a1, 0(a1)
	addw a2, a3, a1
	li a1, 1
	subw a1, t2, a1
	lui a3, %hi(x)
	addi a3, a3, %lo(x)
	addw a1, s0, a3
	li a3, 1433600
	addiw a3, a3, -1792
	mv a3, a3
	mulw a3, t1, a3
	addw a1, a1, a3
	li a3, -4096
	addiw a3, a3, -1696
	mv a3, a3
	mulw a1, a1, a3
	addw a1, a1, a1
	li a1, 4
	mulw a1, t0, a1
	addw a1, a1, a1
	lw a1, 0(a1)
	addw a3, a2, a1
	addiw a2, t2, 1
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw a1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw a1, t1, a1
	addw a1, a1, a1
	li a1, -4096
	addiw a1, a1, -1696
	mv a1, a1
	mulw a1, a2, a1
	addw a1, a1, a1
	li a1, 4
	mulw a1, t0, a1
	addw a1, a1, a1
	lw a1, 0(a1)
	addw a3, a3, a1
	li a1, 1
	subw a2, t0, a1
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw a1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw a1, t1, a1
	addw a1, a1, a1
	li a1, -4096
	addiw a1, a1, -1696
	mv a1, a1
	mulw a1, t2, a1
	addw a1, a1, a1
	li a1, 4
	mulw a1, a2, a1
	addw a1, a1, a1
	lw a1, 0(a1)
	addw a3, a3, a1
	addiw a2, t0, 1
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw a1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw a1, t1, a1
	addw a1, a1, a1
	li a1, -4096
	addiw a1, a1, -1696
	mv a1, a1
	mulw a1, t2, a1
	addw a1, a1, a1
	li a1, 4
	mulw a1, a2, a1
	addw a1, a1, a1
	lw a1, 0(a1)
	addw a1, a3, a1
	divw a0, a1, a0
	lui a1, %hi(x)
	addi a1, a1, %lo(x)
	addw t1, s0, a1
	li a1, 1433600
	addiw a1, a1, -1792
	mv a1, a1
	mulw t1, t1, a1
	addw t1, t1, t1
	li t1, -4096
	addiw t1, t1, -1696
	mv t1, t1
	mulw t1, t2, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB18:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB13
    .size main, .-main
