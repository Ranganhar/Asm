    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  __HELLO
    .data
    .align  3
    .type  __HELLO, @object
    .size  __HELLO, 400
__HELLO:
    .word  87
    .word  101
    .word  108
    .word  99
    .word  111
    .word  109
    .word  101
    .word  32
    .word  116
    .word  111
    .word  32
    .word  116
    .word  104
    .word  101
    .word  32
    .word  74
    .word  97
    .word  112
    .word  97
    .word  114
    .word  105
    .word  32
    .word  80
    .word  97
    .word  114
    .word  107
    .word  33
    .word  10
    .zero  288
    .globl  N4__mE___
    .align  3
    .type  N4__mE___, @object
    .size  N4__mE___, 1200
N4__mE___:
    .word  83
    .word  97
    .word  97
    .word  98
    .word  97
    .word  114
    .word  117
    .zero  172
    .word  75
    .word  97
    .word  98
    .word  97
    .word  110
    .zero  180
    .word  72
    .word  97
    .word  115
    .word  104
    .word  105
    .word  98
    .word  105
    .word  114
    .word  111
    .word  107
    .word  111
    .word  117
    .zero  152
    .word  65
    .word  114
    .word  97
    .word  105
    .word  103
    .word  117
    .word  109
    .word  97
    .zero  168
    .word  72
    .word  117
    .word  110
    .word  98
    .word  111
    .word  114
    .word  117
    .word  116
    .word  111
    .word  32
    .word  80
    .word  101
    .word  110
    .word  103
    .word  105
    .word  110
    .zero  136
    .word  84
    .word  97
    .word  105
    .word  114
    .word  105
    .word  107
    .word  117
    .word  32
    .word  79
    .word  111
    .word  107
    .word  97
    .word  109
    .word  105
    .zero  144
    .globl  saY_HeI10_To
    .align  3
    .type  saY_HeI10_To, @object
    .size  saY_HeI10_To, 160
saY_HeI10_To:
    .word  32
    .word  115
    .word  97
    .word  121
    .word  115
    .word  32
    .word  104
    .word  101
    .word  108
    .word  108
    .word  111
    .word  32
    .word  116
    .word  111
    .word  32
    .zero  100
    .globl  RET
    .align  3
    .type  RET, @object
    .size  RET, 20
RET:
    .word  10
    .zero  16
    .text
    .align  1
    .globl  putstr
    .type  putstr, @function
putstr:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	bne t1, zero, .LBB3
	j .LBB4
.LBB3:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	mv a0, t1
	call putch
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB4:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size putstr, .-putstr
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB5:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lui t0, %hi(__HELLO)
	addi t0, t0, %lo(__HELLO)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call putstr
	mv t1, zero
	j .LBB6
.LBB6:
	j .LBB7
.LBB7:
	li t0, 6
	divw t2, t1, t0
	li t0, 6
	remw s1, t1, t0
	bne t2, s1, .LBB8
	j .LBB9
.LBB10:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB8:
	lui t0, %hi(N4__mE___)
	addi t0, t0, %lo(N4__mE___)
	addw t0, s0, t0
	li t0, 200
	mulw t0, t2, t0
	addw t0, t0, t0
	addiw a0, t0, 0
	mv a0, a0
	call putstr
	lui t0, %hi(saY_HeI10_To)
	addi t0, t0, %lo(saY_HeI10_To)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call putstr
	lui t0, %hi(N4__mE___)
	addi t0, t0, %lo(N4__mE___)
	addw t0, s0, t0
	li t0, 200
	mulw t0, s1, t0
	addw t0, t0, t0
	addiw a0, t0, 0
	mv a0, a0
	call putstr
	lui t0, %hi(RET)
	addi t0, t0, %lo(RET)
	addw t0, s0, t0
	addiw a0, t0, 0
	mv a0, a0
	call putstr
	j .LBB9
.LBB9:
	li t0, 17
	mulw t0, t1, t0
	addiw t0, t0, 23
	li t1, 32
	remw t1, t0, t1
	beq t1, zero, .LBB11
	j .LBB12
.LBB11:
	j .LBB10
.LBB12:
	mv t1, t1
	j .LBB6
    .size main, .-main
