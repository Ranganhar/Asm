    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  n
    .bss
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .text
    .align  1
    .globl  bubblesort
    .type  bubblesort, @function
bubblesort:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	mv t1, zero
	j .LBB2
.LBB2:
	lui t0, %hi(n)
	lw t2, %lo(n)(t0)
	li t0, 1
	subw t0, t2, t0
	blt t1, t0, .LBB3
	j .LBB4
.LBB3:
	mv t0, zero
	j .LBB5
.LBB4:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	subw t2, t2, t1
	li s1, 1
	subw t2, t2, s1
	blt t0, t2, .LBB6
	j .LBB7
.LBB6:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addiw t2, t0, 1
	addw t2, s0, a0
	li a1, 4
	mulw t2, t2, a1
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, s1, .LBB8
	j .LBB9
.LBB7:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB2
.LBB8:
	addiw s1, t0, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw a2, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addiw t2, t0, 1
	addw t2, s0, a0
	li a1, 4
	mulw t2, t2, a1
	addw t2, t2, t2
	sw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw a2, 0(t2)
	j .LBB9
.LBB9:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB5
    .size bubblesort, .-bubblesort
    .align  1
    .globl  insertsort
    .type  insertsort, @function
insertsort:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB11
.LBB11:
	li t0, 1
	j .LBB12
.LBB12:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB13
	j .LBB14
.LBB13:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	li t1, 1
	subw t1, t0, t1
	mv t1, t1
	j .LBB15
.LBB14:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	li t0, -1
	blt t0, t1, .LBB16
	j .LBB17
.LBB18:
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw s1, t1, 1
	addw t2, s0, a0
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	li t0, 1
	subw t1, t1, t0
	mv t1, t1
	j .LBB15
.LBB17:
	addiw t1, t1, 1
	addw t1, s0, a0
	li t2, 4
	mulw t1, t1, t2
	addw t1, t1, t1
	sw s1, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB12
.LBB16:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt s1, t2, .LBB18
	j .LBB17
    .size insertsort, .-insertsort
    .align  1
    .globl  QuickSort
    .type  QuickSort, @function
QuickSort:
.LBB19:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	mv a2, a2
	j .LBB20
.LBB20:
	blt a1, a2, .LBB21
	j .LBB22
.LBB21:
	addw t0, s0, a0
	li t0, 4
	mulw t0, a1, t0
	addw t0, t0, t0
	lw a3, 0(t0)
	mv t1, a2
	mv t0, a1
	j .LBB23
.LBB22:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB23:
	blt t0, t1, .LBB24
	j .LBB25
.LBB24:
	mv t1, t1
	j .LBB26
.LBB25:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a3, 0(t1)
	li t1, 1
	subw t0, t0, t1
	mv a0, a0
	mv a1, a1
	mv a2, t0
	call QuickSort
	addiw a1, t0, 1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	call QuickSort
	j .LBB22
.LBB26:
	blt t0, t1, .LBB27
	j .LBB28
.LBB29:
	li t2, 1
	subw t1, t1, t2
	mv t1, t1
	j .LBB26
.LBB28:
	blt t0, t1, .LBB30
	j .LBB38
.LBB27:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	li s1, 1
	subw s1, a3, s1
	blt s1, t2, .LBB29
	j .LBB28
.LBB30:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB31
.LBB31:
	mv t0, t0
	j .LBB32
.LBB32:
	blt t0, t1, .LBB33
	j .LBB34
.LBB35:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB32
.LBB34:
	blt t0, t1, .LBB36
	j .LBB39
.LBB33:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt t2, a3, .LBB35
	j .LBB34
.LBB36:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	li t2, 1
	subw t1, t1, t2
	mv t1, t1
	j .LBB37
.LBB37:
	mv t1, t1
	mv t0, t0
	j .LBB23
.LBB38:
	mv t0, t0
	j .LBB31
.LBB39:
	mv t1, t1
	j .LBB37
    .size QuickSort, .-QuickSort
    .align  1
    .globl  getMid
    .type  getMid, @function
