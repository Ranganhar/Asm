    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a1
    .data
    .align  2
    .type  a1, @object
    .size  a1, 4
a1:
    .word  1
    .globl  a2
    .align  2
    .type  a2, @object
    .size  a2, 4
a2:
    .word  2
    .globl  a3
    .align  2
    .type  a3, @object
    .size  a3, 4
a3:
    .word  3
    .globl  a4
    .align  2
    .type  a4, @object
    .size  a4, 4
a4:
    .word  4
    .globl  a5
    .align  2
    .type  a5, @object
    .size  a5, 4
a5:
    .word  5
    .globl  a6
    .align  2
    .type  a6, @object
    .size  a6, 4
a6:
    .word  6
    .globl  a7
    .align  2
    .type  a7, @object
    .size  a7, 4
a7:
    .word  7
    .globl  a8
    .align  2
    .type  a8, @object
    .size  a8, 4
a8:
    .word  8
    .globl  a9
    .align  2
    .type  a9, @object
    .size  a9, 4
a9:
    .word  9
    .globl  a10
    .align  2
    .type  a10, @object
    .size  a10, 4
a10:
    .word  10
    .globl  a11
    .align  2
    .type  a11, @object
    .size  a11, 4
a11:
    .word  11
    .globl  a12
    .align  2
    .type  a12, @object
    .size  a12, 4
a12:
    .word  12
    .globl  a13
    .align  2
    .type  a13, @object
    .size  a13, 4
a13:
    .word  13
    .globl  a14
    .align  2
    .type  a14, @object
    .size  a14, 4
a14:
    .word  14
    .globl  a15
    .align  2
    .type  a15, @object
    .size  a15, 4
a15:
    .word  15
    .globl  a16
    .align  2
    .type  a16, @object
    .size  a16, 4
a16:
    .word  16
    .globl  a17
    .align  2
    .type  a17, @object
    .size  a17, 4
a17:
    .word  1
    .globl  a18
    .align  2
    .type  a18, @object
    .size  a18, 4
a18:
    .word  2
    .globl  a19
    .align  2
    .type  a19, @object
    .size  a19, 4
a19:
    .word  3
    .globl  a20
    .align  2
    .type  a20, @object
    .size  a20, 4
a20:
    .word  4
    .globl  a21
    .align  2
    .type  a21, @object
    .size  a21, 4
a21:
    .word  5
    .globl  a22
    .align  2
    .type  a22, @object
    .size  a22, 4
a22:
    .word  6
    .globl  a23
    .align  2
    .type  a23, @object
    .size  a23, 4
a23:
    .word  7
    .globl  a24
    .align  2
    .type  a24, @object
    .size  a24, 4
a24:
    .word  8
    .globl  a25
    .align  2
    .type  a25, @object
    .size  a25, 4
a25:
    .word  9
    .globl  a26
    .align  2
    .type  a26, @object
    .size  a26, 4
a26:
    .word  10
    .globl  a27
    .align  2
    .type  a27, @object
    .size  a27, 4
a27:
    .word  11
    .globl  a28
    .align  2
    .type  a28, @object
    .size  a28, 4
a28:
    .word  12
    .globl  a29
    .align  2
    .type  a29, @object
    .size  a29, 4
a29:
    .word  13
    .globl  a30
    .align  2
    .type  a30, @object
    .size  a30, 4
a30:
    .word  14
    .globl  a31
    .align  2
    .type  a31, @object
    .size  a31, 4
a31:
    .word  15
    .globl  a32
    .align  2
    .type  a32, @object
    .size  a32, 4
a32:
    .word  16
    .text
    .align  1
    .globl  func
    .type  func, @function
func:
.LBB0:
	addi sp, sp, -224
	sd ra, 216(sp)
	sd s0, 208(sp)
	addi s0, sp, 224
	mv a0, a0
	mv a1, a1
	j .LBB1
