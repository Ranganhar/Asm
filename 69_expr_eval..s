    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  last_char
    .data
    .align  2
    .type  last_char, @object
    .size  last_char, 4
last_char:
    .word  32
    .globl  num
    .bss
    .align  2
    .type  num, @object
    .size  num, 4
num:
    .zero  4
    .globl  other
    .align  2
    .type  other, @object
    .size  other, 4
other:
    .zero  4
    .globl  cur_token
    .align  2
    .type  cur_token, @object
    .size  cur_token, 4
cur_token:
    .zero  4
    .text
    .align  1
    .globl  next_char
    .type  next_char, @function
next_char:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getch
	mv a0, a0
	lui t0, %hi(last_char)
	sw a0, %lo(last_char)(t0)
	lui t0, %hi(last_char)
	lw a0, %lo(last_char)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size next_char, .-next_char
    .align  1
    .globl  is_space
    .type  is_space, @function
is_space:
.LBB1:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB2
.LBB2:
	li t0, 32
	beq a0, t0, .LBB3
	j .LBB4
.LBB3:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB4:
	li t0, 10
	beq a0, t0, .LBB3
	j .LBB5
    .size is_space, .-is_space
    .align  1
    .globl  is_num
    .type  is_num, @function
is_num:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB7
.LBB7:
	li t0, 48
	bge a0, t0, .LBB8
	j .LBB9
.LBB10:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB8:
	li t0, 57
	bge t0, a0, .LBB10
	j .LBB9
    .size is_num, .-is_num
    .align  1
    .globl  next_token
    .type  next_token, @function
next_token:
.LBB11:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	j .LBB12
.LBB12:
	lui t0, %hi(last_char)
	lw a0, %lo(last_char)(t0)
	mv a0, a0
	call is_space
	mv a0, a0
	bne a0, zero, .LBB13
	j .LBB14
.LBB13:
	call next_char
	j .LBB12
.LBB14:
	lui t0, %hi(last_char)
	lw a0, %lo(last_char)(t0)
	mv a0, a0
	call is_num
	mv t0, a0
	bne t0, zero, .LBB15
	j .LBB16
.LBB15:
	lui t0, %hi(last_char)
	lw t1, %lo(last_char)(t0)
	li t0, 48
	subw t1, t1, t0
	lui t0, %hi(num)
	sw t1, %lo(num)(t0)
	j .LBB17
.LBB16:
	lui t0, %hi(last_char)
	lw t0, %lo(last_char)(t0)
	lui t1, %hi(other)
	sw t0, %lo(other)(t1)
	call next_char
	li t0, 1
	lui t1, %hi(cur_token)
	sw t0, %lo(cur_token)(t1)
	j .LBB18
.LBB17:
	call next_char
	mv a0, a0
	mv a0, a0
	call is_num
	mv t0, a0
	bne t0, zero, .LBB19
	j .LBB20
.LBB19:
	lui t0, %hi(num)
	lw t1, %lo(num)(t0)
	li t0, 10
	mulw t1, t1, t0
	lui t0, %hi(last_char)
	lw t0, %lo(last_char)(t0)
	addw t0, t1, t0
	li t1, 48
	subw t1, t0, t1
	lui t0, %hi(num)
	sw t1, %lo(num)(t0)
	j .LBB17
.LBB20:
	li t1, 0
	lui t0, %hi(cur_token)
	sw t1, %lo(cur_token)(t0)
	j .LBB18
.LBB18:
	lui t0, %hi(cur_token)
	lw a0, %lo(cur_token)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size next_token, .-next_token
    .align  1
    .globl  panic
    .type  panic, @function
panic:
.LBB21:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 112
	call putch
	li a0, 97
	call putch
	li a0, 110
	call putch
	li a0, 105
	call putch
	li a0, 99
	call putch
	li a0, 33
	call putch
	li a0, 10
	call putch
	li a0, -1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size panic, .-panic
    .align  1
    .globl  get_op_prec
    .type  get_op_prec, @function
get_op_prec:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB23
.LBB23:
	li t0, 43
	beq a0, t0, .LBB24
	j .LBB25
.LBB24:
	li a0, 10
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	li t0, 42
	beq a0, t0, .LBB27
	j .LBB28
.LBB25:
	li t0, 45
	beq a0, t0, .LBB24
	j .LBB26
.LBB27:
	li a0, 20
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB29:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB28:
	li t0, 47
	beq a0, t0, .LBB27
	j .LBB30
.LBB30:
	li t0, 37
	beq a0, t0, .LBB27
	j .LBB29
    .size get_op_prec, .-get_op_prec
    .align  1
    .globl  stack_push
    .type  stack_push, @function
stack_push:
.LBB31:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB32
.LBB32:
	addw t0, s0, a0
	lw t0, 0(t0)
	addiw t1, t0, 1
	addw t0, s0, a0
	sw t1, 0(t0)
	addw t0, s0, a0
	lw t1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size stack_push, .-stack_push
    .align  1
    .globl  stack_pop
    .type  stack_pop, @function
