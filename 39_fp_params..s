    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  k
    .bss
    .align  2
    .type  k, @object
    .size  k, 4
k:
    .zero  4
    .text
    .align  1
    .globl  params_f40
    .type  params_f40, @function
params_f40:
.LBB0:
	addi sp, sp, -256
	sd ra, 248(sp)
	sd s0, 240(sp)
	addi s0, sp, 256
	flw ft8, 0(s0)
	flw ft0, 4(s0)
	sd ft0, -32(s0)
	flw fs6, 8(s0)
	flw fa1, 12(s0)
	flw fa2, 16(s0)
	flw fa5, 20(s0)
	flw fa6, 24(s0)
	flw ft0, 28(s0)
	sd ft0, -48(s0)
	flw ft0, 32(s0)
	sd ft0, -56(s0)
	flw ft9, 36(s0)
	flw ft0, 40(s0)
	sd ft0, -64(s0)
	flw fa3, 44(s0)
	flw ft0, 48(s0)
	sd ft0, -72(s0)
	flw ft0, 52(s0)
	sd ft0, -40(s0)
	flw fs1, 56(s0)
	flw ft0, 60(s0)
	sd ft0, -80(s0)
	flw ft0, 64(s0)
	sd ft0, -88(s0)
	flw ft11, 68(s0)
	flw ft10, 72(s0)
	flw ft4, 76(s0)
	flw ft0, 80(s0)
	flw fs10, 84(s0)
	flw fa7, 88(s0)
	flw ft0, 92(s0)
	sd ft0, -96(s0)
	flw fs2, 96(s0)
	flw fs8, 100(s0)
	flw fs9, 104(s0)
	flw fs3, 108(s0)
	flw fs4, 112(s0)
	flw fs5, 116(s0)
	flw fa4, 120(s0)
	flw fs7, 124(s0)
	mv fs0, a0
	mv fs11, a1
	mv ft7, a2
	mv ft5, a3
	mv ft2, a4
	mv ft6, a5
	mv ft3, a6
	mv ft1, a7
	j .LBB1
.LBB1:
	fcvt.s.w fa0, zero
	feq.s t1, ft8, fa0
	beq t1, zero, .LBB2
	j .LBB3
.LBB3:
	fadd.s fs0, fs0, fs11
	fadd.s ft7, fs0, ft7
	fadd.s ft5, ft7, ft5
	fadd.s ft2, ft2, ft6
	fadd.s ft2, ft2, ft3
	fadd.s ft3, ft2, ft1
	fadd.s ft1, fs7, fa4
	fadd.s ft1, ft1, fs5
	fadd.s ft2, ft1, fs4
	fadd.s ft1, fs3, fs9
	fadd.s ft1, ft1, fs8
	fadd.s ft6, ft1, fs2
	ld ft0, -96(s0)
	fadd.s ft1, ft0, fa7
	fadd.s ft1, ft1, fs10
	fadd.s ft1, ft1, ft0
	fadd.s ft0, ft4, ft10
	fadd.s ft0, ft0, ft11
	ld ft0, -88(s0)
	fadd.s fs0, ft0, ft0
	ld ft0, -80(s0)
	fadd.s ft0, ft0, fs1
	ld ft0, -40(s0)
	fadd.s ft0, ft0, ft0
	ld ft0, -72(s0)
	fadd.s ft7, ft0, ft0
	ld ft0, -64(s0)
	fadd.s ft0, fa3, ft0
	fadd.s ft0, ft0, ft9
	ld ft0, -56(s0)
	fadd.s fs1, ft0, ft0
	ld ft0, -48(s0)
	fadd.s ft0, ft0, fa6
	fadd.s ft0, ft0, fa5
	fadd.s ft0, ft0, fa2
	fadd.s ft4, fa1, fs6
	ld ft0, -32(s0)
	fadd.s ft4, ft4, ft0
	fadd.s ft4, ft4, ft8
	addiw t1, s0, -168
	mv a0, t1
	mv a1, t0
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -128
	fsw ft5, 0(t0)
	addiw t0, s0, -128
	fsw ft3, 4(t0)
	addiw t0, s0, -128
	fsw ft2, 8(t0)
	addiw t0, s0, -128
	fsw ft6, 12(t0)
	addiw t0, s0, -128
	fsw ft1, 16(t0)
	addiw t0, s0, -128
	fsw fs0, 20(t0)
	addiw t0, s0, -128
	fsw ft7, 24(t0)
	addiw t0, s0, -128
	fsw fs1, 28(t0)
	addiw t0, s0, -128
	fsw ft0, 32(t0)
	addiw t0, s0, -128
	fsw ft4, 36(t0)
	addiw t0, s0, -128
	li a0, 10
	addiw t0, t0, 0
	mv a1, t0
	call putfarray
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -128
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	mv fa0, ft0
	ld ra, 248(sp)
	ld s0, 240(sp)
	addi sp, sp, 256
	ret 
