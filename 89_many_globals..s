    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a0
    .bss
    .align  2
    .type  a0, @object
    .size  a0, 4
a0:
    .zero  4
    .globl  a1
    .align  2
    .type  a1, @object
    .size  a1, 4
a1:
    .zero  4
    .globl  a2
    .align  2
    .type  a2, @object
    .size  a2, 4
a2:
    .zero  4
    .globl  a3
    .align  2
    .type  a3, @object
    .size  a3, 4
a3:
    .zero  4
    .globl  a4
    .align  2
    .type  a4, @object
    .size  a4, 4
a4:
    .zero  4
    .globl  a5
    .align  2
    .type  a5, @object
    .size  a5, 4
a5:
    .zero  4
    .globl  a6
    .align  2
    .type  a6, @object
    .size  a6, 4
a6:
    .zero  4
    .globl  a7
    .align  2
    .type  a7, @object
    .size  a7, 4
a7:
    .zero  4
    .globl  a8
    .align  2
    .type  a8, @object
    .size  a8, 4
a8:
    .zero  4
    .globl  a9
    .align  2
    .type  a9, @object
    .size  a9, 4
a9:
    .zero  4
    .globl  a10
    .align  2
    .type  a10, @object
    .size  a10, 4
a10:
    .zero  4
    .globl  a11
    .align  2
    .type  a11, @object
    .size  a11, 4
a11:
    .zero  4
    .globl  a12
    .align  2
    .type  a12, @object
    .size  a12, 4
a12:
    .zero  4
    .globl  a13
    .align  2
    .type  a13, @object
    .size  a13, 4
a13:
    .zero  4
    .globl  a14
    .align  2
    .type  a14, @object
    .size  a14, 4
a14:
    .zero  4
    .globl  a15
    .align  2
    .type  a15, @object
    .size  a15, 4
a15:
    .zero  4
    .globl  a16
    .align  2
    .type  a16, @object
    .size  a16, 4
a16:
    .zero  4
    .globl  a17
    .align  2
    .type  a17, @object
    .size  a17, 4
a17:
    .zero  4
    .globl  a18
    .align  2
    .type  a18, @object
    .size  a18, 4
a18:
    .zero  4
    .globl  a19
    .align  2
    .type  a19, @object
    .size  a19, 4
a19:
    .zero  4
    .globl  a20
    .align  2
    .type  a20, @object
    .size  a20, 4
a20:
    .zero  4
    .globl  a21
    .align  2
    .type  a21, @object
    .size  a21, 4
a21:
    .zero  4
    .globl  a22
    .align  2
    .type  a22, @object
    .size  a22, 4
a22:
    .zero  4
    .globl  a23
    .align  2
    .type  a23, @object
    .size  a23, 4
a23:
    .zero  4
    .globl  a24
    .align  2
    .type  a24, @object
    .size  a24, 4
a24:
    .zero  4
    .globl  a25
    .align  2
    .type  a25, @object
    .size  a25, 4
a25:
    .zero  4
    .globl  a26
    .align  2
    .type  a26, @object
    .size  a26, 4
a26:
    .zero  4
    .globl  a27
    .align  2
    .type  a27, @object
    .size  a27, 4
a27:
    .zero  4
    .globl  a28
    .align  2
    .type  a28, @object
    .size  a28, 4
a28:
    .zero  4
    .globl  a29
    .align  2
    .type  a29, @object
    .size  a29, 4
a29:
    .zero  4
    .globl  a30
    .align  2
    .type  a30, @object
    .size  a30, 4
a30:
    .zero  4
    .globl  a31
    .align  2
    .type  a31, @object
    .size  a31, 4
a31:
    .zero  4
    .globl  a32
    .align  2
    .type  a32, @object
    .size  a32, 4
a32:
    .zero  4
    .globl  a33
    .align  2
    .type  a33, @object
    .size  a33, 4
a33:
    .zero  4
    .globl  a34
    .align  2
    .type  a34, @object
    .size  a34, 4
a34:
    .zero  4
    .globl  a35
    .align  2
    .type  a35, @object
    .size  a35, 4
a35:
    .zero  4
    .globl  a36
    .align  2
    .type  a36, @object
    .size  a36, 4
a36:
    .zero  4
    .globl  a37
    .align  2
    .type  a37, @object
    .size  a37, 4
a37:
    .zero  4
    .globl  a38
    .align  2
    .type  a38, @object
    .size  a38, 4
a38:
    .zero  4
    .globl  a39
    .align  2
    .type  a39, @object
    .size  a39, 4