.LBB1:
	addw t0, a0, a1
	call getint
	mv a0, a0
	call getint
	mv a0, a0
	sd a0, -64(s0)
	call getint
	mv a0, a0
	sd a0, -136(s0)
	call getint
	mv a0, a0
	li t0, 1
	addw t0, t0, a0
	lui t1, %hi(a1)
	lw t1, %lo(a1)(t1)
	addw t0, t0, t1
	sd t0, -224(s0)
	ld t0, -64(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a2)
	lw t0, %lo(a2)(t0)
	addw t0, t1, t0
	sd t0, -216(s0)
	ld t0, -136(s0)
	li t1, 3
	addw t1, t1, t0
	lui t0, %hi(a3)
	lw t0, %lo(a3)(t0)
	addw t0, t1, t0
	sd t0, -208(s0)
	li t0, 4
	addw t1, t0, a0
	lui t0, %hi(a4)
	lw t0, %lo(a4)(t0)
	addw t0, t1, t0
	sd t0, -56(s0)
	ld t0, -224(s0)
	li t1, 1
	addw t1, t1, t0
	lui t0, %hi(a5)
	lw t0, %lo(a5)(t0)
	addw t0, t1, t0
	sd t0, -200(s0)
	ld t0, -216(s0)
	li t0, 2
	addw t0, t0, t0
	lui t1, %hi(a6)
	lw t1, %lo(a6)(t1)
	addw t0, t0, t1
	sd t0, -192(s0)
	ld t0, -208(s0)
	li t0, 3
	addw t0, t0, t0
	lui t1, %hi(a7)
	lw t1, %lo(a7)(t1)
	addw t0, t0, t1
	sd t0, -184(s0)
	ld t0, -56(s0)
	li t0, 4
	addw t0, t0, t0
	lui t1, %hi(a8)
	lw t1, %lo(a8)(t1)
	addw t6, t0, t1
	ld t0, -200(s0)
	li t0, 1
	addw t0, t0, t0
	lui t1, %hi(a9)
	lw t1, %lo(a9)(t1)
	addw s1, t0, t1
	ld t0, -192(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a10)
	lw t0, %lo(a10)(t0)
	addw s2, t1, t0
	ld t0, -184(s0)
	li t0, 3
	addw t0, t0, t0
	lui t1, %hi(a11)
	lw t1, %lo(a11)(t1)
	addw t4, t0, t1
	li t0, 4
	addw t0, t0, t6
	lui t1, %hi(a12)
	lw t1, %lo(a12)(t1)
	addw t0, t0, t1
	sd t0, -176(s0)
	li t0, 1
	addw t1, t0, s1
	lui t0, %hi(a13)
	lw t0, %lo(a13)(t0)
	addw s10, t1, t0
	li t0, 2
	addw t0, t0, s2
	lui t1, %hi(a14)
	lw t1, %lo(a14)(t1)
	addw s8, t0, t1
	li t0, 3
	addw t0, t0, t4
	lui t1, %hi(a15)
	lw t1, %lo(a15)(t1)
	addw s6, t0, t1
	ld t0, -176(s0)
	li t0, 4
	addw t0, t0, t0
	lui t1, %hi(a16)
	lw t1, %lo(a16)(t1)
	addw t0, t0, t1
	sd t0, -168(s0)
	li t0, 1
	addw t1, t0, s10
	lui t0, %hi(a17)
	lw t0, %lo(a17)(t0)
	addw a5, t1, t0
	li t0, 2
	addw t0, t0, s8
	lui t1, %hi(a18)
	lw t1, %lo(a18)(t1)
	addw s7, t0, t1
	li t0, 3
	addw t1, t0, s6
	lui t0, %hi(a19)
	lw t0, %lo(a19)(t0)
	addw s4, t1, t0
	ld t0, -168(s0)
	li t1, 4
	addw t1, t1, t0
	lui t0, %hi(a20)
	lw t0, %lo(a20)(t0)
	addw t0, t1, t0
	sd t0, -48(s0)
	li t0, 1
	addw t0, t0, a5
	lui t1, %hi(a21)
	lw t1, %lo(a21)(t1)
	addw s3, t0, t1
	li t0, 2
	addw t1, t0, s7
	lui t0, %hi(a22)
	lw t0, %lo(a22)(t0)
	addw a6, t1, t0
	li t0, 3
	addw t1, t0, s4
	lui t0, %hi(a23)
	lw t0, %lo(a23)(t0)
	addw t1, t1, t0
	ld t0, -48(s0)
	li t2, 4
	addw t2, t2, t0
	lui t0, %hi(a24)
	lw t0, %lo(a24)(t0)
	addw s5, t2, t0
	li t0, 1
	addw t0, t0, s3
	lui t2, %hi(a25)
	lw t2, %lo(a25)(t2)
	addw a4, t0, t2
	li t0, 2
	addw t2, t0, a6
	lui t0, %hi(a26)
	lw t0, %lo(a26)(t0)
	addw a3, t2, t0
	li t0, 3
	addw t0, t0, t1
	lui t2, %hi(a27)
	lw t2, %lo(a27)(t2)
	addw t0, t0, t2
	sd t0, -160(s0)
	li t0, 4
	addw t2, t0, s5
	lui t0, %hi(a28)
	lw t0, %lo(a28)(t0)
	addw a2, t2, t0
	li t0, 1
	addw t0, t0, a4
	lui t2, %hi(a29)
	lw t2, %lo(a29)(t2)
	addw t0, t0, t2
	li t0, 2
	addw t2, t0, a3
	lui t0, %hi(a30)
	lw t0, %lo(a30)(t0)
	addw t0, t2, t0
	ld t0, -160(s0)
	li t1, 3
	addw t2, t1, t0
	lui t0, %hi(a31)
	lw t0, %lo(a31)(t0)
	addw t0, t2, t0
	li t0, 4
	addw t0, t0, a2
	lui t2, %hi(a32)
	lw t2, %lo(a32)(t2)
	addw t0, t0, t2
	subw t0, a0, a1
	addiw t0, t0, 10
	sd t0, -152(s0)
	li t0, 1
	addw t2, t0, a4
	lui t0, %hi(a29)
	lw t0, %lo(a29)(t0)
	addw a4, t2, t0
	li t0, 2
	addw t2, t0, a3
	lui t0, %hi(a30)
	lw t0, %lo(a30)(t0)
	addw a3, t2, t0
	ld t0, -160(s0)
	li t1, 3
	addw t2, t1, t0
	lui t0, %hi(a31)
	lw t0, %lo(a31)(t0)
	addw a7, t2, t0
	li t0, 4
	addw t2, t0, a2
	lui t0, %hi(a32)
	lw t0, %lo(a32)(t0)
	addw t2, t2, t0
	li t0, 1
	addw a1, t0, s3
	lui t0, %hi(a25)
	lw t0, %lo(a25)(t0)
	addw t5, a1, t0
	li t0, 2
	addw t0, t0, a6
	lui a1, %hi(a26)
	lw a1, %lo(a26)(a1)
	addw t3, t0, a1
	li t0, 3
	addw t1, t0, t1
	lui t0, %hi(a27)
	lw t0, %lo(a27)(t0)
	addw s11, t1, t0
	li t0, 4
	addw t1, t0, s5
	lui t0, %hi(a28)
	lw t0, %lo(a28)(t0)
	addw s5, t1, t0
	li t0, 1
	addw t1, t0, a5
	lui t0, %hi(a21)
	lw t0, %lo(a21)(t0)
	addw s9, t1, t0
	li t0, 2
	addw t0, t0, s7
	lui t1, %hi(a22)
	lw t1, %lo(a22)(t1)
	addw s7, t0, t1
	li t0, 3
	addw t0, t0, s4
	lui t1, %hi(a23)
	lw t1, %lo(a23)(t1)
	addw s4, t0, t1
	ld t0, -48(s0)
	li t1, 4
	addw t1, t1, t0
	lui t0, %hi(a24)
	lw t0, %lo(a24)(t0)
	addw t0, t1, t0
	sd t0, -40(s0)
	li t0, 1
	addw t1, t0, s10
	lui t0, %hi(a17)
	lw t0, %lo(a17)(t0)
	addw a1, t1, t0
	li t0, 2
	addw t0, t0, s8
	lui t1, %hi(a18)
	lw t1, %lo(a18)(t1)
	addw a6, t0, t1
	li t0, 3
	addw t1, t0, s6
	lui t0, %hi(a19)
	lw t0, %lo(a19)(t0)
	addw a2, t1, t0
	ld t0, -168(s0)
	li t1, 4
	addw t1, t1, t0
	lui t0, %hi(a20)
	lw t0, %lo(a20)(t0)
	addw a5, t1, t0
	li t0, 1
	addw t1, t0, s1
	lui t0, %hi(a13)
	lw t0, %lo(a13)(t0)
	addw t0, t1, t0
	sd t0, -144(s0)
	li t0, 2
	addw t1, t0, s2
	lui t0, %hi(a14)
	lw t0, %lo(a14)(t0)
	addw t0, t1, t0
	sd t0, -32(s0)
	li t0, 3
	addw t1, t0, t4
	lui t0, %hi(a15)
	lw t0, %lo(a15)(t0)
	addw s2, t1, t0
	ld t0, -176(s0)
	li t1, 4
	addw t1, t1, t0
	lui t0, %hi(a16)
	lw t0, %lo(a16)(t0)
	addw s3, t1, t0
	ld t0, -200(s0)
	li t1, 1
	addw t1, t1, t0
	lui t0, %hi(a9)
	lw t0, %lo(a9)(t0)
	addw t0, t1, t0
	sd t0, -128(s0)
	ld t0, -192(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a10)
	lw t0, %lo(a10)(t0)
	addw t0, t1, t0
	sd t0, -120(s0)
	ld t0, -184(s0)
	li t1, 3
	addw t1, t1, t0
	lui t0, %hi(a11)
	lw t0, %lo(a11)(t0)
	addw s6, t1, t0
	li t0, 4
	addw t0, t0, t6
	lui t1, %hi(a12)
	lw t1, %lo(a12)(t1)
	addw s8, t0, t1
	ld t0, -224(s0)
	li t1, 1
	addw t1, t1, t0
	lui t0, %hi(a5)
	lw t0, %lo(a5)(t0)
	addw t0, t1, t0
	sd t0, -112(s0)
	ld t0, -216(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a6)
	lw t0, %lo(a6)(t0)
	addw t0, t1, t0
	sd t0, -104(s0)
	ld t0, -208(s0)
	li t1, 3
	addw t1, t1, t0
	lui t0, %hi(a7)
	lw t0, %lo(a7)(t0)
	addw t0, t1, t0
	sd t0, -96(s0)
	ld t0, -56(s0)
	li t1, 4
	addw t1, t1, t0
	lui t0, %hi(a8)
	lw t0, %lo(a8)(t0)
	addw t0, t1, t0
	sd t0, -88(s0)
	li t0, 1
	addw t1, t0, a0
	lui t0, %hi(a1)
	lw t0, %lo(a1)(t0)
	addw t0, t1, t0
	ld t0, -64(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a2)
	lw t0, %lo(a2)(t0)
	addw t0, t1, t0
	ld t0, -136(s0)
	li t1, 3
	addw t1, t1, t0
	lui t0, %hi(a3)
	lw t0, %lo(a3)(t0)
	addw t0, t1, t0
	li t0, 4
	addw t1, t0, a0
	lui t0, %hi(a4)
	lw t0, %lo(a4)(t0)
	addw t0, t1, t0
	li t0, 1
	addw t0, t0, a0
	lui t1, %hi(a1)
	lw t1, %lo(a1)(t1)
	addw t0, t0, t1
	sd t0, -80(s0)
	ld t0, -64(s0)
	li t1, 2
	addw t1, t1, t0
	lui t0, %hi(a2)
	lw t0, %lo(a2)(t0)
	addw t0, t1, t0
	sd t0, -72(s0)
	ld t0, -136(s0)
	li t1, 3
	addw t1, t1, t0
	lui t0, %hi(a3)
	lw t0, %lo(a3)(t0)
	addw t1, t1, t0
	li t0, 4
	addw s1, t0, a0
	lui t0, %hi(a4)
	lw t0, %lo(a4)(t0)
	addw s1, s1, t0
	ld t0, -152(s0)
	addw t0, t0, a0
	ld t0, -64(s0)
	addw t0, t0, t0
	ld t0, -136(s0)
	addw t0, t0, t0
	addw t0, t0, a0
	ld t0, -80(s0)
	subw t0, t0, t0
	ld t0, -72(s0)
	subw t0, t0, t0
	subw t0, t0, t1
	subw t0, t0, s1
	ld t0, -112(s0)
	addw t0, t0, t0
	ld t0, -104(s0)
	addw t0, t0, t0
	ld t0, -96(s0)
	addw t0, t0, t0
	ld t0, -88(s0)
	addw t0, t0, t0
	ld t0, -128(s0)
	subw t0, t0, t0
	ld t0, -120(s0)
	subw t0, t0, t0
	subw t0, t0, s6
	subw t0, t0, s8
	ld t0, -144(s0)
	addw t0, t0, t0
	ld t0, -32(s0)
	addw t0, t0, t0
	addw t0, t0, s2
	addw t0, t0, s3
	subw t0, t0, a1
	subw t0, t0, a6
	subw t0, t0, a2
	subw t0, t0, a5
	addw t0, t0, s9
	addw t0, t0, s7
	addw t0, t0, s4
	ld t0, -40(s0)
	addw t0, t0, t0
	subw t0, t0, t5
	subw t0, t0, t3
	subw t0, t0, s11
	subw t0, t0, s5
	addw t0, t0, a4
	addw t0, t0, a3
	addw t0, t0, a7
	addw t1, t0, t2
	lui t0, %hi(a1)
	lw t0, %lo(a1)(t0)
	addw t0, t1, t0
	lui t1, %hi(a2)
	lw t1, %lo(a2)(t1)
	subw t1, t0, t1
	lui t0, %hi(a3)
	lw t0, %lo(a3)(t0)
	addw t0, t1, t0
	lui t1, %hi(a4)
	lw t1, %lo(a4)(t1)
	subw t1, t0, t1
	lui t0, %hi(a5)
	lw t0, %lo(a5)(t0)
	addw t0, t1, t0
	lui t1, %hi(a6)
	lw t1, %lo(a6)(t1)
	subw t1, t0, t1
	lui t0, %hi(a7)
	lw t0, %lo(a7)(t0)
	addw t0, t1, t0
	lui t1, %hi(a8)
	lw t1, %lo(a8)(t1)
	subw t1, t0, t1
	lui t0, %hi(a9)
	lw t0, %lo(a9)(t0)
	addw t1, t1, t0
	lui t0, %hi(a10)
	lw t0, %lo(a10)(t0)
	subw t1, t1, t0
	lui t0, %hi(a11)
	lw t0, %lo(a11)(t0)
	addw t1, t1, t0
	lui t0, %hi(a12)
	lw t0, %lo(a12)(t0)
	subw t1, t1, t0
	lui t0, %hi(a13)
	lw t0, %lo(a13)(t0)
	addw t1, t1, t0
	lui t0, %hi(a14)
	lw t0, %lo(a14)(t0)
	subw t1, t1, t0
	lui t0, %hi(a15)
	lw t0, %lo(a15)(t0)
	addw t1, t1, t0
	lui t0, %hi(a16)
	lw t0, %lo(a16)(t0)
	subw t1, t1, t0
	lui t0, %hi(a17)
	lw t0, %lo(a17)(t0)
	addw t0, t1, t0
	lui t1, %hi(a18)
	lw t1, %lo(a18)(t1)
	subw t1, t0, t1
	lui t0, %hi(a19)
	lw t0, %lo(a19)(t0)
	addw t1, t1, t0
	lui t0, %hi(a20)
	lw t0, %lo(a20)(t0)
	subw t1, t1, t0
	lui t0, %hi(a21)
	lw t0, %lo(a21)(t0)
	addw t0, t1, t0
	lui t1, %hi(a22)
	lw t1, %lo(a22)(t1)
	subw t1, t0, t1
	lui t0, %hi(a23)
	lw t0, %lo(a23)(t0)
	addw t1, t1, t0
	lui t0, %hi(a24)
	lw t0, %lo(a24)(t0)
	subw t0, t1, t0
	lui t1, %hi(a25)
	lw t1, %lo(a25)(t1)
	addw t1, t0, t1
	lui t0, %hi(a26)
	lw t0, %lo(a26)(t0)
	subw t1, t1, t0
	lui t0, %hi(a27)
	lw t0, %lo(a27)(t0)
	addw t1, t1, t0
	lui t0, %hi(a28)
	lw t0, %lo(a28)(t0)
	subw t1, t1, t0
	lui t0, %hi(a29)
	lw t0, %lo(a29)(t0)
	addw t1, t1, t0
	lui t0, %hi(a30)
	lw t0, %lo(a30)(t0)
	subw t1, t1, t0
	lui t0, %hi(a31)
	lw t0, %lo(a31)(t0)
	addw t0, t1, t0
	lui t1, %hi(a32)
	lw t1, %lo(a32)(t1)
	subw a0, t0, t1
	mv a0, a0
	ld ra, 216(sp)
	ld s0, 208(sp)
	addi sp, sp, 224
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	call getint
	mv a0, a0
	addiw a1, a0, 18
	mv a0, a0
	mv a1, a1
	call func
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
