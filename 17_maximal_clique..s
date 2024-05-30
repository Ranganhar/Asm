    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  store
    .bss
    .align  3
    .type  store, @object
    .size  store, 120
store:
    .zero  120
    .globl  n
    .align  2
    .type  n, @object
    .size  n, 4
n:
    .zero  4
    .globl  m
    .align  2
    .type  m, @object
    .size  m, 4
m:
    .zero  4
    .globl  graph
    .align  3
    .type  graph, @object
    .size  graph, 3600
graph:
    .zero  3600
    .text
    .align  1
    .globl  is_clique
    .type  is_clique, @function
is_clique:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	j .LBB1
.LBB1:
	li t0, 1
	j .LBB2
.LBB2:
	blt t0, a0, .LBB3
	j .LBB4
.LBB3:
	addiw t1, t0, 1
	mv t1, t1
	j .LBB5
.LBB4:
	li a0, 1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB5:
	blt t1, a0, .LBB6
	j .LBB7
.LBB6:
	lui t2, %hi(store)
	addi t2, t2, %lo(store)
	addw t0, s0, t2
	li t2, 4
	mulw t0, t0, t2
	addw t0, t0, t0
	lw t2, 0(t0)
	lui t0, %hi(store)
	addi t0, t0, %lo(store)
	addw t0, s0, t0
	li t0, 4
	mulw t0, t1, t0
	addw t0, t0, t0
	lw s1, 0(t0)
	lui t0, %hi(graph)
	addi t0, t0, %lo(graph)
	addw t0, s0, t0
	li t0, 120
	mulw t0, t2, t0
	addw t0, t0, t0
	li t0, 4
	mulw t0, s1, t0
	addw t0, t0, t0
	lw t0, 0(t0)
	beq t0, zero, .LBB8
	j .LBB9
.LBB7:
	addiw t0, t0, 1
	mv t0, t0
	j .LBB2
.LBB8:
	mv a0, zero
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB9:
	addiw t1, t1, 1
	mv t1, t1
	j .LBB5
    .size is_clique, .-is_clique
    .align  1
    .globl  maxCliques
    .type  maxCliques, @function
maxCliques:
.LBB10:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	mv a0, a0
	mv a1, a1
	j .LBB11
.LBB11:
	li t0, 1
	mv t1, zero
	j .LBB12
.LBB12:
	lui t2, %hi(n)
	lw t2, %lo(n)(t2)
	bge t2, t0, .LBB13
	j .LBB14
.LBB13:
	lui t2, %hi(store)
	addi t2, t2, %lo(store)
	addw t2, s0, t2
	li t2, 4
	mulw t2, a1, t2
	addw t2, t2, t2
	sw t0, 0(t2)
	addiw a0, a1, 1
	mv a0, a0
	call is_clique
	mv a0, a0
	bne a0, zero, .LBB15
	j .LBB21
.LBB14:
	mv a0, t1
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
.LBB15:
	blt t1, a1, .LBB17
	j .LBB22
.LBB16:
	addiw t0, t0, 1
	mv t0, t0
	mv t1, t1
	j .LBB12
.LBB17:
	mv t1, a1
	j .LBB18
.LBB18:
	addiw a1, a1, 1
	mv a0, t0
	mv a1, a1
	call maxCliques
	mv a0, a0
	blt t1, a0, .LBB19
	j .LBB23
.LBB19:
	mv t1, a0
	j .LBB20
.LBB20:
	mv t1, t1
	j .LBB16
.LBB21:
	mv t1, t1
	j .LBB16
.LBB22:
	mv t1, t1
	j .LBB18
.LBB23:
	mv t1, t1
	j .LBB20
    .size maxCliques, .-maxCliques
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB24:
	addi sp, sp, -720
	sd ra, 712(sp)
	sd s0, 704(sp)
	addi s0, sp, 720
	li t0, 4096
	add sp, sp, t0
	call getint
	mv t0, a0
	lui t1, %hi(n)
	sw t0, %lo(n)(t1)
	call getint
	mv t0, a0
	lui t1, %hi(m)
	sw t0, %lo(m)(t1)
	mv t0, zero
	j .LBB25
.LBB25:
	lui t1, %hi(m)
	lw t1, %lo(m)(t1)
	blt t0, t1, .LBB26
	j .LBB27
.LBB26:
	call getint
	mv t1, a0
	li t2, -4096
	addiw t2, t2, -720
	addw t2, s0, t2
	li t2, 8
	mulw t2, t0, t2
	addw t2, t2, t2
	sw t1, 0(t2)
	call getint
	mv a0, a0
	li t1, -4096
	addiw t1, t1, -720
	addw t1, s0, t1
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	sw a0, 4(t1)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB25
.LBB27:
	mv t0, zero
	j .LBB28
.LBB28:
	lui t1, %hi(m)
	lw t1, %lo(m)(t1)
	blt t0, t1, .LBB29
	j .LBB30
.LBB29:
	li t1, -4096
	addiw t1, t1, -720
	addw t1, s0, t1
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 0(t1)
	li t1, -4096
	addiw t1, t1, -720
	addw t1, s0, t1
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 4(t1)
	lui t1, %hi(graph)
	addi t1, t1, %lo(graph)
	addw t1, s0, t1
	li t1, 120
	mulw t1, t2, t1
	addw t1, t1, t1
	li t1, 4
	mulw t1, s1, t1
	addw t1, t1, t1
	li t2, 1
	sw t2, 0(t1)
	li t1, -4096
	addiw t1, t1, -720
	addw t1, s0, t1
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	lw t2, 4(t1)
	li t1, -4096
	addiw t1, t1, -720
	addw t1, s0, t1
	li t1, 8
	mulw t1, t0, t1
	addw t1, t1, t1
	lw s1, 0(t1)
	lui t1, %hi(graph)
	addi t1, t1, %lo(graph)
	addw t2, s0, t1
	li t1, 120
	mulw t1, t2, t1
	addw t2, t2, t1
	li t1, 4
	mulw t1, s1, t1
	addw t2, t2, t1
	li t1, 1
	sw t1, 0(t2)
	addiw t0, t0, 1
	mv t0, t0
	j .LBB28
.LBB30:
	li a0, 0
	li a1, 1
	call maxCliques
	mv a0, a0
	mv a0, a0
	call putint
	mv a0, zero
	li t0, 4096
	add sp, sp, t0
	ld ra, 712(sp)
	ld s0, 704(sp)
	addi sp, sp, 720
	ret 
    .size main, .-main
