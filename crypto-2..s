    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  state
    .data
    .align  2
    .type  state, @object
    .size  state, 4
state:
    .word  19260817
    .globl  buffer
    .align  3
    .type  buffer, @object
    .size  buffer, 131072
buffer:
    .zero  131072
    .text
    .align  1
    .globl  get_random
    .type  get_random, @function
get_random:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(state)
	lw t2, %lo(state)(t0)
	lui t0, %hi(state)
	lw t1, %lo(state)(t0)
	li t0, 8192
	mulw t0, t1, t0
	addw t0, t2, t0
	lui t1, %hi(state)
	sw t0, %lo(state)(t1)
	lui t0, %hi(state)
	lw t2, %lo(state)(t0)
	lui t0, %hi(state)
	lw t1, %lo(state)(t0)
	li t0, 131072
	divw t0, t1, t0
	addw t1, t2, t0
	lui t0, %hi(state)
	sw t1, %lo(state)(t0)
	lui t0, %hi(state)
	lw t0, %lo(state)(t0)
	lui t1, %hi(state)
	lw t2, %lo(state)(t1)
	li t1, 32
	mulw t1, t2, t1
	addw t0, t0, t1
	lui t1, %hi(state)
	sw t0, %lo(state)(t1)
	lui t0, %hi(state)
	lw a0, %lo(state)(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size get_random, .-get_random
    .align  1
    .globl  rotl1
    .type  rotl1, @function
rotl1:
.LBB1:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB2
.LBB2:
	li t0, 2
	mulw t1, a0, t0
	li t0, 2
	remw t0, a0, t0
	addw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size rotl1, .-rotl1
    .align  1
    .globl  rotl5
    .type  rotl5, @function
rotl5:
.LBB3:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB4
.LBB4:
	li t0, 32
	mulw t1, a0, t0
	li t0, 32
	remw t0, a0, t0
	addw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size rotl5, .-rotl5
    .align  1
    .globl  rotl30
    .type  rotl30, @function
rotl30:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB6
.LBB6:
	li t0, 1073741824
	mulw t1, a0, t0
	li t0, 1073741824
	remw t0, a0, t0
	addw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size rotl30, .-rotl30
    .align  1
    .globl  _and
    .type  _and, @function
_and:
.LBB7:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB8
.LBB8:
	addw a0, a0, a1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size _and, .-_and
    .align  1
    .globl  _not
    .type  _not, @function
_not:
.LBB9:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB10
.LBB10:
	li t0, -1
	subw a0, t0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size _not, .-_not
    .align  1
    .globl  _xor
    .type  _xor, @function
_xor:
.LBB11:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	mv a1, a1
	j .LBB12
.LBB12:
	mv a0, t0
	mv a1, a1
	call _and
	mv a0, a0
	subw t1, t0, a0
	addw t1, t1, a1
	mv a0, t0
	mv a1, a1
	call _and
	mv a0, a0
	subw a0, t1, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size _xor, .-_xor
    .align  1
    .globl  _or
    .type  _or, @function
_or:
.LBB13:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t1, a0
	mv a1, a1
	j .LBB14
.LBB14:
	mv a0, t1
	mv a1, a1
	call _xor
	mv t0, a0
	mv a0, t1
	mv a1, a1
	call _and
	mv a1, a0
	mv a0, t0
	mv a1, a1
	call _xor
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size _or, .-_or
    .align  1
    .globl  pseudo_sha1
    .type  pseudo_sha1, @function
pseudo_sha1:
.LBB15:
	addi sp, sp, -336
	sd ra, 328(sp)
	sd s0, 320(sp)
	addi s0, sp, 336
	mv t0, a0
	mv a1, a1
	mv a2, a2
	j .LBB16
.LBB16:
	addw s1, s0, t0
	li t2, 4
	mulw t2, a1, t2
	addw s1, s1, t2
	li t2, 128
	sw t2, 0(s1)
	addiw t2, a1, 1
	mv t2, t2
	j .LBB17
.LBB17:
	li s1, 64
	remw s1, t2, s1
	li a0, 60
	bne s1, a0, .LBB18
	j .LBB19
.LBB18:
	addw t0, s0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	li t1, 0
	sw t1, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB17
.LBB19:
	li s1, 16777216
	divw s1, a1, s1
	li a0, 256
	remw a0, s1, a0
	addw s1, s0, t0
	li s1, 4
	mulw s1, t2, s1
	addw s1, s1, s1
	sw a0, 0(s1)
	li s1, 65536
	divw a0, a1, s1
	li s1, 256
	remw a3, a0, s1
	addiw a0, t2, 1
	addw s1, s0, t0
	li s1, 4
	mulw s1, a0, s1
	addw s1, s1, s1
	sw a3, 0(s1)
	li s1, 256
	divw s1, a1, s1
	li a0, 256
	remw a3, s1, a0
	addiw a0, t2, 2
	addw s1, s0, t0
	li s1, 4
	mulw s1, a0, s1
	addw s1, s1, s1
	sw a3, 0(s1)
	li s1, 256
	remw a0, a1, s1
	addiw s1, t2, 3
	addw s1, s0, t0
	li a1, 4
	mulw s1, s1, a1
	addw s1, s1, s1
	sw a0, 0(s1)
	addiw s1, t2, 4
	addiw t0, s0, -656
	mv a0, t0
	mv a1, t1
	li a2, 320
	call llvm.memcpy.p0.p0.i32
	li t0, -271732736
	addiw t0, t0, -1143
	mv t0, t0
	mv s2, t0
	li t0, -1732583424
	addiw t0, t0, -770
	mv t0, t0
	mv a6, t0
	li t0, 271732736
	addiw t0, t0, 1142
	mv t0, t0
	mv a4, t0
	li t0, -1009590272
	addiw t0, t0, 496
	mv t0, t0
	mv a3, t0
	mv a0, undef
	mv t2, undef
	li t0, 1732583424
	addiw t0, t0, 769
	mv t0, t0
	mv s4, t0
	mv t1, zero
	j .LBB20
.LBB20:
	blt t1, s1, .LBB21
	j .LBB22
.LBB21:
	mv t0, zero
	j .LBB23
.LBB22:
	addw t0, s0, a2
	sw s4, 0(t0)
	addw t0, s0, a2
	sw s2, 4(t0)
	addw t0, s0, a2
	sw a6, 8(t0)
	addw t0, s0, a2
	sw a4, 12(t0)
	addw t0, s0, a2
	sw a3, 16(t0)
	ld ra, 328(sp)
	ld s0, 320(sp)
	addi sp, sp, 336
	ret 
.LBB23:
	li t2, 16
	blt t0, t2, .LBB24
	j .LBB25
.LBB24:
	li t2, 4
	mulw t2, t0, t2
	addw t2, t1, t2
	addw t2, s0, t0
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t2, 0(t2)
	li s1, 16777216
	mulw s1, t2, s1
	li t2, 4
	mulw t2, t0, t2
	addw t2, t1, t2
	addiw a0, t2, 1
	addw t2, s0, t0
	li t2, 4
	mulw t2, a0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li a0, 65536
	mulw t2, t2, a0
	addw s1, s1, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t1, t2
	addiw t2, t2, 2
	addw t2, s0, t0
	li a0, 4
	mulw t2, t2, a0
	addw t2, t2, t2
	lw t2, 0(t2)
	li a0, 256
	mulw t2, t2, a0
	addw s1, s1, t2
	li t2, 4
	mulw t2, t0, t2
	addw t1, t1, t2
	addiw t2, t1, 3
	addw t1, s0, t0
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 1
	mulw t1, t1, t2
	addw t2, s1, t1
	addiw t1, s0, -336
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB23
.LBB25:
	mv t0, t0
	j .LBB26
.LBB26:
	li t1, 80
	blt t0, t1, .LBB27
	j .LBB28
.LBB27:
	li t1, 3
	subw t2, t0, t1
	addiw t1, s0, -336
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	li t1, 8
	subw t1, t0, t1
	addiw t1, s0, -336
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call _xor
	mv a0, a0
	li t1, 14
	subw t1, t0, t1
	addiw t1, s0, -336
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call _xor
	mv a0, a0
	li t1, 16
	subw t1, t0, t1
	addiw t1, s0, -336
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call _xor
	mv a0, a0
	mv a0, a0
	call rotl1
	mv a0, a0
	addiw t1, s0, -336
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB26
.LBB28:
	mv s3, s4
	mv a7, s2
	mv a5, a6
	mv a1, a4
	mv a2, a3
	mv a0, a0
	mv t2, t2
	mv t2, zero
	j .LBB29
.LBB29:
	li t0, 80
	blt t2, t0, .LBB30
	j .LBB31
.LBB30:
	li t0, 20
	blt t2, t0, .LBB32
	j .LBB33
.LBB31:
	addw s4, s4, s3
	addw s2, s2, a7
	addw a6, a6, a5
	addw a4, a4, a1
	addw a3, a3, a2
	addiw t1, t1, 64
	mv s2, s2
	mv a6, a6
	mv a4, a4
	mv a3, a3
	mv a0, a0
	mv t2, t2
	mv s4, s4
	mv t1, t1
	j .LBB20
.LBB32:
	mv a0, a7
	mv a1, a5
	call _and
	mv t1, a0
	mv a0, a7
	call _not
	mv t0, a0
	mv a0, t0
	mv a1, a1
	call _and
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call _or
	mv s1, a0
	mv s1, s1
	li t0, 1518493696
	addiw t0, t0, -1639
	mv t0, t0
	mv t2, t0
	j .LBB34
.LBB33:
	li t0, 40
	blt t2, t0, .LBB35
	j .LBB36
.LBB34:
	mv a0, s3
	call rotl5
	mv t0, a0
	addw t0, t0, s1
	addw t0, t0, a2
	addw t1, t0, t2
	addiw t0, s0, -336
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	mv a0, a7
	call rotl30
	mv t0, a0
	addiw t2, t2, 1
	mv a7, s3
	mv a2, a1
	mv a0, s1
	mv t2, t2
	mv t2, t2
	mv s3, t1
	mv a1, a5
	mv a5, t0
	j .LBB29
.LBB35:
	mv a0, a7
	mv a1, a5
	call _xor
	mv t0, a0
	mv a0, t0
	mv a1, a1
	call _xor
	mv s1, a0
	mv s1, s1
	li t0, 1859768320
	addiw t0, t0, -1151
	mv t0, t0
	mv t2, t0
	j .LBB37
.LBB36:
	li t0, 60
	blt t2, t0, .LBB38
	j .LBB39
.LBB37:
	mv s1, s1
	mv t2, t2
	j .LBB34
.LBB38:
	mv a0, a7
	mv a1, a5
	call _and
	mv t1, a0
	mv a0, a7
	mv a1, a1
	call _and
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call _or
	mv t1, a0
	mv a0, a5
	mv a1, a1
	call _and
	mv t0, a0
	mv a0, t1
	mv a1, t0
	call _or
	mv t0, a0
	mv a0, t0
	li t0, -1894006784
	addiw t0, t0, -804
	mv t0, t0
	mv t2, t0
	j .LBB40
.LBB39:
	li t0, 80
	blt t2, t0, .LBB41
	j .LBB43
.LBB40:
	mv s1, a0
	mv t2, t2
	j .LBB37
.LBB41:
	mv a0, a7
	mv a1, a5
	call _xor
	mv t0, a0
	mv a0, t0
	mv a1, a1
	call _xor
	mv a0, a0
	mv a0, a0
	li t0, -899497984
	addiw t0, t0, 262
	mv t0, t0
	mv t2, t0
	j .LBB42
.LBB42:
	mv a0, a0
	mv t2, t2
	j .LBB40
.LBB43:
	mv a0, a0
	mv t2, t2
	j .LBB42
    .size pseudo_sha1, .-pseudo_sha1
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB44:
	addi sp, sp, -64
	sd ra, 56(sp)
	sd s0, 48(sp)
	addi s0, sp, 64
	addiw a0, s0, -76
	mv a0, a0
	mv a1, a1
	li a2, 20
	call llvm.memcpy.p0.p0.i32
	call getint
	mv t0, a0
	lui t1, %hi(state)
	sw t0, %lo(state)(t1)
	call getint
	mv t2, a0
	li a0, 161
	call _sysy_starttime
	addiw t1, s0, -36
	li t0, 0
	sw t0, 0(t1)
	addiw t1, s0, -36
	li t0, 0
	sw t0, 4(t1)
	addiw t0, s0, -36
	li t1, 0
	sw t1, 8(t0)
	addiw t1, s0, -36
	li t0, 0
	sw t0, 12(t1)
	addiw t1, s0, -36
	li t0, 0
	sw t0, 16(t1)
	mv t2, t2
	j .LBB45
.LBB45:
	blt zero, t2, .LBB46
	j .LBB47
.LBB46:
	mv t0, zero
	j .LBB48
.LBB47:
	li a0, 184
	call _sysy_stoptime
	addiw t0, s0, -36
	li a0, 5
	addiw a1, t0, 0
	mv a1, a1
	call putarray
	mv a0, zero
	ld ra, 56(sp)
	ld s0, 48(sp)
	addi sp, sp, 64
	ret 
.LBB48:
	li t1, 24576
	addiw t1, t1, -768
	mv t1, t1
	blt t0, t1, .LBB49
	j .LBB50
.LBB49:
	call get_random
	mv a0, a0
	li t1, 256
	remw t2, a0, t1
	lui t1, %hi(buffer)
	addi t1, t1, %lo(buffer)
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB48
.LBB50:
	lui t0, %hi(buffer)
	addi t0, t0, %lo(buffer)
	addw t1, s0, t0
	addiw t0, s0, -56
	addiw a0, t1, 0
	mv a0, a0
	li a1, 24576
	addiw a1, a1, -768
	mv a1, a1
	addiw a2, t0, 0
	mv a2, a2
	call pseudo_sha1
	mv t0, zero
	j .LBB51
.LBB51:
	li t1, 5
	blt t0, t1, .LBB52
	j .LBB53
.LBB52:
	addiw t1, s0, -36
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	addiw t1, s0, -56
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a1, 0(t1)
	mv a0, a0
	mv a1, a1
	call _xor
	mv a0, a0
	addiw t1, s0, -36
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB51
.LBB53:
	li t0, 1
	subw t2, t2, t0
	mv t2, t2
	j .LBB45
    .size main, .-main
