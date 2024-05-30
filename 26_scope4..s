    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a
    .bss
    .align  2
    .type  a, @object
    .size  a, 4
a:
    .zero  4
    .globl  sum
    .align  2
    .type  sum, @object
    .size  sum, 4
sum:
    .zero  4
    .globl  count
    .data
    .align  2
    .type  count, @object
    .size  count, 4
count:
    .zero  4
    .text
    .align  1
    .globl  getA
    .type  getA, @function
getA:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(count)
	lw t0, %lo(count)(t0)
	addiw t1, t0, 1
	lui t0, %hi(count)
	sw t1, %lo(count)(t0)
	lui t0, %hi(count)
	lw a0, %lo(count)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size getA, .-getA
    .align  1
    .globl  f1
    .type  f1, @function
f1:
.LBB1:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB2
.LBB2:
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t0, t1, t0
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	call getA
	mv t0, a0
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t1, t1, t0
	lui t2, %hi(sum)
	sw t1, %lo(sum)(t2)
	j .LBB3
.LBB3:
	call getA
	mv a0, a0
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t2, t1, a0
	lui t1, %hi(sum)
	sw t2, %lo(sum)(t1)
	j .LBB4
.LBB4:
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t2, t1, t0
	lui t1, %hi(sum)
	sw t2, %lo(sum)(t1)
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t1, t1, t0
	lui t0, %hi(sum)
	sw t1, %lo(sum)(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size f1, .-f1
    .align  1
    .globl  f2
    .type  f2, @function
f2:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(sum)
	lw t1, %lo(sum)(t0)
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	addw t1, t1, t0
	lui t0, %hi(sum)
	sw t1, %lo(sum)(t0)
	call getA
	lui t0, %hi(sum)
	lw t1, %lo(sum)(t0)
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	addw t1, t1, t0
	lui t0, %hi(sum)
	sw t1, %lo(sum)(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size f2, .-f2
    .align  1
    .globl  f3
    .type  f3, @function
f3:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getA
	mv t0, a0
	lui t1, %hi(sum)
	lw t1, %lo(sum)(t1)
	addw t1, t1, t0
	lui t0, %hi(sum)
	sw t1, %lo(sum)(t0)
	call getA
	mv a0, a0
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addw t0, t0, a0
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	call getA
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addw t0, t0, a0
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size f3, .-f3
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 0
	lui t0, %hi(sum)
	sw t1, %lo(sum)(t0)
	call getA
	mv t0, a0
	lui t1, %hi(a)
	sw t0, %lo(a)(t1)
	lui t0, %hi(sum)
	lw t1, %lo(sum)(t0)
	lui t0, %hi(a)
	lw t0, %lo(a)(t0)
	addw t0, t1, t0
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	call getA
	mv t0, a0
	mv a0, t0
	call f1
	call f2
	call f3
	mv a0, t0
	call f1
	call f2
	call f3
	call getA
	mv a0, t0
	call f1
	call f2
	call f3
	call getA
	call getA
	mv a0, a0
	mv a0, a0
	call f1
	call f2
	call f3
	call getA
	mv a0, a0
	mv a0, a0
	call f1
	call f2
	call f3
	call getA
	mv a0, a0
	mv a0, a0
	call f1
	call f2
	call f3
	mv a0, t0
	call f1
	call f2
	call f3
	j .LBB8
.LBB8:
	j .LBB9
.LBB9:
	j .LBB10
.LBB11:
	lui t0, %hi(sum)
	lw a0, %lo(sum)(t0)
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB10:
	j .LBB12
.LBB12:
	mv t0, zero
	mv t0, t0
	j .LBB13
.LBB14:
	j .LBB11
.LBB13:
	li t1, 3
	blt t0, t1, .LBB15
	j .LBB16
.LBB15:
	j .LBB17
.LBB16:
	j .LBB14
.LBB17:
	j .LBB18
.LBB18:
	j .LBB19
.LBB20:
	li t1, 1
	beq t0, t1, .LBB21
	j .LBB22
.LBB19:
	mv a0, t0
	call f1
	call f2
	call f3
	j .LBB20
.LBB21:
	call getA
	mv a0, a0
	mv a0, a0
	call f1
	call f2
	call f3
	addiw t0, t0, 1
	mv t0, t0
	mv t0, t0
	mv t0, t0
	j .LBB13
.LBB22:
	mv a0, t0
	call f1
	call f2
	call f3
	j .LBB23
.LBB23:
	call getA
	mv t0, a0
	addiw t0, t0, 1
	mv t0, t0
	mv t0, t0
	j .LBB13
    .size main, .-main
