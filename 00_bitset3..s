    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  seed
    .data
    .align  3
    .type  seed, @object
    .size  seed, 12
seed:
    .word  19971231
    .word  19981013
    .word  1000000007
    .globl  staticvalue
    .align  2
    .type  staticvalue, @object
    .size  staticvalue, 4
staticvalue:
    .zero  4
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 40000
a:
    .zero  40000
    .text
    .align  1
    .globl  set
    .type  set, @function
set:
.LBB0:
	addi sp, sp, -144
	sd ra, 136(sp)
	sd s0, 128(sp)
	addi s0, sp, 144
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB1
.LBB1:
	addiw a0, s0, -264
	mv a0, a0
	mv a1, t0
	li a2, 124
	call llvm.memcpy.p0.p0.i32
	addiw t1, s0, -140
	li t0, 1
	sw t0, 0(t1)
	addiw t0, s0, -140
	lw t1, 0(t0)
	li t0, 2
	mulw t1, t1, t0
	addiw t0, s0, -140
	sw t1, 4(t0)
	addiw t0, s0, -140
	lw t1, 4(t0)
	li t0, 2
	mulw t1, t1, t0
	addiw t0, s0, -140
	sw t1, 8(t0)
	addiw t0, s0, -140
	lw t0, 8(t0)
	li t1, 2
	mulw t0, t0, t1
	addiw t1, s0, -140
	sw t0, 12(t1)
	addiw t0, s0, -140
	lw t0, 12(t0)
	li t1, 2
	mulw t0, t0, t1
	addiw t1, s0, -140
	sw t0, 16(t1)
	addiw t0, s0, -140
	lw t0, 16(t0)
	li t1, 2
	mulw t1, t0, t1
	addiw t0, s0, -140
	sw t1, 20(t0)
	addiw t0, s0, -140
	lw t0, 20(t0)
	li t1, 2
	mulw t1, t0, t1
	addiw t0, s0, -140
	sw t1, 24(t0)
	addiw t0, s0, -140
	lw t0, 24(t0)
	li t1, 2
	mulw t0, t0, t1
	addiw t1, s0, -140
	sw t0, 28(t1)
	addiw t0, s0, -140
	lw t0, 28(t0)
	li t1, 2
	mulw t0, t0, t1
	addiw t1, s0, -140
	sw t0, 32(t1)
	addiw t0, s0, -140
	lw t1, 32(t0)
	li t0, 2
	mulw t0, t1, t0
	addiw t1, s0, -140
	sw t0, 36(t1)
	addiw t0, s0, -140
	lw t0, 36(t0)
	li t1, 2
	mulw t0, t0, t1
	addiw t1, s0, -140
	sw t0, 40(t1)
	li t0, 10
	j .LBB2
.LBB2:
	li t1, 30
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	addiw t0, t0, 1
	li t1, 1
	subw t1, t0, t1
	addiw t1, s0, -140
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 2
	mulw t1, t1, t2
	addiw t2, s0, -140
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	mv t0, t0
	j .LBB2
.LBB4:
	li t0, 30
	divw t0, a1, t0
	li t1, 8192
	addiw t1, t1, 1808
	mv t1, t1
	bge t0, t1, .LBB5
	j .LBB6
.LBB5:
	mv a0, zero
	ld ra, 136(sp)
	ld s0, 128(sp)
	addi sp, sp, 144
	ret 
.LBB6:
	li t0, 30
	divw t0, a1, t0
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t2, 0(t0)
	li t0, 30
	remw t1, a1, t0
	addiw t0, s0, -140
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	divw t0, t2, t0
	li t1, 2
	remw t0, t0, t1
	bne t0, a2, .LBB7
	j .LBB17
.LBB7:
	li t0, 30
	divw t1, a1, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	li t0, 30
	remw t2, a1, t0
	addiw t0, s0, -140
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	divw t0, t1, t0
	li t1, 2
	remw t0, t0, t1
	beq t0, zero, .LBB9
	j .LBB18
