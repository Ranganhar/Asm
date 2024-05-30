    .file  "file"
    .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0"
    .attribute unaligned_access, 0
    .attribute stack_align, 16
    .text
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB0:
	addi sp, sp, -1568
	sd ra, 1560(sp)
	sd s0, 1552(sp)
	addi s0, sp, 1568
	addiw t0, 0, -2
	sd t0, -1488(s0)
	ld t0, -1488(s0)
	addw t0, zero, t0
	addiw t0, 2, 1
	sd t0, -1016(s0)
	ld t0, -1016(s0)
	addw t0, t0, t0
	addiw t0, 3, 2
	sd t0, -1024(s0)
	ld t0, -1024(s0)
	addw t0, t0, t0
	addiw t0, 2, -3
	sd t0, -1032(s0)
	ld t0, -1032(s0)
	addw t0, t0, t0
	addiw s3, 2, -2
	addw t0, t0, s3
	addiw s4, 1, 2
	addw t0, t0, s4
	addiw a5, 1, 0
	addw t0, t0, a5
	addiw a7, 1, 3
	addw t0, t0, a7
	addiw t2, 1, 2
	addw t0, t0, t2
	addiw a1, 1, -1
	addw t0, t0, a1
	addiw t0, 2, 1
	sd t0, -1040(s0)
	ld t0, -1040(s0)
	addw t0, t0, t0
	addiw t0, 0, 1
	sd t0, -1048(s0)
	ld t0, -1048(s0)
	addw t0, t0, t0
	addiw t0, 4, 1
	sd t0, -1056(s0)
	ld t0, -1056(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1064(s0)
	ld t0, -1064(s0)
	addw t0, t0, t0
	addiw t0, 3, 0
	sd t0, -1072(s0)
	ld t0, -1072(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1080(s0)
	ld t0, -1080(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -1088(s0)
	ld t0, -1088(s0)
	addw t0, t0, t0
	addiw s7, 1, -5
	addw t0, t0, s7
	addiw t0, 4, 4
	sd t0, -1096(s0)
	ld t0, -1096(s0)
	addw t0, t0, t0
	addiw t0, 3, -1
	sd t0, -1008(s0)
	ld t0, -1008(s0)
	addw t0, t0, t0
	addiw t0, 4, 4
	sd t0, -1112(s0)
	ld t0, -1112(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -1120(s0)
	ld t0, -1120(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -1128(s0)
	ld t0, -1128(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -1136(s0)
	ld t0, -1136(s0)
	addw t0, t0, t0
	addiw s9, 1, 4
	addw t0, t0, s9
	addiw s1, 4, 4
	addw t0, t0, s1
	addiw a0, 0, -4
	addw t0, t0, a0
	addiw a2, 2, 4
	addw t0, t0, a2
	addiw t0, 4, -2
	sd t0, -1144(s0)
	ld t0, -1144(s0)
	addw t0, t0, t0
	addiw t0, 0, 4
	sd t0, -1152(s0)
	ld t0, -1152(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1160(s0)
	ld t0, -1160(s0)
	addw t0, t0, t0
	addiw t0, 0, -5
	sd t0, -1168(s0)
	ld t0, -1168(s0)
	addw t0, t0, t0
	addiw t0, 4, 1
	sd t0, -1176(s0)
	ld t0, -1176(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -1184(s0)
	ld t0, -1184(s0)
	addw t0, t0, t0
	addiw t0, 2, -1
	sd t0, -1192(s0)
	ld t0, -1192(s0)
	addw t0, t0, t0
	addiw t0, 4, -4
	sd t0, -912(s0)
	ld t0, -912(s0)
	addw t0, t0, t0
	addiw t0, 0, -4
	sd t0, -816(s0)
	ld t0, -816(s0)
	addw t0, t0, t0
	addiw t0, 4, -3
	sd t0, -824(s0)
	ld t0, -824(s0)
	addw t0, t0, t0
	addiw t0, 0, 1
	sd t0, -832(s0)
	ld t0, -832(s0)
	addw t0, t0, t0
	addiw t0, 1, 4
	sd t0, -840(s0)
	ld t0, -840(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -848(s0)
	ld t0, -848(s0)
	addw t0, t0, t0
	addiw t0, 0, -5
	sd t0, -856(s0)
	ld t0, -856(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -864(s0)
	ld t0, -864(s0)
	addw t0, t0, t0
	addiw t0, 2, -5
	sd t0, -872(s0)
	ld t0, -872(s0)
	addw t0, t0, t0
	addiw t0, 2, -1
	sd t0, -880(s0)
	ld t0, -880(s0)
	addw t0, t0, t0
	addiw t0, 4, -5
	sd t0, -888(s0)
	ld t0, -888(s0)
	addw t0, t0, t0
	addiw t0, 1, -4
	sd t0, -896(s0)
	ld t0, -896(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -904(s0)
	ld t0, -904(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -808(s0)
	ld t0, -808(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -920(s0)
	ld t0, -920(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -928(s0)
	ld t0, -928(s0)
	addw t0, t0, t0
	addiw t0, 1, -2
	sd t0, -936(s0)
	ld t0, -936(s0)
	addw t0, t0, t0
	addiw t0, 3, -3
	sd t0, -944(s0)
	ld t0, -944(s0)
	addw t0, t0, t0
	addiw t0, 2, -5
	sd t0, -952(s0)
	ld t0, -952(s0)
	addw t0, t0, t0
	addiw t0, 3, 1
	sd t0, -960(s0)
	ld t0, -960(s0)
	addw t0, t0, t0
	addiw t0, 4, 1
	sd t0, -968(s0)
	ld t0, -968(s0)
	addw t0, t0, t0
	addiw t0, 0, -4
	sd t0, -976(s0)
	ld t0, -976(s0)
	addw t0, t0, t0
	addiw t0, 1, 1
	sd t0, -984(s0)
	ld t0, -984(s0)
	addw t0, t0, t0
	addiw t0, 1, -5
	sd t0, -992(s0)
	ld t0, -992(s0)
	addw t0, t0, t0
	addiw t0, 1, -2
	sd t0, -1000(s0)
	ld t0, -1000(s0)
	addw t0, t0, t0
	addiw t0, 4, 2
	sd t0, -1104(s0)
	ld t0, -1104(s0)
	addw t0, t0, t0
	addiw t0, 4, -5
	sd t0, -1400(s0)
	ld t0, -1400(s0)
	addw t0, t0, t0
	addiw t0, 1, 2
	sd t0, -1408(s0)
	ld t0, -1408(s0)
	addw t0, t0, t0
	addiw t0, 2, -4
	sd t0, -1416(s0)
	ld t0, -1416(s0)
	addw t0, t0, t0
	addiw t0, 1, 3
	sd t0, -1424(s0)
	ld t0, -1424(s0)
	addw t0, t0, t0
	addiw t0, 0, -4
	sd t0, -1432(s0)
	ld t0, -1432(s0)
	addw t0, t0, t0
	addiw t0, 0, -2
	sd t0, -1440(s0)
	ld t0, -1440(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -1448(s0)
	ld t0, -1448(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -1456(s0)
	ld t0, -1456(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -1464(s0)
	ld t0, -1464(s0)
	addw t0, t0, t0
	addiw t0, 2, 2
	sd t0, -1472(s0)
	ld t0, -1472(s0)
	addw t0, t0, t0
	addiw t0, 2, 2
	sd t0, -1480(s0)
	ld t0, -1480(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1392(s0)
	ld t0, -1392(s0)
	addw t0, t0, t0
	addiw s8, 3, 4
	addw t0, t0, s8
	addiw s6, 1, -4
	addw t0, t0, s6
	addiw s5, 3, 0
	addw t0, t0, s5
	addiw a6, 1, 4
	addw t0, t0, a6
	addiw s2, 3, -3
	addw t0, t0, s2
	addiw a4, 3, 0
	addw t0, t0, a4
	addiw s10, 3, 4
	addw t0, t0, s10
	addiw t3, 0, 0
	addw t0, t0, t3
	addiw s11, 2, 0
	addw t0, t0, s11
	addiw t4, 4, 3
	addw t0, t0, t4
	addiw t0, 0, -1
	sd t0, -1496(s0)
	ld t0, -1496(s0)
	addw t0, t0, t0
	addiw t5, 4, 3
	addw t0, t0, t5
	addiw t6, 0, 1
	addw t0, t0, t6
	addiw a3, 0, -3
	addw t0, t0, a3
	addiw t0, 1, 0
	sd t0, -1504(s0)
	ld t0, -1504(s0)
	addw t0, t0, t0
	addiw t0, 3, 4
	sd t0, -1512(s0)
	ld t0, -1512(s0)
	addw t0, t0, t0
	addiw t0, 2, 1
	sd t0, -1520(s0)
	ld t0, -1520(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1528(s0)
	ld t0, -1528(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -1536(s0)
	ld t0, -1536(s0)
	addw t0, t0, t0
	addiw t0, 1, -4
	sd t0, -1544(s0)
	ld t0, -1544(s0)
	addw t0, t0, t0
	addiw t0, 1, 4
	sd t0, -1552(s0)
	ld t0, -1552(s0)
	addw t0, t0, t0
	addiw t0, 2, -4
	sd t0, -1560(s0)
	ld t0, -1560(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -1568(s0)
	ld t0, -1568(s0)
	addw t0, t0, t0
	addiw t0, 1, -3
	sd t0, -1576(s0)
	ld t0, -1576(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -1296(s0)
	ld t0, -1296(s0)
	addw t0, t0, t0
	addiw t0, 0, -3
	sd t0, -1208(s0)
	ld t0, -1208(s0)
	addw t0, t0, t0
	addiw t0, 4, 0
	sd t0, -1216(s0)
	ld t0, -1216(s0)
	addw t0, t0, t0
	addiw t0, 2, -1
	sd t0, -1224(s0)
	ld t0, -1224(s0)
	addw t0, t0, t0
	addiw t0, 3, 4
	sd t0, -1232(s0)
	ld t0, -1232(s0)
	addw t0, t0, t0
	addiw t0, 4, 4
	sd t0, -1240(s0)
	ld t0, -1240(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -1248(s0)
	ld t0, -1248(s0)
	addw t0, t0, t0
	addiw t0, 1, -3
	sd t0, -1256(s0)
	ld t0, -1256(s0)
	addw t0, t0, t0
	addiw t0, 0, 1
	sd t0, -1264(s0)
	ld t0, -1264(s0)
	addw t0, t0, t0
	addiw t0, 4, -2
	sd t0, -1272(s0)
	ld t0, -1272(s0)
	addw t0, t0, t0
	addiw t0, 0, 2
	sd t0, -1280(s0)
	ld t0, -1280(s0)
	addw t0, t0, t0
	addiw t0, 2, 3
	sd t0, -1288(s0)
	ld t0, -1288(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -1200(s0)
	ld t0, -1200(s0)
	addw t0, t0, t0
	addiw t0, 1, 1
	sd t0, -1304(s0)
	ld t0, -1304(s0)
	addw t0, t0, t0
	addiw t0, 0, 4
	sd t0, -1312(s0)
	ld t0, -1312(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -1320(s0)
	ld t0, -1320(s0)
	addw t0, t0, t0
	addiw t0, 2, -5
	sd t0, -1328(s0)
	ld t0, -1328(s0)
	addw t0, t0, t0
	addiw t0, 0, -4
	sd t0, -1336(s0)
	ld t0, -1336(s0)
	addw t0, t0, t0
	addiw t0, 2, 2
	sd t0, -1344(s0)
	ld t0, -1344(s0)
	addw t0, t0, t0
	addiw t0, 2, -2
	sd t0, -1352(s0)
	ld t0, -1352(s0)
	addw t0, t0, t0
	addiw t0, 4, 3
	sd t0, -1360(s0)
	ld t0, -1360(s0)
	addw t0, t0, t0
	addiw t0, 2, -1
	sd t0, -1368(s0)
	ld t0, -1368(s0)
	addw t0, t0, t0
	addiw t0, 2, 0
	sd t0, -1376(s0)
	ld t0, -1376(s0)
	addw t0, t0, t0
	addiw t0, 3, -1
	sd t0, -1384(s0)
	ld t0, -1384(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -712(s0)
	ld t0, -712(s0)
	addw t0, t0, t0
	addiw t0, 0, -2
	sd t0, -240(s0)
	ld t0, -240(s0)
	addw t0, t0, t0
	addiw t0, 1, 2
	sd t0, -248(s0)
	ld t0, -248(s0)
	addw t0, t0, t0
	addiw t0, 1, 4
	sd t0, -256(s0)
	ld t0, -256(s0)
	addw t0, t0, t0
	addiw t0, 3, -1
	sd t0, -264(s0)
	ld t0, -264(s0)
	addw t0, t0, t0
	addiw t0, 2, -2
	sd t0, -272(s0)
	ld t0, -272(s0)
	addw t0, t0, t0
	addiw t0, 4, 2
	sd t0, -280(s0)
	ld t0, -280(s0)
	addw t0, t0, t0
	addiw t0, 1, -2
	sd t0, -288(s0)
	ld t0, -288(s0)
	addw t0, t0, t0
	addiw t0, 2, -2
	sd t0, -296(s0)
	ld t0, -296(s0)
	addw t0, t0, t0
	addiw t0, 4, 0
	sd t0, -304(s0)
	ld t0, -304(s0)
	addw t0, t0, t0
	addiw t0, 2, -2
	sd t0, -312(s0)
	ld t0, -312(s0)
	addw t0, t0, t0
	addiw t0, 0, -4
	sd t0, -320(s0)
	ld t0, -320(s0)
	addw t0, t0, t0
	addiw t0, 2, -3
	sd t0, -232(s0)
	ld t0, -232(s0)
	addw t0, t0, t0
	addiw t0, 0, 1
	sd t0, -336(s0)
	ld t0, -336(s0)
	addw t0, t0, t0
	addiw t0, 0, 0
	sd t0, -344(s0)
	ld t0, -344(s0)
	addw t0, t0, t0
	addiw t0, 1, -2
	sd t0, -352(s0)
	ld t0, -352(s0)
	addw t0, t0, t0
	addiw t0, 4, -2
	sd t0, -360(s0)
	ld t0, -360(s0)
	addw t0, t0, t0
	addiw t0, 2, -3
	sd t0, -368(s0)
	ld t0, -368(s0)
	addw t0, t0, t0
	addiw t0, 0, -5
	sd t0, -376(s0)
	ld t0, -376(s0)
	addw t0, t0, t0
	addiw t0, 1, -2
	sd t0, -384(s0)
	ld t0, -384(s0)
	addw t0, t0, t0
	addiw t0, 0, 3
	sd t0, -392(s0)
	ld t0, -392(s0)
	addw t0, t0, t0
	addiw t0, 3, -4
	sd t0, -400(s0)
	ld t0, -400(s0)
	addw t0, t0, t0
	addiw t0, 0, -1
	sd t0, -408(s0)
	ld t0, -408(s0)
	addw t0, t0, t0
	addiw t0, 4, 0
	sd t0, -416(s0)
	ld t0, -416(s0)
	addw t0, t0, t0
	addiw t0, 4, 3
	sd t0, -136(s0)
	ld t0, -136(s0)
	addw t0, t0, t0
	addiw t0, 2, -3
	sd t0, -40(s0)
	ld t0, -40(s0)
	addw t0, t0, t0
	addiw t0, 3, -3
	sd t0, -48(s0)
	ld t0, -48(s0)
	addw t0, t0, t0
	addiw t0, 3, 0
	sd t0, -56(s0)
	ld t0, -56(s0)
	addw t0, t0, t0
	addiw t0, 1, -4
	sd t0, -64(s0)
	ld t0, -64(s0)
	addw t0, t0, t0
	addiw t0, 2, 1
	sd t0, -72(s0)
	ld t0, -72(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -80(s0)
	ld t0, -80(s0)
	addw t0, t0, t0
	addiw t0, 2, 3
	sd t0, -88(s0)
	ld t0, -88(s0)
	addw t0, t0, t0
	addiw t0, 3, 4
	sd t0, -96(s0)
	ld t0, -96(s0)
	addw t0, t0, t0
	addiw t0, 0, 3
	sd t0, -104(s0)
	ld t0, -104(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -112(s0)
	ld t0, -112(s0)
	addw t0, t0, t0
	addiw t0, 3, 3
	sd t0, -120(s0)
	ld t0, -120(s0)
	addw t0, t0, t0
	addiw t0, 4, -2
	sd t0, -128(s0)
	ld t0, -128(s0)
	addw t0, t0, t0
	addiw t0, 4, -5
	sd t0, -32(s0)
	ld t0, -32(s0)
	addw t0, t0, t0
	addiw t0, 0, -2
	sd t0, -144(s0)
	ld t0, -144(s0)
	addw t0, t0, t0
	addiw t0, 2, 4
	sd t0, -152(s0)
	ld t0, -152(s0)
	addw t0, t0, t0
	addiw t0, 3, 4
	sd t0, -160(s0)
	ld t0, -160(s0)
	addw t0, t0, t0
	addiw t0, 1, 2
	sd t0, -168(s0)
	ld t0, -168(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -176(s0)
	ld t0, -176(s0)
	addw t0, t0, t0
	addiw t0, 2, 2
	sd t0, -184(s0)
	ld t0, -184(s0)
	addw t0, t0, t0
	addiw t0, 3, 1
	sd t0, -192(s0)
	ld t0, -192(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -200(s0)
	ld t0, -200(s0)
	addw t0, t0, t0
	addiw t0, 1, 3
	sd t0, -208(s0)
	ld t0, -208(s0)
	addw t0, t0, t0
	addiw t0, 4, 4
	sd t0, -216(s0)
	ld t0, -216(s0)
	addw t0, t0, t0
	addiw t0, 4, 0
	sd t0, -224(s0)
	ld t0, -224(s0)
	addw t0, t0, t0
	addiw t0, 4, -5
	sd t0, -328(s0)
	ld t0, -328(s0)
	addw t0, t0, t0
	addiw t0, 1, -1
	sd t0, -624(s0)
	ld t0, -624(s0)
	addw t0, t0, t0
	addiw t0, 4, 0
	sd t0, -632(s0)
	ld t0, -632(s0)
	addw t0, t0, t0
	addiw t0, 3, -5
	sd t0, -640(s0)
	ld t0, -640(s0)
	addw t0, t0, t0
	addiw t0, 2, 3
	sd t0, -648(s0)
	ld t0, -648(s0)
	addw t0, t0, t0
	addiw t0, 4, -1
	sd t0, -656(s0)
	ld t0, -656(s0)
	addw t0, t0, t0
	addiw t0, 2, 4
	sd t0, -664(s0)
	ld t0, -664(s0)
	addw t0, t0, t0
	addiw t0, 3, -4
	sd t0, -672(s0)
	ld t0, -672(s0)
	addw t0, t0, t0
	addiw t0, 1, 1
	sd t0, -680(s0)
	ld t0, -680(s0)
	addw t0, t0, t0
	addiw t0, 3, -4
	sd t0, -688(s0)
	ld t0, -688(s0)
	addw t0, t0, t0
	addiw t1, 1, 1
	addw t0, t0, t1
	addiw t0, 4, -3
	sd t0, -696(s0)
	ld t0, -696(s0)
	addw t0, t0, t0
	addiw t0, 0, -2
	sd t0, -704(s0)
	ld t0, -704(s0)
	addw t0, t0, t0
	addiw t0, 2, 0
	sd t0, -616(s0)
	ld t0, -616(s0)
	addw t0, t0, t0
	addiw t0, 2, -4
	sd t0, -720(s0)
	ld t0, -720(s0)
	addw t0, t0, t0
	addiw t0, 2, -1
	sd t0, -728(s0)
	ld t0, -728(s0)
	addw t0, t0, t0
	addiw t0, 3, -2
	sd t0, -736(s0)
	ld t0, -736(s0)
	addw t0, t0, t0
	addiw t0, 3, -1
	sd t0, -744(s0)
	ld t0, -744(s0)
	addw t0, t0, t0
	addiw t0, 0, 3
	sd t0, -752(s0)
	ld t0, -752(s0)
	addw t0, t0, t0
	addiw t0, 0, 3
	sd t0, -760(s0)
	ld t0, -760(s0)
	addw t0, t0, t0
	addiw t0, 1, -4
	sd t0, -768(s0)
	ld t0, -768(s0)
	addw t0, t0, t0
	addiw t0, 4, 1
	sd t0, -776(s0)
	ld t0, -776(s0)
	addw t0, t0, t0
	addiw t0, 2, -5
	sd t0, -784(s0)
	ld t0, -784(s0)
	addw t0, t0, t0
	addiw t0, 4, -4
	sd t0, -792(s0)
	ld t0, -792(s0)
	addw t0, t0, t0
	addiw t0, 1, 2
	sd t0, -800(s0)
	ld t0, -800(s0)
	addw t0, t0, t0
	addiw t0, 2, -3
	sd t0, -520(s0)
	ld t0, -520(s0)
	addw t0, t0, t0
	addiw t0, 3, -2
	sd t0, -432(s0)
	ld t0, -432(s0)
	addw t0, t0, t0
	addiw t0, 1, 0
	sd t0, -440(s0)
	ld t0, -440(s0)
	addw t0, t0, t0
	addiw t0, 1, 3
	sd t0, -448(s0)
	ld t0, -448(s0)
	addw t0, t0, t0
	addiw t0, 2, -4
	sd t0, -456(s0)
	ld t0, -456(s0)
	addw t0, t0, t0
	ld t0, -456(s0)
	addiw t0, t0, -4
	sd t0, -464(s0)
	ld t0, -464(s0)
	addw t0, t0, t0
	ld t0, -448(s0)
	addiw t0, t0, 1
	sd t0, -472(s0)
	ld t0, -472(s0)
	addw t0, t0, t0
	ld t0, -440(s0)
	addiw t0, t0, 2
	sd t0, -480(s0)
	ld t0, -480(s0)
	addw t0, t0, t0
	ld t0, -432(s0)
	addiw t0, t0, 0
	sd t0, -488(s0)
	ld t0, -488(s0)
	addw t0, t0, t0
	ld t0, -520(s0)
	addiw t0, t0, 4
	sd t0, -496(s0)
	ld t0, -496(s0)
	addw t0, t0, t0
	ld t0, -800(s0)
	addiw t0, t0, 0
	sd t0, -504(s0)
	ld t0, -504(s0)
	addw t0, t0, t0
	ld t0, -792(s0)
	addiw t0, t0, -4
	sd t0, -512(s0)
	ld t0, -512(s0)
	addw t0, t0, t0
	ld t0, -784(s0)
	addiw t0, t0, -3
	sd t0, -424(s0)
	ld t0, -424(s0)
	addw t0, t0, t0
	ld t0, -776(s0)
	addiw t0, t0, 1
	sd t0, -528(s0)
	ld t0, -528(s0)
	addw t0, t0, t0
	ld t0, -768(s0)
	addiw t0, t0, 3
	sd t0, -536(s0)
	ld t0, -536(s0)
	addw t0, t0, t0
	ld t0, -760(s0)
	addiw t0, t0, -5
	sd t0, -544(s0)
	ld t0, -544(s0)
	addw t0, t0, t0
	ld t0, -752(s0)
	addiw t0, t0, -3
	sd t0, -552(s0)
	ld t0, -552(s0)
	addw t0, t0, t0
	ld t0, -744(s0)
	addiw t0, t0, 4
	sd t0, -560(s0)
	ld t0, -560(s0)
	addw t0, t0, t0
	ld t0, -736(s0)
	addiw t0, t0, 1
	sd t0, -568(s0)
	ld t0, -568(s0)
	addw t0, t0, t0
	ld t0, -728(s0)
	addiw t0, t0, -5
	sd t0, -576(s0)
	ld t0, -576(s0)
	addw t0, t0, t0
	ld t0, -720(s0)
	addiw t0, t0, -3
	sd t0, -584(s0)
	ld t0, -584(s0)
	addw t0, t0, t0
	ld t0, -616(s0)
	addiw t0, t0, 1
	sd t0, -592(s0)
	ld t0, -592(s0)
	addw t0, t0, t0
	ld t0, -704(s0)
	addiw t0, t0, 4
	sd t0, -600(s0)
	ld t0, -600(s0)
	addw t0, t0, t0
	ld t0, -696(s0)
	addiw t0, t0, -2
	sd t0, -608(s0)
	ld t0, -608(s0)
	addw t0, t0, t0
	addiw t1, t1, -2
	addw t0, t0, t1
	ld t0, -688(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -680(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -672(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -664(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -656(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -648(s0)
	addiw t1, t0, -1
	addw t1, t0, t1
	ld t0, -640(s0)
	addiw t0, t0, 4
	addw t1, t1, t0
	ld t0, -632(s0)
	addiw t0, t0, 4
	addw t1, t1, t0
	ld t0, -624(s0)
	addiw t0, t0, -3
	addw t1, t1, t0
	ld t0, -328(s0)
	addiw t0, t0, -4
	addw t0, t1, t0
	ld t0, -224(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -216(s0)
	addiw t1, t0, -1
	addw t1, t0, t1
	ld t0, -208(s0)
	addiw t0, t0, 3
	addw t0, t1, t0
	ld t0, -200(s0)
	addiw t1, t0, 4
	addw t1, t0, t1
	ld t0, -192(s0)
	addiw t0, t0, -4
	addw t0, t1, t0
	ld t0, -184(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -176(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -168(s0)
	addiw t1, t0, -3
	addw t1, t0, t1
	ld t0, -160(s0)
	addiw t0, t0, -4
	addw t0, t1, t0
	ld t0, -152(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -144(s0)
	addiw t1, t0, -4
	addw t1, t0, t1
	ld t0, -32(s0)
	addiw t0, t0, -2
	addw t1, t1, t0
	ld t0, -128(s0)
	addiw t0, t0, 2
	addw t0, t1, t0
	ld t0, -120(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -112(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -104(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -96(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -88(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -80(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -72(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -64(s0)
	addiw t1, t0, -4
	addw t1, t0, t1
	ld t0, -56(s0)
	addiw t0, t0, 2
	addw t1, t1, t0
	ld t0, -48(s0)
	addiw t0, t0, -5
	addw t1, t1, t0
	ld t0, -40(s0)
	addiw t0, t0, 4
	addw t0, t1, t0
	ld t0, -136(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -416(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -408(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -400(s0)
	addiw t1, t0, -3
	addw t1, t0, t1
	ld t0, -392(s0)
	addiw t0, t0, -1
	addw t1, t1, t0
	ld t0, -384(s0)
	addiw t0, t0, 2
	addw t1, t1, t0
	ld t0, -376(s0)
	addiw t0, t0, -2
	addw t1, t1, t0
	ld t0, -368(s0)
	addiw t0, t0, 1
	addw t0, t1, t0
	ld t0, -360(s0)
	addiw t1, t0, -4
	addw t1, t0, t1
	ld t0, -352(s0)
	addiw t0, t0, -2
	addw t0, t1, t0
	ld t0, -344(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -336(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -232(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -320(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -312(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -304(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -296(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -288(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -280(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -272(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -264(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -256(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -248(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -240(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -712(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -1384(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -1376(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -1368(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1360(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -1352(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1344(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -1336(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -1328(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1320(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -1312(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1304(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -1200(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -1288(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1280(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1272(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1264(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1256(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -1248(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1240(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -1232(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1224(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -1216(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1208(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -1296(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -1576(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1568(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -1560(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1552(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1544(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1536(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1528(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -1520(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -1512(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -1504(s0)
	addiw t1, t0, 4
	addw t1, t0, t1
	addiw t0, a3, -1
	addw t0, t1, t0
	addiw t1, t6, 2
	addw t0, t0, t1
	addiw t1, t5, 1
	addw t0, t0, t1
	ld t0, -1496(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	addiw t1, t4, 4
	addw t0, t0, t1
	addiw t1, s11, -5
	addw t0, t0, t1
	addiw t1, t3, -1
	addw t0, t0, t1
	addiw t1, s10, -2
	addw t0, t0, t1
	addiw t1, a4, -4
	addw t0, t0, t1
	addiw t1, s2, 1
	addw t0, t0, t1
	addiw t1, a6, 0
	addw t0, t0, t1
	addiw t1, s5, 1
	addw t0, t0, t1
	addiw t1, s6, -4
	addw t0, t0, t1
	addiw t1, s8, -3
	addw t0, t0, t1
	ld t0, -1392(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -1480(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1472(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -1464(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1456(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -1448(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1440(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1432(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1424(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1416(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -1408(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -1400(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -1104(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -1000(s0)
	addiw t1, t0, 2
	addw t0, t0, t1
	ld t0, -992(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -984(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -976(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -968(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -960(s0)
	addiw t1, t0, -3
	addw t0, t0, t1
	ld t0, -952(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -944(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -936(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -928(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -920(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -808(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -904(s0)
	addiw t1, t0, 3
	addw t0, t0, t1
	ld t0, -896(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -888(s0)
	addiw t1, t0, -5
	addw t0, t0, t1
	ld t0, -880(s0)
	addiw t1, t0, 1
	addw t0, t0, t1
	ld t0, -872(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -864(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -856(s0)
	addiw t1, t0, -1
	addw t1, t0, t1
	ld t0, -848(s0)
	addiw t0, t0, -3
	addw t1, t1, t0
	ld t0, -840(s0)
	addiw t0, t0, -5
	addw t1, t1, t0
	ld t0, -832(s0)
	addiw t0, t0, -4
	addw t1, t1, t0
	ld t0, -824(s0)
	addiw t0, t0, -4
	addw t0, t1, t0
	ld t0, -816(s0)
	addiw t1, t0, -4
	addw t0, t0, t1
	ld t0, -912(s0)
	addiw t1, t0, 3
	addw t1, t0, t1
	ld t0, -1192(s0)
	addiw t0, t0, -4
	addw t0, t1, t0
	ld t0, -1184(s0)
	addiw t1, t0, -3
	addw t1, t0, t1
	ld t0, -1176(s0)
	addiw t0, t0, -5
	addw t1, t1, t0
	ld t0, -1168(s0)
	addiw t0, t0, 3
	addw t1, t1, t0
	ld t0, -1160(s0)
	addiw t0, t0, -2
	addw t1, t1, t0
	ld t0, -1152(s0)
	addiw t0, t0, -5
	addw t1, t1, t0
	ld t0, -1144(s0)
	addiw t0, t0, 0
	addw t1, t1, t0
	addiw t0, a2, 3
	addw t0, t1, t0
	addiw t1, a0, -3
	addw t1, t0, t1
	addiw t0, s1, -3
	addw t1, t1, t0
	addiw t0, s9, 4
	addw t1, t1, t0
	ld t0, -1136(s0)
	addiw t0, t0, -1
	addw t1, t1, t0
	ld t0, -1128(s0)
	addiw t0, t0, 1
	addw t0, t1, t0
	ld t0, -1120(s0)
	addiw t1, t0, 3
	addw t1, t0, t1
	ld t0, -1112(s0)
	addiw t0, t0, 1
	addw t1, t1, t0
	ld t0, -1008(s0)
	addiw t0, t0, -2
	addw t0, t1, t0
	ld t0, -1096(s0)
	addiw t1, t0, -1
	addw t1, t0, t1
	addiw t0, s7, -2
	addw t0, t1, t0
	ld t0, -1088(s0)
	addiw t1, t0, -2
	addw t0, t0, t1
	ld t0, -1080(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	ld t0, -1072(s0)
	addiw t1, t0, 0
	addw t0, t0, t1
	ld t0, -1064(s0)
	addiw t1, t0, 4
	addw t0, t0, t1
	ld t0, -1056(s0)
	addiw t1, t0, 0
	addw t1, t0, t1
	ld t0, -1048(s0)
	addiw t0, t0, -5
	addw t0, t1, t0
	ld t0, -1040(s0)
	addiw t1, t0, -1
	addw t0, t0, t1
	addiw t1, a1, 4
	addw t1, t0, t1
	addiw t0, t2, -3
	addw t1, t1, t0
	addiw t0, a7, 2
	addw t1, t1, t0
	addiw t0, a5, -4
	addw t1, t1, t0
	addiw t0, s4, -1
	addw t0, t1, t0
	addiw t1, s3, 2
	addw t1, t0, t1
	ld t0, -1032(s0)
	addiw t0, t0, -3
	addw t1, t1, t0
	ld t0, -1024(s0)
	addiw t0, t0, 1
	addw t1, t1, t0
	ld t0, -1016(s0)
	addiw t0, t0, 2
	addw t1, t1, t0
	ld t0, -1488(s0)
	addiw t0, t0, -5
	addw a0, t1, t0
	mv a0, a0
	ld ra, 1560(sp)
	ld s0, 1552(sp)
	addi sp, sp, 1568
	ret 
    .size main, .-main
