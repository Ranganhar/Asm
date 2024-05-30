    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 120000040
a:
    .zero  120000040
    .globl  ans
    .align  2
    .type  ans, @object
    .size  ans, 4
ans:
    .zero  4
    .text
    .align  1
    .globl  getMaxNum
    .type  getMaxNum, @function
getMaxNum:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	mv t1, zero
	mv t0, zero
	j .LBB2
.LBB2:
	blt t0, a0, .LBB3
	j .LBB4
.LBB3:
	addw t2, s0, a1
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t1, t2, .LBB5
	j .LBB7
.LBB4:
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv t1, t1
	j .LBB6
.LBB6:
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB2
.LBB7:
	mv t1, t1
	j .LBB6
    .size getMaxNum, .-getMaxNum
    .align  1
    .globl  getNumPos
    .type  getNumPos, @function
getNumPos:
.LBB8:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB9
.LBB9:
	mv a0, a0
	mv t0, zero
	j .LBB10
.LBB10:
	blt t0, a1, .LBB11
	j .LBB12
.LBB11:
	li t1, 16
	divw a0, a0, t1
	addiw t0, t0, 1
	mv a0, a0
	mv t0, t0
	j .LBB10
.LBB12:
	li t0, 16
	remw a0, a0, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size getNumPos, .-getNumPos
    .align  1
    .globl  radixSort
    .type  radixSort, @function
radixSort:
.LBB13:
	addi sp, sp, -208
	sd ra, 200(sp)
	sd s0, 192(sp)
	addi s0, sp, 208
	mv s1, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB14
.LBB14:
	addiw a0, s0, -272
	mv a0, a0
	mv a1, t2
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -208
	mv a0, a0
	mv a1, t1
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -144
	mv a0, a0
	mv a1, t0
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	li t0, -1
	beq s1, t0, .LBB15
	j .LBB16
.LBB15:
	ld ra, 200(sp)
	ld s0, 192(sp)
	addi sp, sp, 208
	ret 
.LBB17:
	mv t0, a2
	j .LBB18
.LBB16:
	addiw t0, a2, 1
	bge t0, a3, .LBB15
	j .LBB17
.LBB18:
	blt t0, a3, .LBB19
	j .LBB20
.LBB19:
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw t1, s0, -80
	li t1, 4
	mulw t1, a0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addiw t1, t1, 1
	addw t2, s0, a1
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	mv a0, a0
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw t2, s0, -80
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB18
.LBB20:
	addiw t0, s0, -208
	sw a2, 0(t0)
	addiw t0, s0, -80
	lw t0, 0(t0)
	addw t1, a2, t0
	addiw t0, s0, -144
	sw t1, 0(t0)
	li t0, 1
	j .LBB21
.LBB21:
	li t1, 16
	blt t0, t1, .LBB22
	j .LBB23
.LBB22:
	li t1, 1
	subw t2, t0, t1
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -208
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t1, s0, -208
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -80
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t2, t1
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB21
.LBB23:
	mv t1, zero
	j .LBB24
.LBB24:
	li t0, 16
	blt t1, t0, .LBB25
	j .LBB26
.LBB25:
	j .LBB27
.LBB26:
	addiw t0, s0, -208
	sw a2, 0(t0)
	addiw t0, s0, -80
	lw t0, 0(t0)
	addw t0, a2, t0
	addiw t1, s0, -144
	sw t0, 0(t1)
	mv t0, zero
	j .LBB28
.LBB27:
	addiw t0, s0, -208
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t2, 0(t0)
	addiw t0, s0, -144
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	blt t2, t0, .LBB29
	j .LBB30
.LBB29:
	addiw t0, s0, -208
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s0, a1
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t2, 0(t0)
	mv t2, t2
	j .LBB31
.LBB30:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB24
.LBB31:
	mv a0, t2
	mv a1, s1
	call getNumPos
	mv a0, a0
	bne a0, t1, .LBB32
	j .LBB33
.LBB32:
	mv a0, t2
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw t0, s0, -208
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	addw t0, s0, a1
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv a0, t2
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw a0, s0, -208
	li a2, 4
	mulw a0, a0, a2
	addw a0, a0, a0
	lw a2, 0(a0)
	addw a0, s0, a1
	li a0, 4
	mulw a0, a2, a0
	addw a0, a0, a0
	sw t2, 0(a0)
	mv a0, t2
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw a0, s0, -208
	li a1, 4
	mulw a0, a0, a1
	addw a0, a0, a0
	lw a0, 0(a0)
	addiw a1, a0, 1
	mv a0, t2
	mv a1, s1
	call getNumPos
	mv a0, a0
	addiw t2, s0, -208
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	sw a1, 0(t2)
	mv t2, t0
	j .LBB31
.LBB33:
	addiw t0, s0, -208
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s0, a1
	li s1, 4
	mulw t0, t0, s1
	addw t0, t0, t0
	sw t2, 0(t0)
	addiw t0, s0, -208
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw t2, t0, 1
	addiw t0, s0, -208
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	j .LBB27
.LBB28:
	li t1, 16
	blt t0, t1, .LBB34
	j .LBB35
.LBB34:
	blt zero, t0, .LBB36
	j .LBB37
.LBB35:
	ld ra, 200(sp)
	ld s0, 192(sp)
	addi sp, sp, 208
	ret 
.LBB36:
	li t1, 1
	subw t1, t0, t1
	addiw t1, s0, -144
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -208
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t1, s0, -208
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -80
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t2, t1
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	j .LBB37
.LBB37:
	li t1, 1
	subw a0, s1, t1
	addiw t1, s0, -208
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a2, 0(t1)
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a3, 0(t1)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call radixSort
	addiw t0, t0, 1
	mv t0, t0
	j .LBB28
    .size radixSort, .-radixSort
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB38:
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
	mv a3, a0
	li a0, 90
	call _sysy_starttime
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li a0, 8
	addiw a1, t0, 0
	mv a1, a1
	li a2, 0
	mv a3, a3
	call radixSort
	mv t0, zero
	j .LBB39
.LBB39:
	blt t0, a3, .LBB40
	j .LBB41
.LBB40:
	lui t1, %hi(ans)
	lw t1, %lo(ans)(t1)
	lui t2, %hi(a)
	addi t2, t2, %lo(a)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li t2, 2
	addw s1, t2, t0
	remw t2, t2, s1
	mulw t2, t0, t2
	addw t2, t1, t2
	lui t1, %hi(ans)
	sw t2, %lo(ans)(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB39
.LBB41:
	lui t0, %hi(ans)
	lw t0, %lo(ans)(t0)
	blt t0, zero, .LBB42
	j .LBB43
.LBB42:
	lui t0, %hi(ans)
	lw t0, %lo(ans)(t0)
	subw t0, zero, t0
	lui t1, %hi(ans)
	sw t0, %lo(ans)(t1)
	j .LBB43
.LBB43:
	li a0, 102
	call _sysy_stoptime
	lui t0, %hi(ans)
	lw a0, %lo(ans)(t0)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
