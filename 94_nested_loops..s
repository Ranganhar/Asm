    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  arr1
    .bss
    .align  3
    .type  arr1, @object
    .size  arr1, 57600
arr1:
    .zero  57600
    .globl  arr2
    .align  3
    .type  arr2, @object
    .size  arr2, 107520
arr2:
    .zero  107520
    .text
    .align  1
    .globl  loop1
    .type  loop1, @function
loop1:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	mv a4, zero
	j .LBB2
.LBB2:
	blt a4, a0, .LBB3
	j .LBB4
.LBB5:
	mv a3, zero
	j .LBB6
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	blt a4, a1, .LBB5
	j .LBB4
.LBB6:
	li t0, 2
	blt a3, t0, .LBB7
	j .LBB8
.LBB7:
	mv a2, zero
	j .LBB9
.LBB8:
	addiw a4, a4, 1
	mv a4, a4
	j .LBB2
.LBB9:
	li t0, 3
	blt a2, t0, .LBB10
	j .LBB11
.LBB10:
	mv s1, zero
	j .LBB12
.LBB11:
	addiw a3, a3, 1
	mv a3, a3
	j .LBB6
.LBB12:
	li t0, 4
	blt s1, t0, .LBB13
	j .LBB14
.LBB13:
	mv t2, zero
	j .LBB15
.LBB14:
	addiw a2, a2, 1
	mv a2, a2
	j .LBB9
.LBB15:
	li t0, 5
	blt t2, t0, .LBB16
	j .LBB17
.LBB16:
	mv t0, zero
	j .LBB18
.LBB17:
	addiw s1, s1, 1
	mv s1, s1
	j .LBB12
.LBB18:
	li t1, 6
	blt t0, t1, .LBB19
	j .LBB20
.LBB19:
	mv t1, zero
	j .LBB21
.LBB20:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB15
.LBB21:
	li a0, 2
	blt t1, a0, .LBB22
	j .LBB23
.LBB22:
	addw a5, a4, a3
	addw a5, a5, a2
	addw a5, a5, s1
	addw a5, a5, t2
	addw a5, a5, t0
	addw a5, a5, t1
	addw a0, a5, a0
	addw a1, a0, a1
	lui a0, %hi(arr1)
	addi a0, a0, %lo(arr1)
	addw t0, s0, a0
	li a0, 4096
	addiw a0, a0, 1664
	mv a0, a0
	mulw a0, a4, a0
	addw t0, t0, a0
	li a0, -4096
	addiw a0, a0, -1216
	mv a0, a0
	mulw a0, a3, a0
	addw t0, t0, a0
	li a0, 960
	mulw a0, a2, a0
	addw t0, t0, a0
	li a0, 240
	mulw s1, s1, a0
	addw t0, t0, s1
	li s1, 48
	mulw t2, t2, s1
	addw t0, t0, t2
	li t2, 8
	mulw t0, t0, t2
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a1, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB21
.LBB23:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB18
    .size loop1, .-loop1
    .align  1
    .globl  loop2
    .type  loop2, @function
loop2:
.LBB24:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t0, zero
	j .LBB25
.LBB25:
	li t1, 10
	blt t0, t1, .LBB26
	j .LBB27
.LBB26:
	mv a2, zero
	j .LBB28
.LBB27:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB28:
	li t1, 2
	blt a2, t1, .LBB29
	j .LBB30
.LBB29:
	mv a1, zero
	j .LBB31
.LBB30:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB25
.LBB31:
	li t1, 3
	blt a1, t1, .LBB32
	j .LBB33
.LBB32:
	mv a0, zero
	j .LBB34
.LBB33:
	addiw a2, a2, 1
	mv a2, a2
	j .LBB28
.LBB34:
	li t1, 2
	blt a0, t1, .LBB35
	j .LBB36
.LBB35:
	mv s1, zero
	j .LBB37
.LBB36:
	addiw a1, a1, 1
	mv a1, a1
	j .LBB31
.LBB37:
	li t1, 4
	blt s1, t1, .LBB38
	j .LBB39
.LBB38:
	mv t1, zero
	j .LBB40
.LBB39:
	addiw a0, a0, 1
	mv a0, a0
	j .LBB34
.LBB40:
	li t2, 8
	blt t1, t2, .LBB41
	j .LBB42
.LBB41:
	mv t2, zero
	j .LBB43
.LBB42:
	addiw s1, s1, 1
	mv s1, s1
	j .LBB37
.LBB43:
	li a3, 7
	blt t2, a3, .LBB44
	j .LBB45
.LBB44:
	addw a3, t0, a2
	addw a3, a3, a0
	addw a4, a3, t2
	lui a3, %hi(arr2)
	addi a3, a3, %lo(arr2)
	addw t0, s0, a3
	li a3, 4096
	addiw a3, a3, -1536
	mv a3, a3
	mulw t0, t0, a3
	addw t0, t0, t0
	li t0, 4096
	addiw t0, t0, 1280
	mv t0, t0
	mulw t0, a2, t0
	addw t0, t0, t0
	li t0, 1792
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 896
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 224
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, t1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t2, t0
	addw t0, t0, t0
	sw a4, 0(t0)
	addiw t2, t2, 1
	mv t2, t2
	j .LBB43
.LBB45:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB40
    .size loop2, .-loop2
    .align  1
    .globl  loop3
    .type  loop3, @function
loop3:
.LBB46:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	j .LBB47
.LBB47:
	mv t0, zero
	mv t0, zero
	j .LBB48
