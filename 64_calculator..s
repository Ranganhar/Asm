    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  ints
    .bss
    .align  3
    .type  ints, @object
    .size  ints, 40000
ints:
    .zero  40000
    .globl  intt
    .align  2
    .type  intt, @object
    .size  intt, 4
intt:
    .zero  4
    .globl  chas
    .align  3
    .type  chas, @object
    .size  chas, 40000
chas:
    .zero  40000
    .globl  chat
    .align  2
    .type  chat, @object
    .size  chat, 4
chat:
    .zero  4
    .globl  i
    .data
    .align  2
    .type  i, @object
    .size  i, 4
i:
    .zero  4
    .globl  ii
    .align  2
    .type  ii, @object
    .size  ii, 4
ii:
    .word  1
    .globl  c
    .bss
    .align  2
    .type  c, @object
    .size  c, 4
c:
    .zero  4
    .globl  get
    .align  3
    .type  get, @object
    .size  get, 40000
get:
    .zero  40000
    .globl  get2
    .align  3
    .type  get2, @object
    .size  get2, 40000
get2:
    .zero  40000
    .text
    .align  1
    .globl  isdigit
    .type  isdigit, @function
isdigit:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 48
	bge a0, t0, .LBB2
	j .LBB3
.LBB4:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB2:
	li t0, 57
	bge t0, a0, .LBB4
	j .LBB3
    .size isdigit, .-isdigit
    .align  1
    .globl  power
    .type  power, @function
power:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB6
.LBB6:
	mv a1, a1
	li t0, 1
	j .LBB7
.LBB7:
	bne a1, zero, .LBB8
	j .LBB9
.LBB8:
	mulw t0, t0, a0
	li t1, 1
	subw a1, a1, t1
	mv a1, a1
	mv t0, t0
	j .LBB7
.LBB9:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size power, .-power
    .align  1
    .globl  getstr
    .type  getstr, @function
getstr:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB11
.LBB11:
	call getch
	mv t2, a0
	mv t2, t2
	mv t1, zero
	j .LBB12
.LBB12:
	li t0, 13
	bne t2, t0, .LBB13
	j .LBB14
.LBB15:
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	addiw t1, t1, 1
	call getch
	mv t2, a0
	mv t2, t2
	mv t1, t1
	j .LBB12
.LBB14:
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB13:
	li t0, 10
	bne t2, t0, .LBB15
	j .LBB14
    .size getstr, .-getstr
    .align  1
    .globl  intpush
    .type  intpush, @function
intpush:
.LBB16:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB17
.LBB17:
	lui t0, %hi(intt)
	lw t0, %lo(intt)(t0)
	addiw t0, t0, 1
	lui t1, %hi(intt)
	sw t0, %lo(intt)(t1)
	lui t0, %hi(intt)
	lw t1, %lo(intt)(t0)
	lui t0, %hi(ints)
	addi t0, t0, %lo(ints)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size intpush, .-intpush
    .align  1
    .globl  chapush
    .type  chapush, @function
chapush:
.LBB18:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB19
.LBB19:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	addiw t1, t0, 1
	lui t0, %hi(chat)
	sw t1, %lo(chat)(t0)
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size chapush, .-chapush
    .align  1
    .globl  intpop
    .type  intpop, @function
intpop:
.LBB20:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(intt)
	lw t0, %lo(intt)(t0)
	li t1, 1
	subw t0, t0, t1
	lui t1, %hi(intt)
	sw t0, %lo(intt)(t1)
	lui t0, %hi(intt)
	lw t0, %lo(intt)(t0)
	addiw t0, t0, 1
	lui t1, %hi(ints)
	addi t1, t1, %lo(ints)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size intpop, .-intpop
    .align  1
    .globl  chapop
    .type  chapop, @function
chapop:
.LBB21:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	li t0, 1
	subw t0, t1, t0
	lui t1, %hi(chat)
	sw t0, %lo(chat)(t1)
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	addiw t0, t0, 1
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size chapop, .-chapop
    .align  1
    .globl  intadd
    .type  intadd, @function