getMid:
.LBB40:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB41
.LBB41:
	lui t0, %hi(n)
	lw t1, %lo(n)(t0)
	li t0, 2
	remw t0, t1, t0
	beq t0, zero, .LBB42
	j .LBB43
.LBB42:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	li t1, 2
	divw t0, t0, t1
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 1
	subw t0, t0, t2
	addw t0, s0, a0
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, t1, t0
	li t1, 2
	divw a0, t0, t1
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB43:
	lui t0, %hi(n)
	lw t1, %lo(n)(t0)
	li t0, 2
	divw t0, t1, t0
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size getMid, .-getMid
    .align  1
    .globl  getMost
    .type  getMost, @function
getMost:
.LBB44:
	addi sp, sp, -1968
	sd ra, 1960(sp)
	sd s0, 1952(sp)
	addi s0, sp, 1968
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	mv a0, a0
	j .LBB45
.LBB45:
	mv t0, zero
	j .LBB46
.LBB46:
	li t1, 1000
	blt t0, t1, .LBB47
	j .LBB48
.LBB47:
	li t1, -4096
	addiw t1, t1, 80
	addw t2, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	li t1, 0
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB46
.LBB48:
	mv t2, zero
	mv t1, undef
	mv t0, zero
	j .LBB49
.LBB49:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	blt t0, s1, .LBB50
	j .LBB51
.LBB50:
	addw s1, s0, a0
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw t1, 0(s1)
	li t0, -4096
	addiw t0, t0, 80
	addw s1, s0, t0
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	addiw a0, s1, 1
	li t0, -4096
	addiw t0, t0, 80
	addw s1, s0, t0
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	sw a0, 0(s1)
	li t0, -4096
	addiw t0, t0, 80
	addw s1, s0, t0
	li s1, 4
	mulw s1, t1, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	blt t2, s1, .LBB52
	j .LBB54
.LBB51:
	mv a0, t1
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 1960(sp)
	ld s0, 1952(sp)
	addi sp, sp, 1968
	ret 
.LBB52:
	li t0, -4096
	addiw t0, t0, 80
	addw t2, s0, t0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	mv t2, t2
	mv t1, t1
	j .LBB53
.LBB53:
	addiw t0, t0, 1
	mv t2, t2
	mv t1, t1
	mv t0, t0
	j .LBB49
.LBB54:
	mv t2, t2
	mv t1, t1
	j .LBB53
    .size getMost, .-getMost
    .align  1
    .globl  revert
    .type  revert, @function
revert:
.LBB55:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB56
.LBB56:
	mv t1, zero
	mv t0, zero
	j .LBB57
.LBB57:
	blt t1, t0, .LBB58
	j .LBB59
.LBB58:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw a1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw s1, 0(t2)
	addiw t1, t1, 1
	li t2, 1
	subw t0, t0, t2
	mv t1, t1
	mv t0, t0
	j .LBB57
.LBB59:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size revert, .-revert
    .align  1
    .globl  arrCopy
    .type  arrCopy, @function
arrCopy:
.LBB60:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB61
.LBB61:
	mv t0, zero
	j .LBB62
.LBB62:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB63
	j .LBB64
.LBB63:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addw t1, s0, a1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB62
.LBB64:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size arrCopy, .-arrCopy
    .align  1
    .globl  calSum
    .type  calSum, @function
calSum:
.LBB65:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB66
.LBB66:
	mv t1, zero
	mv t0, zero
	j .LBB67
.LBB67:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	blt t0, t2, .LBB68
	j .LBB69
.LBB68:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t1, t1, t2
	remw t2, t0, a1
	li s1, 1
	subw s1, a1, s1
	bne t2, s1, .LBB70
	j .LBB71
.LBB69:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB70:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	li s1, 0
	sw s1, 0(t2)
	mv t1, t1
	j .LBB72
.LBB71:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	mv t1, zero
	j .LBB72
