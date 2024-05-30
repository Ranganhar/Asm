    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  image_in
    .bss
    .align  3
    .type  image_in, @object
    .size  image_in, 4194304
image_in:
    .zero  4194304
    .globl  image_out
    .align  3
    .type  image_out, @object
    .size  image_out, 4194304
image_out:
    .zero  4194304
    .text
    .align  1
    .globl  cutout
    .type  cutout, @function
cutout:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	blt a0, zero, .LBB2
	j .LBB3
.LBB2:
	mv a0, zero
	j .LBB4
.LBB3:
	li t0, 255
	blt t0, a0, .LBB5
	j .LBB7
.LBB4:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	li a0, 255
	j .LBB6
.LBB6:
	mv a0, a0
	j .LBB4
.LBB7:
	mv a0, a0
	j .LBB6
    .size cutout, .-cutout
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(image_in)
	addi t0, t0, %lo(image_in)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv a0, a0
	li a0, 23
	call _sysy_starttime
	li t0, 1
	j .LBB9
.LBB9:
	li t1, 1023
	blt t0, t1, .LBB10
	j .LBB11
.LBB10:
	li t1, 1
	j .LBB12
.LBB11:
	mv t0, zero
	j .LBB13
.LBB12:
	li t2, 1023
	blt t1, t2, .LBB14
	j .LBB15
.LBB14:
	li t2, 1
	subw s1, t1, t2
	li t2, 1024
	mulw t2, s1, t2
	addw s1, t2, t0
	li t2, 1
	subw a6, s1, t2
	li t2, 1
	subw t2, t1, t2
	li s1, 1024
	mulw t2, t2, s1
	addw s1, t2, t0
	li t2, 1
	subw a0, t1, t2
	li t2, 1024
	mulw t2, a0, t2
	addw t2, t2, t0
	addiw a5, t2, 1
	li t2, 1024
	mulw t2, t1, t2
	addw t2, t2, t0
	li a0, 1
	subw a4, t2, a0
	li t2, 1024
	mulw t2, t1, t2
	addw a7, t2, t0
	li t2, 1024
	mulw t2, t1, t2
	addw t2, t2, t0
	addiw a3, t2, 1
	addiw t2, t1, 1
	li a0, 1024
	mulw t2, t2, a0
	addw t2, t2, t0
	li a0, 1
	subw a2, t2, a0
	addiw t2, t1, 1
	li a0, 1024
	mulw t2, t2, a0
	addw a1, t2, t0
	addiw t2, t1, 1
	li a0, 1024
	mulw t2, t2, a0
	addw t2, t2, t0
	addiw a0, t2, 1
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a7, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li a7, 8
	mulw a7, a7, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a6, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw a6, a7, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw t2, a6, t2
	lui s1, %hi(image_in)
	addi s1, s1, %lo(image_in)
	addw s1, s0, s1
	li s1, 4
	mulw s1, a5, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	subw s1, t2, s1
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a4, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, s1, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a3, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, s1, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a2, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, s1, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, s1, t2
	lui t2, %hi(image_in)
	addi t2, t2, %lo(image_in)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw a0, s1, t2
	mv a0, a0
	call cutout
	mv a0, a0
	li t2, 1024
	mulw t2, t1, t2
	addw t2, t2, t0
	lui t0, %hi(image_out)
	addi t0, t0, %lo(image_out)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB12
.LBB15:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB9
.LBB13:
	li t1, 1024
	blt t0, t1, .LBB16
	j .LBB17
.LBB16:
	li t1, 1024
	mulw t2, t0, t1
	lui t1, %hi(image_in)
	addi t1, t1, %lo(image_in)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 1024
	mulw t2, t0, t1
	lui t1, %hi(image_out)
	addi t1, t1, %lo(image_out)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	li t1, 1024
	mulw t1, t0, t1
	addiw t2, t1, 1024
	li t1, 1
	subw t2, t2, t1
	lui t1, %hi(image_in)
	addi t1, t1, %lo(image_in)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 1024
	mulw t1, t0, t1
	addiw t2, t1, 1024
	li t1, 1
	subw t2, t2, t1
	lui t1, %hi(image_out)
	addi t1, t1, %lo(image_out)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB13
.LBB17:
	mv t0, zero
	j .LBB18
.LBB18:
	li t1, 1024
	blt t0, t1, .LBB19
	j .LBB20
.LBB19:
	lui t1, %hi(image_in)
	addi t1, t1, %lo(image_in)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(image_out)
	addi t1, t1, %lo(image_out)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	li t1, 1040384
	addiw t1, t1, -1024
	mv t1, t1
	addw t2, t1, t0
	lui t1, %hi(image_in)
	addi t1, t1, %lo(image_in)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 1040384
	addiw t1, t1, -1024
	mv t1, t1
	addw t2, t1, t0
	lui t1, %hi(image_out)
	addi t1, t1, %lo(image_out)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB18
.LBB20:
	li a0, 59
	call _sysy_stoptime
	lui t0, %hi(image_out)
	addi t0, t0, %lo(image_out)
	addw t0, s0, t0
	li a0, 1048576
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