a39:
    .zero  4
    .text
    .align  1
    .globl  testParam8
    .type  testParam8, @function
testParam8:
.LBB0:
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
	mv a7, a7
	j .LBB1
.LBB1:
	addw t0, a0, a1
	addw t0, t0, a2
	addw t0, t0, a3
	addw t0, t0, a4
	addw t0, t0, a5
	addw t0, t0, a6
	addw a0, t0, a7
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size testParam8, .-testParam8
    .align  1
    .globl  testParam16
    .type  testParam16, @function
testParam16:
.LBB2:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	lw t2, 0(s0)
	lw s5, 4(s0)
	lw s4, 8(s0)
	lw s3, 12(s0)
	lw s2, 16(s0)
	lw s1, 20(s0)
	lw s6, 24(s0)
	lw t1, 28(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB3
.LBB3:
	addw t0, a0, a1
	addw t0, t0, a2
	subw t0, t0, a3
	subw t0, t0, a4
	subw t0, t0, a5
	subw t0, t0, a6
	subw t0, t0, a7
	addw t0, t0, t1
	addw t0, t0, s6
	addw t0, t0, s1
	addw t0, t0, s2
	addw t0, t0, s3
	addw t0, t0, s4
	addw t0, t0, s5
	addw a0, t0, t2
	mv a0, a0
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size testParam16, .-testParam16
    .align  1
    .globl  testParam32
    .type  testParam32, @function
testParam32:
.LBB4:
	addi sp, sp, -80
	sd ra, 72(sp)
	sd s0, 64(sp)
	addi s0, sp, 80
	lw t5, 0(s0)
	lw s7, 4(s0)
	lw s8, 8(s0)
	lw s5, 12(s0)
	lw s6, 16(s0)
	lw t0, 20(s0)
	sd t0, -80(s0)
	lw s2, 24(s0)
	lw t2, 28(s0)
	lw s9, 32(s0)
	lw s1, 36(s0)
	lw s3, 40(s0)
	lw t1, 44(s0)
	lw t0, 48(s0)
	sd t0, -32(s0)
	lw s11, 52(s0)
	lw t0, 56(s0)
	sd t0, -40(s0)
	lw t0, 60(s0)
	sd t0, -48(s0)
	lw t4, 64(s0)
	lw s10, 68(s0)
	lw t3, 72(s0)
	lw t0, 76(s0)
	sd t0, -56(s0)
	lw t0, 80(s0)
	sd t0, -64(s0)
	lw t0, 84(s0)
	sd t0, -72(s0)
	lw t0, 88(s0)
	lw s4, 92(s0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	j .LBB5
.LBB5:
	addw a0, a0, a1
	addw a0, a0, a2
	addw a0, a0, a3
	addw a0, a0, a4
	addw a0, a0, a5
	addw a0, a0, a6
	addw a0, a0, a7
	addw a0, a0, s4
	addw t0, a0, t0
	ld t0, -72(s0)
	addw t0, t0, t0
	ld t0, -64(s0)
	addw t0, t0, t0
	ld t0, -56(s0)
	addw t0, t0, t0
	addw t0, t0, t3
	addw t0, t0, s10
	addw t0, t0, t4
	ld t0, -48(s0)
	addw t0, t0, t0
	ld t0, -40(s0)
	addw t0, t0, t0
	subw t0, t0, s11
	ld t0, -32(s0)
	subw t0, t0, t0
	subw t0, t0, t1
	subw t0, t0, s3
	subw t0, t0, s1
	addw t0, t0, s9
	addw t0, t0, t2
	addw t0, t0, s2
	ld t0, -80(s0)
	addw t0, t0, t0
	addw t0, t0, s6
	addw t0, t0, s5
	addw t0, t0, s8
	addw t0, t0, s7
	addw a0, t0, t5
	mv a0, a0
	ld ra, 72(sp)
	ld s0, 64(sp)
	addi sp, sp, 80
	ret 
    .size testParam32, .-testParam32
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB6:
	addi sp, sp, -112
	sd ra, 104(sp)
	sd s0, 96(sp)
	addi s0, sp, 112
	li t1, 0
	lui t0, %hi(a0)
	sw t1, %lo(a0)(t0)
	li t1, 1
	lui t0, %hi(a1)
	sw t1, %lo(a1)(t0)
	li t1, 2
	lui t0, %hi(a2)
	sw t1, %lo(a2)(t0)
	li t0, 3
	lui t1, %hi(a3)
	sw t0, %lo(a3)(t1)
	li t1, 4
	lui t0, %hi(a4)
	sw t1, %lo(a4)(t0)
	li t1, 5
	lui t0, %hi(a5)
	sw t1, %lo(a5)(t0)
	li t1, 6
	lui t0, %hi(a6)
	sw t1, %lo(a6)(t0)
	li t1, 7
	lui t0, %hi(a7)
	sw t1, %lo(a7)(t0)
	li t1, 8
	lui t0, %hi(a8)
	sw t1, %lo(a8)(t0)
	li t0, 9
	lui t1, %hi(a9)
	sw t0, %lo(a9)(t1)
	li t1, 0
	lui t0, %hi(a10)
	sw t1, %lo(a10)(t0)
	li t1, 1
	lui t0, %hi(a11)
	sw t1, %lo(a11)(t0)
	li t1, 2
	lui t0, %hi(a12)
	sw t1, %lo(a12)(t0)
	li t0, 3
	lui t1, %hi(a13)
	sw t0, %lo(a13)(t1)
	li t1, 4
	lui t0, %hi(a14)
	sw t1, %lo(a14)(t0)
	li t1, 5
	lui t0, %hi(a15)
	sw t1, %lo(a15)(t0)
	li t1, 6
	lui t0, %hi(a16)
	sw t1, %lo(a16)(t0)
	li t1, 7
	lui t0, %hi(a17)
	sw t1, %lo(a17)(t0)
	li t1, 8
	lui t0, %hi(a18)
	sw t1, %lo(a18)(t0)
	li t1, 9
	lui t0, %hi(a19)
	sw t1, %lo(a19)(t0)
	li t0, 0
	lui t1, %hi(a20)
	sw t0, %lo(a20)(t1)
	li t1, 1
	lui t0, %hi(a21)
	sw t1, %lo(a21)(t0)
	li t1, 2
	lui t0, %hi(a22)
	sw t1, %lo(a22)(t0)
	li t1, 3
	lui t0, %hi(a23)
	sw t1, %lo(a23)(t0)
	li t0, 4
	lui t1, %hi(a24)
	sw t0, %lo(a24)(t1)
	li t1, 5
	lui t0, %hi(a25)
	sw t1, %lo(a25)(t0)
	li t1, 6
	lui t0, %hi(a26)
	sw t1, %lo(a26)(t0)
	li t1, 7
	lui t0, %hi(a27)
	sw t1, %lo(a27)(t0)
	li t0, 8
	lui t1, %hi(a28)
	sw t0, %lo(a28)(t1)
	li t1, 9
	lui t0, %hi(a29)
	sw t1, %lo(a29)(t0)
	li t1, 0
	lui t0, %hi(a30)
	sw t1, %lo(a30)(t0)
	li t1, 1
	lui t0, %hi(a31)
	sw t1, %lo(a31)(t0)
	li t1, 4
	lui t0, %hi(a32)
	sw t1, %lo(a32)(t0)
	li t1, 5
	lui t0, %hi(a33)
	sw t1, %lo(a33)(t0)
	li t1, 6
	lui t0, %hi(a34)
	sw t1, %lo(a34)(t0)
	li t0, 7
	lui t1, %hi(a35)
	sw t0, %lo(a35)(t1)
	li t1, 8
	lui t0, %hi(a36)
	sw t1, %lo(a36)(t0)
	li t1, 9
	lui t0, %hi(a37)
	sw t1, %lo(a37)(t0)
	li t1, 0
	lui t0, %hi(a38)
	sw t1, %lo(a38)(t0)
	li t1, 1
	lui t0, %hi(a39)
	sw t1, %lo(a39)(t0)
	lui t0, %hi(a0)
	lw a0, %lo(a0)(t0)
	lui t0, %hi(a1)
	lw a1, %lo(a1)(t0)
	lui t0, %hi(a2)
	lw a2, %lo(a2)(t0)
	lui t0, %hi(a3)
	lw a3, %lo(a3)(t0)
	lui t0, %hi(a4)
	lw a4, %lo(a4)(t0)
	lui t0, %hi(a5)
	lw a5, %lo(a5)(t0)
	lui t0, %hi(a6)
	lw a6, %lo(a6)(t0)
	lui t0, %hi(a7)
	lw a7, %lo(a7)(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call testParam8
	mv a0, a0
	lui t0, %hi(a0)
	sw a0, %lo(a0)(t0)
	lui t0, %hi(a0)
	lw a0, %lo(a0)(t0)
	mv a0, a0
	call putint
	lui t0, %hi(a32)
	lw a0, %lo(a32)(t0)
	lui t0, %hi(a33)
	lw a1, %lo(a33)(t0)
	lui t0, %hi(a34)
	lw a2, %lo(a34)(t0)
	lui t0, %hi(a35)
	lw a3, %lo(a35)(t0)
	lui t0, %hi(a36)
	lw a4, %lo(a36)(t0)
	lui t0, %hi(a37)
	lw a5, %lo(a37)(t0)
	lui t0, %hi(a38)
	lw a6, %lo(a38)(t0)
	lui t0, %hi(a39)
	lw a7, %lo(a39)(t0)
	lui t0, %hi(a8)
	lw t0, %lo(a8)(t0)
	lui t0, %hi(a9)
	lw t0, %lo(a9)(t0)
	lui t0, %hi(a10)
	lw t0, %lo(a10)(t0)
	lui t0, %hi(a11)
	lw t0, %lo(a11)(t0)
	lui t0, %hi(a12)
	lw t0, %lo(a12)(t0)
	lui t0, %hi(a13)
	lw t0, %lo(a13)(t0)
	lui t0, %hi(a14)
	lw t0, %lo(a14)(t0)
	lui t0, %hi(a15)
	lw t0, %lo(a15)(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call testParam16
	mv a0, a0
	lui t0, %hi(a0)
	sw a0, %lo(a0)(t0)
	lui t0, %hi(a0)
	lw a0, %lo(a0)(t0)
	mv a0, a0
	call putint
	lui t0, %hi(a0)
	lw a0, %lo(a0)(t0)
	lui t0, %hi(a1)
	lw a1, %lo(a1)(t0)
	lui t0, %hi(a2)
	lw a2, %lo(a2)(t0)
	lui t0, %hi(a3)
	lw a3, %lo(a3)(t0)
	lui t0, %hi(a4)
	lw a4, %lo(a4)(t0)
	lui t0, %hi(a5)
	lw a5, %lo(a5)(t0)
	lui t0, %hi(a6)
	lw a6, %lo(a6)(t0)
	lui t0, %hi(a7)
	lw a7, %lo(a7)(t0)
	lui t0, %hi(a8)
	lw t0, %lo(a8)(t0)
	lui t0, %hi(a9)
	lw t0, %lo(a9)(t0)
	lui t0, %hi(a10)
	lw t0, %lo(a10)(t0)
	lui t0, %hi(a11)
	lw t0, %lo(a11)(t0)
	lui t0, %hi(a12)
	lw t0, %lo(a12)(t0)
	lui t0, %hi(a13)
	lw t0, %lo(a13)(t0)
	lui t0, %hi(a14)
	lw t0, %lo(a14)(t0)
	lui t0, %hi(a15)
	lw t0, %lo(a15)(t0)
	lui t0, %hi(a16)
	lw t0, %lo(a16)(t0)
	lui t0, %hi(a17)
	lw t0, %lo(a17)(t0)
	lui t0, %hi(a18)
	lw t0, %lo(a18)(t0)
	lui t0, %hi(a19)
	lw t0, %lo(a19)(t0)
	lui t0, %hi(a20)
	lw t0, %lo(a20)(t0)
	lui t0, %hi(a21)
	lw t0, %lo(a21)(t0)
	lui t0, %hi(a22)
	lw t0, %lo(a22)(t0)
	lui t0, %hi(a23)
	lw t0, %lo(a23)(t0)
	lui t0, %hi(a24)
	lw t0, %lo(a24)(t0)
	lui t0, %hi(a25)
	lw t0, %lo(a25)(t0)
	lui t0, %hi(a26)
	lw t0, %lo(a26)(t0)
	lui t0, %hi(a27)
	lw t0, %lo(a27)(t0)
	lui t0, %hi(a28)
	lw t0, %lo(a28)(t0)
	lui t0, %hi(a29)
	lw t0, %lo(a29)(t0)
	lui t0, %hi(a30)
	lw t0, %lo(a30)(t0)
	lui t0, %hi(a31)
	lw t0, %lo(a31)(t0)
	mv a0, a0
	mv a1, a1
	mv a2, a2
	mv a3, a3
	mv a4, a4
	mv a5, a5
	mv a6, a6
	mv a7, a7
	call testParam32
	mv a0, a0
	lui t0, %hi(a0)
	sw a0, %lo(a0)(t0)
	lui t0, %hi(a0)
	lw a0, %lo(a0)(t0)
	mv a0, a0
	call putint
	mv a0, zero
	ld ra, 104(sp)
	ld s0, 96(sp)
	addi sp, sp, 112
	ret 
    .size main, .-main