.LBB72:
	addiw t0, t0, 1
	mv t1, t1
	mv t0, t0
	j .LBB67
    .size calSum, .-calSum
    .align  1
    .globl  avgPooling
    .type  avgPooling, @function
avgPooling:
.LBB73:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB74
.LBB74:
	mv t2, zero
	mv t0, zero
	mv t1, undef
	j .LBB75
.LBB75:
	lui s1, %hi(n)
	lw s1, %lo(n)(s1)
	blt t0, s1, .LBB76
	j .LBB77
.LBB76:
	li s1, 1
	subw s1, a1, s1
	blt t0, s1, .LBB78
	j .LBB79
.LBB77:
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	subw t0, t0, a1
	addiw t0, t0, 1
	mv t0, t0
	j .LBB80
.LBB78:
	addw s1, s0, a0
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	addw t2, t2, s1
	mv t2, t2
	mv t1, t1
	j .LBB81
.LBB79:
	li s1, 1
	subw s1, a1, s1
	beq t0, s1, .LBB82
	j .LBB83
.LBB81:
	addiw t0, t0, 1
	mv t2, t2
	mv t0, t0
	mv t1, t1
	j .LBB75
.LBB82:
	addw t1, s0, a0
	lw t1, 0(t1)
	divw a1, t2, a1
	addw s1, s0, a0
	sw a1, 0(s1)
	mv t2, t2
	mv t1, t1
	j .LBB84
.LBB83:
	addw s1, s0, a0
	li s1, 4
	mulw s1, t0, s1
	addw s1, s1, s1
	lw s1, 0(s1)
	addw t2, t2, s1
	subw t2, t2, t1
	subw t1, t0, a1
	addiw t1, t1, 1
	addw t1, s0, a0
	li s1, 4
	mulw t1, t1, s1
	addw t1, t1, t1
	lw t1, 0(t1)
	divw a2, t2, a1
	subw s1, t0, a1
	addiw a1, s1, 1
	addw s1, s0, a0
	li s1, 4
	mulw s1, a1, s1
	addw s1, s1, s1
	sw a2, 0(s1)
	mv t2, t2
	mv t1, t1
	j .LBB84
.LBB84:
	mv t2, t2
	mv t1, t1
	j .LBB81
.LBB80:
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .LBB85
	j .LBB86
