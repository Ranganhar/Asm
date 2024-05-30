    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  i
    .bss
    .align  3
    .type  i, @object
    .size  i, 4
i:
    .zero  4
    .globl  k
    .align  3
    .type  k, @object
    .size  k, 4
k:
    .zero  4
    .text
    .align  1
    .globl  inc_impl
    .type  inc_impl, @function
inc_impl:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	beq a1, zero, .LBB2
	j .LBB3
.LBB2:
	addw t0, s0, a0
	lw t0, 0(t0)
	addiw t1, t0, 1
	addw t0, s0, a0
	sw t1, 0(t0)
	j .LBB4
.LBB3:
	addw t0, s0, a0
	lw t1, 0(t0)
	li t0, 2
	mulw t1, t1, t0
	addw t0, s0, a0
	sw t1, 0(t0)
	li t0, 1
	subw a1, a1, t0
	mv a0, a0
	mv a1, a1
	call inc_impl
	j .LBB4
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size inc_impl, .-inc_impl
    .align  1
    .globl  inc
    .type  inc, @function
inc:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB6
.LBB6:
	lui t0, %hi(k)
	addi t0, t0, %lo(k)
	addw t0, s0, t0
	lw a1, 0(t0)
	mv a0, a0
	mv a1, a1
	call inc_impl
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size inc, .-inc
    .align  1
    .globl  add_impl
    .type  add_impl, @function
add_impl:
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
	beq a2, zero, .LBB9
	j .LBB10
.LBB9:
	addw t0, s0, a0
	lw t1, 0(t0)
	addw t0, s0, a1
	lw t0, 0(t0)
	addw t0, t1, t0
	addw t1, s0, a0
	sw t0, 0(t1)
	j .LBB11
.LBB10:
	addw t0, s0, a0
	lw t0, 0(t0)
	li t1, 2
	mulw t0, t0, t1
	addw t1, s0, a0
	sw t0, 0(t1)
	li t0, 1
	subw a2, a2, t0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call add_impl
	j .LBB11
.LBB11:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size add_impl, .-add_impl
    .align  1
    .globl  add
    .type  add, @function
add:
.LBB12:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB13
.LBB13:
	lui t0, %hi(k)
	addi t0, t0, %lo(k)
	addw t0, s0, t0
	lw a2, 0(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call add_impl
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size add, .-add
    .align  1
    .globl  sub_impl
    .type  sub_impl, @function
sub_impl:
.LBB14:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB15
.LBB15:
	beq a2, zero, .LBB16
	j .LBB17
.LBB16:
	addw t0, s0, a0
	lw t0, 0(t0)
	addw t1, s0, a1
	lw t1, 0(t1)
	subw t0, t0, t1
	addw t1, s0, a0
	sw t0, 0(t1)
	j .LBB18
.LBB17:
	addw t0, s0, a0
	lw t0, 0(t0)
	li t1, 2
	mulw t0, t0, t1
	addw t1, s0, a0
	sw t0, 0(t1)
	li t0, 1
	subw a2, a2, t0
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call sub_impl
	j .LBB18
.LBB18:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size sub_impl, .-sub_impl
    .align  1
    .globl  sub
    .type  sub, @function
sub:
.LBB19:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB20
.LBB20:
	lui t0, %hi(k)
	addi t0, t0, %lo(k)
	addw t0, s0, t0
	lw a2, 0(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call sub_impl
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size sub, .-sub
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB21:
	addi sp, sp, -32
	sd ra, 24(sp)
	sd s0, 16(sp)
	addi s0, sp, 32
	addiw a0, s0, -40
	mv a0, a0
	mv a1, a1
	li a2, 8
	call llvm.memcpy.p0.p0.i32
	call getint
	mv t0, a0
	lui t1, %hi(k)
	addi t1, t1, %lo(k)
	addw t1, s0, t1
	sw t0, 0(t1)
	call getint
	mv a0, a0
	addiw t0, s0, -20
	sw a0, 0(t0)
	addiw t0, s0, -32
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	j .LBB22
.LBB22:
	addiw t0, s0, -20
	lw t0, 0(t0)
	bne t0, zero, .LBB23
	j .LBB24
.LBB23:
	addiw t0, s0, -32
	lw t1, 0(t0)
	addiw t0, s0, -24
	sw t1, 0(t0)
	j .LBB25
.LBB24:
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 24(sp)
	ld s0, 16(sp)
	addi sp, sp, 32
	ret 
.LBB25:
	addiw t0, s0, -24
	lw t0, 0(t0)
	li t1, 5
	blt t0, t1, .LBB26
	j .LBB27
.LBB26:
	lui t0, %hi(i)
	addi t0, t0, %lo(i)
	addw t0, s0, t0
	lw a0, 0(t0)
	mv a0, a0
	call putint
	addiw t0, s0, -24
	lw a0, 0(t0)
	mv a0, a0
	call putint
	addiw t0, s0, -20
	lw a0, 0(t0)
	mv a0, a0
	call putint
	addiw t0, s0, -32
	lw a0, 0(t0)
	mv a0, a0
	call putint
	addiw t1, s0, -32
	addiw t0, s0, -20
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call add
	addiw t1, s0, -24
	addiw t0, s0, -20
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call add
	addiw t1, s0, -32
	addiw t0, s0, -20
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call sub
	j .LBB25
.LBB27:
	lui t0, %hi(i)
	addi t0, t0, %lo(i)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call inc
	lui t0, %hi(i)
	addi t0, t0, %lo(i)
	addw t0, s0, t0
	addiw t1, s0, -32
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call add
	lui t0, %hi(i)
	addi t0, t0, %lo(i)
	addw t0, s0, t0
	lw t1, 0(t0)
	addiw t0, s0, -32
	lw t0, 4(t0)
	beq t1, t0, .LBB28
	j .LBB29
.LBB28:
	j .LBB24
.LBB29:
	j .LBB22
    .size main, .-main
