    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  n
    .bss
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .globl  cnt
    .align  3
    .type  cnt, @object
    .size  cnt, 1600080
cnt:
    .zero  1600080
    .globl  x
    .align  3
    .type  x, @object
    .size  x, 400020
x:
    .zero  400020
    .globl  a
    .align  3
    .type  a, @object
    .size  a, 400020
a:
    .zero  400020
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 400020
b:
    .zero  400020
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 400020
c:
    .zero  400020
    .text
    .align  1
    .globl  quick_read
    .type  quick_read, @function
quick_read:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, zero
	j .LBB1
.LBB1:
	li t0, 48
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	li t0, 45
	beq t1, t0, .LBB4
	j .LBB13
.LBB6:
	mv t1, t1
	mv t0, zero
	j .LBB7
.LBB3:
	li t0, 57
	blt t0, t1, .LBB2
	j .LBB6
.LBB4:
	li t0, 1
	j .LBB5
.LBB5:
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, t0
	j .LBB1
.LBB7:
	li t2, 48
	bge t1, t2, .LBB8
	j .LBB9
.LBB10:
	li t2, 10
	mulw t0, t0, t2
	addw t0, t0, t1
	li t1, 48
	subw t0, t0, t1
	call getch
	mv t1, a0
	mv t1, t1
	mv t0, t0
	j .LBB7
.LBB9:
	bne t0, zero, .LBB11
	j .LBB12
.LBB8:
	li t2, 57
	bge t2, t1, .LBB10
	j .LBB9
.LBB11:
	subw a0, zero, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB12:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	mv t0, t0
	j .LBB5
    .size quick_read, .-quick_read
    .align  1
    .globl  sortA
    .type  sortA, @function
sortA:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB15
.LBB15:
	mv t0, zero
	j .LBB16
.LBB16:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB17
	j .LBB18
.LBB17:
	addiw t1, t0, 1
	mv t1, t1
	j .LBB19
.LBB18:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB19:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	blt t1, t2, .LBB20
	j .LBB21
.LBB20:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s0, a0
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	blt s1, t2, .LBB22
	j .LBB23
.LBB21:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
.LBB22:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw s1, s0, a0
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	addw t0, s0, a0
	li a1, 4
	mulw t0, t0, a1
	addw t0, t0, t0
	sw s1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	j .LBB23
.LBB23:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB19
    .size sortA, .-sortA
    .align  1
    .globl  sortB
    .type  sortB, @function
sortB:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB25
.LBB25:
	mv t0, zero
	li t1, -100
	j .LBB26
.LBB26:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	blt t0, t2, .LBB27
	j .LBB28
.LBB27:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	lui s1, %hi(cnt)
	addi s1, s1, %lo(cnt)
	addw t2, s0, s1
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t2, 0(t2)
	addiw a1, t2, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(cnt)
	addi t2, t2, %lo(cnt)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	sw a1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t1, t2, .LBB29
	j .LBB37
.LBB28:
	mv t0, zero
	mv t2, zero
	j .LBB31
.LBB29:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv t1, t1
	j .LBB30
.LBB30:
	addiw t0, t0, 1
	mv t0, t0
	mv t1, t1
	j .LBB26
.LBB31:
	bge t1, t0, .LBB32
	j .LBB33
.LBB32:
	lui s1, %hi(cnt)
	addi s1, s1, %lo(cnt)
	addw s1, s0, s1
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw t1, 0(s1)
	mv t2, t2
	mv t1, t1
	j .LBB34
.LBB33:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB34:
	bne t1, zero, .LBB35
	j .LBB36
.LBB35:
	addw s1, s0, a0
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	sw t0, 0(s1)
	addiw t2, t2, 1
	li t0, 1
	subw t1, t1, t0
	mv t2, t2
	mv t1, t1
	j .LBB34
.LBB36:
	addiw t0, t0, 1
	mv t0, t0
	mv t2, t2
	j .LBB31
.LBB37:
	mv t1, t1
	j .LBB30
    .size sortB, .-sortB
    .align  1
    .globl  sortC
    .type  sortC, @function
sortC:
.LBB38:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB39
.LBB39:
	mv t2, zero
	j .LBB40
.LBB40:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	blt t2, t0, .LBB41
	j .LBB42
.LBB41:
	addiw t0, t2, 1
	mv t1, t2
	mv t0, t0
	j .LBB43
.LBB42:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB43:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	blt t0, s1, .LBB44
	j .LBB45
.LBB44:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt s1, t2, .LBB46
	j .LBB48
.LBB45:
	addw t0, s0, a0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw a1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB40
.LBB46:
	mv t1, t0
	j .LBB47
.LBB47:
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB43
.LBB48:
	mv t1, t1
	j .LBB47
    .size sortC, .-sortC
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB49:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call quick_read
	mv t0, a0
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	mv t0, zero
	j .LBB50
.LBB50:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	bne t0, t1, .LBB51
	j .LBB52
.LBB51:
	call quick_read
	mv a0, a0
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB50
.LBB52:
	lui t0, %hi(a)
	addi t0, t0, %lo(a)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call sortA
	lui t0, %hi(b)
	addi t0, t0, %lo(b)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call sortB
	lui t0, %hi(c)
	addi t0, t0, %lo(c)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call sortC
	mv t0, zero
	j .LBB53
.LBB53:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	subw t1, t1, t0
	bne t1, zero, .LBB54
	j .LBB55
.LBB54:
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw t2, t2, t1
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw t2, t2, t1
	lui t1, %hi(a)
	addi t1, t1, %lo(a)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	subw t2, t2, t1
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB53
.LBB55:
	mv t0, zero
	j .LBB56
.LBB56:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	subw t1, t0, t1
	bne t1, zero, .LBB57
	j .LBB58
.LBB57:
	lui t1, %hi(b)
	addi t1, t1, %lo(b)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	bne t1, zero, .LBB59
	j .LBB60
.LBB58:
	li a0, -123
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB59:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB60:
	lui t1, %hi(c)
	addi t1, t1, %lo(c)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	bne t1, zero, .LBB61
	j .LBB62
.LBB61:
	li a0, 2
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB62:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB56
    .size main, .-main
