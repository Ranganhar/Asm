    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  sum
    .type  sum, @function
sum:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	ld t0, 0(s0)
	ld s6, 8(s0)
	ld t1, 16(s0)
	ld s5, 24(s0)
	ld s7, 32(s0)
	ld s8, 40(s0)
	ld t2, 48(s0)
	ld s1, 56(s0)
	ld s2, 64(s0)
	ld s3, 72(s0)
	ld s4, 80(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB1
.LBB1:
	addw a0, s0, a0
	lw s9, 0(a0)
	addw a0, s0, a1
	lw a0, 8(a0)
	addw a1, s9, a0
	addw a0, s0, a2
	lw a0, 4(a0)
	addw a1, a1, a0
	addw a0, s0, a3
	lw a0, 40(a0)
	addw a1, a1, a0
	addw a0, s0, a4
	lw a0, 24(a0)
	addw a1, a1, a0
	addw a0, s0, a5
	lw a0, 228(a0)
	addw a1, a1, a0
	addw a0, s0, a6
	lw a0, 56(a0)
	addw a0, a1, a0
	addw a1, s0, a7
	lw a1, 964(a1)
	addw a1, a0, a1
	addw a0, s0, s4
	lw a0, 224(a0)
	addw a0, a1, a0
	addw a1, s0, s3
	lw a1, 804(a1)
	addw a1, a0, a1
	addw a0, s0, s2
	lw a0, 1996(a0)
	addw a0, a1, a0
	addw s1, s0, s1
	addiw t0, s1, 2047
	lw s1, 1177(t0)
	addw s1, a0, s1
	addw t2, s0, t2
	li t0, 16384
	addiw t0, t0, -12
	addw t0, t2, t0
	lw t2, 1836(t0)
	addw s1, s1, t2
	addw t2, s0, s8
	lw t2, 508(t2)
	addw t2, s1, t2
	addw s1, s0, s7
	lw s1, 124(s1)
	addw s1, t2, s1
	addw t2, s0, s5
	li t0, 237568
	addiw t0, t0, -120
	addw t0, t2, t0
	lw t2, 1032(t0)
	addw t2, s1, t2
	addw t1, s0, t1
	li t0, 12288
	addiw t0, t0, 2041
	addw t0, t1, t0
	lw t1, 1627(t0)
	addw t2, t2, t1
	addw t1, s0, s6
	li t0, 819200
	addiw t0, t0, -404
	addw t0, t1, t0
	lw t1, 1376(t0)
	addw t1, t2, t1
	addw t0, s0, t0
	li t2, 278528
	addiw t2, t2, 1911
	addw t0, t0, t2
	lw t0, 1161(t0)
	addw a0, t1, t0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size sum, .-sum
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -112
	sd ra, 104(sp)
	sd s0, 96(sp)
	addi s0, sp, 112
	li t0, 2097152
	add sp, sp, t0
	li t0, -4194304
	addiw t0, t0, -16
	addw a0, s0, t0
	mv a0, a0
	mv a1, a1
	li a2, 2097152
	call llvm.memcpy.p0.p0.i32
	mv t0, zero
	mv s8, zero
	j .LBB3
.LBB3:
	li t0, 2
	blt s8, t0, .LBB4
	j .LBB5
.LBB4:
	mv t0, t0
	mv s7, zero
	j .LBB6
.LBB5:
	li t0, -2097152
	addiw t0, t0, -16
	addw a0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw a3, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw s1, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw a2, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t1, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t2, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw a1, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	li t0, -2097152
	addiw t0, t0, -16
	addw t0, s0, t0
	addiw a0, a0, 0
	mv a0, a0
	addiw a1, a3, 0
	mv a1, a1
	addiw a2, s1, 0
	mv a2, a2
	addiw a3, t0, 0
	mv a3, a3
	addiw a4, a2, 0
	mv a4, a4
	addiw a5, t1, 0
	mv a5, a5
	addiw a6, t2, 0
	mv a6, a6
	addiw a7, a1, 0
	mv a7, a7
	call sum
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, zero
	li t0, 2097152
	add sp, sp, t0
	ld ra, 104(sp)
	ld s0, 96(sp)
	addi sp, sp, 112
	ret 
.LBB6:
	li t0, 2
	blt s7, t0, .LBB7
	j .LBB8
.LBB7:
	mv t0, t0
	mv s6, zero
	j .LBB9
.LBB8:
	addiw s8, s8, 1
	mv t0, t0
	mv s8, s8
	j .LBB3
.LBB9:
	li t0, 2
	blt s6, t0, .LBB10
	j .LBB11
.LBB10:
	mv t0, t0
	mv s5, zero
	j .LBB12
.LBB11:
	addiw s7, s7, 1
	mv t0, t0
	mv s7, s7
	j .LBB6
.LBB12:
	li t0, 2
	blt s5, t0, .LBB13
	j .LBB14
.LBB13:
	mv t0, t0
	mv s4, zero
	j .LBB15
.LBB14:
	addiw s6, s6, 1
	mv t0, t0
	mv s6, s6
	j .LBB9
.LBB15:
	li t0, 2
	blt s4, t0, .LBB16
	j .LBB17
.LBB16:
	mv t0, t0
	mv s3, zero
	j .LBB18
.LBB17:
	addiw s5, s5, 1
	mv t0, t0
	mv s5, s5
	j .LBB12
.LBB18:
	li t0, 2
	blt s3, t0, .LBB19
	j .LBB20
.LBB19:
	mv t0, t0
	mv s2, zero
	j .LBB21
.LBB20:
	addiw s4, s4, 1
	mv t0, t0
	mv s4, s4
	j .LBB15
.LBB21:
	li t0, 2
	blt s2, t0, .LBB22
	j .LBB23
.LBB22:
	mv t0, t0
	mv a7, zero
	j .LBB24
.LBB23:
	addiw s3, s3, 1
	mv t0, t0
	mv s3, s3
	j .LBB18
.LBB24:
	li t0, 2
	blt a7, t0, .LBB25
	j .LBB26
.LBB25:
	mv t0, t0
	mv a6, zero
	j .LBB27
.LBB26:
	addiw s2, s2, 1
	mv t0, t0
	mv s2, s2
	j .LBB21
.LBB27:
	li t0, 2
	blt a6, t0, .LBB28
	j .LBB29
.LBB28:
	mv t0, t0
	mv a5, zero
	j .LBB30
.LBB29:
	addiw a7, a7, 1
	mv t0, t0
	mv a7, a7
	j .LBB24
.LBB30:
	li t0, 2
	blt a5, t0, .LBB31
	j .LBB32
.LBB31:
	mv t0, t0
	mv a4, zero
	j .LBB33
.LBB32:
	addiw a6, a6, 1
	mv t0, t0
	mv a6, a6
	j .LBB27
.LBB33:
	li t0, 2
	blt a4, t0, .LBB34
	j .LBB35
.LBB34:
	mv t0, t0
	mv a3, zero
	j .LBB36
.LBB35:
	addiw a5, a5, 1
	mv t0, t0
	mv a5, a5
	j .LBB30
.LBB36:
	li t0, 2
	blt a3, t0, .LBB37
	j .LBB38
.LBB37:
	mv t0, t0
	mv a2, zero
	j .LBB39
.LBB38:
	addiw a4, a4, 1
	mv t0, t0
	mv a4, a4
	j .LBB33
.LBB39:
	li t0, 2
	blt a2, t0, .LBB40
	j .LBB41
.LBB40:
	mv t0, t0
	mv a1, zero
	j .LBB42
.LBB41:
	addiw a3, a3, 1
	mv t0, t0
	mv a3, a3
	j .LBB36
.LBB42:
	li t0, 2
	blt a1, t0, .LBB43
	j .LBB44
.LBB43:
	mv t0, t0
	mv a0, zero
	j .LBB45
.LBB44:
	addiw a2, a2, 1
	mv t0, t0
	mv a2, a2
	j .LBB39
.LBB45:
	li t0, 2
	blt a0, t0, .LBB46
	j .LBB47
.LBB46:
	mv t0, t0
	mv s1, zero
	j .LBB48
.LBB47:
	addiw a1, a1, 1
	mv t0, t0
	mv a1, a1
	j .LBB42
.LBB48:
	li t0, 2
	blt s1, t0, .LBB49
	j .LBB50
.LBB49:
	mv t0, t0
	mv t2, zero
	j .LBB51
.LBB50:
	addiw a0, a0, 1
	mv t0, t0
	mv a0, a0
	j .LBB45
.LBB51:
	li t0, 2
	blt t2, t0, .LBB52
	j .LBB53
.LBB52:
	mv t0, t0
	mv t0, zero
	j .LBB54
.LBB53:
	addiw s1, s1, 1
	mv t0, t0
	mv s1, s1
	j .LBB48
.LBB54:
	li t1, 2
	blt t0, t1, .LBB55
	j .LBB56
.LBB55:
	mv t0, t0
	mv t1, zero
	j .LBB57
.LBB56:
	addiw t2, t2, 1
	mv t0, t0
	mv t2, t2
	j .LBB51
.LBB57:
	li t2, 2
	blt t1, t2, .LBB58
	j .LBB59
.LBB58:
	li t2, -2097152
	addiw t2, t2, -16
	addw t2, s0, t2
	li s9, 1048576
	mulw s8, s8, s9
	addw t2, t2, s8
	li s8, 524288
	mulw s7, s7, s8
	addw t2, t2, s7
	li s7, 262144
	mulw s6, s6, s7
	addw t2, t2, s6
	li s6, 131072
	mulw s5, s5, s6
	addw t2, t2, s5
	li s5, 65536
	mulw s4, s4, s5
	addw t2, t2, s4
	li s4, 32768
	mulw s3, s3, s4
	addw t2, t2, s3
	li s3, 16384
	mulw s2, s2, s3
	addw t2, t2, s2
	li s2, 8192
	mulw a7, a7, s2
	addw t2, t2, a7
	li a7, 4096
	mulw a6, a6, a7
	addw t2, t2, a6
	li a6, -4096
	addiw a6, a6, -2048
	mv a6, a6
	mulw a5, a5, a6
	addw t2, t2, a5
	li a5, 1024
	mulw a4, a4, a5
	addw t2, t2, a4
	li a4, 512
	mulw a3, a3, a4
	addw t2, t2, a3
	li a3, 256
	mulw a2, a2, a3
	addw t2, t2, a2
	li a2, 128
	mulw a1, a1, a2
	addw t2, t2, a1
	li a1, 64
	mulw a0, a0, a1
	addw t2, t2, a0
	li a0, 32
	mulw s1, s1, a0
	addw t2, t2, s1
	li s1, 16
	mulw t2, t2, s1
	addw t2, t2, t2
	li t2, 8
	mulw t2, t0, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw t0, t0, 1
	addiw t1, t1, 1
	mv t0, t0
	mv t1, t1
	j .LBB57
.LBB59:
	addiw t0, t0, 1
	mv t0, t0
	mv t0, t0
	j .LBB54
    .size main, .-main
