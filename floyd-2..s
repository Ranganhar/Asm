    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  temp
    .bss
    .align  3
    .type  temp, @object
    .size  temp, 8388608
temp:
    .zero  8388608
    .globl  w
    .align  3
    .type  w, @object
    .size  w, 8388608
w:
    .zero  8388608
    .globl  dst
    .align  3
    .type  dst, @object
    .size  dst, 8388608
dst:
    .zero  8388608
    .globl  c
    .align  3
    .type  c, @object
    .size  c, 8388608
c:
    .zero  8388608
    .text
    .align  1
    .globl  getvalue
    .type  getvalue, @function
getvalue:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB1
.LBB1:
	blt a2, zero, .LBB2
	j .LBB3
.LBB2:
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	mulw t0, a2, a1
	addw t1, t0, a3
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	bge a2, a1, .LBB2
	j .LBB5
.LBB5:
	blt a3, zero, .LBB2
	j .LBB6
.LBB6:
	bge a3, a1, .LBB2
	j .LBB4
    .size getvalue, .-getvalue
    .align  1
    .globl  mem_move
    .type  mem_move, @function
mem_move:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB8
.LBB8:
	mv t0, zero
	j .LBB9
.LBB9:
	blt t0, a2, .LBB10
	j .LBB11
.LBB10:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB9
.LBB11:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size mem_move, .-mem_move
    .align  1
    .globl  floyd
    .type  floyd, @function
floyd:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv t1, a1
	mv a1, a2
	j .LBB13
.LBB13:
	mv a3, zero
	j .LBB14
.LBB14:
	blt a3, a1, .LBB15
	j .LBB16
.LBB15:
	mv a2, zero
	j .LBB17
.LBB16:
	mv a2, zero
	j .LBB18
.LBB17:
	blt a2, a1, .LBB19
	j .LBB20
.LBB19:
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call getvalue
	mv a0, a0
	mulw t0, a2, a1
	addw t1, t0, a3
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw a2, a2, 1
	mv a2, a2
	j .LBB17
.LBB20:
	addiw a3, a3, 1
	mv a3, a3
	j .LBB14
.LBB18:
	blt a2, a1, .LBB21
	j .LBB22
.LBB21:
	mv t2, zero
	j .LBB23
.LBB22:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	mulw a2, a1, a1
	addiw a0, t0, 0
	mv a0, a0
	mv a1, t1
	mv a2, a2
	call mem_move
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB23:
	blt t2, a1, .LBB24
	j .LBB25
.LBB24:
	mv a3, zero
	j .LBB26
.LBB25:
	addiw a2, a2, 1
	mv a2, a2
	j .LBB18
.LBB26:
	blt a3, a1, .LBB27
	j .LBB28
.LBB27:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, t2
	mv a3, a2
	call getvalue
	mv a0, a0
	bge a0, zero, .LBB29
	j .LBB30
.LBB28:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB23
.LBB31:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, t2
	mv a3, a3
	call getvalue
	mv a0, a0
	blt a0, zero, .LBB32
	j .LBB33
.LBB30:
	addiw a3, a3, 1
	mv a3, a3
	j .LBB26
.LBB29:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call getvalue
	mv a0, a0
	bge a0, zero, .LBB31
	j .LBB30
.LBB32:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, t2
	mv a3, a2
	call getvalue
	mv t1, a0
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call getvalue
	mv a0, a0
	addw t1, t1, a0
	mulw t0, t2, a1
	addw t2, t0, a3
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	j .LBB34
.LBB33:
	mulw t0, t2, a1
	addw t1, t0, a3
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, t2
	mv a3, a2
	call getvalue
	mv t1, a0
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call getvalue
	mv a0, a0
	addw t0, t1, a0
	blt t0, s1, .LBB35
	j .LBB36
.LBB34:
	j .LBB30
.LBB35:
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, t2
	mv a3, a2
	call getvalue
	mv t1, a0
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	call getvalue
	mv a0, a0
	addw s1, t1, a0
	mulw t0, t2, a1
	addw t1, t0, a3
	lui t0, %hi(temp)
	addi t0, t0, %lo(temp)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	j .LBB36
.LBB36:
	j .LBB34
    .size floyd, .-floyd
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB37:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a0, a0
	lui t0, %hi(w)
	addi t0, t0, %lo(w)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	li a0, 62
	call _sysy_starttime
	lui t0, %hi(w)
	addi t0, t0, %lo(w)
	addw t1, s0, t0
	lui t0, %hi(dst)
	addi t0, t0, %lo(dst)
	addw t0, s0, t0
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a0
	call floyd
	li a0, 64
	call _sysy_stoptime
	mulw a0, a0, a0
	lui t0, %hi(dst)
	addi t0, t0, %lo(dst)
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
