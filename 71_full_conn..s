    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  relu_reg
    .type  relu_reg, @function
relu_reg:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 127
	blt t0, a0, .LBB2
	j .LBB3
.LBB2:
	li a0, 127
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	blt a0, zero, .LBB4
	j .LBB5
.LBB4:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size relu_reg, .-relu_reg
    .align  1
    .globl  model
    .type  model, @function
model:
.LBB6:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, a0
	j .LBB7
.LBB7:
	addw t1, s0, t0
	lw t2, 0(t1)
	li t1, 85
	mulw t2, t2, t1
	addw t1, s0, t0
	lw t1, 4(t1)
	li s1, 23
	mulw t1, t1, s1
	addw s1, t2, t1
	addw t1, s0, t0
	lw t2, 8(t1)
	li t1, -82
	mulw t1, t2, t1
	addw t2, s1, t1
	addw t1, s0, t0
	lw s1, 12(t1)
	li t1, -103
	mulw t1, s1, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw s1, 16(t1)
	li t1, -123
	mulw t1, s1, t1
	addw s1, t2, t1
	addw t1, s0, t0
	lw t2, 20(t1)
	li t1, 64
	mulw t1, t2, t1
	addw t2, s1, t1
	addw t1, s0, t0
	lw s1, 24(t1)
	li t1, -120
	mulw t1, s1, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw s1, 28(t1)
	li t1, 50
	mulw t1, s1, t1
	addw s1, t2, t1
	addw t1, s0, t0
	lw t2, 32(t1)
	li t1, -59
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 36(t1)
	li t1, 47
	mulw t1, t2, t1
	addw t2, s1, t1
	addw t1, s0, t0
	lw t1, 40(t1)
	li s1, -111
	mulw t1, t1, s1
	addw s1, t2, t1
	addw t1, s0, t0
	lw t2, 44(t1)
	li t1, -67
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 48(t1)
	li t1, -106
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 52(t1)
	li t1, -75
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 56(t1)
	li t1, -102
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 60(t1)
	li t1, 34
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 64(t1)
	li t1, -39
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 68(t1)
	li t1, 65
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 72(t1)
	li t1, 47
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 76(t1)
	li t1, 113
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 80(t1)
	li t1, 110
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 84(t1)
	li t1, 47
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 88(t1)
	li t1, -4
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 92(t1)
	li t1, 80
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 96(t1)
	li t1, 46
	mulw t1, t2, t1
	addw a0, s1, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, 39
	mulw a1, a0, t1
	addw t1, s0, t0
	lw t2, 0(t1)
	li t1, -106
	mulw s1, t2, t1
	addw t1, s0, t0
	lw t2, 4(t1)
	li t1, 126
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 8(t1)
	li t1, -18
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 12(t1)
	li t1, -31
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 16(t1)
	li t1, -8
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 20(t1)
	li t1, 47
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 24(t1)
	li t1, -4
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 28(t1)
	li t1, 67
	mulw t1, t2, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t2, 32(t1)
	li t1, -94
	mulw t1, t2, t1
	addw t2, s1, t1
	addw t1, s0, t0
	lw s1, 36(t1)
	li t1, -121
	mulw t1, s1, t1
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 40(t2)
	li s1, 7
	mulw t2, t2, s1
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 44(t2)
	li s1, -21
	mulw t2, t2, s1
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 48(t2)
	li s1, -60
	mulw t2, t2, s1
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 52(t2)
	li s1, -43
	mulw t2, t2, s1
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 56(t2)
	li s1, 105
	mulw t2, t2, s1
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 60(t2)
	li s1, -42
	mulw t2, t2, s1
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 64(t1)
	li s1, 87
	mulw t1, t1, s1
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 68(t1)
	li s1, 29
	mulw t1, t1, s1
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 72(t1)
	li s1, -106
	mulw t1, t1, s1
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 76(t1)
	li s1, -31
	mulw t1, t1, s1
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 80(t1)
	li s1, -110
	mulw t1, t1, s1
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 84(t1)
	li s1, -100
	mulw t1, t1, s1
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 88(t2)
	li s1, -22
	mulw t2, t2, s1
	addw t2, t1, t2
	addw t1, s0, t0
	lw s1, 92(t1)
	li t1, -75
	mulw t1, s1, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw s1, 96(t1)
	li t1, -125
	mulw t1, s1, t1
	addw a0, t2, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, 77
	mulw t1, a0, t1
	addw s1, a1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, 26
	mulw a0, t1, t2
	addw t1, s0, t0
	lw t2, 4(t1)
	li t1, 76
	mulw t1, t2, t1
	addw t2, a0, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, -70
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, 29
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, -95
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 20(t2)
	li a0, 96
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 24(t2)
	li a0, 52
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 28(t2)
	li a0, -68
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 32(t1)
	li a0, -5
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 36(t2)
	li a0, 34
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 40(t2)
	li a0, -34
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 44(t2)
	li a0, 102
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 48(t2)
	li a0, 6
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 52(t2)
	li a0, -38
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 56(t2)
	li a0, 27
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 60(t2)
	li a0, 110
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 64(t1)
	li a0, 116
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 68(t1)
	li a0, 39
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 72(t1)
	li a0, -63
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 76(t1)
	li a0, -99
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 80(t1)
	li a0, 65
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 84(t1)
	li a0, 120
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 88(t2)
	li a0, -39
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw a0, 92(t1)
	li t1, -6
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 96(t1)
	li t1, 94
	mulw t1, a0, t1
	addw a0, t2, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, 127
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, -23
	mulw t2, t1, t2
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, -63
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, 49
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, 50
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, 72
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 20(t2)
	li a0, 85
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, -30
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, 12
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 32(t1)
	li a0, 125
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 36(t1)
	li a0, -117
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t1, 40(t1)
	li t2, -65
	mulw t1, t1, t2
	addw t1, a0, t1
	addw t2, s0, t0
	lw t2, 44(t2)
	li a0, -67
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 48(t1)
	li a0, 125
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 52(t1)
	li a0, 110
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 56(t1)
	li a0, -31
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 60(t1)
	li a0, -123
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 64(t1)
	li a0, 83
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 68(t1)
	li a0, 122
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 72(t1)
	li a0, 11
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 76(t1)
	li a0, -23
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 80(t1)
	li a0, -47
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 84(t1)
	li a0, -32
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 88(t2)
	li a0, -117
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw a0, 92(t1)
	li t1, 95
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 96(t1)
	li t1, 118
	mulw t1, a0, t1
	addw a0, t2, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, -106
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, 8
	mulw t2, t1, t2
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, 82
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, -104
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, 101
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, -116
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 20(t1)
	li a0, -63
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, -16
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, -70
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 32(t1)
	li a0, 125
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 36(t1)
	li a0, 75
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t1, 40(t1)
	li t2, 66
	mulw t1, t1, t2
	addw t2, a0, t1
	addw t1, s0, t0
	lw t1, 44(t1)
	li a0, -96
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 48(t2)
	li a0, -101
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 52(t2)
	li a0, -114
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 56(t2)
	li a0, 59
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 60(t1)
	li a0, 12
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 64(t2)
	li a0, 5
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 68(t1)
	li a0, -95
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 72(t2)
	li a0, 116
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 76(t2)
	li a0, -93
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 80(t2)
	li a0, 15
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 84(t2)
	li a0, 79
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 88(t2)
	li a0, 3
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 92(t2)
	li t2, 49
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 96(t2)
	li t2, -124
	mulw t2, a0, t2
	addw a0, t1, t2
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, -3
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, 81
	mulw t2, t1, t2
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, 68
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, -102
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, -74
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, 121
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 20(t1)
	li a0, -15
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, 55
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, 101
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 32(t1)
	li a0, -13
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 36(t1)
	li a0, -62
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t1, 40(t1)
	li t2, 64
	mulw t1, t1, t2
	addw a0, a0, t1
	addw t1, s0, t0
	lw t1, 44(t1)
	li t2, 114
	mulw t1, t1, t2
	addw t2, a0, t1
	addw t1, s0, t0
	lw t1, 48(t1)
	li a0, 38
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 52(t1)
	li a0, -21
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 56(t1)
	li a0, 112
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 60(t1)
	li a0, 114
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 64(t1)
	li a0, 112
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 68(t1)
	li a0, -10
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 72(t1)
	li a0, -16
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 76(t1)
	li a0, -50
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 80(t1)
	li a0, -112
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t2, 84(t1)
	li t1, -116
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 88(t1)
	li t1, -54
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 92(t1)
	li t1, 82
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 96(t1)
	li t1, -72
	mulw t1, t2, t1
	addw a0, a0, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, 32
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, 15
	mulw t2, t1, t2
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, -77
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, 66
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, -90
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, -6
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 20(t1)
	li a0, -30
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, -8
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, 81
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t2, 32(t1)
	li t1, 2
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 36(t1)
	li t1, -110
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 40(t1)
	li t1, -95
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 44(t1)
	li t1, 59
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 48(t1)
	li t1, 52
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 52(t1)
	li t1, 15
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 56(t1)
	li t1, 55
	mulw t1, t2, t1
	addw t1, a0, t1
	addw t2, s0, t0
	lw a0, 60(t2)
	li t2, -33
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 64(t2)
	li t2, 14
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 68(t2)
	li t2, 58
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 72(t2)
	li t2, 67
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 76(t2)
	li t2, 86
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 80(t2)
	li t2, -79
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 84(t2)
	li t2, 48
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 88(t2)
	li t2, -13
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 92(t2)
	li t2, -15
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 96(t2)
	li t2, 66
	mulw t2, a0, t2
	addw a0, t1, t2
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, -95
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 0(t1)
	li t2, 33
	mulw t2, t1, t2
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, 82
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, 67
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, 30
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, -2
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 20(t1)
	li a0, 65
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, 120
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, -13
	mulw t1, t1, a0
	addw a0, t2, t1
	addw t1, s0, t0
	lw t2, 32(t1)
	li t1, 18
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 36(t1)
	li t1, 5
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 40(t1)
	li t1, 104
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 44(t1)
	li t1, -119
	mulw t1, t2, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t2, 48(t1)
	li t1, -7
	mulw t1, t2, t1
	addw t2, a0, t1
	addw t1, s0, t0
	lw a0, 52(t1)
	li t1, 71
	mulw t1, a0, t1
	addw a0, t2, t1
	addw t1, s0, t0
	lw t2, 56(t1)
	li t1, 107
	mulw t1, t2, t1
	addw t1, a0, t1
	addw t2, s0, t0
	lw a0, 60(t2)
	li t2, 24
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 64(t2)
	li t2, 82
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 68(t2)
	li t2, -96
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 72(t2)
	li t2, -104
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 76(t2)
	li t2, -121
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 80(t2)
	li t2, 65
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 84(t2)
	li t2, 97
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 88(t2)
	li t2, 83
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 92(t2)
	li t2, 46
	mulw t2, a0, t2
	addw t2, t1, t2
	addw t1, s0, t0
	lw a0, 96(t1)
	li t1, -84
	mulw t1, a0, t1
	addw a0, t2, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, -50
	mulw t1, a0, t1
	addw t2, s1, t1
	addw t1, s0, t0
	lw s1, 0(t1)
	li t1, -29
	mulw s1, s1, t1
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, 7
	mulw t1, t1, a0
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 8(t1)
	li a0, -70
	mulw t1, t1, a0
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 12(t1)
	li a0, 38
	mulw t1, t1, a0
	addw t1, s1, t1
	addw s1, s0, t0
	lw s1, 16(s1)
	li a0, -90
	mulw s1, s1, a0
	addw t1, t1, s1
	addw s1, s0, t0
	lw s1, 20(s1)
	li a0, -15
	mulw s1, s1, a0
	addw t1, t1, s1
	addw s1, s0, t0
	lw s1, 24(s1)
	li a0, -32
	mulw s1, s1, a0
	addw s1, t1, s1
	addw t1, s0, t0
	lw t1, 28(t1)
	li a0, 37
	mulw t1, t1, a0
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 32(t1)
	li a0, 36
	mulw t1, t1, a0
	addw s1, s1, t1
	addw t1, s0, t0
	lw t1, 36(t1)
	li a0, -62
	mulw t1, t1, a0
	addw s1, s1, t1
	addw t1, s0, t0
	lw a0, 40(t1)
	li t1, -125
	mulw t1, a0, t1
	addw t1, s1, t1
	addw s1, s0, t0
	lw s1, 44(s1)
	li a0, -46
	mulw s1, s1, a0
	addw t1, t1, s1
	addw s1, s0, t0
	lw s1, 48(s1)
	li a0, -70
	mulw s1, s1, a0
	addw s1, t1, s1
	addw t1, s0, t0
	lw t1, 52(t1)
	li a0, 37
	mulw t1, t1, a0
	addw a0, s1, t1
	addw t1, s0, t0
	lw s1, 56(t1)
	li t1, -73
	mulw t1, s1, t1
	addw s1, a0, t1
	addw t1, s0, t0
	lw a0, 60(t1)
	li t1, -34
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw a0, 64(t1)
	li t1, -87
	mulw t1, a0, t1
	addw a0, s1, t1
	addw t1, s0, t0
	lw s1, 68(t1)
	li t1, -75
	mulw t1, s1, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw s1, 72(t1)
	li t1, 71
	mulw t1, s1, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw s1, 76(t1)
	li t1, -77
	mulw t1, s1, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw s1, 80(t1)
	li t1, 53
	mulw t1, s1, t1
	addw a0, a0, t1
	addw t1, s0, t0
	lw t1, 84(t1)
	li s1, 37
	mulw t1, t1, s1
	addw a0, a0, t1
	addw t1, s0, t0
	lw s1, 88(t1)
	li t1, -103
	mulw t1, s1, t1
	addw s1, a0, t1
	addw t1, s0, t0
	lw a0, 92(t1)
	li t1, -13
	mulw t1, a0, t1
	addw s1, s1, t1
	addw t1, s0, t0
	lw a0, 96(t1)
	li t1, -114
	mulw t1, a0, t1
	addw a0, s1, t1
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t1, -23
	mulw t1, a0, t1
	addw s1, t2, t1
	addw t1, s0, t0
	lw t2, 0(t1)
	li t1, 67
	mulw t2, t2, t1
	addw t1, s0, t0
	lw t1, 4(t1)
	li a0, 42
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 8(t2)
	li a0, 41
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw t2, 12(t2)
	li a0, -123
	mulw t2, t2, a0
	addw t2, t1, t2
	addw t1, s0, t0
	lw t1, 16(t1)
	li a0, -92
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 20(t1)
	li a0, 10
	mulw t1, t1, a0
	addw t2, t2, t1
	addw t1, s0, t0
	lw t1, 24(t1)
	li a0, -77
	mulw t1, t1, a0
	addw t1, t2, t1
	addw t2, s0, t0
	lw t2, 28(t2)
	li a0, 75
	mulw t2, t2, a0
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 32(t2)
	li t2, 96
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 36(t2)
	li t2, -51
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 40(t2)
	li t2, 109
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 44(t2)
	li t2, -74
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 48(t2)
	li t2, -7
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 52(t2)
	li t2, -122
	mulw t2, a0, t2
	addw t1, t1, t2
	addw t2, s0, t0
	lw a0, 56(t2)
	li t2, 67
	mulw t2, a0, t2
	addw t2, t1, t2
	addw t1, s0, t0
	lw a0, 60(t1)
	li t1, 47
	mulw t1, a0, t1
	addw t1, t2, t1
	addw t2, s0, t0
	lw a0, 64(t2)
	li t2, 22
	mulw t2, a0, t2
	addw t2, t1, t2
	addw t1, s0, t0
	lw a0, 68(t1)
	li t1, -68
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 72(t1)
	li t1, 38
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 76(t1)
	li t1, 29
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 80(t1)
	li t1, 115
	mulw t1, a0, t1
	addw t2, t2, t1
	addw t1, s0, t0
	lw a0, 84(t1)
	li t1, -121
	mulw t1, a0, t1
	addw a0, t2, t1
	addw t1, s0, t0
	lw t2, 88(t1)
	li t1, 36
	mulw t1, t2, t1
	addw t2, a0, t1
	addw t1, s0, t0
	lw a0, 92(t1)
	li t1, -49
	mulw t1, a0, t1
	addw t1, t2, t1
	addw t0, s0, t0
	lw t2, 96(t0)
	li t0, 85
	mulw t0, t2, t0
	addw a0, t1, t0
	mv a0, a0
	call relu_reg
	mv a0, a0
	li t0, 46
	mulw t0, a0, t0
	addw t0, s1, t0
	blt zero, t0, .LBB8
	j .LBB9
