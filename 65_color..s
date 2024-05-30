    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  dp
    .bss
    .align  3
    .type  dp, @object
    .size  dp, 52907904
dp:
    .zero  52907904
    .globl  list
    .align  3
    .type  list, @object
    .size  list, 800
list:
    .zero  800
    .globl  cns
    .align  3
    .type  cns, @object
    .size  cns, 80
cns:
    .zero  80
    .text
    .align  1
    .globl  equal
    .type  equal, @function
equal:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	beq a0, a1, .LBB2
	j .LBB3
.LBB2:
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
    .size equal, .-equal
    .align  1
    .globl  dfs
    .type  dfs, @function
dfs:
.LBB4:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv t2, a0
	mv a1, a1
	mv a2, a2
	mv a6, a3
	mv s1, a4
	mv a5, a5
	j .LBB5
.LBB5:
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 2932736
	addiw t0, t0, -1600
	mv t0, t0
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 155648
	addiw t0, t0, -544
	mv t0, t0
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 8192
	addiw t0, t0, 880
	mv t0, t0
	mulw t0, a2, t0
	addw t0, t0, t0
	li t0, 504
	mulw t0, a6, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a5, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	li a0, -1
	bne t0, a0, .LBB6
	j .LBB7
.LBB6:
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 2932736
	addiw t0, t0, -1600
	mv t0, t0
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 155648
	addiw t0, t0, -544
	mv t0, t0
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 8192
	addiw t0, t0, 880
	mv t0, t0
	mulw t0, a2, t0
	addw t0, t0, t0
	li t0, 504
	mulw t0, a6, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a5, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB7:
	addw t0, t2, a1
	addw t0, t0, a2
	addw t0, t0, a6
	addw t0, t0, s1
	beq t0, zero, .LBB8
	j .LBB9
.LBB8:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	bne t2, zero, .LBB10
	j .LBB20
.LBB10:
	mv a0, a5
	li a1, 2
	call equal
	mv a0, a0
	subw t0, t2, a0
	li t1, 1
	subw a0, t2, t1
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a6
	mv a4, s1
	li a5, 1
	call dfs
	mv a0, a0
	mulw t0, t0, a0
	addw t0, zero, t0
	li t1, 999993344
	addiw t1, t1, -1529
	mv t1, t1
	remw t0, t0, t1
	mv t0, t0
	j .LBB11
.LBB11:
	bne a1, zero, .LBB12
	j .LBB21
.LBB12:
	mv a0, a5
	li a1, 3
	call equal
	mv a0, a0
	subw a3, a1, a0
	addiw a0, t2, 1
	li t1, 1
	subw t0, a1, t1
	mv a0, a0
	mv a1, t0
	mv a2, a2
	mv a3, a6
	mv a4, s1
	li a5, 2
	call dfs
	mv a0, a0
	mulw t1, a3, a0
	addw t0, t0, t1
	li t0, 999993344
	addiw t0, t0, -1529
	mv t1, t0
	remw t0, t0, t1
	mv t0, t0
	j .LBB13
.LBB13:
	bne a2, zero, .LBB14
	j .LBB22
.LBB14:
	mv a0, a5
	li a1, 4
	call equal
	mv a0, a0
	subw a3, a2, a0
	addiw t1, a1, 1
	li a0, 1
	subw t0, a2, a0
	mv a0, t2
	mv a1, t1
	mv a2, t0
	mv a3, a6
	mv a4, s1
	li a5, 3
	call dfs
	mv a0, a0
	mulw t1, a3, a0
	addw t0, t0, t1
	li t0, 999993344
	addiw t0, t0, -1529
	mv t1, t0
	remw t0, t0, t1
	mv t0, t0
	j .LBB15
.LBB15:
	bne a6, zero, .LBB16
	j .LBB23
.LBB16:
	mv a0, a5
	li a1, 5
	call equal
	mv a0, a0
	subw t1, a6, a0
	addiw t0, a2, 1
	li a0, 1
	subw a3, a6, a0
	mv a0, t2
	mv a1, a1
	mv a2, t0
	mv a3, a3
	mv a4, s1
	li a5, 4
	call dfs
	mv a0, a0
	mulw t1, t1, a0
	addw t1, t0, t1
	li t0, 999993344
	addiw t0, t0, -1529
	mv t0, t0
	remw t0, t1, t0
	mv t0, t0
	j .LBB17
.LBB17:
	bne s1, zero, .LBB18
	j .LBB24
.LBB18:
	addiw a3, a6, 1
	li t1, 1
	subw a4, s1, t1
	mv a0, t2
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	li a5, 5
	call dfs
	mv a0, a0
	mulw t1, s1, a0
	addw t1, t0, t1
	li t0, 999993344
	addiw t0, t0, -1529
	mv t0, t0
	remw t0, t1, t0
	mv t0, t0
	j .LBB19