.LBB2:
	fadd.s ft0, fs0, fs11
	fadd.s ft0, ft0, ft7
	mv a0, fs11
	mv a1, ft7
	mv a2, ft5
	mv a3, ft2
	mv a4, ft6
	mv a5, ft3
	mv a6, ft1
	mv a7, fs7
	call params_f40
	mv ft0, a0
	mv fa0, ft0
	ld ra, 248(sp)
	ld s0, 240(sp)
	addi sp, sp, 256
	ret 
    .size params_f40, .-params_f40
    .align  1
    .globl  params_f40_i24
    .type  params_f40_i24, @function
params_f40_i24:
.LBB4:
	addi sp, sp, -432
	sd ra, 424(sp)
	sd s0, 416(sp)
	addi s0, sp, 432
	flw ft6, 0(s0)
	lw s3, 4(s0)
	flw fs7, 8(s0)
	lw s11, 12(s0)
	flw fa0, 16(s0)
	flw fa6, 20(s0)
	flw ft0, 24(s0)
	sd ft0, -32(s0)
	flw fs3, 28(s0)
	flw fs0, 32(s0)
	flw fa2, 36(s0)
	lw t5, 40(s0)
	lw s9, 44(s0)
	lw s6, 48(s0)
	flw fa7, 52(s0)
	flw fs1, 56(s0)
	flw fa5, 60(s0)
	flw ft0, 64(s0)
	sd ft0, -40(s0)
	lw s4, 68(s0)
	lw s7, 72(s0)
	flw fs5, 76(s0)
	lw t0, 80(s0)
	sd t0, -96(s0)
	flw ft0, 84(s0)
	sd ft0, -48(s0)
	flw fs11, 88(s0)
	flw ft8, 92(s0)
	lw t4, 96(s0)
	lw t6, 100(s0)
	flw ft9, 104(s0)
	flw ft0, 108(s0)
	sd ft0, -56(s0)
	flw fa4, 112(s0)
	flw ft3, 116(s0)
	lw t0, 120(s0)
	sd t0, -104(s0)
	flw ft10, 124(s0)
	lw t3, 128(s0)
	flw ft1, 132(s0)
	flw ft4, 136(s0)
	flw fs9, 140(s0)
	flw fs4, 144(s0)
	flw ft7, 148(s0)
	lw s2, 152(s0)
	lw s5, 156(s0)
	flw fs6, 160(s0)
	lw t0, 164(s0)
	sd t0, -112(s0)
	flw ft0, 168(s0)
	sd ft0, -120(s0)
	flw ft0, 172(s0)
	sd ft0, -64(s0)
	flw ft0, 176(s0)
	sd ft0, -72(s0)
	flw ft5, 180(s0)
	flw ft0, 184(s0)
	sd ft0, -128(s0)
	flw ft11, 188(s0)
	lw t0, 192(s0)
	sd t0, -136(s0)
	flw fs2, 196(s0)
	lw s8, 200(s0)
	flw fs8, 204(s0)
	flw fs10, 208(s0)
	lw s10, 212(s0)
	flw fa1, 216(s0)
	flw fa3, 220(s0)
	mv a0, a0
	mv t2, a1
	mv s1, a2
	mv ft0, a3
	mv t1, a4
	mv t0, a5
	mv a1, a6
	mv ft2, a7
	j .LBB5
.LBB5:
	bne a0, zero, .LBB6
	j .LBB7