.LBB8:
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
    .size model, .-model
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB10:
	addi sp, sp, -128
	sd ra, 120(sp)
	sd s0, 112(sp)
	addi s0, sp, 128
	call getint
	mv t1, a0
	mv t1, t1
	j .LBB11
.LBB11:
	blt zero, t1, .LBB12
	j .LBB13
.LBB12:
	mv t0, zero
	j .LBB14
.LBB13:
	mv a0, zero
	ld ra, 120(sp)
	ld s0, 112(sp)
	addi sp, sp, 128
	ret 
.LBB14:
	li t1, 5
	blt t0, t1, .LBB15
	j .LBB16
.LBB15:
	mv t1, zero
	j .LBB17
.LBB16:
	addiw t0, s0, -116
	addiw a0, t0, 0
	mv a0, a0
	call model
	mv a0, a0
	bne a0, zero, .LBB18
	j .LBB19
.LBB17:
	li t0, 5
	blt t1, t0, .LBB20
	j .LBB21
.LBB20:
	call getint
	mv a0, a0
	addiw t0, s0, -116
	li t2, 20
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB17
.LBB21:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB14
.LBB18:
	li a0, 99
	call putch
	li a0, 97
	call putch
	li a0, 116
	call putch
	li a0, 10
	call putch
	j .LBB22
.LBB19:
	li a0, 100
	call putch
	li a0, 111
	call putch
	li a0, 103
	call putch
	li a0, 10
	call putch
	j .LBB22
.LBB22:
	li t0, 1
	subw t1, t1, t0
	mv t1, t1
	j .LBB11
    .size main, .-main
