    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 4000000
a:
    .zero  4000000
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 4000000
b:
    .zero  4000000
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 4000000
c:
    .zero  4000000
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
	mv t1, zero
	j .LBB1
.LBB1:
	li t0, 1000
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li t0, -4096
	addiw t0, t0, -96
	mv t0, t0
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv a0, a0
	li t0, 1000
	bne a0, t0, .LBB4
	j .LBB5
.LBB3:
	li a0, 23
	call _sysy_starttime
	mv t0, zero
	j .LBB6
.LBB4:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB1
.LBB6:
	li t1, 1000
	blt t0, t1, .LBB7
	j .LBB8
.LBB7:
	mv t1, zero
	j .LBB9
.LBB8:
	mv s1, zero
	j .LBB10
.LBB9:
	li t2, 1000
	blt t1, t2, .LBB11
	j .LBB12
.LBB11:
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(b)
	addi t2, t2, %lo(b)
	addw t0, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB9
.LBB12:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB6
.LBB10:
	li t0, 1000
	blt s1, t0, .LBB13
	j .LBB14
.LBB13:
	mv t0, zero
	j .LBB15
.LBB14:
	mv t0, zero
	j .LBB16
.LBB15:
	li t1, 1000
	blt t0, t1, .LBB17
	j .LBB18
.LBB17:
	mv t2, zero
	mv t1, zero
	j .LBB19
.LBB18:
	addiw s1, s1, 1
	mv s1, s1
	j .LBB10
.LBB19:
	li a0, 1000
	blt t2, a0, .LBB20
	j .LBB21
.LBB20:
	lui a0, %hi(a)
	addi a0, a0, %lo(a)
	addw s1, s0, a0
	li a0, -4096
	addiw a0, a0, -96
	mv a0, a0
	mulw s1, s1, a0
	addw s1, s1, s1
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	lw a0, 0(s1)
	lui s1, %hi(b)
	addi s1, s1, %lo(b)
	addw t0, s0, s1
	li s1, -4096
	addiw s1, s1, -96
	mv s1, s1
	mulw s1, t2, s1
	addw t0, t0, s1
	li s1, 4
	mulw t0, t0, s1
	addw t0, t0, t0
	lw t0, 0(t0)
	mulw t0, a0, t0
	addw t1, t1, t0
	addiw t2, t2, 1
	mv t2, t2
	mv t1, t1
	j .LBB19
.LBB21:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t2, s1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB15
.LBB16:
	li t1, 1000
	blt t0, t1, .LBB22
	j .LBB23
.LBB22:
	li t0, 2147475456
	addiw t0, t0, -1
	mv t0, t0
	mv t0, t0
	mv t1, zero
	j .LBB24
.LBB23:
	mv t0, zero
	j .LBB25
.LBB24:
	li t2, 1000
	blt t1, t2, .LBB26
	j .LBB27
.LBB26:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, t0, .LBB28
	j .LBB44
.LBB27:
	mv t1, zero
	j .LBB30
.LBB28:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t0, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB29
.LBB29:
	addiw t1, t1, 1
	mv t0, t0
	mv t1, t1
	j .LBB24
.LBB30:
	li t2, 1000
	blt t1, t2, .LBB31
	j .LBB32
.LBB31:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB30
.LBB32:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB25:
	li t1, 1000
	blt t0, t1, .LBB33
	j .LBB34
.LBB33:
	mv t1, zero
	j .LBB35
.LBB34:
	mv a0, zero
	mv t0, zero
	j .LBB36
.LBB35:
	li t2, 1000
	blt t1, t2, .LBB37
	j .LBB38
.LBB37:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t2, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	subw s1, zero, t2
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t0, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB35
.LBB38:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB25
.LBB36:
	li t1, 1000
	blt t0, t1, .LBB39
	j .LBB40
.LBB39:
	mv a0, a0
	mv t1, zero
	j .LBB41
.LBB40:
	li a0, 92
	call _sysy_stoptime
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB41:
	li t0, 1000
	blt t1, t0, .LBB42
	j .LBB43
.LBB42:
	lui t2, %hi(c)
	addi t2, t2, %lo(c)
	addw t0, s0, t2
	li t2, -4096
	addiw t2, t2, -96
	mv t2, t2
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, a0, t0
	addiw t1, t1, 1
	mv a0, a0
	mv t1, t1
	j .LBB41
.LBB43:
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB36
.LBB44:
	mv t0, t0
	j .LBB29
    .size main, .-main