.LBB19:
	li t1, 999993344
	addiw t1, t1, -1529
	mv t1, t1
	remw t1, t0, t1
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 2932736
	addiw t0, t0, -1600
	mv t0, t0
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 155648
	addiw t0, t0, -544
	mv t0, t0
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 8192
	addiw t0, t0, 880
	mv t0, t0
	mulw t0, a2, t0
	addw t0, t0, t0
	li t0, 504
	mulw t0, a6, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a5, t0
	addw t0, t0, t0
	sw t1, 0(t0)
	lui t0, %hi(dp)
	addi t0, t0, %lo(dp)
	addw t0, s0, t0
	li t0, 2932736
	addiw t0, t0, -1600
	mv t0, t0
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 155648
	addiw t0, t0, -544
	mv t0, t0
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 8192
	addiw t0, t0, 880
	mv t0, t0
	mulw t0, a2, t0
	addw t0, t0, t0
	li t0, 504
	mulw t0, a6, t0
	addw t0, t0, t0
	li t0, 28
	mulw t0, s1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a5, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	mv a0, t0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB20:
	mv t0, zero
	j .LBB11
.LBB21:
	mv t0, t0
	j .LBB13
.LBB22:
	mv t0, t0
	j .LBB15
.LBB23:
	mv t0, t0
	j .LBB17
.LBB24:
	mv t0, t0
	j .LBB19
    .size dfs, .-dfs
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB25:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv t0, a0
	mv a1, zero
	j .LBB26
.LBB26:
	li t1, 18
	blt a1, t1, .LBB27
	j .LBB28
.LBB27:
	mv a0, zero
	j .LBB29
.LBB28:
	mv t1, zero
	j .LBB30
.LBB29:
	li t0, 18
	blt a0, t0, .LBB31
	j .LBB32
.LBB31:
	mv s1, zero
	j .LBB33
.LBB32:
	addiw a1, a1, 1
	mv a1, a1
	j .LBB26
.LBB33:
	li t0, 18
	blt s1, t0, .LBB34
	j .LBB35
.LBB34:
	mv t2, zero
	j .LBB36
.LBB35:
	addiw a0, a0, 1
	mv a0, a0
	j .LBB29
.LBB36:
	li t0, 18
	blt t2, t0, .LBB37
	j .LBB38
.LBB37:
	mv t0, zero
	j .LBB39
.LBB38:
	addiw s1, s1, 1
	mv s1, s1
	j .LBB33
.LBB39:
	li t1, 18
	blt t0, t1, .LBB40
	j .LBB41
.LBB40:
	mv t1, zero
	j .LBB42
.LBB41:
	addiw t2, t2, 1
	mv t2, t2
	j .LBB36
.LBB42:
	li t0, 7
	blt t1, t0, .LBB43
	j .LBB44
.LBB43:
	lui a2, %hi(dp)
	addi a2, a2, %lo(dp)
	addw t2, s0, a2
	li a2, 2932736
	addiw a2, a2, -1600
	mv a2, a2
	mulw a1, a1, a2
	addw t2, t2, a1
	li a1, 155648
	addiw a1, a1, -544
	mv a1, a1
	mulw a0, a0, a1
	addw t2, t2, a0
	li a0, 8192
	addiw a0, a0, 880
	mv a0, a0
	mulw s1, s1, a0
	addw t2, t2, s1
	li s1, 504
	mulw t2, t2, s1
	addw t2, t2, t2
	li t2, 28
	mulw t0, t0, t2
	addw t2, t2, t0
	li t0, 4
	mulw t0, t1, t0
	addw t2, t2, t0
	li t0, -1
	sw t0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB42
.LBB44:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB39
.LBB30:
	blt t1, t0, .LBB45
	j .LBB46
.LBB45:
	call getint
	mv a0, a0
	lui t2, %hi(list)
	addi t2, t2, %lo(list)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	sw a0, 0(t2)
	lui t2, %hi(list)
	addi t2, t2, %lo(list)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	lui t2, %hi(cns)
	addi t2, t2, %lo(cns)
	addw t2, s0, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addiw a0, t2, 1
	lui t2, %hi(list)
	addi t2, t2, %lo(list)
	addw t2, s0, t2
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	lui s1, %hi(cns)
	addi s1, s1, %lo(cns)
	addw t2, s0, s1
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	sw a0, 0(t2)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB30
.LBB46:
	lui t0, %hi(cns)
	addi t0, t0, %lo(cns)
	addw t0, s0, t0
	lw a0, 4(t0)
	lui t0, %hi(cns)
	addi t0, t0, %lo(cns)
	addw t0, s0, t0
	lw a1, 8(t0)
	lui t0, %hi(cns)
	addi t0, t0, %lo(cns)
	addw t0, s0, t0
	lw a2, 12(t0)
	lui t0, %hi(cns)
	addi t0, t0, %lo(cns)
	addw t0, s0, t0
	lw a3, 16(t0)
	lui t0, %hi(cns)
	addi t0, t0, %lo(cns)
	addw t0, s0, t0
	lw a4, 20(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	li a5, 0
	call dfs
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
