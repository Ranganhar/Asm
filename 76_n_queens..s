    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  ans
    .bss
    .align  3
    .type  ans, @object
    .size  ans, 200
ans:
    .zero  200
    .globl  sum
    .data
    .align  2
    .type  sum, @object
    .size  sum, 4
sum:
    .zero  4
    .globl  n
    .bss
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .globl  row
    .align  3
    .type  row, @object
    .size  row, 200
row:
    .zero  200
    .globl  line1
    .align  3
    .type  line1, @object
    .size  line1, 200
line1:
    .zero  200
    .globl  line2
    .align  3
    .type  line2, @object
    .size  line2, 400
line2:
    .zero  400
    .text
    .align  1
    .globl  printans
    .type  printans, @function
printans:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(sum)
	lw t0, %lo(sum)(t0)
	addiw t0, t0, 1
	lui t1, %hi(sum)
	sw t0, %lo(sum)(t1)
	li t0, 1
	j .LBB1
.LBB1:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bge t1, t0, .LBB2
	j .LBB3
.LBB2:
	lui t1, %hi(ans)
	addi t1, t1, %lo(ans)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	beq t0, t1, .LBB4
	j .LBB5
.LBB3:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li a0, 10
	call putch
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	li a0, 32
	call putch
	j .LBB6
.LBB6:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB1
    .size printans, .-printans
    .align  1
    .globl  f
    .type  f, @function
f:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB8
.LBB8:
	li t1, 1
	j .LBB9
.LBB9:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	bge t0, t1, .LBB10
	j .LBB11
.LBB10:
	lui t0, %hi(row)
	addi t0, t0, %lo(row)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, 1
	bne t0, t2, .LBB12
	j .LBB13
.LBB11:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB14:
	lui t0, %hi(ans)
	addi t0, t0, %lo(ans)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	beq a0, t0, .LBB15
	j .LBB16
.LBB13:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB9
.LBB12:
	addw t2, a0, t1
	lui t0, %hi(line1)
	addi t0, t0, %lo(line1)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, zero, .LBB17
	j .LBB13
.LBB17:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	addw t0, t0, a0
	subw t2, t0, t1
	lui t0, %hi(line2)
	addi t0, t0, %lo(line2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, zero, .LBB14
	j .LBB13
.LBB15:
	call printans
	j .LBB16
.LBB16:
	lui t0, %hi(row)
	addi t0, t0, %lo(row)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t2, 1
	sw t2, 0(t0)
	addw t2, a0, t1
	lui t0, %hi(line1)
	addi t0, t0, %lo(line1)
	addw t2, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t2, t2, t0
	li t0, 1
	sw t0, 0(t2)
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	addw t0, t0, a0
	subw t2, t0, t1
	lui t0, %hi(line2)
	addi t0, t0, %lo(line2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	li t2, 1
	sw t2, 0(t0)
	addiw t0, a0, 1
	mv a0, t0
	call f
	lui t0, %hi(row)
	addi t0, t0, %lo(row)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t2, 0
	sw t2, 0(t0)
	addw t0, a0, t1
	lui t2, %hi(line1)
	addi t2, t2, %lo(line1)
	addw t2, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t2, t2, t0
	li t0, 0
	sw t0, 0(t2)
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	addw t0, t0, a0
	subw t0, t0, t1
	lui t2, %hi(line2)
	addi t2, t2, %lo(line2)
	addw t2, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t2, t2, t0
	li t0, 0
	sw t0, 0(t2)
	j .LBB13
    .size f, .-f
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	mv t0, t0
	j .LBB19
.LBB19:
	blt zero, t0, .LBB20
	j .LBB21
.LBB20:
	call getint
	mv a0, a0
	lui t1, %hi(n)
	sw a0, %lo(n)(t1)
	li a0, 1
	call f
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB19
.LBB21:
	lui t0, %hi(sum)
	lw a0, %lo(sum)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