.LBB48:
	li t1, 10
	blt t0, t1, .LBB49
	j .LBB83
.LBB49:
	mv t1, zero
	mv t0, t0
	j .LBB51
.LBB50:
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB51:
	li t0, 100
	blt t1, t0, .LBB52
	j .LBB84
.LBB52:
	mv t2, zero
	mv t0, t0
	j .LBB54
.LBB53:
	addiw t0, t0, 1
	bge t0, a0, .LBB55
	j .LBB56
.LBB54:
	li t0, 1000
	blt t2, t0, .LBB57
	j .LBB85
.LBB57:
	mv s1, zero
	mv t0, t0
	j .LBB59
.LBB58:
	addiw t1, t1, 1
	bge t1, a1, .LBB60
	j .LBB61
.LBB59:
	li t0, 8192
	addiw t0, t0, 1808
	mv t0, t0
	blt s1, t0, .LBB62
	j .LBB86
.LBB62:
	mv a0, zero
	mv t0, t0
	j .LBB64
.LBB63:
	addiw t2, t2, 1
	bge t2, a2, .LBB65
	j .LBB66
.LBB64:
	li t0, 98304
	addiw t0, t0, 1696
	mv t0, t0
	blt a0, t0, .LBB67
	j .LBB87
.LBB67:
	mv a1, zero
	mv t0, t0
	j .LBB69
.LBB68:
	addiw s1, s1, 1
	bge s1, a3, .LBB70
	j .LBB71
.LBB69:
	li t0, 999424
	addiw t0, t0, 576
	mv t0, t0
	blt a1, t0, .LBB72
	j .LBB88
.LBB72:
	mv a2, zero
	mv t0, t0
	j .LBB74
.LBB73:
	addiw a0, a0, 1
	bge a0, a4, .LBB75
	j .LBB76
.LBB74:
	li a3, 9998336
	addiw a3, a3, 1664
	mv a3, a3
	blt a2, a3, .LBB77
	j .LBB89
.LBB77:
	li a3, 817
	remw a4, t0, a3
	lui a3, %hi(arr1)
	addi a3, a3, %lo(arr1)
	addw a3, s0, a3
	li a3, 4096
	addiw a3, a3, 1664
	mv a3, a3
	mulw a3, t0, a3
	addw a3, a3, a3
	li a3, -4096
	addiw a3, a3, -1216
	mv a3, a3
	mulw a3, t1, a3
	addw a3, a3, a3
	li a3, 960
	mulw a3, t2, a3
	addw a3, a3, a3
	li a3, 240
	mulw a3, s1, a3
	addw a3, a3, a3
	li a3, 48
	mulw a3, a0, a3
	addw a3, a3, a3
	li a3, 8
	mulw a3, a1, a3
	addw a3, a3, a3
	li a3, 4
	mulw a3, a2, a3
	addw a3, a3, a3
	lw a3, 0(a3)
	addw a4, a4, a3
	lui a3, %hi(arr2)
	addi a3, a3, %lo(arr2)
	addw t0, s0, a3
	li a3, 4096
	addiw a3, a3, -1536
	mv a3, a3
	mulw t0, t0, a3
	addw t0, t0, t0
	li t0, 4096
	addiw t0, t0, 1280
	mv t0, t0
	mulw t0, t1, t0
	addw t0, t0, t0
	li t0, 1792
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 896
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 224
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a2, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, a4, t0
	addiw a2, a2, 1
	bge a2, a6, .LBB79
	j .LBB80
.LBB78:
	addiw a1, a1, 1
	bge a1, a5, .LBB81
	j .LBB82
.LBB79:
	mv t0, t0
	j .LBB78
.LBB80:
	mv a2, a2
	mv t0, t0
	j .LBB74
.LBB81:
	mv t0, t0
	j .LBB73
.LBB82:
	mv a1, a1
	mv t0, t0
	j .LBB69
.LBB75:
	mv t0, t0
	j .LBB68
.LBB76:
	mv a0, a0
	mv t0, t0
	j .LBB64
.LBB70:
	mv t0, t0
	j .LBB63
.LBB71:
	mv s1, s1
	mv t0, t0
	j .LBB59
.LBB65:
	mv t0, t0
	j .LBB58
.LBB66:
	mv t2, t2
	mv t0, t0
	j .LBB54
.LBB60:
	mv t0, t0
	j .LBB53
.LBB61:
	mv t1, t1
	mv t0, t0
	j .LBB51
.LBB55:
	mv t0, t0
	j .LBB50
.LBB56:
	mv t0, t0
	mv t0, t0
	j .LBB48
.LBB83:
	mv t0, t0
	j .LBB50
.LBB84:
	mv t0, t0
	j .LBB53
.LBB85:
	mv t0, t0
	j .LBB58
.LBB86:
	mv t0, t0
	j .LBB63
.LBB87:
	mv t0, t0
	j .LBB68
.LBB88:
	mv t0, t0
	j .LBB73
.LBB89:
	mv t0, t0
	j .LBB78
    .size loop3, .-loop3
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB90:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	call getint
	mv t2, a0
	call getint
	mv t1, a0
	call getint
	mv a1, a0
	call getint
	mv a2, a0
	call getint
	mv a3, a0
	call getint
	mv a4, a0
	call getint
	mv a5, a0
	call getint
	mv a6, a0
	mv a0, t0
	mv a1, t2
	call loop1
	call loop2
	mv a0, t1
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	call loop3
	mv a0, a0
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
