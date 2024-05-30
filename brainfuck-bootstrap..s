    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  program_length
    .data
    .align  2
    .type  program_length, @object
    .size  program_length, 4
program_length:
    .zero  4
    .globl  program
    .bss
    .align  3
    .type  program, @object
    .size  program, 262144
program:
    .zero  262144
    .globl  tape
    .align  3
    .type  tape, @object
    .size  tape, 262144
tape:
    .zero  262144
    .globl  input
    .align  3
    .type  input, @object
    .size  input, 262144
input:
    .zero  262144
    .globl  input_length
    .data
    .align  2
    .type  input_length, @object
    .size  input_length, 4
input_length:
    .zero  4
    .globl  output
    .bss
    .align  3
    .type  output, @object
    .size  output, 262144
output:
    .zero  262144
    .globl  output_length
    .data
    .align  2
    .type  output_length, @object
    .size  output_length, 4
output_length:
    .zero  4
    .text
    .align  1
    .globl  get_bf_char
    .type  get_bf_char, @function
get_bf_char:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB1
.LBB1:
	li t1, 62
	bne t0, t1, .LBB2
	j .LBB3
.LBB4:
	call getch
	mv t0, a0
	mv t0, t0
	j .LBB1
.LBB3:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB2:
	li t1, 60
	bne t0, t1, .LBB5
	j .LBB3
.LBB5:
	li t1, 43
	bne t0, t1, .LBB6
	j .LBB3
.LBB6:
	li t1, 45
	bne t0, t1, .LBB7
	j .LBB3
.LBB7:
	li t1, 91
	bne t0, t1, .LBB8
	j .LBB3
.LBB8:
	li t1, 93
	bne t0, t1, .LBB9
	j .LBB3
.LBB9:
	li t1, 46
	bne t0, t1, .LBB10
	j .LBB3
.LBB10:
	li t1, 44
	bne t0, t1, .LBB11
	j .LBB3
.LBB11:
	li t1, 35
	bne t0, t1, .LBB4
	j .LBB3
    .size get_bf_char, .-get_bf_char
    .align  1
    .globl  read_program
    .type  read_program, @function
read_program:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call get_bf_char
	mv t0, a0
	mv t0, t0
	j .LBB13
.LBB13:
	li t1, 35
	bne t0, t1, .LBB14
	j .LBB15
.LBB14:
	lui t1, %hi(program_length)
	lw t2, %lo(program_length)(t1)
	lui t1, %hi(program)
	addi t1, t1, %lo(program)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	call get_bf_char
	mv t0, a0
	lui t1, %hi(program_length)
	lw t1, %lo(program_length)(t1)
	addiw t2, t1, 1
	lui t1, %hi(program_length)
	sw t2, %lo(program_length)(t1)
	mv t0, t0
	j .LBB13
.LBB15:
	call getch
	mv t0, a0
	li t1, 105
	bne t0, t1, .LBB16
	j .LBB17
.LBB16:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB17:
	call getint
	mv t0, a0
	lui t1, %hi(input_length)
	sw t0, %lo(input_length)(t1)
	call getch
	mv t0, zero
	j .LBB18
.LBB18:
	lui t1, %hi(input_length)
	lw t1, %lo(input_length)(t1)
	blt t0, t1, .LBB19
	j .LBB20
.LBB19:
	call getch
	mv a0, a0
	lui t1, %hi(input)
	addi t1, t1, %lo(input)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB18
.LBB20:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size read_program, .-read_program
    .align  1
    .globl  run_program
    .type  run_program, @function
run_program:
.LBB21:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	li t0, -4096
	addiw t0, t0, -16
	addw a0, s0, t0
	mv a0, a0
	mv a1, a1
	li a2, -4096
	addiw a2, a2, -2048
	mv a2, a2
	call llvm.memcpy.p0.p0.i32
	li t0, 0
	lui t1, %hi(output_length)
	sw t0, %lo(output_length)(t1)
	mv s1, zero
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j .LBB22
.LBB22:
	lui a0, %hi(program_length)
	lw a0, %lo(program_length)(a0)
	blt t0, a0, .LBB23
	j .LBB24
.LBB23:
	lui a0, %hi(program)
	addi a0, a0, %lo(program)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t0, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li a1, 62
	beq a0, a1, .LBB25
	j .LBB26
.LBB24:
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB25:
	addiw t1, t1, 1
	mv s1, s1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB27
.LBB26:
	li a1, 60
	beq a0, a1, .LBB28
	j .LBB29
.LBB27:
	addiw t0, t0, 1
	mv s1, s1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB22
.LBB28:
	li a0, 1
	subw t1, t1, a0
	mv s1, s1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB30
.LBB29:
	li a1, 43
	beq a0, a1, .LBB31
	j .LBB32
