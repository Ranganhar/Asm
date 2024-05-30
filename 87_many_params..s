    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  sort
    .type  sort, @function
sort:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	mv t0, zero
	j .LBB2
.LBB2:
	li t1, 1
	subw t1, a1, t1
	blt t0, t1, .LBB3
	j .LBB4
.LBB3:
	addiw t1, t0, 1
	mv t1, t1
	j .LBB5
.LBB4:
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	blt t1, a1, .LBB6
	j .LBB7
.LBB6:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	blt s1, t2, .LBB8
	j .LBB9
.LBB7:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB8:
	addw t2, s0, a0
	li t2, 4
	mulw t2, t0, t2
	addw t2, t2, t2
	lw s1, 0(t2)
	addw t2, s0, a0
	li t2, 4
	mulw t2, t1, t2
	addw t2, t2, t2
	lw t2, 0(t2)
	addw t0, s0, a0
	li a2, 4
	mulw t0, t0, a2
	addw t0, t0, t0
	sw t2, 0(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	sw s1, 0(t0)
	j .LBB9
.LBB9:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB5
    .size sort, .-sort
    .align  1
    .globl  param32_rec
    .type  param32_rec, @function
param32_rec:
.LBB10:
	addi sp, sp, -208
	sd ra, 200(sp)
	sd s0, 192(sp)
	addi s0, sp, 208
	lw s10, 0(s0)
	lw s8, 4(s0)
	lw t1, 8(s0)
	lw t0, 12(s0)
	sd t0, -32(s0)
	lw s11, 16(s0)
	lw t0, 20(s0)
	sd t0, -40(s0)
	lw s4, 24(s0)
	lw s2, 28(s0)
	lw t0, 32(s0)
	sd t0, -48(s0)
	lw t0, 36(s0)
	sd t0, -56(s0)
	lw t0, 40(s0)
	sd t0, -64(s0)
	lw t0, 44(s0)
	sd t0, -88(s0)
	lw s5, 48(s0)
	lw s3, 52(s0)
	lw t2, 56(s0)
	lw s7, 60(s0)
	lw t0, 64(s0)
	sd t0, -72(s0)
	lw t0, 68(s0)
	sd t0, -96(s0)
	lw t0, 72(s0)
	sd t0, -104(s0)
	lw t0, 76(s0)
	lw t0, 80(s0)
	sd t0, -112(s0)
	lw s6, 84(s0)
	lw s1, 88(s0)
	lw t0, 92(s0)
	sd t0, -120(s0)
	mv a0, a0
	mv s9, a1
	mv t0, a2
	sd t0, -80(s0)
	mv a2, a3
	mv a1, a4
	mv a3, a5
	mv a4, a6
	mv a5, a7
	j .LBB11
.LBB11:
	beq a0, zero, .LBB12
	j .LBB13
.LBB12:
	mv a0, s9
	ld ra, 200(sp)
	ld s0, 192(sp)
	addi sp, sp, 208
	ret 
.LBB13:
	li t0, 1
	subw t0, a0, t0
	ld t0, -80(s0)
	addw t1, s9, t0
	li t2, 998244352
	addiw t2, t2, 1
	mv t2, t2
	remw t1, t1, t2
	mv a0, t0
	mv a1, t1
	mv a2, a2
	mv a3, a1
	mv a4, a3
	mv a5, a4
	mv a6, a5
	ld t0, -120(s0)
	mv a7, t0
	call param32_rec
	mv t0, a0
	mv a0, t0
	ld ra, 200(sp)
	ld s0, 192(sp)
	addi sp, sp, 208
	ret 
    .size param32_rec, .-param32_rec
    .align  1
    .globl  param32_arr
    .type  param32_arr, @function
param32_arr:
.LBB14:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	ld s8, 0(s0)
	ld s10, 8(s0)
	ld s9, 16(s0)
	ld s2, 24(s0)
	ld s7, 32(s0)
	ld t5, 40(s0)
	ld s6, 48(s0)
	ld t0, 56(s0)
	sd t0, -32(s0)
	ld t3, 64(s0)
	ld t0, 72(s0)
	sd t0, -40(s0)
	ld t0, 80(s0)
	sd t0, -48(s0)
	ld t0, 88(s0)
	sd t0, -56(s0)
	ld t0, 96(s0)
	sd t0, -64(s0)
	ld t0, 104(s0)
	sd t0, -72(s0)
	ld t0, 112(s0)
	sd t0, -88(s0)
	ld s3, 120(s0)
	ld t2, 128(s0)
	ld s11, 136(s0)
	ld s1, 144(s0)
	ld t1, 152(s0)
	ld t4, 160(s0)
	ld s4, 168(s0)
	ld t0, 176(s0)
	sd t0, -80(s0)
	ld s5, 184(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB15
.LBB15:
	addw t0, s0, a0
	lw t0, 0(t0)
	addw a0, s0, a0
	lw a0, 4(a0)
	addw t0, t0, a0
	addw a0, s0, a1
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, a1
	lw t0, 4(t0)
	addw a0, a0, t0
	addw t0, s0, a2
	lw t0, 0(t0)
	addw a0, a0, t0
	addw t0, s0, a2
	lw t0, 4(t0)
	addw t0, a0, t0
	addw a0, s0, a3
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, a3
	lw t0, 4(t0)
	addw t0, a0, t0
	addw a0, s0, a4
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, a4
	lw t0, 4(t0)
	addw a0, a0, t0
	addw t0, s0, a5
	lw t0, 0(t0)
	addw a0, a0, t0
	addw t0, s0, a5
	lw t0, 4(t0)
	addw a0, a0, t0
	addw t0, s0, a6
	lw t0, 0(t0)
	addw a0, a0, t0
	addw t0, s0, a6
	lw t0, 4(t0)
	addw t0, a0, t0
	addw a0, s0, a7
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, a7
	lw t0, 4(t0)
	addw a0, a0, t0
	addw t0, s0, s5
	lw t0, 0(t0)
	addw a0, a0, t0
	addw t0, s0, s5
	lw t0, 4(t0)
	addw a0, a0, t0
	ld t0, -80(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw a0, a0, t0
	ld t0, -80(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t0, a0, t0
	addw a0, s0, s4
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, s4
	lw t0, 4(t0)
	addw a0, a0, t0
	addw t0, s0, t4
	lw t0, 0(t0)
	addw t0, a0, t0
	addw a0, s0, t4
	lw a0, 4(a0)
	addw t0, t0, a0
	addw a0, s0, t1
	lw a0, 0(a0)
	addw a0, t0, a0
	addw t0, s0, t1
	lw t0, 4(t0)
	addw t1, a0, t0
	addw t0, s0, s1
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s1
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, s11
	lw t0, 0(t0)
	addw t0, t1, t0
	addw t1, s0, s11
	lw t1, 4(t1)
	addw t0, t0, t1
	addw t1, s0, t2
	lw t1, 0(t1)
	addw t0, t0, t1
	addw t1, s0, t2
	lw t1, 4(t1)
	addw t1, t0, t1
	addw t0, s0, s3
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s3
	lw t0, 4(t0)
	addw t0, t1, t0
	ld t0, -88(s0)
	addw t1, s0, t0
	lw t1, 0(t1)
	addw t0, t0, t1
	ld t0, -88(s0)
	addw t1, s0, t0
	lw t1, 4(t1)
	addw t1, t0, t1
	ld t0, -72(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	ld t0, -72(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t1, t1, t0
	ld t0, -64(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	ld t0, -64(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t1, t1, t0
	ld t0, -56(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	ld t0, -56(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t0, t1, t0
	ld t0, -48(s0)
	addw t1, s0, t0
	lw t1, 0(t1)
	addw t1, t0, t1
	ld t0, -48(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t1, t1, t0
	ld t0, -40(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	ld t0, -40(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, t3
	lw t0, 0(t0)
	addw t0, t1, t0
	addw t1, s0, t3
	lw t1, 4(t1)
	addw t1, t0, t1
	ld t0, -32(s0)
	addw t0, s0, t0
	lw t0, 0(t0)
	addw t1, t1, t0
	ld t0, -32(s0)
	addw t0, s0, t0
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, s6
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s6
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, t5
	lw t0, 0(t0)
	addw t0, t1, t0
	addw t1, s0, t5
	lw t1, 4(t1)
	addw t1, t0, t1
	addw t0, s0, s7
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s7
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, s2
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s2
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, s9
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s9
	lw t0, 4(t0)
	addw t0, t1, t0
	addw t1, s0, s10
	lw t1, 0(t1)
	addw t1, t0, t1
	addw t0, s0, s10
	lw t0, 4(t0)
	addw t1, t1, t0
	addw t0, s0, s8
	lw t0, 0(t0)
	addw t1, t1, t0
	addw t0, s0, s8
	lw t0, 4(t0)
	addw a0, t1, t0
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size param32_arr, .-param32_arr
    .align  1
    .globl  param16
    .type  param16, @function
param16:
.LBB16:
	addi sp, sp, -176
	sd ra, 168(sp)
	sd s0, 160(sp)
	addi s0, sp, 176
	lw t1, 0(s0)
	lw s4, 4(s0)
	lw s6, 8(s0)
	lw s3, 12(s0)
	lw s5, 16(s0)
	lw s2, 20(s0)
	lw s1, 24(s0)
	lw t2, 28(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB17
.LBB17:
	addiw a0, s0, -144
	mv a0, a0
	mv a1, t0
	li a2, 64
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -80
	sw a0, 0(t0)
	addiw t0, s0, -80
	sw a1, 4(t0)
	addiw t0, s0, -80
	sw a2, 8(t0)
	addiw t0, s0, -80
	sw a3, 12(t0)
	addiw t0, s0, -80
	sw a4, 16(t0)
	addiw t0, s0, -80
	sw a5, 20(t0)
	addiw t0, s0, -80
	sw a6, 24(t0)
	addiw t0, s0, -80
	sw a7, 28(t0)
	addiw t0, s0, -80
	sw t2, 32(t0)
	addiw t0, s0, -80
	sw s1, 36(t0)
	addiw t0, s0, -80
	sw s2, 40(t0)
	addiw t0, s0, -80
	sw s5, 44(t0)
	addiw t0, s0, -80
	sw s3, 48(t0)
	addiw t0, s0, -80
	sw s6, 52(t0)
	addiw t0, s0, -80
	sw s4, 56(t0)
	addiw t0, s0, -80
	sw t1, 60(t0)
	addiw t0, s0, -80
	addiw a0, t0, 0
	mv a0, a0
	li a1, 16
	call sort
	addiw t0, s0, -80
	lw a0, 0(t0)
	addiw t0, s0, -80
	lw a1, 4(t0)
	addiw t0, s0, -80
	lw a2, 8(t0)
	addiw t0, s0, -80
	lw a3, 12(t0)
	addiw t0, s0, -80
	lw a4, 16(t0)
	addiw t0, s0, -80
	lw a5, 20(t0)
	addiw t0, s0, -80
	lw a6, 24(t0)
	addiw t0, s0, -80
	lw a7, 28(t0)
	addiw t0, s0, -80
	lw t0, 32(t0)
	addiw t0, s0, -80
	lw t0, 36(t0)
	addiw t0, s0, -80
	lw t0, 40(t0)
	addiw t0, s0, -80
	lw t0, 44(t0)
	addiw t0, s0, -80
	lw t0, 48(t0)
	addiw t0, s0, -80
	lw t0, 52(t0)
	addiw t0, s0, -80
	lw t0, 56(t0)
	addiw t0, s0, -80
	lw t0, 60(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call param32_rec
	mv a0, a0
	mv a0, a0
	ld ra, 168(sp)
	ld s0, 160(sp)
	addi sp, sp, 176
	ret 
    .size param16, .-param16
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB18:
	addi sp, sp, -464
	sd ra, 456(sp)
	sd s0, 448(sp)
	addi s0, sp, 464
	call getint
	mv t0, a0
	call getint
	mv t1, a0
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
	call getint
	mv a7, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	mv a0, t0
	mv a1, t1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call param16
	mv a0, a0
	addiw a0, s0, -528
	mv a0, a0
	mv a1, a1
	li a2, 256
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -272
	sw a0, 0(t0)
	li t0, 1
	j .LBB19
.LBB19:
	li t1, 32
	blt t0, t1, .LBB20
	j .LBB21
.LBB20:
	li t1, 1
	subw t1, t0, t1
	addiw t1, s0, -272
	li t2, 8
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 4(t1)
	li t2, 1
	subw t1, t1, t2
	addiw t2, s0, -272
	li t2, 8
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	li t1, 1
	subw t1, t0, t1
	addiw t1, s0, -272
	li t2, 8
	mulw t1, t1, t2
	addw t1, t1, t1
	lw t1, 0(t1)
	li t2, 2
	subw t2, t1, t2
	addiw t1, s0, -272
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	sw t2, 4(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB19
.LBB21:
	addiw t0, s0, -272
	addiw a4, s0, -272
	addiw a1, s0, -272
	addiw a3, s0, -272
	addiw t2, s0, -272
	addiw t1, s0, -272
	addiw a2, s0, -272
	addiw s1, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, s0, -272
	addiw t0, t0, 0
	mv a0, t0
	addiw a1, a4, 8
	mv a1, a1
	addiw a2, a1, 16
	mv a2, a2
	addiw a3, a3, 24
	mv a3, a3
	addiw a4, t2, 32
	mv a4, a4
	addiw a5, t1, 40
	mv a5, a5
	addiw a6, a2, 48
	mv a6, a6
	addiw a7, s1, 56
	mv a7, a7
	call param32_arr
	mv a0, a0
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 456(sp)
	ld s0, 448(sp)
	addi sp, sp, 464
	ret 
    .size main, .-main