.LBB6:
	ld ft0, -48(s0)
	fadd.s ft5, ft0, ft5
	fadd.s ft5, ft5, fs7
	fadd.s ft5, ft5, fs10
	ld ft0, -56(s0)
	fadd.s ft0, ft0, ft0
	ld ft0, -120(s0)
	fadd.s ft0, ft0, ft0
	fadd.s fa1, ft0, fa1
	fadd.s ft0, ft2, ft4
	fadd.s ft0, ft0, fs11
	ld ft0, -72(s0)
	fadd.s ft0, ft0, ft0
	ld ft0, -128(s0)
	fadd.s ft2, ft0, fs1
	fadd.s ft2, ft2, ft8
	fadd.s fs1, ft2, fa3
	fadd.s ft2, fa4, fa0
	fadd.s ft2, ft2, fa2
	fadd.s ft2, ft2, fs0
	fadd.s ft3, ft7, ft3
	fadd.s ft3, ft3, fs3
	fadd.s ft7, ft3, fs9
	fadd.s ft1, fa5, ft1
	ld ft0, -32(s0)
	fadd.s ft1, ft1, ft0
	ld ft0, -40(s0)
	fadd.s ft3, ft1, ft0
	fadd.s ft1, fs8, fa7
	fadd.s ft1, ft1, ft11
	fadd.s ft4, ft1, fs5
	fadd.s ft1, fs6, fs4
	fadd.s ft1, ft1, ft9
	fadd.s ft6, ft1, ft6
	fadd.s ft1, fa6, fs2
	ld ft0, -64(s0)
	fadd.s ft1, ft1, ft0
	fadd.s ft1, ft1, ft10
	addiw t1, s0, -240
	mv a0, t1
	mv a1, t0
	sd t0, -80(s0)
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw a2, s0, -200
	fsw ft5, 0(a2)
	addiw a2, s0, -200
	fsw fa1, 4(a2)
	addiw a2, s0, -200
	fsw ft0, 8(a2)
	addiw a2, s0, -200
	fsw fs1, 12(a2)
	addiw a2, s0, -200
	fsw ft2, 16(a2)
	addiw a2, s0, -200
	fsw ft7, 20(a2)
	addiw a2, s0, -200
	fsw ft3, 24(a2)
	addiw a2, s0, -200
	fsw ft4, 28(a2)
	addiw a2, s0, -200
	fsw ft6, 32(a2)
	addiw a2, s0, -200
	fsw ft1, 36(a2)
	addw t1, s8, t1
	addw a3, t1, t2
	addw t0, s6, t0
	addw t1, t0, a1
	ld t0, -112(s0)
	addw t0, s1, t0
	addw a1, t0, t3
	addw t0, t4, s5
	addw a4, t0, s7
	ld t0, -96(s0)
	addw t0, t0, s2
	addw t2, t0, s3
	addw t0, s11, s4
	ld t0, -104(s0)
	addw s1, t0, t0
	ld t0, -136(s0)
	addw t0, t6, t0
	addw a2, t0, t5
	addw t0, s9, s10
	addw a0, t0, a0
	addiw a0, s0, -192
	mv a0, a0
	mv a1, t0
	sd t0, -88(s0)
	li a2, 32
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -160
	sw a3, 0(t0)
	addiw t0, s0, -160
	sw t1, 4(t0)
	addiw t0, s0, -160
	sw a1, 8(t0)
	addiw t0, s0, -160
	sw a4, 12(t0)
	addiw t0, s0, -160
	sw t2, 16(t0)
	addiw t0, s0, -160
	sw s1, 20(t0)
	addiw t0, s0, -160
	sw a2, 24(t0)
	addiw t0, s0, -160
	sw a0, 28(t0)
	addiw t0, s0, -200
	li a0, 10
	addiw t0, t0, 0
	mv a1, t0
	call putfarray
	addiw t0, s0, -160
	li a0, 8
	addiw t0, t0, 0
	mv a1, t0
	call putarray
	mv t0, zero
	j .LBB8
.LBB7:
	mv a0, t1
	mv a1, t2
	mv a2, s1
	mv a3, ft0
	mv a4, t1
	mv a5, t0
	mv a6, a1
	mv a7, ft2
	call params_f40_i24
	mv ft0, a0
	mv fa0, ft0
	ld ra, 424(sp)
	ld s0, 416(sp)
	addi sp, sp, 432
	ret 
.LBB8:
	li t1, 8
	blt t0, t1, .LBB9
	j .LBB10