.LBB30:
	mv s1, s1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB27
.LBB31:
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	addiw a1, a0, 1
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	sw a1, 0(a0)
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB33
.LBB32:
	li a1, 45
	beq a0, a1, .LBB34
	j .LBB35
.LBB33:
	mv s1, s1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB30
.LBB34:
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	lw a0, 0(a0)
	li a1, 1
	subw a1, a0, a1
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw a0, s0, a0
	li a0, 4
	mulw a0, t1, a0
	addw a0, a0, a0
	sw a1, 0(a0)
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB36
.LBB35:
	li a1, 91
	beq a0, a1, .LBB37
	j .LBB38
.LBB36:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB33
.LBB37:
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw t1, s0, a0
	li a0, 4
	mulw t1, t1, a0
	addw t1, t1, t1
	lw t1, 0(t1)
	bne t1, zero, .LBB39
	j .LBB40
.LBB38:
	li t0, 93
	beq a0, t0, .LBB41
	j .LBB42
.LBB39:
	li t1, -4096
	addiw t1, t1, 2032
	addw t1, s0, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	sw t0, 0(t1)
	addiw s1, s1, 1
	mv s1, s1
	mv t0, t0
	j .LBB43
.LBB40:
	li t0, 1
	mv t0, t0
	j .LBB44
.LBB43:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB45
.LBB44:
	blt zero, t0, .LBB46
	j .LBB47
.LBB46:
	addiw t0, t0, 1
	lui t1, %hi(program)
	addi t1, t1, %lo(program)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 93
	beq t1, t0, .LBB48
	j .LBB64
.LBB47:
	mv s1, s1
	mv t0, t0
	j .LBB43
.LBB48:
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB49
.LBB49:
	lui t1, %hi(program)
	addi t1, t1, %lo(program)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 91
	beq t1, t0, .LBB50
	j .LBB65
.LBB50:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB51
.LBB51:
	mv t0, t0
	mv t0, t0
	j .LBB44
.LBB45:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB36
.LBB41:
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw t1, s0, a0
	li a0, 4
	mulw t1, t1, a0
	addw t1, t1, t1
	lw t1, 0(t1)
	beq t1, zero, .LBB52
	j .LBB53
.LBB42:
	li t0, 46
	beq a0, t0, .LBB54
	j .LBB55
.LBB52:
	li t1, 1
	subw s1, s1, t1
	mv s1, s1
	mv t0, t0
	j .LBB56
.LBB53:
	li t0, 1
	subw t1, s1, t0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv s1, s1
	mv t0, t0
	j .LBB56
.LBB56:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB57
.LBB57:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB45
.LBB54:
	lui a0, %hi(tape)
	addi a0, a0, %lo(tape)
	addw t1, s0, a0
	li a0, 4
	mulw t1, t1, a0
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(output_length)
	lw a1, %lo(output_length)(t1)
	lui t1, %hi(output)
	addi t1, t1, %lo(output)
	addw t1, s0, t1
	li t1, 4
	mulw t1, a1, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	lui t1, %hi(output_length)
	lw t1, %lo(output_length)(t1)
	addiw a0, t1, 1
	lui t1, %hi(output_length)
	sw a0, %lo(output_length)(t1)
	mv t2, t2
	j .LBB58
.LBB55:
	li t0, 44
	beq a0, t0, .LBB59
	j .LBB66
.LBB58:
	mv s1, s1
	mv t2, t2
	mv t0, t0
	j .LBB57
.LBB59:
	lui t0, %hi(input_length)
	lw t0, %lo(input_length)(t0)
	bge t2, t0, .LBB61
	j .LBB62
.LBB60:
	mv t2, t2
	j .LBB58
.LBB61:
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 0
	sw t0, 0(t1)
	mv t2, t2
	j .LBB63
.LBB62:
	lui t0, %hi(input)
	addi t0, t0, %lo(input)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	lui t0, %hi(tape)
	addi t0, t0, %lo(tape)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB63
.LBB63:
	mv t2, t2
	j .LBB60
.LBB64:
	mv t0, t0
	j .LBB49
.LBB65:
	mv t0, t0
	j .LBB51
.LBB66:
	mv t2, t2
	j .LBB60
    .size run_program, .-run_program
    .align  1
    .globl  output_
    .type  output_, @function
output_:
.LBB67:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, zero
	j .LBB68
.LBB68:
	lui t1, %hi(output_length)
	lw t1, %lo(output_length)(t1)
	blt t0, t1, .LBB69
	j .LBB70
.LBB69:
	lui t1, %hi(output)
	addi t1, t1, %lo(output)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB68
.LBB70:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size output_, .-output_
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB71:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call read_program
	li a0, 116
	call _sysy_starttime
	call run_program
	li a0, 118
	call _sysy_stoptime
	call output_
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
