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
	addi sp, sp, -320
	sd ra, 312(sp)
	sd s0, 304(sp)
	addi s0, sp, 320
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	lw t0, 0(s0)
	lw t0, 4(s0)
	lw t0, 8(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -265(a2)
	lw t0, 12(s0)
	lw t0, 16(s0)
	sd t0, -1648(s0)
	lw t0, 20(s0)
	sd t0, -1640(s0)
	lw t0, 24(s0)
	sd t0, -1632(s0)
	lw t0, 28(s0)
	sd t0, -1624(s0)
	lw t0, 32(s0)
	lw t0, 36(s0)
	lw t0, 40(s0)
	lw t0, 44(s0)
	lw t0, 48(s0)
	lw t0, 52(s0)
	lw t0, 56(s0)
	sd t0, -1616(s0)
	lw t0, 60(s0)
	lw t0, 64(s0)
	sd t0, -1608(s0)
	lw t0, 68(s0)
	sd t0, -1600(s0)
	lw t0, 72(s0)
	lw t0, 76(s0)
	sd t0, -1592(s0)
	lw t0, 80(s0)
	sd t0, -1504(s0)
	lw t0, 84(s0)
	sd t0, -1576(s0)
	lw t0, 88(s0)
	lw t0, 92(s0)
	lw t0, 96(s0)
	sd t0, -1568(s0)
	lw t0, 100(s0)
	sd t0, -1560(s0)
	lw t0, 104(s0)
	sd t0, -1552(s0)
	lw t0, 108(s0)
	lw t0, 112(s0)
	sd t0, -1544(s0)
	lw t0, 116(s0)
	lw t0, 120(s0)
	sd t0, -1536(s0)
	lw t0, 124(s0)
	sd t0, -1528(s0)
	lw t0, 128(s0)
	sd t0, -1520(s0)
	lw t0, 132(s0)
	lw t0, 136(s0)
	lw t0, 140(s0)
	lw t0, 144(s0)
	lw t0, 148(s0)
	sd t0, -1512(s0)
	lw t0, 152(s0)
	sd t0, -1584(s0)
	lw t0, 156(s0)
	sd t0, -1792(s0)
	lw t0, 160(s0)
	lw t0, 164(s0)
	sd t0, -1784(s0)
	lw t0, 168(s0)
	sd t0, -1776(s0)
	lw t0, 172(s0)
	lw t0, 176(s0)
	lw t0, 180(s0)
	sd t0, -1768(s0)
	lw t0, 184(s0)
	lw t0, 188(s0)
	lw t0, 192(s0)
	lw t0, 196(s0)
	lw t0, 200(s0)
	sd t0, -1760(s0)
	lw t0, 204(s0)
	lw t0, 208(s0)
	sd t0, -1752(s0)
	lw t0, 212(s0)
	sd t0, -1744(s0)
	lw t0, 216(s0)
	lw t0, 220(s0)
	lw t0, 224(s0)
	lw t0, 228(s0)
	lw t0, 232(s0)
	sd t0, -1736(s0)
	lw t0, 236(s0)
	lw t0, 240(s0)
	lw t0, 244(s0)
	lw t0, 248(s0)
	sd t0, -1656(s0)
	lw t0, 252(s0)
	lw t0, 256(s0)
	lw t0, 260(s0)
	lw t0, 264(s0)
	lw t0, 268(s0)
	sd t0, -1720(s0)
	lw t0, 272(s0)
	sd t0, -1712(s0)
	lw t0, 276(s0)
	lw t0, 280(s0)
	lw t0, 284(s0)
	sd t0, -1704(s0)
	lw t0, 288(s0)
	sd t0, -1696(s0)
	lw t0, 292(s0)
	sd t0, -1688(s0)
	lw t0, 296(s0)
	lw t0, 300(s0)
	lw t0, 304(s0)
	lw t0, 308(s0)
	sd t0, -1680(s0)
	lw t0, 312(s0)
	lw t0, 316(s0)
	lw t0, 320(s0)
	sd t0, -1672(s0)
	lw t0, 324(s0)
	sd t0, -1664(s0)
	lw t0, 328(s0)
	lw t0, 332(s0)
	lw t0, 336(s0)
	sd t0, -1432(s0)
	lw t0, 340(s0)
	sd t0, -1352(s0)
	lw t0, 344(s0)
	sd t0, -1344(s0)
	lw t0, 348(s0)
	lw t0, 352(s0)
	sd t0, -1336(s0)
	lw t0, 356(s0)
	sd t0, -1328(s0)
	lw t0, 360(s0)
	lw t0, 364(s0)
	sd t0, -1320(s0)
	lw t0, 368(s0)
	sd t0, -1312(s0)
	lw t0, 372(s0)
	lw t0, 376(s0)
	sd t0, -1304(s0)
	lw t0, 380(s0)
	lw t0, 384(s0)
	sd t0, -1296(s0)
	lw t0, 388(s0)
	sd t0, -1208(s0)
	lw t0, 392(s0)
	lw t0, 396(s0)
	sd t0, -1280(s0)
	lw t0, 400(s0)
	lw t0, 404(s0)
	lw t0, 408(s0)
	lw t0, 412(s0)
	lw t0, 416(s0)
	sd t0, -1272(s0)
	lw t0, 420(s0)
	lw t0, 424(s0)
	lw t0, 428(s0)
	sd t0, -1264(s0)
	lw t0, 432(s0)
	sd t0, -1256(s0)
	lw t0, 436(s0)
	sd t0, -1248(s0)
	lw t0, 440(s0)
	lw t0, 444(s0)
	sd t0, -1240(s0)
	lw t0, 448(s0)
	sd t0, -1232(s0)
	lw t0, 452(s0)
	lw t0, 456(s0)
	lw t0, 460(s0)
	lw t0, 464(s0)
	lw t0, 468(s0)
	lw t0, 472(s0)
	lw t0, 476(s0)
	sd t0, -1224(s0)
	lw t0, 480(s0)
	sd t0, -1216(s0)
	lw t0, 484(s0)
	lw t0, 488(s0)
	sd t0, -1288(s0)
	lw t0, 492(s0)
	lw t0, 496(s0)
	sd t0, -1496(s0)
	lw t0, 500(s0)
	sd t0, -1488(s0)
	lw t0, 504(s0)
	sd t0, -1480(s0)
	lw t0, 508(s0)
	lw t0, 512(s0)
	sd t0, -1472(s0)
	lw t0, 516(s0)
	sd t0, -1464(s0)
	lw t0, 520(s0)
	sd t0, -1456(s0)
	lw t0, 524(s0)
	lw t0, 528(s0)
	lw t0, 532(s0)
	lw t0, 536(s0)
	sd t0, -1448(s0)
	lw t0, 540(s0)
	sd t0, -1440(s0)
	lw t0, 544(s0)
	sd t0, -1360(s0)
	lw t0, 548(s0)
	lw t0, 552(s0)
	lw t0, 556(s0)
	lw t0, 560(s0)
	sd t0, -1424(s0)
	lw t0, 564(s0)
	sd t0, -1416(s0)
	lw t0, 568(s0)
	lw t0, 572(s0)
	lw t0, 576(s0)
	sd t0, -1408(s0)
	lw t0, 580(s0)
	lw t0, 584(s0)
	sd t0, -1400(s0)
	lw t0, 588(s0)
	sd t0, -1392(s0)
	lw t0, 592(s0)
	lw t0, 596(s0)
	sd t0, -1384(s0)
	lw t0, 600(s0)
	lw t0, 604(s0)
	sd t0, -1376(s0)
	lw t0, 608(s0)
	lw t0, 612(s0)
	sd t0, -1368(s0)
	lw t0, 616(s0)
	lw t0, 620(s0)
	sd t0, -1728(s0)
	lw t0, 624(s0)
	lw t0, 628(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -185(t6)
	lw t0, 632(s0)
	lw t0, 636(s0)
	lw t0, 640(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -177(a6)
	lw t0, 644(s0)
	lw t0, 648(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -169(a5)
	lw t0, 652(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -161(a5)
	lw t0, 656(s0)
	lw t0, 660(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -153(t6)
	lw t0, 664(s0)
	lw t0, 668(s0)
	lw t0, 672(s0)
	lw t0, 676(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -145(a2)
	lw t0, 680(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -137(a5)
	lw t0, 684(s0)
	lw t0, 688(s0)
	lw t0, 692(s0)
	lw t0, 696(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -129(a6)
	lw t0, 700(s0)
	lw t0, 704(s0)
	lw t0, 708(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -49(t6)
	lw t0, 712(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -113(a2)
	lw t0, 716(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -105(a5)
	lw t0, 720(s0)
	lw t0, 724(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -97(a6)
	lw t0, 728(s0)
	lw t0, 732(s0)
	lw t0, 736(s0)
	lw t0, 740(s0)
	lw t0, 744(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -89(t6)
	lw t0, 748(s0)
	lw t0, 752(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -81(a2)
	lw t0, 756(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -73(a5)
	lw t0, 760(s0)
	lw t0, 764(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -65(a6)
	lw t0, 768(s0)
	lw t0, 772(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -57(a6)
	lw t0, 776(s0)
	lw t0, 780(s0)
	lw t0, 784(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -121(t6)
	lw t0, 788(s0)
	lw t0, 792(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -329(a6)
	lw t0, 796(s0)
	lw t0, 800(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -321(a2)
	lw t0, 804(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -313(a5)
	lw t0, 808(s0)
	lw t0, 812(s0)
	lw t0, 816(s0)
	addiw a0, s0, -2047
	sd t0, -305(a0)
	lw t0, 820(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -297(a6)
	lw t0, 824(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -289(t6)
	lw t0, 828(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -281(a5)
	lw t0, 832(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -273(a2)
	lw t0, 836(s0)
	lw t0, 840(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -193(a5)
	lw t0, 844(s0)
	lw t0, 848(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -257(a6)
	lw t0, 852(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -249(t6)
	lw t0, 856(s0)
	lw t0, 860(s0)
	lw t0, 864(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -241(t6)
	lw t0, 868(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -233(a2)
	lw t0, 872(s0)
	lw t0, 876(s0)
	lw t0, 880(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -225(a2)
	lw t0, 884(s0)
	lw t0, 888(s0)
	lw t0, 892(s0)
	lw t0, 896(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -217(t6)
	lw t0, 900(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -209(a5)
	lw t0, 904(s0)
	lw t0, 908(s0)
	lw t0, 912(s0)
	lw t0, 916(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -201(a6)
	lw t0, 920(s0)
	sd t0, -2024(s0)
	lw t0, 924(s0)
	lw t0, 928(s0)
	lw t0, 932(s0)
	sd t0, -1944(s0)
	lw t0, 936(s0)
	lw t0, 940(s0)
	sd t0, -1936(s0)
	lw t0, 944(s0)
	lw t0, 948(s0)
	lw t0, 952(s0)
	lw t0, 956(s0)
	sd t0, -1928(s0)
	lw t0, 960(s0)
	lw t0, 964(s0)
	sd t0, -1920(s0)
	lw t0, 968(s0)
	sd t0, -1912(s0)
	lw t0, 972(s0)
	sd t0, -1904(s0)
	lw t0, 976(s0)
	sd t0, -1896(s0)
	lw t0, 980(s0)
	lw t0, 984(s0)
	lw t0, 988(s0)
	lw t0, 992(s0)
	lw t0, 996(s0)
	sd t0, -1888(s0)
	lw t0, 1000(s0)
	sd t0, -1800(s0)
	lw t0, 1004(s0)
	lw t0, 1008(s0)
	sd t0, -1872(s0)
	lw t0, 1012(s0)
	lw t0, 1016(s0)
	lw t0, 1020(s0)
	lw t0, 1024(s0)
	lw t0, 1028(s0)
	lw t0, 1032(s0)
	sd t0, -1864(s0)
	lw t0, 1036(s0)
	sd t0, -1856(s0)
	lw t0, 1040(s0)
	sd t0, -1848(s0)
	lw t0, 1044(s0)
	lw t0, 1048(s0)
	lw t0, 1052(s0)
	lw t0, 1056(s0)
	sd t0, -1840(s0)
	lw t0, 1060(s0)
	lw t0, 1064(s0)
	lw t0, 1068(s0)
	lw t0, 1072(s0)
	sd t0, -1832(s0)
	lw t0, 1076(s0)
	lw t0, 1080(s0)
	sd t0, -1824(s0)
	lw t0, 1084(s0)
	lw t0, 1088(s0)
	sd t0, -1816(s0)
	lw t0, 1092(s0)
	sd t0, -1808(s0)
	lw t0, 1096(s0)
	sd t0, -1880(s0)
	lw t0, 1100(s0)
	lw t0, 1104(s0)
	lw t0, 1108(s0)
	lw t0, 1112(s0)
	lw t0, 1116(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -41(t6)
	lw t0, 1120(s0)
	lw t0, 1124(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -33(a2)
	lw t0, 1128(s0)
	lw t0, 1132(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -25(a2)
	lw t0, 1136(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -17(a5)
	lw t0, 1140(s0)
	addiw t0, s0, -2047
	sd t0, 0(s0)
	sd t0, -9(a6)
	lw t0, 1144(s0)
	sd t0, -2048(s0)
	lw t0, 1148(s0)
	lw t0, 1152(s0)
	sd t0, -2040(s0)
	lw t0, 1156(s0)
	lw t0, 1160(s0)
	sd t0, -2032(s0)
	lw t0, 1164(s0)
	lw t0, 1168(s0)
	lw t0, 1172(s0)
	lw t0, 1176(s0)
	lw t0, 1180(s0)
	lw t0, 1184(s0)
	sd t0, -1952(s0)
	lw t0, 1188(s0)
	sd t0, -2016(s0)
	lw t0, 1192(s0)
	sd t0, -2008(s0)
	lw t0, 1196(s0)
	lw t0, 1200(s0)
	lw t0, 1204(s0)
	lw t0, 1208(s0)
	lw t0, 1212(s0)
	sd t0, -2000(s0)
	lw t0, 1216(s0)
	sd t0, -1992(s0)
	lw t0, 1220(s0)
	lw t0, 1224(s0)
	lw t0, 1228(s0)
	lw t0, 1232(s0)
	lw t0, 1236(s0)
	sd t0, -1984(s0)
	lw t0, 1240(s0)
	sd t0, -1976(s0)
	lw t0, 1244(s0)
	sd t0, -1968(s0)
	lw t0, 1248(s0)
	lw t0, 1252(s0)
	lw t0, 1256(s0)
	lw t0, 1260(s0)
	lw t0, 1264(s0)
	lw t0, 1268(s0)
	lw t0, 1272(s0)
	sd t0, -1960(s0)
	lw t0, 1276(s0)
	lw t0, 1280(s0)
	sd t0, -1136(s0)
	lw t0, 1284(s0)
	lw t0, 1288(s0)
	lw t0, 1292(s0)
	lw t0, 1296(s0)
	lw s7, 1300(s0)
	lw t2, 1304(s0)
	lw t0, 1308(s0)
	lw t0, 1312(s0)
	lw t0, 1316(s0)
	lw t0, 1320(s0)
	lw t0, 1324(s0)
	lw t0, 1328(s0)
	lw s2, 1332(s0)
	lw s10, 1336(s0)
	lw s1, 1340(s0)
	lw t0, 1344(s0)
	lw t0, 1348(s0)
	lw t4, 1352(s0)
	lw t5, 1356(s0)
	lw t0, 1360(s0)
	lw t0, 1364(s0)
	lw t0, 1368(s0)
	sd t0, -792(s0)
	lw s8, 1372(s0)
	lw t0, 1376(s0)
	lw t0, 1380(s0)
	lw t0, 1384(s0)
	sd t0, -472(s0)
	lw s5, 1388(s0)
	lw t0, 1392(s0)
	lw t0, 1396(s0)
	lw t0, 1400(s0)
	lw t0, 1404(s0)
	lw t0, 1408(s0)
	lw t0, 1412(s0)
	lw t0, 1416(s0)
	lw t0, 1420(s0)
	lw t0, 1424(s0)
	lw s11, 1428(s0)
	lw t0, 1432(s0)
	sd t0, -464(s0)
	lw t0, 1436(s0)
	lw t0, 1440(s0)
	lw t0, 1444(s0)
	lw t0, 1448(s0)
	lw t0, 1452(s0)
	lw t0, 1456(s0)
	lw t0, 1460(s0)
	lw t0, 1464(s0)
	sd t0, -784(s0)
	lw t0, 1468(s0)
	sd t0, -456(s0)
	lw t0, 1472(s0)
	lw t0, 1476(s0)
	lw t0, 1480(s0)
	lw t3, 1484(s0)
	lw t0, 1488(s0)
	lw t0, 1492(s0)
	lw t0, 1496(s0)
	lw t0, 1500(s0)
	lw t0, 1504(s0)
	lw s9, 1508(s0)
	lw t0, 1512(s0)
	lw t0, 1516(s0)
	lw t0, 1520(s0)
	lw s6, 1524(s0)
	lw t0, 1528(s0)
	sd t0, -448(s0)
	lw t0, 1532(s0)
	lw t0, 1536(s0)
	lw t0, 1540(s0)
	sd t0, -440(s0)
	lw t0, 1544(s0)
	lw s4, 1548(s0)
	lw t0, 1552(s0)
	lw t0, 1556(s0)
	lw s3, 1560(s0)
	lw t0, 1564(s0)
	lw t0, 1568(s0)
	sd t0, -432(s0)
	lw t0, 1572(s0)
	sd t0, -424(s0)
	lw t0, 1576(s0)
	lw t0, 1580(s0)
	sd t0, -416(s0)
	lw t0, 1584(s0)
	sd t0, -328(s0)
	lw t0, 1588(s0)
	sd t0, -400(s0)
	lw t0, 1592(s0)
	lw t0, 1596(s0)
	lw t0, 1600(s0)
	lw t0, 1604(s0)
	sd t0, -392(s0)
	lw t0, 1608(s0)
	sd t0, -384(s0)
	lw t0, 1612(s0)
	sd t0, -376(s0)
	lw t0, 1616(s0)
	sd t0, -368(s0)
	lw t0, 1620(s0)
	sd t0, -360(s0)
	lw t0, 1624(s0)
	lw t0, 1628(s0)
	sd t0, -352(s0)
	lw t0, 1632(s0)
	lw t0, 1636(s0)
	sd t0, -344(s0)
	lw t0, 1640(s0)
	lw t0, 1644(s0)
	sd t0, -336(s0)
	lw t0, 1648(s0)
	sd t0, -408(s0)
	lw t0, 1652(s0)
	lw t0, 1656(s0)
	sd t0, -616(s0)
	lw t0, 1660(s0)
	sd t0, -608(s0)
	lw t0, 1664(s0)
	lw t0, 1668(s0)
	sd t0, -600(s0)
	lw t0, 1672(s0)
	lw t0, 1676(s0)
	lw t0, 1680(s0)
	sd t0, -592(s0)
	lw t0, 1684(s0)
	sd t0, -584(s0)
	lw t0, 1688(s0)
	sd t0, -576(s0)
	lw t0, 1692(s0)
	sd t0, -568(s0)
	lw t0, 1696(s0)
	lw t0, 1700(s0)
	lw t0, 1704(s0)
	sd t0, -560(s0)
	lw t0, 1708(s0)
	lw t0, 1712(s0)
	sd t0, -480(s0)
	lw t0, 1716(s0)
	lw t0, 1720(s0)
	sd t0, -544(s0)
	lw t0, 1724(s0)
	lw t0, 1728(s0)
	sd t0, -536(s0)
	lw t0, 1732(s0)
	lw t0, 1736(s0)
	lw t0, 1740(s0)
	lw t0, 1744(s0)
	lw t0, 1748(s0)
	lw t0, 1752(s0)
	lw t0, 1756(s0)
	lw t0, 1760(s0)
	sd t0, -528(s0)
	lw t0, 1764(s0)
	lw t0, 1768(s0)
	lw t0, 1772(s0)
	sd t0, -520(s0)
	lw t0, 1776(s0)
	lw t0, 1780(s0)
	lw t0, 1784(s0)
	lw t0, 1788(s0)
	sd t0, -512(s0)
	lw t0, 1792(s0)
	sd t0, -504(s0)
	lw t0, 1796(s0)
	lw t0, 1800(s0)
	lw t0, 1804(s0)
	sd t0, -496(s0)
	lw t0, 1808(s0)
	sd t0, -488(s0)
	lw t0, 1812(s0)
	lw t0, 1816(s0)
	sd t0, -256(s0)
	lw t0, 1820(s0)
	sd t0, -176(s0)
	lw t0, 1824(s0)
	sd t0, -168(s0)
	lw t0, 1828(s0)
	sd t0, -160(s0)
	lw t0, 1832(s0)
	sd t0, -152(s0)
	lw t0, 1836(s0)
	sd t0, -144(s0)
	lw t0, 1840(s0)
	sd t0, -136(s0)
	lw t0, 1844(s0)
	sd t0, -128(s0)
	lw t0, 1848(s0)
	sd t0, -120(s0)
	lw t0, 1852(s0)
	sd t0, -32(s0)
	lw t0, 1856(s0)
	lw t0, 1860(s0)
	sd t0, -104(s0)
	lw t0, 1864(s0)
	sd t0, -96(s0)
	lw t0, 1868(s0)
	sd t0, -88(s0)
	lw t0, 1872(s0)
	lw t0, 1876(s0)
	sd t0, -80(s0)
	lw t0, 1880(s0)
	sd t0, -72(s0)
	lw t0, 1884(s0)
	sd t0, -64(s0)
	lw t0, 1888(s0)
	lw t0, 1892(s0)
	lw t0, 1896(s0)
	sd t0, -56(s0)
	lw t0, 1900(s0)
	sd t0, -48(s0)
	lw t0, 1904(s0)
	lw t0, 1908(s0)
	sd t0, -40(s0)
	lw t0, 1912(s0)
	lw t0, 1916(s0)
	lw t0, 1920(s0)
	sd t0, -112(s0)
	lw t0, 1924(s0)
	lw t0, 1928(s0)
	lw t0, 1932(s0)
	lw t0, 1936(s0)
	lw t0, 1940(s0)
	lw t0, 1944(s0)
	sd t0, -320(s0)
	lw t0, 1948(s0)
	sd t0, -312(s0)
	lw t0, 1952(s0)
	sd t0, -304(s0)
	lw t0, 1956(s0)
	lw t0, 1960(s0)
	sd t0, -296(s0)
	lw t0, 1964(s0)
	sd t0, -288(s0)
	lw t0, 1968(s0)
	sd t0, -280(s0)
	lw t0, 1972(s0)
	sd t0, -272(s0)
	lw t0, 1976(s0)
	lw t0, 1980(s0)
	lw t0, 1984(s0)
	lw t0, 1988(s0)
	lw t0, 1992(s0)
	sd t0, -264(s0)
	lw t0, 1996(s0)
	lw t0, 2000(s0)
	lw t0, 2004(s0)
	lw t0, 2008(s0)
	lw t0, 2012(s0)
	sd t0, -184(s0)
	lw t0, 2016(s0)
	sd t0, -248(s0)
	lw t0, 2020(s0)
	sd t0, -240(s0)
	lw t0, 2024(s0)
	lw t0, 2028(s0)
	lw t0, 2032(s0)
	lw t0, 2036(s0)
	sd t0, -232(s0)
	lw t0, 2040(s0)
	lw t0, 2044(s0)
	addiw t0, s0, 2047
	lw t0, 1(t0)
	sd t0, -224(s0)
	addiw t0, s0, 2047
	lw t0, 5(t0)
	sd t0, -216(s0)
	addiw t0, s0, 2047
	lw t0, 9(t0)
	sd t0, -208(s0)
	addiw t0, s0, 2047
	lw t0, 13(t0)
	addiw t0, s0, 2047
	lw t0, 17(t0)
	sd t0, -200(s0)
	addiw t0, s0, 2047
	lw t0, 21(t0)
	sd t0, -192(s0)
	addiw t0, s0, 2047
	lw t0, 25(t0)
	addiw t0, s0, 2047
	lw t0, 29(t0)
	addiw t0, s0, 2047
	lw t0, 33(t0)
	sd t0, -552(s0)
	addiw t0, s0, 2047
	lw t0, 37(t0)
	addiw t0, s0, 2047
	lw t0, 41(t0)
	sd t0, -1056(s0)
	addiw t0, s0, 2047
	lw t0, 45(t0)
	addiw t0, s0, 2047
	lw t0, 49(t0)
	sd t0, -1048(s0)
	addiw t0, s0, 2047
	lw t0, 53(t0)
	addiw t0, s0, 2047
	lw t0, 57(t0)
	addiw t0, s0, 2047
	lw t0, 61(t0)
	addiw t0, s0, 2047
	lw t0, 65(t0)
	addiw t0, s0, 2047
	lw t0, 69(t0)
	addiw t0, s0, 2047
	lw t0, 73(t0)
	sd t0, -1040(s0)
	addiw t0, s0, 2047
	lw t0, 77(t0)
	sd t0, -1032(s0)
	addiw t0, s0, 2047
	lw t0, 81(t0)
	sd t0, -1024(s0)
	addiw t0, s0, 2047
	lw t0, 85(t0)
	addiw t0, s0, 2047
	lw t0, 89(t0)
	sd t0, -1016(s0)
	addiw t0, s0, 2047
	lw t0, 93(t0)
	addiw t0, s0, 2047
	lw t0, 97(t0)
	sd t0, -1008(s0)
	addiw t0, s0, 2047
	lw t0, 101(t0)
	addiw t0, s0, 2047
	lw t0, 105(t0)
	addiw t0, s0, 2047
	lw t0, 109(t0)
	sd t0, -1000(s0)
	addiw t0, s0, 2047
	lw t0, 113(t0)
	sd t0, -920(s0)
	addiw t0, s0, 2047
	lw t0, 117(t0)
	addiw t0, s0, 2047
	lw t0, 121(t0)
	addiw t0, s0, 2047
	lw t0, 125(t0)
	sd t0, -984(s0)
	addiw t0, s0, 2047
	lw t0, 129(t0)
	addiw t0, s0, 2047
	lw t0, 133(t0)
	sd t0, -976(s0)
	addiw t0, s0, 2047
	lw t0, 137(t0)
	addiw t0, s0, 2047
	lw t0, 141(t0)
	addiw t0, s0, 2047
	lw t0, 145(t0)
	sd t0, -968(s0)
	addiw t0, s0, 2047
	lw t0, 149(t0)
	addiw t0, s0, 2047
	lw t0, 153(t0)
	addiw t0, s0, 2047
	lw t0, 157(t0)
	sd t0, -960(s0)
	addiw t0, s0, 2047
	lw t0, 161(t0)
	sd t0, -952(s0)
	addiw t0, s0, 2047
	lw t0, 165(t0)
	addiw t0, s0, 2047
	lw t0, 169(t0)
	addiw t0, s0, 2047
	lw t0, 173(t0)
	addiw t0, s0, 2047
	lw t0, 177(t0)
	addiw t0, s0, 2047
	lw t0, 181(t0)
	addiw t0, s0, 2047
	lw t0, 185(t0)
	sd t0, -944(s0)
	addiw t0, s0, 2047
	lw t0, 189(t0)
	sd t0, -936(s0)
	addiw t0, s0, 2047
	lw t0, 193(t0)
	sd t0, -928(s0)
	addiw t0, s0, 2047
	lw t0, 197(t0)
	addiw t0, s0, 2047
	lw t0, 201(t0)
	addiw t0, s0, 2047
	lw t0, 205(t0)
	sd t0, -992(s0)
	addiw t0, s0, 2047
	lw t0, 209(t0)
	sd t0, -1200(s0)
	addiw t0, s0, 2047
	lw t0, 213(t0)
	addiw t0, s0, 2047
	lw t0, 217(t0)
	addiw t0, s0, 2047
	lw t0, 221(t0)
	sd t0, -1192(s0)
	addiw t0, s0, 2047
	lw t0, 225(t0)
	sd t0, -1184(s0)
	addiw t0, s0, 2047
	lw t0, 229(t0)
	sd t0, -1176(s0)
	addiw t0, s0, 2047
	lw t0, 233(t0)
	addiw t0, s0, 2047
	lw t0, 237(t0)
	addiw t0, s0, 2047
	lw t0, 241(t0)
	addiw t0, s0, 2047
	lw t0, 245(t0)
	addiw t0, s0, 2047
	lw t0, 249(t0)
	addiw t0, s0, 2047
	lw t0, 253(t0)
	sd t0, -1168(s0)
	addiw t0, s0, 2047
	lw t0, 257(t0)
	sd t0, -1160(s0)
	addiw t0, s0, 2047
	lw t0, 261(t0)
	addiw t0, s0, 2047
	lw t0, 265(t0)
	sd t0, -1152(s0)
	addiw t0, s0, 2047
	lw t0, 269(t0)
	addiw t0, s0, 2047
	lw t0, 273(t0)
	addiw t0, s0, 2047
	lw t0, 277(t0)
	addiw t0, s0, 2047
	lw t0, 281(t0)
	sd t0, -1144(s0)
	addiw t0, s0, 2047
	lw t0, 285(t0)
	sd t0, -1064(s0)
	addiw t0, s0, 2047
	lw t0, 289(t0)
	sd t0, -1128(s0)
	addiw t0, s0, 2047
	lw t0, 293(t0)
	sd t0, -1120(s0)
	addiw t0, s0, 2047
	lw t0, 297(t0)
	sd t0, -1112(s0)
	addiw t0, s0, 2047
	lw t0, 301(t0)
	sd t0, -1104(s0)
	addiw t0, s0, 2047
	lw t0, 305(t0)
	addiw t0, s0, 2047
	lw t0, 309(t0)
	sd t0, -1096(s0)
	addiw t0, s0, 2047
	lw t0, 313(t0)
	addiw t0, s0, 2047
	lw t0, 317(t0)
	addiw t0, s0, 2047
	lw t0, 321(t0)
	sd t0, -1088(s0)
	addiw t0, s0, 2047
	lw t0, 325(t0)
	sd t0, -1080(s0)
	addiw t0, s0, 2047
	lw t0, 329(t0)
	addiw t0, s0, 2047
	lw t0, 333(t0)
	addiw t0, s0, 2047
	lw t0, 337(t0)
	addiw t0, s0, 2047
	lw t0, 341(t0)
	sd t0, -1072(s0)
	addiw t0, s0, 2047
	lw t0, 345(t0)
	addiw t0, s0, 2047
	lw t0, 349(t0)
	sd t0, -848(s0)
	addiw t0, s0, 2047
	lw t0, 353(t0)
	addiw t0, s0, 2047
	lw t0, 357(t0)
	addiw t0, s0, 2047
	lw t0, 361(t0)
	addiw t0, s0, 2047
	lw t0, 365(t0)
	addiw t0, s0, 2047
	lw t0, 369(t0)
	sd t0, -768(s0)
	addiw t0, s0, 2047
	lw t0, 373(t0)
	sd t0, -760(s0)
	addiw t0, s0, 2047
	lw t0, 377(t0)
	sd t0, -752(s0)
	addiw t0, s0, 2047
	lw t0, 381(t0)
	sd t0, -744(s0)
	addiw t0, s0, 2047
	lw t0, 385(t0)
	sd t0, -736(s0)
	addiw t0, s0, 2047
	lw t0, 389(t0)
	addiw t0, s0, 2047
	lw t0, 393(t0)
	addiw t0, s0, 2047
	lw t0, 397(t0)
	sd t0, -728(s0)
	addiw t0, s0, 2047
	lw t0, 401(t0)
	sd t0, -720(s0)
	addiw t0, s0, 2047
	lw t0, 405(t0)
	addiw t0, s0, 2047
	lw t0, 409(t0)
	sd t0, -712(s0)
	addiw t0, s0, 2047
	lw t0, 413(t0)
	sd t0, -624(s0)
	addiw t0, s0, 2047
	lw t0, 417(t0)
	addiw t0, s0, 2047
	lw t0, 421(t0)
	sd t0, -696(s0)
	addiw t0, s0, 2047
	lw t0, 425(t0)
	addiw t0, s0, 2047
	lw t0, 429(t0)
	addiw t0, s0, 2047
	lw t0, 433(t0)
	addiw t0, s0, 2047
	lw t0, 437(t0)
	addiw t0, s0, 2047
	lw t0, 441(t0)
	addiw t0, s0, 2047
	lw t0, 445(t0)
	sd t0, -688(s0)
	addiw t0, s0, 2047
	lw t0, 449(t0)
	sd t0, -680(s0)
	addiw t0, s0, 2047
	lw t0, 453(t0)
	addiw t0, s0, 2047
	lw t0, 457(t0)
	sd t0, -672(s0)
	addiw t0, s0, 2047
	lw t0, 461(t0)
	addiw t0, s0, 2047
	lw t0, 465(t0)
	sd t0, -664(s0)
	addiw t0, s0, 2047
	lw t0, 469(t0)
	addiw t0, s0, 2047
	lw t0, 473(t0)
	sd t0, -656(s0)
	addiw t0, s0, 2047
	lw t0, 477(t0)
	addiw t0, s0, 2047
	lw t0, 481(t0)
	sd t0, -648(s0)
	addiw t0, s0, 2047
	lw t0, 485(t0)
	addiw t0, s0, 2047
	lw t0, 489(t0)
	sd t0, -640(s0)
	addiw t0, s0, 2047
	lw t0, 493(t0)
	addiw t0, s0, 2047
	lw t0, 497(t0)
	sd t0, -632(s0)
	addiw t0, s0, 2047
	lw t0, 501(t0)
	sd t0, -704(s0)
	addiw t0, s0, 2047
	lw t0, 505(t0)
	addiw t0, s0, 2047
	lw t0, 509(t0)
	addiw t0, s0, 2047
	lw t0, 513(t0)
	addiw t0, s0, 2047
	lw t0, 517(t0)
	addiw t0, s0, 2047
	lw t0, 521(t0)
	addiw t0, s0, 2047
	lw t0, 525(t0)
	addiw t0, s0, 2047
	lw t0, 529(t0)
	sd t0, -912(s0)
	addiw t0, s0, 2047
	lw t0, 533(t0)
	sd t0, -904(s0)
	addiw t0, s0, 2047
	lw t0, 537(t0)
	sd t0, -896(s0)
	addiw t0, s0, 2047
	lw t0, 541(t0)
	addiw t0, s0, 2047
	lw t0, 545(t0)
	sd t0, -888(s0)
	addiw t0, s0, 2047
	lw t0, 549(t0)
	addiw t0, s0, 2047
	lw t0, 553(t0)
	sd t0, -880(s0)
	addiw t0, s0, 2047
	lw t0, 557(t0)
	sd t0, -872(s0)
	addiw t0, s0, 2047
	lw t0, 561(t0)
	sd t0, -864(s0)
	addiw t0, s0, 2047
	lw t0, 565(t0)
	sd t0, -856(s0)
	addiw t0, s0, 2047
	lw t0, 569(t0)
	addiw t0, s0, 2047
	lw t0, 573(t0)
	sd t0, -776(s0)
	addiw t0, s0, 2047
	lw t0, 577(t0)
	addiw t0, s0, 2047
	lw t0, 581(t0)
	addiw t0, s0, 2047
	lw t0, 585(t0)
	addiw t0, s0, 2047
	lw t0, 589(t0)
	addiw t0, s0, 2047
	lw t0, 593(t0)
	sd t0, -840(s0)
	addiw t0, s0, 2047
	lw t0, 597(t0)
	sd t0, -832(s0)
	addiw t0, s0, 2047
	lw t0, 601(t0)
	addiw t0, s0, 2047
	lw t0, 605(t0)
	sd t0, -824(s0)
	addiw t0, s0, 2047
	lw t0, 609(t0)
	sd t0, -816(s0)
	addiw t0, s0, 2047
	lw t0, 613(t0)
	sd t0, -808(s0)
	addiw t0, s0, 2047
	lw t0, 617(t0)
	sd t0, -800(s0)
	addiw t0, s0, 2047
	lw t0, 621(t0)
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
	ld t0, -1600(s0)
	ld t0, -1744(s0)
	mulw t1, t0, t0
	ld t0, -1488(s0)
	mulw t1, t1, t0
	ld t0, -1616(s0)
	mulw t1, t1, t0
	ld t0, -1104(s0)
	mulw t1, t1, t0
	ld t0, -1392(s0)
	addw a0, t1, t0
	ld t0, -305(a0)
	ld t0, -672(s0)
	mulw t1, t0, t0
	ld t0, -1912(s0)
	mulw t1, t1, t0
	ld t0, -360(s0)
	mulw t1, t1, t0
	ld t0, -1888(s0)
	mulw t1, t1, t0
	ld t0, -576(s0)
	mulw t1, t1, t0
	ld t0, -1712(s0)
	mulw t1, t1, t0
	addw a0, a0, t1
	ld t0, -1312(s0)
	ld t0, -1208(s0)
	mulw t1, t0, t0
	addw t1, a0, t1
	ld t0, -616(s0)
	addw a0, t1, t0
	ld t0, -144(s0)
	ld t0, -1216(s0)
	mulw t1, t0, t0
	ld t0, -1968(s0)
	mulw t1, t1, t0
	addw t1, a0, t1
	ld t0, -17(a5)
	ld t0, -416(s0)
	mulw a0, t0, t0
	addw t1, t1, a0
	ld t0, -1192(s0)
	ld t0, -1048(s0)
	mulw a0, t0, t0
	addw t1, t1, a0
	ld t0, -272(s0)
	addw a0, t1, t0
	ld t0, -704(s0)
	ld t0, -592(s0)
	mulw t1, t0, t0
	ld t0, -608(s0)
	mulw t1, t1, t0
	ld t0, -472(s0)
	mulw t1, t1, t0
	addw t1, a0, t1
	ld t0, -264(s0)
	addw t1, t1, t0
	ld t0, -1872(s0)
	addw t1, t1, t0
	ld t0, -624(s0)
	addw t1, t1, t0
	ld t0, -880(s0)
	mulw t0, t0, t0
	ld t0, -32(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1848(s0)
	ld t0, -1592(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -568(s0)
	ld t0, -1304(s0)
	mulw t0, t0, t0
	ld t0, -168(s0)
	mulw t0, t0, t0
	ld t0, -1056(s0)
	mulw t0, t0, t0
	ld t0, -1240(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1184(s0)
	addw t0, t0, t0
	ld t0, -49(t6)
	addw t0, t0, t0
	ld t0, -336(s0)
	addw t1, t0, t0
	ld t0, -65(a6)
	ld t0, -40(s0)
	mulw t0, t0, t0
	ld t0, -1072(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1472(s0)
	ld t0, -248(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -432(s0)
	mulw t1, a1, t0
	mulw t1, t1, s4
	addw t1, t0, t1
	ld t0, -1816(s0)
	mulw t0, t0, a4
	addw t0, t1, t0
	ld t0, -760(s0)
	ld t0, -2008(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -1688(s0)
	addw t0, t0, t0
	ld t0, -1600(s0)
	addw t0, t0, t0
	ld t0, -464(s0)
	addw t1, t0, t0
	ld t0, -297(a6)
	ld t0, -808(s0)
	mulw t0, t0, t0
	ld t0, -392(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -72(s0)
	ld t0, -864(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -192(s0)
	ld t0, -728(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -648(s0)
	ld t0, -1016(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1408(s0)
	addw t0, t0, t0
	ld t0, -928(s0)
	addw t0, t0, t0
	ld t0, -1960(s0)
	addw t0, t0, t0
	ld t0, -169(a5)
	ld t0, -1200(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -184(s0)
	addw t0, t0, t0
	ld t0, -1424(s0)
	ld t0, -1400(s0)
	mulw t1, t0, t0
	mulw t1, t1, s3
	addw t0, t0, t1
	ld t0, -1776(s0)
	addw t0, t0, t0
	ld t0, -1112(s0)
	mulw t1, a7, t0
	ld t0, -1752(s0)
	mulw t1, t1, t0
	ld t0, -168(s0)
	mulw t1, t1, t0
	ld t0, -376(s0)
	mulw t1, t1, t0
	ld t0, -1896(s0)
	mulw t1, t1, t0
	ld t0, -1544(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	addw t1, t0, s4
	ld t0, -201(a6)
	ld t0, -1864(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	addw t0, t0, t2
	ld t0, -2008(s0)
	addw t0, t0, t0
	ld t0, -184(s0)
	addw t0, t0, t0
	ld t0, -1624(s0)
	addw t0, t0, t0
	ld t0, -688(s0)
	ld t0, -448(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -1944(s0)
	addw t0, t0, t0
	ld t0, -1064(s0)
	ld t0, -1952(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -720(s0)
	ld t0, -952(s0)
	mulw t0, t0, t0
	mulw t0, t0, a3
	addw t0, t1, t0
	ld t0, -616(s0)
	addw t0, t0, t0
	ld t0, -105(a5)
	addw t1, t0, t0
	ld t0, -888(s0)
	ld t0, -2016(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	addw t1, t0, s11
	ld t0, -1352(s0)
	ld t0, -1712(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -209(a5)
	ld t0, -185(t6)
	mulw t1, t0, t0
	mulw t1, t1, s8
	addw t0, t0, t1
	ld t0, -848(s0)
	addw t0, t0, t0
	ld t0, -1144(s0)
	ld t0, -1320(s0)
	mulw t1, t0, t0
	ld t0, -1432(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -1168(s0)
	addw t0, t0, t0
	ld t0, -1840(s0)
	addw t0, t0, t0
	ld t0, -504(s0)
	addw t0, t0, t0
	ld t0, -520(s0)
	addw t0, t0, t0
	ld t0, -504(s0)
	addw t0, t0, t0
	ld t0, -1560(s0)
	ld t0, -64(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -432(s0)
	ld t0, -25(a2)
	mulw t0, t0, t0
	ld t0, -1624(s0)
	mulw t0, t0, t0
	ld t0, -56(s0)
	mulw t0, t0, t0
	ld t0, -89(t6)
	mulw t0, t0, t0
	ld t0, -600(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -232(s0)
	addw t1, t0, t0
	ld t0, -744(s0)
	ld t0, -1792(s0)
	mulw t0, t0, t0
	ld t0, -1272(s0)
	mulw t0, t0, t0
	ld t0, -1080(s0)
	mulw t0, t0, t0
	ld t0, -216(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -984(s0)
	ld t0, -1104(s0)
	mulw t0, t0, t0
	ld t0, -1760(s0)
	mulw t0, t0, t0
	ld t0, -1320(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1640(s0)
	addw t1, t0, t0
	ld t0, -129(a6)
	ld t0, -632(s0)
	mulw t0, t0, t0
	ld t0, -520(s0)
	mulw t0, t0, t0
	ld t0, -1064(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -816(s0)
	addw t1, t0, t0
	ld t0, -1216(s0)
	ld t0, -968(s0)
	mulw t0, t0, t0
	ld t0, -1096(s0)
	mulw t0, t0, t0
	ld t0, -528(s0)
	mulw t0, t0, t0
	ld t0, -73(a5)
	mulw t0, t0, t0
	ld t0, -896(s0)
	mulw t0, t0, t0
	ld t0, -384(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1552(s0)
	addw t0, t0, t0
	ld t0, -424(s0)
	addw t1, t0, t0
	ld t0, -177(a6)
	ld t0, -1384(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -120(s0)
	ld t0, -1672(s0)
	mulw t0, t0, t0
	ld t0, -1024(s0)
	mulw t0, t0, t0
	ld t0, -1408(s0)
	mulw t0, t0, t0
	ld t0, -169(a5)
	mulw t0, t0, t0
	ld t0, -1040(s0)
	mulw t0, t0, t0
	ld t0, -112(s0)
	mulw t0, t0, t0
	ld t0, -1160(s0)
	mulw t0, t0, t0
	ld t0, -1648(s0)
	mulw t0, t0, t0
	ld t0, -816(s0)
	mulw t0, t0, t0
	ld t0, -1344(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -976(s0)
	ld t0, -1256(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	addw t1, t0, t3
	ld t0, -88(s0)
	ld t0, -488(s0)
	mulw t0, t0, t0
	ld t0, -1448(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	addw t0, t0, s6
	ld t0, -1624(s0)
	addw t0, t0, t0
	ld t0, -936(s0)
	addw t1, t0, t0
	ld t0, -9(a6)
	ld t0, -1504(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1568(s0)
	addw t0, t0, t0
	ld t0, -656(s0)
	addw t0, t0, t0
	addw t0, t0, a3
	ld t0, -560(s0)
	addw t0, t0, t0
	ld t0, -1360(s0)
	addw t0, t0, t0
	ld t0, -145(a2)
	addw t0, t0, t0
	ld t0, -952(s0)
	addw t0, t0, t0
	ld t0, -768(s0)
	addw t0, t0, t0
	ld t0, -288(s0)
	addw t0, t0, t0
	ld t0, -944(s0)
	ld t0, -296(s0)
	mulw t1, t0, t0
	ld t0, -304(s0)
	mulw t1, t1, t0
	ld t0, -752(s0)
	mulw t1, t1, t0
	mulw t1, t1, s9
	addw t1, t0, t1
	ld t0, -1824(s0)
	ld t0, -1304(s0)
	mulw t0, t0, t0
	mulw t0, t0, s10
	ld t0, -608(s0)
	mulw t0, t0, t0
	ld t0, -97(a6)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -249(t6)
	ld t0, -480(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -944(s0)
	addw t1, t0, t0
	ld t0, -192(s0)
	ld t0, -528(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -344(s0)
	ld t0, -912(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -121(t6)
	addw t0, t0, t0
	ld t0, -1832(s0)
	addw t0, t0, t0
	ld t0, -1368(s0)
	addw t0, t0, t0
	ld t0, -1536(s0)
	addw t1, t0, t0
	ld t0, -1480(s0)
	ld t0, -113(a2)
	mulw t0, t0, t0
	ld t0, -1704(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -736(s0)
	ld t0, -217(t6)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1928(s0)
	addw t1, t0, t0
	ld t0, -1264(s0)
	ld t0, -832(s0)
	mulw t0, t0, t0
	ld t0, -2048(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1504(s0)
	addw t0, t0, t0
	ld t0, -1800(s0)
	addw t0, t0, t0
	ld t0, -368(s0)
	ld t0, -81(a2)
	mulw t1, t0, t0
	ld t0, -2008(s0)
	mulw t1, t1, t0
	ld t0, -1904(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -960(s0)
	ld t0, -792(s0)
	mulw t1, t0, t0
	ld t0, -872(s0)
	mulw t1, t1, t0
	ld t0, -136(s0)
	mulw t1, t1, t0
	ld t0, -97(a6)
	mulw t1, t1, t0
	ld t0, -145(a2)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -1288(s0)
	addw t0, t0, t0
	ld t0, -273(a2)
	addw t0, t0, t0
	ld t0, -1584(s0)
	ld t0, -640(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -1832(s0)
	addw t1, t0, t0
	ld t0, -1736(s0)
	ld t0, -456(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -1416(s0)
	ld t0, -1616(s0)
	mulw t0, t0, t0
	ld t0, -257(a6)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -552(s0)
	ld t0, -273(a2)
	mulw t0, t0, t0
	ld t0, -552(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -464(s0)
	ld t0, -329(a6)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -1752(s0)
	ld t0, -1520(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1800(s0)
	addw t0, t0, t0
	ld t0, -352(s0)
	ld t0, -208(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	addw t0, t0, s2
	ld t0, -200(s0)
	addw t0, t0, t0
	ld t0, -1272(s0)
	addw t0, t0, t0
	ld t0, -1992(s0)
	addw t0, t0, t0
	ld t0, -320(s0)
	addw t0, t0, t0
	ld t0, -920(s0)
	addw t0, t0, t0
	ld t0, -1176(s0)
	ld t0, -1720(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -280(s0)
	addw t0, t0, t0
	ld t0, -33(a2)
	addw t1, t0, t0
	ld t0, -1544(s0)
	mulw t0, t4, t0
	ld t0, -856(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -152(s0)
	addw t0, t0, t0
	ld t0, -1128(s0)
	addw t1, t0, t0
	ld t0, -1608(s0)
	mulw t0, t0, s7
	addw t1, t1, t0
	ld t0, -536(s0)
	mulw t0, t0, s3
	ld t0, -104(s0)
	mulw t0, t0, t0
	ld t0, -313(a5)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -1376(s0)
	ld t0, -1512(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -440(s0)
	addw t0, t0, t0
	ld t0, -1000(s0)
	ld t0, -328(s0)
	mulw t1, t0, t0
	ld t0, -648(s0)
	mulw t1, t1, t0
	ld t0, -1544(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -57(a6)
	ld t0, -1936(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -896(s0)
	addw t0, t0, t0
	ld t0, -1072(s0)
	addw t0, t0, t0
	ld t0, -496(s0)
	addw t0, t0, t0
	ld t0, -240(s0)
	addw t0, t0, t0
	ld t0, -1440(s0)
	addw t1, t0, t0
	ld t0, -536(s0)
	ld t0, -440(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1680(s0)
	addw t0, t0, t0
	ld t0, -1240(s0)
	ld t0, -1920(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	addw t0, t0, s5
	ld t0, -1232(s0)
	addw t0, t0, t0
	ld t0, -1728(s0)
	addw t1, t0, t0
	ld t0, -72(s0)
	ld t0, -2048(s0)
	mulw t0, t0, t0
	ld t0, -121(t6)
	mulw t0, t0, t0
	ld t0, -712(s0)
	mulw t0, t0, t0
	ld t0, -312(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -2024(s0)
	ld t0, -680(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -1224(s0)
	ld t0, -104(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -96(s0)
	addw t1, t0, t0
	ld t0, -1008(s0)
	ld t0, -776(s0)
	mulw t0, t0, t0
	ld t0, -1120(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1488(s0)
	ld t0, -400(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -1880(s0)
	ld t0, -2000(s0)
	mulw t1, t0, t0
	ld t0, -408(s0)
	mulw t1, t1, t0
	ld t0, -512(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -904(s0)
	ld t0, -241(t6)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -1464(s0)
	ld t0, -288(s0)
	mulw t0, t0, t0
	ld t0, -137(a5)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1320(s0)
	addw t0, t0, t0
	ld t0, -233(a2)
	addw t0, t0, t0
	ld t0, -1976(s0)
	addw t0, t0, t0
	ld t0, -41(t6)
	ld t0, -40(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -33(a2)
	ld t0, -1664(s0)
	mulw t0, t0, t0
	ld t0, -992(s0)
	mulw t0, t0, t0
	ld t0, -225(a2)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1784(s0)
	addw t1, t0, t0
	ld t0, -1984(s0)
	ld t0, -321(a2)
	mulw t0, t0, t0
	ld t0, -128(s0)
	mulw t0, t0, t0
	ld t0, -1440(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -696(s0)
	ld t0, -1248(s0)
	mulw t0, t0, t0
	ld t0, -1584(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1712(s0)
	ld t0, -1296(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -1696(s0)
	addw t0, t0, t0
	ld t0, -1328(s0)
	addw t0, t0, t0
	ld t0, -1136(s0)
	addw t1, t0, t0
	ld t0, -1496(s0)
	ld t0, -281(a5)
	mulw t0, t0, t0
	ld t0, -1768(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1400(s0)
	addw t0, t0, t0
	ld t0, -289(t6)
	addw t0, t0, t0
	ld t0, -1152(s0)
	addw t0, t0, t0
	ld t0, -1816(s0)
	addw t0, t0, t0
	ld t0, -1392(s0)
	addw t1, t0, t0
	ld t0, -664(s0)
	mulw t0, s1, t0
	addw t1, t1, t0
	ld t0, -1856(s0)
	ld t0, -1576(s0)
	mulw t0, t0, t0
	ld t0, -384(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1632(s0)
	ld t0, -1072(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -424(s0)
	ld t0, -1656(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -80(s0)
	ld t0, -48(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -17(a5)
	addw t0, t0, t0
	ld t0, -2040(s0)
	ld t0, -1456(s0)
	mulw t1, t0, t0
	ld t0, -33(a2)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -904(s0)
	ld t0, -176(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -313(a5)
	addw t0, t0, t0
	ld t0, -145(a2)
	ld t0, -176(s0)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -224(s0)
	ld t0, -584(s0)
	mulw t1, t0, t0
	ld t0, -265(a2)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -984(s0)
	addw t0, t0, t0
	ld t0, -1816(s0)
	ld t0, -992(s0)
	mulw t1, t0, t0
	ld t0, -1280(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -201(a6)
	mulw t1, a4, t0
	addw t0, t0, t1
	ld t0, -1336(s0)
	ld t0, -800(s0)
	mulw t1, t0, t0
	addw t1, t0, t1
	ld t0, -25(a2)
	ld t0, -376(s0)
	mulw t0, t0, t0
	ld t0, -1808(s0)
	mulw t0, t0, t0
	addw t1, t1, t0
	ld t0, -288(s0)
	ld t0, -656(s0)
	mulw t0, t0, t0
	ld t0, -840(s0)
	mulw t0, t0, t0
	ld t0, -160(s0)
	mulw t0, t0, t0
	ld t0, -824(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -1528(s0)
	addw t0, t0, t0
	addw t1, t0, t5
	ld t0, -1296(s0)
	mulw t0, t0, a7
	ld t0, -169(a5)
	mulw t0, t0, t0
	ld t0, -1032(s0)
	mulw t0, t0, t0
	addw t0, t1, t0
	ld t0, -193(a5)
	ld t0, -49(t6)
	mulw t1, t0, t0
	ld t0, -816(s0)
	mulw t1, t1, t0
	addw t0, t0, t1
	ld t0, -153(t6)
	addw t0, t0, t0
	ld t0, -1008(s0)
	addw t0, t0, t0
	ld t0, -1088(s0)
	ld t0, -161(a5)
	mulw t1, t0, t0
	addw t0, t0, t1
	ld t0, -544(s0)
	addw t0, t0, t0
	ld t0, -784(s0)
	addw t0, t0, t0
	ld t0, -2032(s0)
	addw t0, t0, t0
	ld t0, -256(s0)
	addw a0, t0, t0
	mv a0, a0
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 312(sp)
	ld s0, 304(sp)
	addi sp, sp, 320
	ret 
    .size func, .-func
    .align  1
    .globl  main
    .type  main, @function
main:
.LBB2:
	addi sp, sp, -640
	sd ra, 632(sp)
	sd s0, 624(sp)
	addi s0, sp, 640
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	li a0, 0
	li a1, 1
	li a2, 1
	li a3, 8
	li a4, 9
	li a5, 5
	li a6, 2
	li a7, 0
	call func
	mv a0, a0
	mv a0, a0
	li t0, -4096
	addiw t0, t0, -2048
	add sp, sp, t0
	ld ra, 632(sp)
	ld s0, 624(sp)
	addi sp, sp, 640
	ret 
    .size main, .-main
