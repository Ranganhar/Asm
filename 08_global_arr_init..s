    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .globl  a0
    .bss
    .align  3
    .type  a0, @object
    .size  a0, 12
a0:
    .zero  12
    .globl  b0
    .data
    .align  3
    .type  b0, @object
    .size  b0, 16
b0:
    .zero  4
    .word  1
    .zero  8
    .globl  c0
    .align  3
    .type  c0, @object
    .size  c0, 28
c0:
    .word  2
    .word  8
    .word  6
    .word  3
    .word  9
    .word  1
    .word  5
    .globl  d0
    .bss
    .align  3
    .type  d0, @object
    .size  d0, 44
d0:
    .zero  44
    .globl  e0
    .data
    .align  3
    .type  e0, @object
    .size  e0, 8
e0:
    .word  22
    .word  33
    .globl  f0
    .bss
    .align  3
    .type  f0, @object
    .size  f0, 24
f0:
    .zero  24
    .globl  g0
    .data
    .align  3
    .type  g0, @object
    .size  g0, 36
g0:
    .word  85
    .zero  4
    .word  1
    .word  29
    .zero  20
    .globl  a
    .bss
    .align  3
    .type  a, @object
    .size  a, 60
a:
    .zero  60
    .globl  b
    .align  3
    .type  b, @object
    .size  b, 60
b:
    .zero  60
    .globl  c
    .data
    .align  3
    .type  c, @object
    .size  c, 60
c:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl  d
    .align  3
    .type  d, @object
    .size  d, 60
d:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl  e
    .align  3
    .type  e, @object
    .size  e, 60
e:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .word  6
    .word  7
    .word  8
    .word  9
    .word  10
    .word  11
    .word  12
    .word  13
    .word  14
    .word  15
    .globl  f
    .bss
    .align  3
    .type  f, @object
    .size  f, 20
f:
    .zero  20
    .globl  g
    .data
    .align  3
    .type  g, @object
    .size  g, 60
g:
    .word  1
    .word  2
    .word  3
    .word  4
    .zero  8
    .word  7
    .zero  8
    .word  10
    .word  11
    .word  12
    .zero  12
    .globl  h
    .bss
    .align  3
    .type  h, @object
    .size  h, 12
h:
    .zero  12
    .globl  i
    .data
    .align  3
    .type  i, @object
    .size  i, 96
i:
    .word  1
    .word  2
    .word  3
    .word  4
    .word  5
    .zero  76
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -16
	sd ra, 8(sp)
	sd s0, 0(sp)
	addi s0, sp, 16
	li a0, 5
	ld ra, 8(sp)
	ld s0, 0(sp)
	addi sp, sp, 16
	ret 
    .size main, .-main