.LBB8:
	li t1, 30
	divw t1, a1, t1
	addw t1, s0, a0
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	addw t2, t1, t0
	li t0, 30
	divw t1, a1, t0
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	mv a0, zero
	ld ra, 136(sp)
	ld s0, 128(sp)
	addi sp, sp, 144
	ret 
.LBB9:
	li t0, 1
	beq a2, t0, .LBB11
	j .LBB19
.LBB10:
	li t1, 30
	divw t1, a1, t1
	addw t1, s0, a0
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, 30
	remw t1, a1, t1
	addiw t1, s0, -140
	li s1, 4
	mulw t1, t1, s1
	addw t1, t1, t1
	lw t1, 0(t1)
	divw t1, t2, t1
	li t2, 2
	remw t1, t1, t2
	li t0, 1
	beq t1, t0, .LBB13
	j .LBB20
.LBB11:
	li t0, 30
	remw t1, a1, t0
	addiw t0, s0, -140
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB12
.LBB12:
	mv t0, t0
	j .LBB10
.LBB13:
	beq a2, zero, .LBB15
	j .LBB21
.LBB14:
	mv t0, t0
	j .LBB8
.LBB15:
	li t1, 30
	remw t1, a1, t1
	addiw t1, s0, -140
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	subw t0, t0, t1
	mv t0, t0
	j .LBB16
.LBB16:
	mv t0, t0
	j .LBB14
.LBB17:
	mv t0, zero
	j .LBB8
.LBB18:
	mv t0, zero
	j .LBB10
.LBB19:
	mv t0, zero
	j .LBB12
.LBB20:
	mv t0, t0
	j .LBB14
.LBB21:
	mv t0, t0
	j .LBB16
    .size set, .-set
    .align  1
    .globl  rand
    .type  rand, @function
rand:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(staticvalue)
	lw t1, %lo(staticvalue)(t0)
	lui t0, %hi(seed)
	addi t0, t0, %lo(seed)
	addw t0, s0, t0
	lw t0, 0(t0)
	mulw t1, t1, t0
	lui t0, %hi(seed)
	addi t0, t0, %lo(seed)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t0, t1, t0
	lui t1, %hi(staticvalue)
	sw t0, %lo(staticvalue)(t1)
	lui t0, %hi(staticvalue)
	lw t1, %lo(staticvalue)(t0)
	lui t0, %hi(seed)
	addi t0, t0, %lo(seed)
	addw t0, s0, t0
	lw t0, 8(t0)
	remw t0, t1, t0
	lui t1, %hi(staticvalue)
	sw t0, %lo(staticvalue)(t1)
	lui t0, %hi(staticvalue)
	lw t0, %lo(staticvalue)(t0)
	blt t0, zero, .LBB23
	j .LBB24
.LBB23:
	lui t0, %hi(seed)
	addi t0, t0, %lo(seed)
	addw t0, s0, t0
	lw t0, 8(t0)
	lui t1, %hi(staticvalue)
	lw t1, %lo(staticvalue)(t1)
	addw t0, t0, t1
	lui t1, %hi(staticvalue)
	sw t0, %lo(staticvalue)(t1)
	j .LBB24
.LBB24:
	lui t0, %hi(staticvalue)
	lw a0, %lo(staticvalue)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size rand, .-rand
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB25:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	call getint
	mv a0, a0
	lui t1, %hi(staticvalue)
	sw a0, %lo(staticvalue)(t1)
	li a0, 56
	call _sysy_starttime
	mv t0, t0
	j .LBB26
.LBB26:
	blt zero, t0, .LBB27
	j .LBB28
.LBB27:
	li t1, 1
	subw t0, t0, t1
	call rand
	mv t0, a0
	li t1, 299008
	addiw t1, t1, 992
	mv t1, t1
	remw a1, t0, t1
	call rand
	mv a0, a0
	li t1, 2
	remw a2, a0, t1
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t0, s0, t1
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call set
	mv t0, t0
	j .LBB26
.LBB28:
	li a0, 64
	call _sysy_stoptime
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	li a0, 8192
	addiw a0, a0, 1808
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
