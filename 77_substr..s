    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  MAX
    .type  MAX, @function
MAX:
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
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB3:
	blt a1, a0, .LBB4
	j .LBB5
.LBB4:
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	mv a0, a1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size MAX, .-MAX
    .align  1
    .globl  max_sum_nonadjacent
    .type  max_sum_nonadjacent, @function
max_sum_nonadjacent:
.LBB6:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	mv t0, a0
	mv t2, a1
	j .LBB7
.LBB7:
	addiw a0, s0, -144
	mv a0, a0
	mv a1, t1
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	addw t1, s0, t0
	lw s1, 0(t1)
	addiw t1, s0, -80
	sw s1, 0(t1)
	addw t1, s0, t0
	lw a0, 0(t1)
	addw t1, s0, t0
	lw a1, 4(t1)
	mv a0, a0
	mv a1, a1
	call MAX
	mv a0, a0
	addiw t1, s0, -80
	sw a0, 4(t1)
	li t1, 2
	j .LBB8
.LBB8:
	blt t1, t2, .LBB9
	j .LBB10
.LBB9:
	li s1, 2
	subw s1, t1, s1
	addiw s1, s0, -80
	li a0, 4
	mulw s1, s1, a0
	addw s1, s1, s1
	lw s1, 0(s1)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, s1, t0
	li t0, 1
	subw t0, t1, t0
	addiw t0, s0, -80
	li s1, 4
	mulw t0, t0, s1
	addw t0, t0, t0
	lw a1, 0(t0)
	mv a0, a0
	mv a1, a1
	call MAX
	mv a0, a0
	addiw t0, s0, -80
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw a0, 0(t0)
	addiw t1, t1, 1
	mv t1, t1
	j .LBB8
.LBB10:
	li t0, 1
	subw t1, t2, t0
	addiw t0, s0, -80
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size max_sum_nonadjacent, .-max_sum_nonadjacent
    .align  1
    .globl  longest_common_subseq
    .type  longest_common_subseq, @function
longest_common_subseq:
.LBB11:
	addi sp, sp, -1040
	sd ra, 1032(sp)
	sd s0, 1024(sp)
	addi s0, sp, 1040
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	j .LBB12
.LBB12:
	li t1, -4096
	addiw t1, t1, 2032
	addw a0, s0, t1
	mv a0, a0
	mv a1, t0
	li a2, 1024
	call llvm.memcpy.p0.p0.i32
	li t1, 1
	j .LBB13
.LBB13:
	bge a1, t1, .LBB14
	j .LBB15
.LBB14:
	li t0, 1
	j .LBB16
.LBB15:
	addiw t0, s0, -1040
	li t0, 64
	mulw t0, a1, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, a3, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	ld ra, 1032(sp)
	ld s0, 1024(sp)
	addi sp, sp, 1040
	ret 
.LBB16:
	bge a3, t0, .LBB17
	j .LBB18
.LBB17:
	li t2, 1
	subw s1, t1, t2
	addw t2, s0, a0
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	li t2, 1
	subw t2, t0, t2
	addw t2, s0, a2
	li a0, 4
	mulw t2, t2, a0
	addw t2, t2, t2
	lw t2, 0(t2)
	beq s1, t2, .LBB19
	j .LBB20
.LBB18:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB13
.LBB19:
	li t2, 1
	subw t2, t1, t2
	li s1, 1
	subw s1, t0, s1
	addiw t2, s0, -1040
	li a0, 64
	mulw t2, t2, a0
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addiw t2, t2, 1
	addiw t1, s0, -1040
	li s1, 64
	mulw t1, t1, s1
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	j .LBB21
.LBB20:
	li t2, 1
	subw s1, t1, t2
	addiw t2, s0, -1040
	li t2, 64
	mulw t2, s1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw a0, 0(t2)
	li t2, 1
	subw s1, t0, t2
	addiw t2, s0, -1040
	li t2, 64
	mulw t2, t1, t2
	addw t2, t2, t2
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw a1, 0(t2)
	mv a0, a0
	mv a1, a1
	call MAX
	mv a0, a0
	addiw t1, s0, -1040
	li t2, 64
	mulw t1, t1, t2
	addw t1, t1, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 0(t1)
	j .LBB21
.LBB21:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB16
    .size longest_common_subseq, .-longest_common_subseq
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB22:
	addi sp, sp, -128
	sd ra, 120(sp)
	sd s0, 112(sp)
	addi s0, sp, 128
	addiw a0, s0, -188
	mv a0, a0
	mv a1, a1
	li a2, 60
	call llvm.memcpy.p0.p0.i32
	addiw a0, s0, -120
	mv a0, a0
	mv a1, t0
	li a2, 52
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -128
	addiw a0, t0, 0
	mv a0, a0
	li a1, 15
	call max_sum_nonadjacent
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	addiw t0, s0, -128
	addiw t1, s0, -68
	addiw a0, t0, 0
	mv a0, a0
	li a1, 15
	addiw a2, t1, 0
	mv a2, a2
	li a3, 13
	call longest_common_subseq
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 120(sp)
	ld s0, 112(sp)
	addi sp, sp, 128
	ret 
    .size main, .-main