.LBB9:
	addiw t1, s0, -160
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -200
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft1, 0(t1)
	fcvt.s.w ft0, t2
	fsub.s ft0, ft0, ft1
	addiw t2, s0, -160
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	fcvt.w.s t1, ft0
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB8
.LBB10:
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -160
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	fcvt.s.w ft0, t0
	mv fa0, ft0
	ld ra, 424(sp)
	ld s0, 416(sp)
	addi sp, sp, 432
	ret 
    .size params_f40_i24, .-params_f40_i24
    .align  1
    .globl  params_fa40
    .type  params_fa40, @function
params_fa40:
.LBB11:
	addi sp, sp, -496
	sd ra, 488(sp)
	sd s0, 480(sp)
	addi s0, sp, 496
	ld s8, 0(s0)
	ld s11, 8(s0)
	ld t0, 16(s0)
	sd t0, -200(s0)
	ld t0, 24(s0)
	sd t0, -192(s0)
	ld t0, 32(s0)
	sd t0, -184(s0)
	ld t0, 40(s0)
	sd t0, -176(s0)
	ld t6, 48(s0)
	ld s9, 56(s0)
	ld t0, 64(s0)
	sd t0, -168(s0)
	ld s10, 72(s0)
	ld t0, 80(s0)
	sd t0, -64(s0)
	ld t0, 88(s0)
	sd t0, -160(s0)
	ld t0, 96(s0)
	sd t0, -152(s0)
	ld t0, 104(s0)
	sd t0, -144(s0)
	ld t5, 112(s0)
	ld t0, 120(s0)
	sd t0, -136(s0)
	ld t0, 128(s0)
	sd t0, -128(s0)
	ld t0, 136(s0)
	sd t0, -32(s0)
	ld t0, 144(s0)
	sd t0, -120(s0)
	ld t0, 152(s0)
	sd t0, -112(s0)
	ld t0, 160(s0)
	sd t0, -104(s0)
	ld s7, 168(s0)
	ld t0, 176(s0)
	sd t0, -96(s0)
	ld t0, 184(s0)
	sd t0, -56(s0)
	ld t0, 192(s0)
	sd t0, -88(s0)
	ld t0, 200(s0)
	sd t0, -80(s0)
	ld s6, 208(s0)
	ld s4, 216(s0)
	ld t0, 224(s0)
	sd t0, -48(s0)
	ld t0, 232(s0)
	sd t0, -72(s0)
	ld t0, 240(s0)
	sd t0, -40(s0)
	ld t4, 248(s0)
	mv t0, a0
	mv a0, a1
	mv s2, a2
	mv a3, a3
	mv a2, a4
	mv a1, a5
	mv s1, a6
	mv t2, a7
	j .LBB12