stack_pop:
.LBB33:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB34
.LBB34:
	addw t0, s0, a0
	lw t1, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t1, s0, a0
	lw t2, 0(t1)
	li t1, 1
	subw t2, t2, t1
	addw t1, s0, a0
	sw t2, 0(t1)
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size stack_pop, .-stack_pop
    .align  1
    .globl  stack_peek
    .type  stack_peek, @function
stack_peek:
.LBB35:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB36
.LBB36:
	addw t0, s0, a0
	lw t1, 0(t0)
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
    .size stack_peek, .-stack_peek
    .align  1
    .globl  stack_size
    .type  stack_size, @function
stack_size:
.LBB37:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB38
.LBB38:
	addw t0, s0, a0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size stack_size, .-stack_size
    .align  1
    .globl  eval_op
    .type  eval_op, @function
eval_op:
.LBB39:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB40
.LBB40:
	li t0, 43
	beq a0, t0, .LBB41
	j .LBB42
.LBB41:
	addw a0, a1, a2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB42:
	li t0, 45
	beq a0, t0, .LBB43
	j .LBB44
.LBB43:
	subw a0, a1, a2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB44:
	li t0, 42
	beq a0, t0, .LBB45
	j .LBB46
.LBB45:
	mulw a0, a1, a2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB46:
	li t0, 47
	beq a0, t0, .LBB47
	j .LBB48
.LBB47:
	divw a0, a1, a2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB48:
	li t0, 37
	beq a0, t0, .LBB49
	j .LBB50
.LBB49:
	remw a0, a1, a2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB50:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size eval_op, .-eval_op
    .align  1
    .globl  eval
    .type  eval, @function
eval:
.LBB51:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, -4096
	addiw t1, t1, -2048
	add sp, sp, t1
	li t1, -4096
	addiw t1, t1, 1008
	addw a0, s0, t1
	mv a0, a0
	mv a1, a1
	li a2, 1024
	call llvm.memcpy.p0.p0.i32
	li t1, -4096
	addiw t1, t1, 2032
	addw a0, s0, t1
	mv a0, a0
	mv a1, t0
	li a2, 1024
	call llvm.memcpy.p0.p0.i32
	lui t0, %hi(cur_token)
	lw t0, %lo(cur_token)(t0)
	bne t0, zero, .LBB52
	j .LBB53
.LBB52:
	call panic
	mv a0, a0
	mv a0, a0
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB53:
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	lui t1, %hi(num)
	lw a1, %lo(num)(t1)
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call stack_push
	call next_token
	j .LBB54
.LBB54:
	lui t0, %hi(cur_token)
	lw t0, %lo(cur_token)(t0)
	li t1, 1
	beq t0, t1, .LBB55
	j .LBB56
.LBB55:
	lui t0, %hi(other)
	lw a1, %lo(other)(t0)
	mv a0, a1
	call get_op_prec
	mv a0, a0
	beq a0, zero, .LBB57
	j .LBB58
.LBB56:
	call next_token
	j .LBB59
.LBB57:
	j .LBB56
.LBB58:
	call next_token
	j .LBB60
.LBB60:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	call stack_size
	mv a0, a0
	bne a0, zero, .LBB61
	j .LBB62
.LBB63:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv t1, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv a2, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv a1, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	mv a0, t1
	mv a1, a1
	mv a2, a2
	call eval_op
	mv a1, a0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call stack_push
	j .LBB60
.LBB62:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call stack_push
	lui t0, %hi(cur_token)
	lw t0, %lo(cur_token)(t0)
	bne t0, zero, .LBB64
	j .LBB65
.LBB61:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	call stack_peek
	mv a0, a0
	mv a0, a0
	call get_op_prec
	mv t0, a0
	mv a0, a1
	call get_op_prec
	mv a0, a0
	bge t0, a0, .LBB63
	j .LBB62
.LBB64:
	call panic
	mv a0, a0
	mv a0, a0
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB65:
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	lui t1, %hi(num)
	lw a1, %lo(num)(t1)
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call stack_push
	call next_token
	j .LBB54
.LBB59:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	call stack_size
	mv a0, a0
	bne a0, zero, .LBB66
	j .LBB67
.LBB66:
	addiw t0, s0, -1040
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv t1, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv a2, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call stack_pop
	mv a1, a0
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	mv a0, t1
	mv a1, a1
	mv a2, a2
	call eval_op
	mv a1, a0
	addiw a0, t0, 0
	mv a0, a0
	mv a1, a1
	call stack_push
	j .LBB59
.LBB67:
	li t0, -4096
	addiw t0, t0, 2032
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call stack_peek
	mv a0, a0
	mv a0, a0
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size eval, .-eval
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB68:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	call getch
	call next_token
	mv t0, t0
	j .LBB69
.LBB69:
	bne t0, zero, .LBB70
	j .LBB71
.LBB70:
	call eval
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB69
.LBB71:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