.LBB85:
	addw t1, s0, a0
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	li t2, 0
	sw t2, 0(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB80
.LBB86:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size avgPooling, .-avgPooling
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB87:
	addi sp, sp, -272
	sd ra, 264(sp)
	sd s0, 256(sp)
	addi s0, sp, 272
	li t0, 32
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	addiw t1, s0, -272
	li t0, 7
	sw t0, 0(t1)
	addiw t1, s0, -272
	li t0, 23
	sw t0, 4(t1)
	addiw t1, s0, -272
	li t0, 89
	sw t0, 8(t1)
	addiw t1, s0, -272
	li t0, 26
	sw t0, 12(t1)
	addiw t1, s0, -272
	li t0, 282
	sw t0, 16(t1)
	addiw t1, s0, -272
	li t0, 254
	sw t0, 20(t1)
	addiw t1, s0, -272
	li t0, 27
	sw t0, 24(t1)
	addiw t1, s0, -272
	li t0, 5
	sw t0, 28(t1)
	addiw t1, s0, -272
	li t0, 83
	sw t0, 32(t1)
	addiw t1, s0, -272
	li t0, 273
	sw t0, 36(t1)
	addiw t1, s0, -272
	li t0, 574
	sw t0, 40(t1)
	addiw t1, s0, -272
	li t0, 905
	sw t0, 44(t1)
	addiw t1, s0, -272
	li t0, 354
	sw t0, 48(t1)
	addiw t1, s0, -272
	li t0, 657
	sw t0, 52(t1)
	addiw t1, s0, -272
	li t0, 935
	sw t0, 56(t1)
	addiw t1, s0, -272
	li t0, 264
	sw t0, 60(t1)
	addiw t1, s0, -272
	li t0, 639
	sw t0, 64(t1)
	addiw t0, s0, -272
	li t1, 459
	sw t1, 68(t0)
	addiw t1, s0, -272
	li t0, 29
	sw t0, 72(t1)
	addiw t0, s0, -272
	li t1, 68
	sw t1, 76(t0)
	addiw t0, s0, -272
	li t1, 929
	sw t1, 80(t0)
	addiw t0, s0, -272
	li t1, 756
	sw t1, 84(t0)
	addiw t0, s0, -272
	li t1, 452
	sw t1, 88(t0)
	addiw t0, s0, -272
	li t1, 279
	sw t1, 92(t0)
	addiw t1, s0, -272
	li t0, 58
	sw t0, 96(t1)
	addiw t0, s0, -272
	li t1, 87
	sw t1, 100(t0)
	addiw t1, s0, -272
	li t0, 96
	sw t0, 104(t1)
	addiw t0, s0, -272
	li t1, 36
	sw t1, 108(t0)
	addiw t0, s0, -272
	li t1, 39
	sw t1, 112(t0)
	addiw t0, s0, -272
	li t1, 28
	sw t1, 116(t0)
	addiw t0, s0, -272
	li t1, 1
	sw t1, 120(t0)
	addiw t1, s0, -272
	li t0, 290
	sw t0, 124(t1)
	addiw t1, s0, -272
	addiw t0, s0, -144
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call revert
	mv t0, zero
	j .LBB88
.LBB88:
	li t1, 32
	blt t0, t1, .LBB89
	j .LBB90
.LBB89:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB88
.LBB90:
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call bubblesort
	mv t0, zero
	j .LBB91
.LBB91:
	li t1, 32
	blt t0, t1, .LBB92
	j .LBB93
.LBB92:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB91
.LBB93:
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call getMid
	mv a0, a0
	mv a0, a0
	call putint
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call getMost
	mv a0, a0
	mv a0, a0
	call putint
	addiw t0, s0, -272
	addiw t1, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call bubblesort
	mv t0, zero
	j .LBB94
.LBB94:
	li t1, 32
	blt t0, t1, .LBB95
	j .LBB96
.LBB95:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB94
.LBB96:
	addiw t1, s0, -272
	addiw t0, s0, -144
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	call insertsort
	mv t0, zero
	j .LBB97
.LBB97:
	li t1, 32
	blt t0, t1, .LBB98
	j .LBB99
.LBB98:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB97
.LBB99:
	addiw t0, s0, -272
	addiw t1, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	addiw a1, t1, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	li a1, 0
	li a2, 31
	call QuickSort
	mv t0, zero
	j .LBB100
.LBB100:
	li t1, 32
	blt t0, t1, .LBB101
	j .LBB102
.LBB101:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB100
.LBB102:
	addiw t1, s0, -272
	addiw t0, s0, -144
	addiw a0, t1, 0
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw a0, t0, 0
	mv a0, a0
	li a1, 4
	call calSum
	mv t0, zero
	j .LBB103
.LBB103:
	li t1, 32
	blt t0, t1, .LBB104
	j .LBB105
.LBB104:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB103
.LBB105:
	addiw t1, s0, -272
	addiw t0, s0, -144
	addiw t1, t1, 0
	mv a0, t1
	addiw a1, t0, 0
	mv a1, a1
	call arrCopy
	addiw t0, s0, -144
	addiw t0, t0, 0
	mv a0, t0
	li a1, 3
	call avgPooling
	mv t0, zero
	j .LBB106
.LBB106:
	li t1, 32
	blt t0, t1, .LBB107
	j .LBB108
.LBB107:
	addiw t1, s0, -144
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	addiw t0, t0, 1
	mv t0, t0
	j .LBB106
.LBB108:
	mv a0, zero
	ld ra, 264(sp)
	ld s0, 256(sp)
	addi sp, sp, 272
	ret 
    .size main, .-main
