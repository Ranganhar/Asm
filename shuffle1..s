    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  hashmod
    .bss
    .align  2
    .type  hashmod, @object
    .size  hashmod, 4
hashmod:
    .zero  4
    .globl  bucket
    .align  3
    .type  bucket, @object
    .size  bucket, 40000000
bucket:
    .zero  40000000
    .globl  head
    .align  3
    .type  head, @object
    .size  head, 40000000
head:
    .zero  40000000
    .globl  next
    .align  3
    .type  next, @object
    .size  next, 40000000
next:
    .zero  40000000
    .globl  nextvalue
    .align  3
    .type  nextvalue, @object
    .size  nextvalue, 40000000
nextvalue:
    .zero  40000000
    .globl  key
    .align  3
    .type  key, @object
    .size  key, 40000000
key:
    .zero  40000000
    .globl  value
    .align  3
    .type  value, @object
    .size  value, 40000000
value:
    .zero  40000000
    .globl  cnt
    .align  2
    .type  cnt, @object
    .size  cnt, 4
cnt:
    .zero  4
    .globl  keys
    .align  3
    .type  keys, @object
    .size  keys, 40000000
keys:
    .zero  40000000
    .globl  values
    .align  3
    .type  values, @object
    .size  values, 40000000
values:
    .zero  40000000
    .globl  requests
    .align  3
    .type  requests, @object
    .size  requests, 40000000
requests:
    .zero  40000000
    .globl  ans
    .align  3
    .type  ans, @object
    .size  ans, 40000000
ans:
    .zero  40000000
    .text
    .align  1
    .globl  hash
    .type  hash, @function
hash:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	lui t0, %hi(hashmod)
	lw t0, %lo(hashmod)(t0)
	remw a0, a0, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size hash, .-hash
    .align  1
    .globl  insert
    .type  insert, @function
insert:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, a0
	mv a1, a1
	j .LBB3
.LBB3:
	mv a0, t1
	call hash
	mv a0, a0
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, zero, .LBB4
	j .LBB5
.LBB4:
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	addiw t2, t0, 1
	lui t0, %hi(cnt)
	sw t2, %lo(cnt)(t0)
	lui t0, %hi(cnt)
	lw t2, %lo(cnt)(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(cnt)
	lw t2, %lo(cnt)(t0)
	lui t0, %hi(key)
	addi t0, t0, %lo(key)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(next)
	addi t0, t0, %lo(next)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(nextvalue)
	addi t0, t0, %lo(nextvalue)
	addw t1, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t1, t1, t0
	li t0, 0
	sw t0, 0(t1)
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB6
.LBB6:
	bne t0, zero, .LBB7
	j .LBB8
.LBB7:
	lui t2, %hi(key)
	addi t2, t2, %lo(key)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	beq t2, t1, .LBB9
	j .LBB10
.LBB8:
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	addiw t2, t0, 1
	lui t0, %hi(cnt)
	sw t2, %lo(cnt)(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	lui t2, %hi(cnt)
	lw s1, %lo(cnt)(t2)
	lui t2, %hi(next)
	addi t2, t2, %lo(next)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	lui t0, %hi(cnt)
	lw t2, %lo(cnt)(t0)
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(cnt)
	lw t2, %lo(cnt)(t0)
	lui t0, %hi(key)
	addi t0, t0, %lo(key)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(cnt)
	lw t0, %lo(cnt)(t0)
	lui t1, %hi(value)
	addi t1, t1, %lo(value)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw a1, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(nextvalue)
	addi t0, t0, %lo(nextvalue)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	lui t1, %hi(cnt)
	lw t1, %lo(cnt)(t1)
	addiw t1, t1, 1
	lui t2, %hi(cnt)
	sw t1, %lo(cnt)(t2)
	lui t1, %hi(nextvalue)
	addi t1, t1, %lo(nextvalue)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	lui t1, %hi(cnt)
	lw s1, %lo(cnt)(t1)
	lui t1, %hi(nextvalue)
	addi t1, t1, %lo(nextvalue)
	addw t1, s0, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	lui t1, %hi(cnt)
	lw t2, %lo(cnt)(t1)
	lui t1, %hi(nextvalue)
	addi t1, t1, %lo(nextvalue)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	sw t2, 0(t0)
	lui t0, %hi(cnt)
	lw t1, %lo(cnt)(t0)
	lui t0, %hi(value)
	addi t0, t0, %lo(value)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB10:
	lui t1, %hi(next)
	addi t1, t1, %lo(next)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB6
    .size insert, .-insert
    .align  1
    .globl  reduce
    .type  reduce, @function
reduce:
.LBB11:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, a0
	j .LBB12
.LBB12:
	mv a0, t1
	call hash
	mv a0, a0
	lui t0, %hi(head)
	addi t0, t0, %lo(head)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB13
.LBB13:
	bne t0, zero, .LBB14
	j .LBB15
.LBB14:
	lui t2, %hi(key)
	addi t2, t2, %lo(key)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	beq t2, t1, .LBB16
	j .LBB17
.LBB15:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB16:
	mv a0, zero
	mv t0, t0
	j .LBB18
.LBB17:
	lui t1, %hi(next)
	addi t1, t1, %lo(next)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	mv t0, t0
	j .LBB13
.LBB18:
	bne t0, zero, .LBB19
	j .LBB20
.LBB19:
	lui t1, %hi(value)
	addi t1, t1, %lo(value)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw a0, a0, t1
	lui t1, %hi(nextvalue)
	addi t1, t1, %lo(nextvalue)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	mv a0, a0
	mv t0, t0
	j .LBB18
.LBB20:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size reduce, .-reduce
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB21:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a0, a0
	lui t0, %hi(hashmod)
	sw a0, %lo(hashmod)(t0)
	lui t0, %hi(keys)
	addi t0, t0, %lo(keys)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv t2, a0
	lui t0, %hi(values)
	addi t0, t0, %lo(values)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	lui t0, %hi(requests)
	addi t0, t0, %lo(requests)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call getarray
	mv t1, a0
	li a0, 78
	call _sysy_starttime
	mv t0, zero
	j .LBB22
.LBB22:
	blt t0, t2, .LBB23
	j .LBB24
.LBB23:
	lui t1, %hi(keys)
	addi t1, t1, %lo(keys)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	lui t1, %hi(values)
	addi t1, t1, %lo(values)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call insert
	addiw t0, t0, 1
	mv t0, t0
	j .LBB22
.LBB24:
	mv t0, zero
	j .LBB25
.LBB25:
	blt t0, t1, .LBB26
	j .LBB27
.LBB26:
	lui t2, %hi(requests)
	addi t2, t2, %lo(requests)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	mv a0, a0
	call reduce
	mv a0, a0
	lui t2, %hi(ans)
	addi t2, t2, %lo(ans)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB25
.LBB27:
	li a0, 90
	call _sysy_stoptime
	lui t0, %hi(ans)
	addi t0, t0, %lo(ans)
	addw t0, s0, t0
	mv a0, t1
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