intadd:
.LBB22:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB23
.LBB23:
	lui t0, %hi(intt)
	lw t1, %lo(intt)(t0)
	lui t0, %hi(ints)
	addi t0, t0, %lo(ints)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 10
	mulw t1, t0, t1
	lui t0, %hi(intt)
	lw t2, %lo(intt)(t0)
	lui t0, %hi(ints)
	addi t0, t0, %lo(ints)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(intt)
	lw t0, %lo(intt)(t0)
	lui t1, %hi(ints)
	addi t1, t1, %lo(ints)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t2, t0, a0
	lui t0, %hi(intt)
	lw t1, %lo(intt)(t0)
	lui t0, %hi(ints)
	addi t0, t0, %lo(ints)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size intadd, .-intadd
    .align  1
    .globl  find
    .type  find, @function
find:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call chapop
	mv a0, a0
	lui t0, %hi(c)
	sw a0, %lo(c)(t0)
	lui t0, %hi(ii)
	lw t1, %lo(ii)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 32
	sw t0, 0(t1)
	lui t0, %hi(c)
	lw t1, %lo(c)(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 1
	lui t2, %hi(get2)
	addi t2, t2, %lo(get2)
	addw t0, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 2
	lui t1, %hi(ii)
	sw t0, %lo(ii)(t1)
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	beq t0, zero, .LBB25
	j .LBB26
.LBB25:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB26:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size find, .-find
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB27:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li t1, 0
	lui t0, %hi(intt)
	sw t1, %lo(intt)(t0)
	li t1, 0
	lui t0, %hi(chat)
	sw t1, %lo(chat)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getstr
	mv t1, a0
	j .LBB28
.LBB28:
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	blt t0, t1, .LBB29
	j .LBB30
.LBB29:
	lui t0, %hi(i)
	lw t2, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call isdigit
	mv t0, a0
	li t2, 1
	beq t0, t2, .LBB31
	j .LBB32
.LBB30:
	j .LBB33
.LBB31:
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	lui t2, %hi(get)
	addi t2, t2, %lo(get)
	addw t0, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw s1, 0(t0)
	lui t0, %hi(ii)
	lw t2, %lo(ii)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t2, t0, 1
	lui t0, %hi(ii)
	sw t2, %lo(ii)(t0)
	j .LBB34
.LBB32:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 40
	beq t0, t1, .LBB35
	j .LBB36
.LBB34:
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	addiw t0, t0, 1
	lui t2, %hi(i)
	sw t0, %lo(i)(t2)
	j .LBB28
.LBB35:
	li a0, 40
	call chapush
	j .LBB36
.LBB36:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB37
	j .LBB38
.LBB37:
	li a0, 94
	call chapush
	j .LBB38
.LBB38:
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	lui t1, %hi(get)
	addi t1, t1, %lo(get)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 41
	beq t0, t1, .LBB39
	j .LBB40
.LBB39:
	call chapop
	mv t0, a0
	lui t1, %hi(c)
	sw t0, %lo(c)(t1)
	j .LBB41
.LBB40:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB42
	j .LBB43
.LBB41:
	lui t0, %hi(c)
	lw t0, %lo(c)(t0)
	li t1, 40
	bne t0, t1, .LBB44
	j .LBB45
.LBB44:
	lui t0, %hi(ii)
	lw t1, %lo(ii)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 32
	sw t0, 0(t1)
	lui t0, %hi(c)
	lw t1, %lo(c)(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t2, t0, 1
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 2
	lui t1, %hi(ii)
	sw t0, %lo(ii)(t1)
	call chapop
	mv a0, a0
	lui t0, %hi(c)
	sw a0, %lo(c)(t0)
	j .LBB41
.LBB45:
	j .LBB40
.LBB42:
	j .LBB46
.LBB43:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB47
	j .LBB48
.LBB46:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB49
	j .LBB50
.LBB49:
	call find
	mv a0, a0
	beq a0, zero, .LBB51
	j .LBB52
.LBB53:
	li a0, 43
	call chapush
	j .LBB43
.LBB50:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB49
	j .LBB54
.LBB54:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB49
	j .LBB55
.LBB55:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB49
	j .LBB56
.LBB56:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB49
	j .LBB57
.LBB57:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB49
	j .LBB53
.LBB51:
	j .LBB53
.LBB52:
	j .LBB46
.LBB47:
	j .LBB58
.LBB48:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB59
	j .LBB60
.LBB58:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 43
	beq t0, t1, .LBB61
	j .LBB62
.LBB61:
	call find
	mv a0, a0
	beq a0, zero, .LBB63
	j .LBB64
.LBB65:
	li a0, 45
	call chapush
	j .LBB48
.LBB62:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB61
	j .LBB66
.LBB66:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB61
	j .LBB67
.LBB67:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB61
	j .LBB68
.LBB68:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB61
	j .LBB69
.LBB69:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB61
	j .LBB65
.LBB63:
	j .LBB65
.LBB64:
	j .LBB58
.LBB59:
	j .LBB70
.LBB60:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB71
	j .LBB72
.LBB70:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB73
	j .LBB74
.LBB73:
	call find
	mv a0, a0
	beq a0, zero, .LBB75
	j .LBB76
.LBB77:
	li a0, 42
	call chapush
	j .LBB60
.LBB74:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB73
	j .LBB78
.LBB78:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB73
	j .LBB79
.LBB79:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB73
	j .LBB77
.LBB75:
	j .LBB77
.LBB76:
	j .LBB70
.LBB71:
	j .LBB80
.LBB72:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get)
	addi t0, t0, %lo(get)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB81
	j .LBB82
.LBB80:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB83
	j .LBB84
.LBB83:
	call find
	mv a0, a0
	beq a0, zero, .LBB85
	j .LBB86
.LBB87:
	li a0, 47
	call chapush
	j .LBB72
.LBB84:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB83
	j .LBB88
.LBB88:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB83
	j .LBB89
.LBB89:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB83
	j .LBB87
.LBB85:
	j .LBB87
.LBB86:
	j .LBB80
.LBB81:
	j .LBB90
.LBB82:
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t1, t1, t0
	li t0, 32
	sw t0, 0(t1)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 1
	lui t1, %hi(ii)
	sw t0, %lo(ii)(t1)
	j .LBB34
.LBB90:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB91
	j .LBB92
.LBB91:
	call find
	mv a0, a0
	beq a0, zero, .LBB93
	j .LBB94
.LBB95:
	li a0, 37
	call chapush
	j .LBB82
.LBB92:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	lui t1, %hi(chas)
	addi t1, t1, %lo(chas)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB91
	j .LBB96
.LBB96:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB91
	j .LBB97
.LBB97:
	lui t0, %hi(chat)
	lw t1, %lo(chat)(t0)
	lui t0, %hi(chas)
	addi t0, t0, %lo(chas)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB91
	j .LBB95
.LBB93:
	j .LBB95
.LBB94:
	j .LBB90
.LBB33:
	lui t0, %hi(chat)
	lw t0, %lo(chat)(t0)
	blt zero, t0, .LBB98
	j .LBB99
.LBB98:
	call chapop
	mv a0, a0
	lui t0, %hi(ii)
	lw t1, %lo(ii)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 32
	sw t0, 0(t1)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 1
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw a0, 0(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 2
	lui t1, %hi(ii)
	sw t0, %lo(ii)(t1)
	j .LBB33
.LBB99:
	lui t0, %hi(ii)
	lw t1, %lo(ii)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 64
	sw t0, 0(t1)
	li t0, 1
	lui t1, %hi(i)
	sw t0, %lo(i)(t1)
	mv t0, undef
	j .LBB100
.LBB100:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 64
	bne t1, t0, .LBB101
	j .LBB102
.LBB101:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 43
	beq t1, t0, .LBB103
	j .LBB104
.LBB102:
	lui t0, %hi(ints)
	addi t0, t0, %lo(ints)
	addw t0, s0, t0
	lw a0, 4(t0)
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB103:
	call intpop
	mv a1, a0
	call intpop
	mv a0, a0
	lui t1, %hi(i)
	lw t1, %lo(i)(t1)
	lui t2, %hi(get2)
	addi t2, t2, %lo(get2)
	addw t1, s0, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 43
	beq t1, t0, .LBB105
	j .LBB128
.LBB107:
	lui t1, %hi(i)
	lw t1, %lo(i)(t1)
	lui t2, %hi(get2)
	addi t2, t2, %lo(get2)
	addw t1, s0, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 32
	bne t1, t0, .LBB108
	j .LBB109
.LBB104:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 45
	beq t0, t1, .LBB103
	j .LBB110
.LBB110:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 42
	beq t0, t1, .LBB103
	j .LBB111
.LBB111:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 47
	beq t0, t1, .LBB103
	j .LBB112
.LBB112:
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 37
	beq t0, t1, .LBB103
	j .LBB113
.LBB113:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li t1, 94
	beq t0, t1, .LBB103
	j .LBB107
.LBB105:
	addw t0, a1, a0
	mv t0, t0
	j .LBB106
.LBB106:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 45
	beq t1, t0, .LBB114
	j .LBB129
.LBB114:
	subw t0, a0, a1
	mv t0, t0
	j .LBB115
.LBB115:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 42
	beq t1, t0, .LBB116
	j .LBB130
.LBB116:
	mulw t0, a1, a0
	mv t0, t0
	j .LBB117
.LBB117:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 47
	beq t1, t0, .LBB118
	j .LBB131
.LBB118:
	divw t0, a0, a1
	mv t0, t0
	j .LBB119
.LBB119:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 37
	beq t1, t0, .LBB120
	j .LBB132
.LBB120:
	remw t0, a0, a1
	mv t0, t0
	j .LBB121
.LBB121:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 94
	beq t1, t0, .LBB122
	j .LBB133
.LBB122:
	mv a0, a0
	mv a1, a1
	call power
	mv t0, a0
	mv t0, t0
	j .LBB123
.LBB123:
	mv a0, t0
	call intpush
	mv t0, t0
	j .LBB124
.LBB124:
	lui t1, %hi(i)
	lw t1, %lo(i)(t1)
	addiw t1, t1, 1
	lui t2, %hi(i)
	sw t1, %lo(i)(t2)
	mv t0, t0
	j .LBB100
.LBB108:
	lui t1, %hi(i)
	lw t1, %lo(i)(t1)
	lui t2, %hi(get2)
	addi t2, t2, %lo(get2)
	addw t1, s0, t2
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 48
	subw a0, t1, t2
	mv a0, a0
	call intpush
	li t2, 1
	lui t1, %hi(ii)
	sw t2, %lo(ii)(t1)
	j .LBB125
.LBB109:
	mv t0, t0
	j .LBB124
.LBB125:
	lui t1, %hi(i)
	lw t1, %lo(i)(t1)
	lui t2, %hi(ii)
	lw t2, %lo(ii)(t2)
	addw t2, t1, t2
	lui t1, %hi(get2)
	addi t1, t1, %lo(get2)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t0, 32
	bne t1, t0, .LBB126
	j .LBB127
.LBB126:
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addw t1, t1, t0
	lui t0, %hi(get2)
	addi t0, t0, %lo(get2)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	li t0, 48
	subw a0, t1, t0
	mv a0, a0
	call intadd
	lui t0, %hi(ii)
	lw t0, %lo(ii)(t0)
	addiw t0, t0, 1
	lui t1, %hi(ii)
	sw t0, %lo(ii)(t1)
	j .LBB125
.LBB127:
	lui t1, %hi(i)
	lw t2, %lo(i)(t1)
	lui t1, %hi(ii)
	lw t1, %lo(ii)(t1)
	addw t2, t2, t1
	li t1, 1
	subw t1, t2, t1
	lui t2, %hi(i)
	sw t1, %lo(i)(t2)
	j .LBB109
.LBB128:
	mv t0, t0
	j .LBB106
.LBB129:
	mv t0, t0
	j .LBB115
.LBB130:
	mv t0, t0
	j .LBB117
.LBB131:
	mv t0, t0
	j .LBB119
.LBB132:
	mv t0, t0
	j .LBB121
.LBB133:
	mv t0, t0
	j .LBB123
    .size main, .-main
