    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  func
    .type  func, @function
func:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lw t0, 0(s0)
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
	mv t1, zero
	j .LBB2
.LBB2:
	li t0, 10
	blt t1, t0, .LBB3
	j .LBB4
.LBB3:
	addw t0, s0, a1
	li t0, 236
	mulw t0, a0, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 0(t0)
	mv a0, a0
	call putint
	addiw t1, t1, 1
	mv t1, t1
	j .LBB2
.LBB4:
	li a0, 10
	call putch
	addw t1, s0, a3
	li t1, 4
	mulw t1, a2, t1
	addw t1, t1, t1
	lw a0, 0(t1)
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a7, a7
	mv t0, t0
	j .LBB5
.LBB5:
	li t1, 10
	blt t0, t1, .LBB6
	j .LBB7
.LBB6:
	li t1, 126976
	addiw t1, t1, 1899
	mv t1, t1
	mulw t2, a7, t1
	li t1, -4096
	addiw t1, t1, -372
	mv t1, t1
	remw t2, t2, t1
	addw t1, s0, a6
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 0(t1)
	addiw t0, t0, 1
	addiw a7, a7, 7
	mv a7, a7
	mv t0, t0
	j .LBB5
.LBB7:
	addw a0, a4, a5
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB8:
	addi sp, sp, -208
	sd ra, 200(sp)
	sd s0, 192(sp)
	addi s0, sp, 208
	li t1, 28672
	add sp, sp, t1
	li t1, -45056
	addiw t1, t1, -164
	addw a0, s0, t1
	mv a0, a0
	mv a1, a1
	li a2, 8192
	addiw a2, a2, -36
	mv a2, a2
	call llvm.memcpy.p0.p0.i32
	li t1, -24576
	addiw t1, t1, -456
	addw a0, s0, t1
	mv a0, a0
	mv a1, t0
	li a2, 12288
	addiw a2, a2, 220
	mv a2, a2
	call llvm.memcpy.p0.p0.i32
	li t0, -28672
	addiw t0, t0, -200
	addw t1, s0, t0
	li t0, 6
	li t2, -4096
	addiw t2, t2, -2
	addw t1, t1, t2
	sw t0, 466(t1)
	li t0, -28672
	addiw t0, t0, -200
	addw t1, s0, t0
	li t0, 7
	li t2, -4096
	addiw t2, t2, -2
	addw t1, t1, t2
	sw t0, 474(t1)
	li t0, -28672
	addiw t0, t0, -200
	addw t0, s0, t0
	li t1, 4
	li t2, -4096
	addiw t2, t2, -2
	addw t0, t0, t2
	sw t1, 478(t0)
	li t0, -28672
	addiw t0, t0, -200
	addw t0, s0, t0
	li t1, 9
	li t2, -4096
	addiw t2, t2, -2
	addw t0, t0, t2
	sw t1, 490(t0)
	li t0, -28672
	addiw t0, t0, -200
	addw t0, s0, t0
	li t1, 11
	li t2, -4096
	addiw t2, t2, -2
	addw t0, t0, t2
	sw t1, 506(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw t1, s0, t0
	li t0, 1
	sw t0, 1420(t1)
	li t0, -12288
	addiw t0, t0, -236
	addw t1, s0, t0
	li t0, 2
	sw t0, 1424(t1)
	li t0, -12288
	addiw t0, t0, -236
	addw t0, s0, t0
	li t1, 3
	sw t1, 1428(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw t1, s0, t0
	li t0, 9
	sw t0, 1452(t1)
	li t0, -28672
	addiw t0, t0, -200
	addw t0, s0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw a0, 466(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw t2, s0, t0
	li t0, -28672
	addiw t0, t0, -200
	addw t0, s0, t0
	li t1, -4096
	addiw t1, t1, -2
	addw t0, t0, t1
	lw a2, 474(t0)
	li t0, -28672
	addiw t0, t0, -200
	addw t1, s0, t0
	li t0, -12288
	addiw t0, t0, -236
	addw t0, s0, t0
	lw a4, 1428(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw t0, s0, t0
	lw a5, 1416(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw t0, s0, t0
	li t0, -12288
	addiw t0, t0, -236
	addw s1, s0, t0
	li t0, 4096
	addiw t0, t0, 2045
	addw t0, s1, t0
	lw a7, 1899(t0)
	li t0, -12288
	addiw t0, t0, -236
	addw s1, s0, t0
	li t0, 8192
	addiw t0, t0, 2043
	addw t0, s1, t0
	lw t0, 1873(t0)
	mv a0, a0
	addiw a1, t2, 0
	mv a1, a1
	mv a2, a2
	li t2, 4096
	addiw t2, t2, 460
	addw a3, t1, t2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	addiw a6, t0, 1416
	mv a6, a6
	mv a7, a7
	call func
	mv a0, a0
	li t0, 3
	mulw t0, a0, t0
	mv t0, t0
	j .LBB9
.LBB9:
	bge t0, zero, .LBB10
	j .LBB11
.LBB10:
	li t1, -12288
	addiw t1, t1, -236
	addw t1, s0, t1
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw a0, 1416(t1)
	mv a0, a0
	call putint
	li a0, 32
	call putch
	li t1, 1
	subw t0, t0, t1
	mv t0, t0
	j .LBB9
.LBB11:
	li a0, 10
	call putch
	mv a0, zero
	li t0, 28672
	add sp, sp, t0
	ld ra, 200(sp)
	ld s0, 192(sp)
	addi sp, sp, 208
	ret 
    .size main, .-main