.LBB12:
	lui t1, %hi(k)
	lw t1, %lo(k)(t1)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, a0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft1, ft1, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s2
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft1, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, a3
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s fs1, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, a2
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, a1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft1, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s1
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft1, ft1, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, t2
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft6, ft1, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, t4
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -40(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft1, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -72(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft1, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -48(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft3, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s4
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s6
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft1, ft1, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -80(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft1, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -88(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft7, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -56(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -96(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft0, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s7
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft0, ft0, ft1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -104(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft4, ft0, ft1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -112(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -120(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft0, ft0, ft1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -32(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft0, ft0, ft1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -128(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft1, 0(t0)
	fadd.s ft1, ft0, ft1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -136(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, t5
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft2, 0(t0)
	fadd.s ft0, ft0, ft2
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -144(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft2, 0(t0)
	fadd.s ft0, ft0, ft2
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -152(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft2, 0(t0)
	fadd.s fa0, ft0, ft2
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -160(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -64(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft2, 0(t0)
	fadd.s ft2, ft0, ft2
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s10
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft2, ft2, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -168(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s fs0, ft2, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s9
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft2, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, t6
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft2, ft2, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -176(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft2, ft2, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -184(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft2, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -192(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft2, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -200(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft5, 0(t0)
	fadd.s ft2, ft2, ft5
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s11
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft5, 0(t0)
	fadd.s ft5, ft2, ft5
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s8
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft2, 0(t0)
	fadd.s ft2, ft5, ft2
	addiw t0, s0, -272
	mv a0, t0
	mv a1, s3
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -232
	fsw fs1, 0(t0)
	addiw t0, s0, -232
	fsw ft6, 4(t0)
	addiw t0, s0, -232
	fsw ft3, 8(t0)
	addiw t0, s0, -232
	fsw ft7, 12(t0)
	addiw t0, s0, -232
	fsw ft4, 16(t0)
	addiw t0, s0, -232
	fsw ft1, 20(t0)
	addiw t0, s0, -232
	fsw fa0, 24(t0)
	addiw t0, s0, -232
	fsw fs0, 28(t0)
	addiw t0, s0, -232
	fsw ft0, 32(t0)
	addiw t0, s0, -232
	fsw ft2, 36(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s8
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fcvt.s.w ft0, zero
	fcvt.s.w ft0, t3
	fcvt.s.w ft0, s5
	lui t0, %hi(.LC0)
	flw ft1, %lo(.LC0)(t0)
	feq.s t0, ft0, ft1
	beq t0, zero, .LBB13
	j .LBB14
.LBB14:
	addiw t0, s0, -232
	li a0, 10
	addiw t0, t0, 0
	mv a1, t0
	call putfarray
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -232
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	mv fa0, ft0
	ld ra, 488(sp)
	ld s0, 480(sp)
	addi sp, sp, 496
	ret 
.LBB13:
	addiw t0, s0, -232
	mv a0, a0
	mv a1, s2
	mv a2, a3
	mv a3, a2
	mv a4, a1
	mv a5, s1
	mv a6, t2
	mv a7, t4
	call params_fa40
	mv ft0, a0
	mv fa0, ft0
	ld ra, 488(sp)
	ld s0, 480(sp)
	addi sp, sp, 496
	ret 
    .size params_fa40, .-params_fa40
    .align  1
    .globl  params_mix
    .type  params_mix, @function
params_mix:
.LBB15:
	addi sp, sp, -704
	sd ra, 696(sp)
	sd s0, 688(sp)
	addi s0, sp, 704
	lw t0, 0(s0)
	sd t0, -184(s0)
	flw fs5, 4(s0)
	ld t0, 8(s0)
	sd t0, -192(s0)
	ld t0, 16(s0)
	sd t0, -200(s0)
	flw fa3, 24(s0)
	lw s2, 28(s0)
	flw ft7, 32(s0)
	ld t0, 36(s0)
	sd t0, -208(s0)
	ld t0, 44(s0)
	sd t0, -216(s0)
	lw s3, 52(s0)
	ld s1, 56(s0)
	flw ft6, 64(s0)
	flw ft3, 68(s0)
	ld s5, 72(s0)
	ld s7, 80(s0)
	lw s10, 88(s0)
	ld t0, 92(s0)
	sd t0, -224(s0)
	lw t0, 100(s0)
	sd t0, -232(s0)
	ld t0, 104(s0)
	sd t0, -160(s0)
	flw fa1, 112(s0)
	flw fs6, 116(s0)
	lw s6, 120(s0)
	lw t0, 124(s0)
	sd t0, -240(s0)
	ld t0, 128(s0)
	sd t0, -248(s0)
	ld t0, 136(s0)
	sd t0, -256(s0)
	flw ft5, 144(s0)
	flw ft2, 148(s0)
	ld t4, 152(s0)
	ld t0, 160(s0)
	sd t0, -264(s0)
	lw t2, 168(s0)
	ld t3, 172(s0)
	flw fa6, 180(s0)
	flw ft4, 184(s0)
	ld s4, 188(s0)
	ld t0, 196(s0)
	sd t0, -168(s0)
	ld t0, 204(s0)
	sd t0, -272(s0)
	ld s9, 212(s0)
	ld t0, 220(s0)
	sd t0, -280(s0)
	flw fa2, 228(s0)
	flw ft1, 232(s0)
	flw fs0, 236(s0)
	lw t0, 240(s0)
	sd t0, -288(s0)
	ld t0, 244(s0)
	sd t0, -176(s0)
	flw fs11, 252(s0)
	flw fa7, 256(s0)
	flw fs3, 260(s0)
	ld t0, 264(s0)
	sd t0, -104(s0)
	ld t0, 272(s0)
	sd t0, -40(s0)
	lw t0, 280(s0)
	sd t0, -48(s0)
	ld t0, 284(s0)
	sd t0, -56(s0)
	ld t0, 292(s0)
	sd t0, -64(s0)
	ld t0, 300(s0)
	sd t0, -72(s0)
	lw t0, 308(s0)
	sd t0, -80(s0)
	lw s8, 312(s0)
	ld s11, 316(s0)
	ld t0, 324(s0)
	sd t0, -88(s0)
	mv ft9, a0
	mv a0, a1
	mv a2, a2
	mv t1, a3
	mv fs10, a4
	mv a3, a5
	mv fs7, a6
	mv fs8, a7
	j .LBB16
.LBB16:
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, t1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft9, ft0
	fadd.s ft0, ft0, fs10
	fadd.s fs4, ft0, fs7
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -88(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, fs8, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -72(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw fs1, 0(t0)
	fadd.s ft0, ft0, fs1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -40(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw fs1, 0(t0)
	fadd.s fs1, ft0, fs1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -104(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft0, fs3
	fadd.s ft0, ft0, fa7
	fadd.s ft8, ft0, fs11
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -176(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, ft0, fs0
	fadd.s ft0, ft0, ft1
	fadd.s fa4, ft0, fa2
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s9
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s4
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw fa0, 0(t0)
	fadd.s ft0, ft0, fa0
	fadd.s ft0, ft0, ft4
	fadd.s fa0, ft0, fa6
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -264(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw fa5, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, t4
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, fa5, ft0
	fadd.s ft0, ft0, ft2
	fadd.s fs9, ft0, ft5
	fadd.s ft0, fs6, fa1
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -224(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw fa5, 0(t0)
	fadd.s ft0, ft0, fa5
	fadd.s ft10, ft0, ft3
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s1
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s fa5, ft6, ft0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -208(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, fa5, ft0
	fadd.s fs2, ft0, ft7
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -200(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 0(t0)
	fadd.s ft0, fa3, ft0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -192(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw fa5, 0(t0)
	fadd.s ft0, ft0, fa5
	fadd.s ft0, ft0, fs5
	addiw t1, s0, -400
	mv a0, t1
	mv a1, t0
	sd t0, -96(s0)
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -360
	fsw fs4, 0(t0)
	addiw t0, s0, -360
	fsw fs1, 4(t0)
	addiw t0, s0, -360
	fsw ft8, 8(t0)
	addiw t0, s0, -360
	fsw fa4, 12(t0)
	addiw t0, s0, -360
	fsw fa0, 16(t0)
	addiw t0, s0, -360
	fsw fs9, 20(t0)
	addiw t0, s0, -360
	fsw ft10, 24(t0)
	addiw t0, s0, -360
	fsw fs2, 28(t0)
	addiw t0, s0, -360
	fsw ft0, 32(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, a0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, t0, a2
	addw t0, t0, a3
	sd t0, -32(s0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, s11
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, t0, s8
	ld t0, -80(s0)
	addw t0, t0, t0
	sd t0, -112(s0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -64(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(k)
	lw a0, %lo(k)(t0)
	ld t0, -56(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, a0, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, t1, t0
	ld t0, -48(s0)
	addw t0, t0, t0
	sd t0, -120(s0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -280(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	ld t0, -288(s0)
	addw t1, t0, t0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -272(s0)
	addw t0, s0, t0
	li a0, 4
	mulw t0, t0, a0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw a0, t1, t0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -168(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t1, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addw t0, s0, t3
	li a1, 4
	mulw t0, t0, a1
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, t1, t0
	addw t0, t0, t2
	sd t0, -128(s0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -256(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw a1, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -248(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, a1, t0
	ld t0, -240(s0)
	addw t0, t0, t0
	sd t0, -136(s0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	ld t0, -160(s0)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s6, t0
	ld t0, -232(s0)
	addw t0, t0, t0
	sd t0, -144(s0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addw t0, s0, s7
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s10, t0
	lui t1, %hi(k)
	lw t1, %lo(k)(t1)
	addw t1, s0, s5
	li a1, 4
	mulw t1, t1, a1
	addw t1, t1, t1
	lw t1, 0(t1)
	addw a1, t0, t1
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	ld t0, -216(s0)
	addw t0, s0, t0
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	addw t0, s3, t0
	addw t0, t0, s2
	ld t0, -184(s0)
	addw t1, t0, t0
	addiw t2, s0, -360
	mv a0, t2
	mv a1, t0
	sd t0, -152(s0)
	li a2, 40
	call llvm.memcpy.p0.p0.i32
	addiw t0, s0, -320
	ld t0, -32(s0)
	sw t0, 0(t0)
	addiw t0, s0, -320
	ld t0, -112(s0)
	sw t0, 4(t0)
	addiw t0, s0, -320
	ld t0, -120(s0)
	sw t0, 8(t0)
	addiw t0, s0, -320
	sw a0, 12(t0)
	addiw t0, s0, -320
	ld t0, -128(s0)
	sw t0, 16(t0)
	addiw t0, s0, -320
	ld t0, -136(s0)
	sw t0, 20(t0)
	addiw t0, s0, -320
	ld t0, -144(s0)
	sw t0, 24(t0)
	addiw t0, s0, -320
	sw a1, 28(t0)
	addiw t0, s0, -320
	sw t1, 32(t0)
	ld t0, -184(s0)
	bne t0, zero, .LBB17
	j .LBB18
.LBB17:
	addiw t0, s0, -360
	li a0, 10
	addiw t0, t0, 0
	mv a1, t0
	call putfarray
	addiw t0, s0, -320
	li a0, 10
	addiw t0, t0, 0
	mv a1, t0
	call putarray
	mv t0, zero
	j .LBB19
.LBB18:
	addiw t0, s0, -320
	addiw t1, s0, -360
	ld t0, -184(s0)
	fcvt.s.w ft0, t0
	fcvt.w.s t0, fs5
	mv a0, ft9
	addiw t0, t0, 0
	mv a1, t0
	mv a2, a2
	addiw t0, t1, 0
	mv a3, t0
	mv a4, fs10
	mv a5, a3
	mv a6, fs7
	mv a7, fs8
	call params_mix
	mv t0, a0
	mv a0, t0
	ld ra, 696(sp)
	ld s0, 688(sp)
	addi sp, sp, 704
	ret 
.LBB19:
	li t1, 10
	blt t0, t1, .LBB20
	j .LBB21
.LBB20:
	addiw t1, s0, -320
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	addiw t1, s0, -360
	li t1, 4
	mulw t1, t0, t1
	addw t1, t1, t1
	flw ft0, 0(t1)
	fcvt.s.w ft1, t2
	fsub.s ft0, ft1, ft0
	addiw t2, s0, -320
	li t1, 4
	mulw t1, t0, t1
	addw t2, t2, t1
	fcvt.w.s t1, ft0
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB19
.LBB21:
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -320
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	addiw t1, s0, -360
	flw ft1, 32(t1)
	fcvt.s.w ft0, t0
	fmul.s ft0, ft0, ft1
	fcvt.w.s t0, ft0
	mv a0, t0
	ld ra, 696(sp)
	ld s0, 688(sp)
	addi sp, sp, 704
	ret 
    .size params_mix, .-params_mix
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB22:
	addi sp, sp, -1120
	sd ra, 1112(sp)
	sd s0, 1104(sp)
	addi s0, sp, 1120
	call getint
	mv t0, a0
	lui t1, %hi(k)
	sw t0, %lo(k)(t1)
	mv t1, zero
	j .LBB23
.LBB23:
	li t0, 40
	blt t1, t0, .LBB24
	j .LBB25
.LBB24:
	addiw t0, s0, -784
	li t0, 12
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 0
	mv a0, t0
	call getfarray
	addiw t1, t1, 1
	mv t1, t1
	j .LBB23
.LBB25:
	mv t1, zero
	j .LBB26
.LBB26:
	li t0, 24
	blt t1, t0, .LBB27
	j .LBB28
.LBB27:
	addiw t0, s0, -304
	li t0, 12
	mulw t0, t1, t0
	addw t0, t0, t0
	addiw t0, t0, 0
	mv a0, t0
	call getarray
	addiw t1, t1, 1
	mv t1, t1
	j .LBB26
.LBB28:
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a0, 0(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a1, 12(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw a2, 24(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a3, 36(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw a4, 48(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a5, 60(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw a6, 72(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw a7, 84(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 96(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 108(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 120(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 132(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 144(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 156(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 168(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 180(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 192(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 204(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 216(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 228(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 240(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 252(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 264(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 276(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 288(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 300(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 312(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 324(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 336(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 348(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 360(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 372(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 384(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 396(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 408(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 420(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 432(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 444(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 456(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 468(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call params_f40
	mv ft2, a0
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a0, 276(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a1, 24(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a2, 72(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a3, 48(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a4, 12(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a5, 48(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw a6, 60(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw a7, 96(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 180(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 84(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 264(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 36(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 336(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 444(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 228(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 360(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 144(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 12(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 132(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 456(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 72(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 84(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 384(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 120(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 156(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 240(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 396(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 276(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 108(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 300(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 96(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 468(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 204(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 252(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 192(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 60(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 408(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 216(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 108(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 168(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 120(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 0(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 144(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 372(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 132(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 192(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 324(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 288(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 156(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 348(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 36(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 252(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 240(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 216(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 228(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 264(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 312(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 432(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -784
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	flw ft0, 204(t0)
	lui t0, %hi(k)
	lw t1, %lo(k)(t0)
	addiw t0, s0, -304
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw t0, 180(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 24(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -304
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	lw t0, 168(t0)
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw ft0, 420(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call params_f40_i24
	mv ft1, a0
	addiw a0, s0, -784
	addiw t2, s0, -784
	addiw a3, s0, -784
	addiw a2, s0, -784
	addiw a1, s0, -784
	addiw s1, s0, -784
	addiw t0, s0, -784
	addiw t1, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw t0, s0, -784
	addiw a0, a0, 0
	mv a0, a0
	addiw a1, t2, 12
	mv a1, a1
	addiw a2, a3, 24
	mv a2, a2
	addiw a3, a2, 36
	mv a3, a3
	addiw a4, a1, 48
	mv a4, a4
	addiw a5, s1, 60
	mv a5, a5
	addiw a6, t0, 72
	mv a6, a6
	addiw a7, t1, 84
	mv a7, a7
	call params_fa40
	mv ft0, a0
	lui t0, %hi(k)
	lw t0, %lo(k)(t0)
	addiw t0, s0, -784
	li t1, 4
	mulw t0, t0, t1
	addw t0, t0, t0
	flw a0, 0(t0)
	addiw t0, s0, -304
	lui t1, %hi(k)
	lw t2, %lo(k)(t1)
	addiw t1, s0, -304
	li t1, 4
	mulw t1, t2, t1
	addw t1, t1, t1
	lw a2, 12(t1)
	addiw t1, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw a4, 24(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -304
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw a5, 24(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw a6, 36(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw a7, 48(t2)
	addiw t0, s0, -784
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -304
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t0, 48(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 60(t2)
	addiw t0, s0, -784
	addiw t0, s0, -304
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 96(t2)
	addiw t0, s0, -784
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 108(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 120(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 132(t2)
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 108(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 156(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 168(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw ft0, 180(t2)
	addiw t0, s0, -304
	addiw t0, s0, -784
	addiw t0, s0, -304
	addiw t0, s0, -304
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 216(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw ft0, 228(t2)
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 168(t2)
	addiw t0, s0, -784
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 264(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 276(t2)
	addiw t0, s0, -304
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -304
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t0, 204(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 216(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw ft0, 288(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 300(t2)
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 240(t2)
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -304
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t0, 252(t2)
	addiw t0, s0, -304
	addiw t0, s0, -304
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw ft0, 324(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -784
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	flw ft0, 336(t2)
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -304
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	lw t0, 0(t2)
	addiw t0, s0, -304
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 372(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 24(t2)
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 384(t2)
	addiw t0, s0, -784
	addiw t0, s0, -784
	lui t2, %hi(k)
	lw s1, %lo(k)(t2)
	addiw t2, s0, -784
	li t2, 4
	mulw t2, s1, t2
	addw t2, t2, t2
	flw ft0, 420(t2)
	lui t2, %hi(k)
	lw t2, %lo(k)(t2)
	addiw t2, s0, -304
	li s1, 4
	mulw t2, t2, s1
	addw t2, t2, t2
	lw t0, 36(t2)
	mv a0, a0
	addiw a1, t0, 0
	mv a1, a1
	mv a2, a2
	addiw a3, t1, 12
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call params_mix
	mv a0, a0
	mv a0, ft2
	call putfloat
	li a0, 10
	call putch
	mv a0, ft1
	call putfloat
	li a0, 10
	call putch
	mv a0, ft0
	call putfloat
	li a0, 10
	call putch
	mv a0, a0
	call putint
	li a0, 10
	call putch
	mv a0, zero
	ld ra, 1112(sp)
	ld s0, 1104(sp)
	addi sp, sp, 1120
	ret 
    .size main, .-main
    .section    .rodata
    .align  2
.LC0:
    .word  0
