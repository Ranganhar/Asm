    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  tape
    .bss
    .align  3
    .type  tape, @object
    .size  tape, 262144
tape:
    .zero  262144
    .globl  program
    .align  3
    .type  program, @object
    .size  program, 131072
program:
    .zero  131072
    .globl  ptr
    .data
    .align  2
    .type  ptr, @object
    .size  ptr, 4
ptr:
    .zero  4
    .text
    .align  1
    .globl  read_program
    .type  read_program, @function
read_program:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	mv t1, zero
	j .LBB1
.LBB1:
	blt t1, t0, .LBB2
	j .LBB3
.LBB2:
	call getch
	mv a0, a0
	lui t2, %hi(program)
	addi t2, t2, %lo(program)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB1
.LBB3:
	lui t0, %hi(program)
	addi t0, t0, %lo(program)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size read_program, .-read_program
    .align  1
    .globl  interpret
    .type  interpret, @function
interpret:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB5
.LBB5:
	mv t1, zero
	j .LBB6
.LBB6:
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	bne t2, zero, .LBB7
	j .LBB8
.LBB7:
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li t1, 62
	beq t2, t1, .LBB9
	j .LBB10
.LBB8:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	lui t2, %hi(ptr)
	lw t2, %lo(ptr)(t2)
	addiw s1, t2, 1
	lui t2, %hi(ptr)
	sw s1, %lo(ptr)(t2)
	mv t1, t1
	j .LBB11
.LBB10:
	li t0, 60
	beq t2, t0, .LBB12
	j .LBB13
.LBB11:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB6
.LBB12:
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	li t0, 1
	subw t0, t2, t0
	lui t2, %hi(ptr)
	sw t0, %lo(ptr)(t2)
	mv t1, t1
	j .LBB14
.LBB13:
	li t0, 43
	beq t2, t0, .LBB15
	j .LBB16
.LBB14:
	mv t1, t1
	j .LBB11
.LBB15:
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw t0, t0, 1
	lui t2, %hi(ptr)
	lw s1, %lo(ptr)(t2)
	lui t2, %hi(tape)
	addi t2, t2, %lo(tape)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	mv t1, t1
	j .LBB17
.LBB16:
	li t0, 45
	beq t2, t0, .LBB18
	j .LBB19
.LBB17:
	mv t1, t1
	j .LBB14
.LBB18:
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t2, 1
	subw t2, t0, t2
	lui t0, %hi(ptr)
	lw s1, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	mv t1, t1
	j .LBB20
.LBB19:
	li t0, 46
	beq t2, t0, .LBB21
	j .LBB22
.LBB20:
	mv t1, t1
	j .LBB17
.LBB21:
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call putch
	mv t1, t1
	j .LBB23
.LBB22:
	li t0, 44
	beq t2, t0, .LBB24
	j .LBB25
.LBB23:
	mv t1, t1
	j .LBB20
.LBB24:
	call getch
	mv a0, a0
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	mv t1, t1
	j .LBB26
.LBB25:
	li t0, 93
	beq t2, t0, .LBB27
	j .LBB38
.LBB26:
	mv t1, t1
	j .LBB23
.LBB29:
	li t0, 1
	mv t1, t1
	j .LBB30
.LBB28:
	mv t1, t1
	j .LBB26
.LBB27:
	lui t0, %hi(ptr)
	lw t2, %lo(ptr)(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	bne t0, zero, .LBB29
	j .LBB39
.LBB30:
	blt zero, t0, .LBB31
	j .LBB32
.LBB31:
	li t2, 1
	subw t1, t1, t2
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li t0, 91
	beq t2, t0, .LBB33
	j .LBB34
.LBB32:
	mv t1, t1
	j .LBB28
.LBB33:
	li t2, 1
	subw t0, t0, t2
	mv t0, t0
	j .LBB35
.LBB34:
	li t0, 93
	beq t2, t0, .LBB36
	j .LBB40
.LBB35:
	mv t0, t0
	mv t1, t1
	j .LBB30
.LBB36:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB37
.LBB37:
	mv t0, t0
	j .LBB35
.LBB38:
	mv t1, t1
	j .LBB28
.LBB39:
	mv t1, t1
	j .LBB28
.LBB40:
	mv t0, t0
	j .LBB37
    .size interpret, .-interpret
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB41:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call read_program
	lui t0, %hi(program)
	addi t0, t0, %lo(program)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call interpret
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
