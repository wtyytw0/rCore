rust-objdump --arch-name=riscv64 -d target/riscv64imac-unknown-none-elf/debug/os | less

target/riscv64imac-unknown-none-elf/debug/os:	file format ELF64-riscv


Disassembly of section .text:

0000000080200000 stext:
80200000: 17 b1 00 00                  	auipc	sp, 11
80200004: 13 01 01 00                  	mv	sp, sp
80200008: 97 00 00 00                  	auipc	ra, 0
8020000c: e7 80 80 00                  	jalr	8(ra)

0000000080200010 rust_main:
80200010: 41 11                        	addi	sp, sp, -16
80200012: 06 e4                        	sd	ra, 8(sp)
80200014: 97 00 00 00                  	auipc	ra, 0
80200018: e7 80 00 0f                  	jalr	240(ra)
8020001c: 09 a0                        	j	2
8020001e: 02 90                        	ebreak	

0000000080200020 .LBB0_2:
80200020: 17 45 00 00                  	auipc	a0, 4
80200024: 13 05 05 00                  	mv	a0, a0

0000000080200028 .LBB0_3:
80200028: 17 46 00 00                  	auipc	a2, 4
8020002c: 13 06 86 02                  	addi	a2, a2, 40
80200030: c1 45                        	addi	a1, zero, 16
80200032: 97 00 00 00                  	auipc	ra, 0
80200036: e7 80 80 72                  	jalr	1832(ra)
8020003a: 00 00                        	unimp	

000000008020003c __alltraps:
8020003c: 73 11 01 14                  	csrrw	sp, sscratch, sp
80200040: 63 14 01 00                  	bnez	sp, 8

0000000080200044 trap_from_kernel:
80200044: 73 21 00 14                  	csrr	sp, sscratch

0000000080200048 trap_from_user:
80200048: 2d 71                        	addi	sp, sp, -288
8020004a: 06 e4                        	sd	ra, 8(sp)
8020004c: 0e ec                        	sd	gp, 24(sp)
8020004e: 12 f0                        	sd	tp, 32(sp)
80200050: 16 f4                        	sd	t0, 40(sp)
80200052: 1a f8                        	sd	t1, 48(sp)
80200054: 1e fc                        	sd	t2, 56(sp)
80200056: a2 e0                        	sd	s0, 64(sp)
80200058: a6 e4                        	sd	s1, 72(sp)
8020005a: aa e8                        	sd	a0, 80(sp)
8020005c: ae ec                        	sd	a1, 88(sp)
8020005e: b2 f0                        	sd	a2, 96(sp)
80200060: b6 f4                        	sd	a3, 104(sp)
80200062: ba f8                        	sd	a4, 112(sp)
80200064: be fc                        	sd	a5, 120(sp)
80200066: 42 e1                        	sd	a6, 128(sp)
80200068: 46 e5                        	sd	a7, 136(sp)
8020006a: 4a e9                        	sd	s2, 144(sp)
8020006c: 4e ed                        	sd	s3, 152(sp)
8020006e: 52 f1                        	sd	s4, 160(sp)
80200070: 56 f5                        	sd	s5, 168(sp)
80200072: 5a f9                        	sd	s6, 176(sp)
80200074: 5e fd                        	sd	s7, 184(sp)
80200076: e2 e1                        	sd	s8, 192(sp)
80200078: e6 e5                        	sd	s9, 200(sp)
8020007a: ea e9                        	sd	s10, 208(sp)
8020007c: ee ed                        	sd	s11, 216(sp)
8020007e: f2 f1                        	sd	t3, 224(sp)
80200080: f6 f5                        	sd	t4, 232(sp)
80200082: fa f9                        	sd	t5, 240(sp)
80200084: fe fd                        	sd	t6, 248(sp)
80200086: 73 14 00 14                  	csrrw	s0, sscratch, zero
8020008a: f3 24 00 10                  	csrr	s1, sstatus
8020008e: 73 29 10 14                  	csrr	s2, sepc
80200092: f3 29 30 14                  	csrr	s3, stval
80200096: 73 2a 20 14                  	csrr	s4, scause
8020009a: 22 e8                        	sd	s0, 16(sp)
8020009c: 26 e2                        	sd	s1, 256(sp)
8020009e: 4a e6                        	sd	s2, 264(sp)
802000a0: 4e ea                        	sd	s3, 272(sp)
802000a2: 52 ee                        	sd	s4, 280(sp)
802000a4: 0a 85                        	add	a0, zero, sp
802000a6: ef 00 20 11                  	jal	274

00000000802000aa __trapret:
802000aa: 92 64                        	ld	s1, 256(sp)
802000ac: 32 69                        	ld	s2, 264(sp)
802000ae: 13 f4 04 10                  	andi	s0, s1, 256
802000b2: 01 e4                        	bnez	s0, 8

00000000802000b4 _to_user:
802000b4: 00 12                        	addi	s0, sp, 288
802000b6: 73 10 04 14                  	csrw	sscratch, s0

00000000802000ba _to_kernel:
802000ba: 73 90 04 10                  	csrw	sstatus, s1
802000be: 73 10 19 14                  	csrw	sepc, s2
802000c2: a2 60                        	ld	ra, 8(sp)
802000c4: e2 61                        	ld	gp, 24(sp)
802000c6: 02 72                        	ld	tp, 32(sp)
802000c8: a2 72                        	ld	t0, 40(sp)
802000ca: 42 73                        	ld	t1, 48(sp)
802000cc: e2 73                        	ld	t2, 56(sp)
802000ce: 06 64                        	ld	s0, 64(sp)
802000d0: a6 64                        	ld	s1, 72(sp)
802000d2: 46 65                        	ld	a0, 80(sp)
802000d4: e6 65                        	ld	a1, 88(sp)
802000d6: 06 76                        	ld	a2, 96(sp)
802000d8: a6 76                        	ld	a3, 104(sp)
802000da: 46 77                        	ld	a4, 112(sp)
802000dc: e6 77                        	ld	a5, 120(sp)
802000de: 0a 68                        	ld	a6, 128(sp)
802000e0: aa 68                        	ld	a7, 136(sp)
802000e2: 4a 69                        	ld	s2, 144(sp)
802000e4: ea 69                        	ld	s3, 152(sp)
802000e6: 0a 7a                        	ld	s4, 160(sp)
802000e8: aa 7a                        	ld	s5, 168(sp)
802000ea: 4a 7b                        	ld	s6, 176(sp)
802000ec: ea 7b                        	ld	s7, 184(sp)
802000ee: 0e 6c                        	ld	s8, 192(sp)
802000f0: ae 6c                        	ld	s9, 200(sp)
802000f2: 4e 6d                        	ld	s10, 208(sp)
802000f4: ee 6d                        	ld	s11, 216(sp)
802000f6: 0e 7e                        	ld	t3, 224(sp)
802000f8: ae 7e                        	ld	t4, 232(sp)
802000fa: 4e 7f                        	ld	t5, 240(sp)
802000fc: ee 7f                        	ld	t6, 248(sp)
802000fe: 42 61                        	ld	sp, 16(sp)
80200100: 73 00 20 10                  	sret	

0000000080200104 _ZN2os9interrupt4init17he9418dedbd7b9b5eE:
80200104: 71 71                        	addi	sp, sp, -176
80200106: 06 f5                        	sd	ra, 168(sp)
80200108: 01 45                        	mv	a0, zero
8020010a: 97 30 00 00                  	auipc	ra, 3
8020010e: e7 80 60 70                  	jalr	1798(ra)
80200112: 09 a0                        	j	2

0000000080200114 .LBB0_8:
80200114: 17 05 00 00                  	auipc	a0, 0
80200118: 13 05 85 f2                  	addi	a0, a0, -216
8020011c: 81 45                        	mv	a1, zero
8020011e: 97 30 00 00                  	auipc	ra, 3
80200122: e7 80 40 dd                  	jalr	-556(ra)
80200126: 09 a0                        	j	2
80200128: 97 30 00 00                  	auipc	ra, 3
8020012c: e7 80 20 6d                  	jalr	1746(ra)
80200130: 09 a0                        	j	2

0000000080200132 .LBB0_9:
80200132: 17 45 00 00                  	auipc	a0, 4
80200136: 13 05 e5 f5                  	addi	a0, a0, -162
8020013a: 0c 61                        	ld	a1, 0(a0)

000000008020013c .LBB0_10:
8020013c: 17 45 00 00                  	auipc	a0, 4
80200140: 13 05 c5 f8                  	addi	a0, a0, -116
80200144: 08 61                        	ld	a0, 0(a0)

0000000080200146 .LBB0_11:
80200146: 17 46 00 00                  	auipc	a2, 4
8020014a: 13 06 a6 f8                  	addi	a2, a2, -118
8020014e: 14 62                        	ld	a3, 0(a2)
80200150: 90 18                        	addi	a2, sp, 112
80200152: 05 47                        	addi	a4, zero, 1
80200154: 81 47                        	mv	a5, zero
80200156: 2a f0                        	sd	a0, 32(sp)
80200158: 32 85                        	add	a0, zero, a2
8020015a: 02 76                        	ld	a2, 32(sp)
8020015c: 2e ec                        	sd	a1, 24(sp)
8020015e: b2 85                        	add	a1, zero, a2
80200160: 3a 86                        	add	a2, zero, a4
80200162: 3e 87                        	add	a4, zero, a5
80200164: 97 20 00 00                  	auipc	ra, 2
80200168: e7 80 00 28                  	jalr	640(ra)
8020016c: 09 a0                        	j	2
8020016e: 88 18                        	addi	a0, sp, 112
80200170: aa f4                        	sd	a0, 104(sp)
80200172: 2a f1                        	sd	a0, 160(sp)

0000000080200174 .LBB0_12:
80200174: 97 15 00 00                  	auipc	a1, 1
80200178: 93 85 05 bd                  	addi	a1, a1, -1072
8020017c: 97 20 00 00                  	auipc	ra, 2
80200180: e7 80 00 22                  	jalr	544(ra)
80200184: 2a e8                        	sd	a0, 16(sp)
80200186: 2e e4                        	sd	a1, 8(sp)
80200188: 09 a0                        	j	2
8020018a: 42 65                        	ld	a0, 16(sp)
8020018c: aa ec                        	sd	a0, 88(sp)
8020018e: a2 65                        	ld	a1, 8(sp)
80200190: ae f0                        	sd	a1, 96(sp)
80200192: 28 10                        	addi	a0, sp, 40
80200194: 09 46                        	addi	a2, zero, 2
80200196: b4 08                        	addi	a3, sp, 88
80200198: 05 47                        	addi	a4, zero, 1
8020019a: e2 65                        	ld	a1, 24(sp)
8020019c: 97 20 00 00                  	auipc	ra, 2
802001a0: e7 80 80 24                  	jalr	584(ra)
802001a4: 09 a0                        	j	2
802001a6: 28 10                        	addi	a0, sp, 40
802001a8: 97 00 00 00                  	auipc	ra, 0
802001ac: e7 80 20 28                  	jalr	642(ra)
802001b0: 09 a0                        	j	2
802001b2: aa 70                        	ld	ra, 168(sp)
802001b4: 4d 61                        	addi	sp, sp, 176
802001b6: 82 80                        	ret

00000000802001b8 rust_trap:
802001b8: 05 71                        	addi	sp, sp, -480
802001ba: 86 ef                        	sd	ra, 472(sp)
802001bc: 2a fb                        	sd	a0, 432(sp)

00000000802001be .LBB1_16:
802001be: 97 45 00 00                  	auipc	a1, 4
802001c2: 93 85 25 ed                  	addi	a1, a1, -302
802001c6: 8c 61                        	ld	a1, 0(a1)

00000000802001c8 .LBB1_17:
802001c8: 17 46 00 00                  	auipc	a2, 4
802001cc: 13 06 06 f3                  	addi	a2, a2, -208
802001d0: 10 62                        	ld	a2, 0(a2)

00000000802001d2 .LBB1_18:
802001d2: 97 46 00 00                  	auipc	a3, 4
802001d6: 93 86 e6 ef                  	addi	a3, a3, -258
802001da: 94 62                        	ld	a3, 0(a3)
802001dc: 98 01                        	addi	a4, sp, 192
802001de: 85 47                        	addi	a5, zero, 1
802001e0: 01 48                        	mv	a6, zero
802001e2: aa f8                        	sd	a0, 112(sp)
802001e4: 3a 85                        	add	a0, zero, a4
802001e6: ae f4                        	sd	a1, 104(sp)
802001e8: b2 85                        	add	a1, zero, a2
802001ea: 3e 86                        	add	a2, zero, a5
802001ec: 42 87                        	add	a4, zero, a6
802001ee: 97 20 00 00                  	auipc	ra, 2
802001f2: e7 80 60 1f                  	jalr	502(ra)
802001f6: 09 a0                        	j	2
802001f8: 88 01                        	addi	a0, sp, 192
802001fa: 2a fd                        	sd	a0, 184(sp)
802001fc: 2a ff                        	sd	a0, 440(sp)

00000000802001fe .LBB1_19:
802001fe: 97 15 00 00                  	auipc	a1, 1
80200202: 93 85 65 b4                  	addi	a1, a1, -1210
80200206: 97 20 00 00                  	auipc	ra, 2
8020020a: e7 80 60 19                  	jalr	406(ra)
8020020e: aa f0                        	sd	a0, 96(sp)
80200210: ae ec                        	sd	a1, 88(sp)
80200212: 09 a0                        	j	2
80200214: 06 75                        	ld	a0, 96(sp)
80200216: 2a f5                        	sd	a0, 168(sp)
80200218: e6 65                        	ld	a1, 88(sp)
8020021a: 2e f9                        	sd	a1, 176(sp)
8020021c: a8 18                        	addi	a0, sp, 120
8020021e: 09 46                        	addi	a2, zero, 2
80200220: 34 11                        	addi	a3, sp, 168
80200222: 05 47                        	addi	a4, zero, 1
80200224: a6 75                        	ld	a1, 104(sp)
80200226: 97 20 00 00                  	auipc	ra, 2
8020022a: e7 80 e0 1b                  	jalr	446(ra)
8020022e: 09 a0                        	j	2
80200230: a8 18                        	addi	a0, sp, 120
80200232: 97 00 00 00                  	auipc	ra, 0
80200236: e7 80 80 1f                  	jalr	504(ra)
8020023a: 09 a0                        	j	2
8020023c: 97 30 00 00                  	auipc	ra, 3
80200240: e7 80 60 d0                  	jalr	-762(ra)
80200244: aa fd                        	sd	a0, 248(sp)
80200246: 09 a0                        	j	2
80200248: a8 19                        	addi	a0, sp, 248
8020024a: 97 30 00 00                  	auipc	ra, 3
8020024e: e7 80 e0 d9                  	jalr	-610(ra)
80200252: 23 08 a1 0e                  	sb	a0, 240(sp)
80200256: a3 08 b1 0e                  	sb	a1, 241(sp)
8020025a: 09 a0                        	j	2
8020025c: 97 30 00 00                  	auipc	ra, 3
80200260: e7 80 20 c7                  	jalr	-910(ra)
80200264: 2a e2                        	sd	a0, 256(sp)
80200266: 09 a0                        	j	2

0000000080200268 .LBB1_20:
80200268: 17 45 00 00                  	auipc	a0, 4
8020026c: 13 05 85 e2                  	addi	a0, a0, -472
80200270: 0c 61                        	ld	a1, 0(a0)

0000000080200272 .LBB1_21:
80200272: 17 45 00 00                  	auipc	a0, 4
80200276: 13 05 65 ec                  	addi	a0, a0, -314
8020027a: 08 61                        	ld	a0, 0(a0)
8020027c: 90 19                        	addi	a2, sp, 240
8020027e: 32 f3                        	sd	a2, 416(sp)
80200280: 14 02                        	addi	a3, sp, 256
80200282: 36 f7                        	sd	a3, 424(sp)
80200284: b2 e3                        	sd	a2, 448(sp)
80200286: b6 e7                        	sd	a3, 456(sp)

0000000080200288 .LBB1_22:
80200288: 17 37 00 00                  	auipc	a4, 3
8020028c: 13 07 47 0a                  	addi	a4, a4, 164
80200290: aa e8                        	sd	a0, 80(sp)
80200292: 32 85                        	add	a0, zero, a2
80200294: ae e4                        	sd	a1, 72(sp)
80200296: ba 85                        	add	a1, zero, a4
80200298: b6 e0                        	sd	a3, 64(sp)
8020029a: 97 20 00 00                  	auipc	ra, 2
8020029e: e7 80 00 0e                  	jalr	224(ra)
802002a2: 2a fc                        	sd	a0, 56(sp)
802002a4: 2e f8                        	sd	a1, 48(sp)
802002a6: 09 a0                        	j	2

00000000802002a8 .LBB1_23:
802002a8: 97 25 00 00                  	auipc	a1, 2
802002ac: 93 85 85 b6                  	addi	a1, a1, -1176
802002b0: 06 65                        	ld	a0, 64(sp)
802002b2: 97 20 00 00                  	auipc	ra, 2
802002b6: e7 80 60 0a                  	jalr	166(ra)
802002ba: 2a f4                        	sd	a0, 40(sp)
802002bc: 2e f0                        	sd	a1, 32(sp)
802002be: 09 a0                        	j	2
802002c0: 62 75                        	ld	a0, 56(sp)
802002c2: 2a e3                        	sd	a0, 384(sp)
802002c4: c2 75                        	ld	a1, 48(sp)
802002c6: 2e e7                        	sd	a1, 392(sp)
802002c8: 22 76                        	ld	a2, 40(sp)
802002ca: 32 eb                        	sd	a2, 400(sp)
802002cc: 82 76                        	ld	a3, 32(sp)
802002ce: 36 ef                        	sd	a3, 408(sp)

00000000802002d0 .LBB1_24:
802002d0: 17 47 00 00                  	auipc	a4, 4
802002d4: 13 07 07 ee                  	addi	a4, a4, -288
802002d8: 1c 63                        	ld	a5, 0(a4)
802002da: 88 0a                        	addi	a0, sp, 336
802002dc: 14 03                        	addi	a3, sp, 384
802002de: 09 47                        	addi	a4, zero, 2
802002e0: c6 65                        	ld	a1, 80(sp)
802002e2: 3a 86                        	add	a2, zero, a4
802002e4: 3a ec                        	sd	a4, 24(sp)
802002e6: 62 68                        	ld	a6, 24(sp)
802002e8: 97 20 00 00                  	auipc	ra, 2
802002ec: e7 80 60 0d                  	jalr	214(ra)
802002f0: 09 a0                        	j	2
802002f2: 88 0a                        	addi	a0, sp, 336
802002f4: aa e6                        	sd	a0, 328(sp)
802002f6: aa eb                        	sd	a0, 464(sp)

00000000802002f8 .LBB1_25:
802002f8: 97 15 00 00                  	auipc	a1, 1
802002fc: 93 85 c5 a4                  	addi	a1, a1, -1460
80200300: 97 20 00 00                  	auipc	ra, 2
80200304: e7 80 c0 09                  	jalr	156(ra)
80200308: 2a e8                        	sd	a0, 16(sp)
8020030a: 2e e4                        	sd	a1, 8(sp)
8020030c: 09 a0                        	j	2
8020030e: 42 65                        	ld	a0, 16(sp)
80200310: 2a fe                        	sd	a0, 312(sp)
80200312: a2 65                        	ld	a1, 8(sp)
80200314: ae e2                        	sd	a1, 320(sp)
80200316: 28 02                        	addi	a0, sp, 264
80200318: 09 46                        	addi	a2, zero, 2
8020031a: 34 1a                        	addi	a3, sp, 312
8020031c: 05 47                        	addi	a4, zero, 1
8020031e: a6 65                        	ld	a1, 72(sp)
80200320: 97 20 00 00                  	auipc	ra, 2
80200324: e7 80 40 0c                  	jalr	196(ra)
80200328: 09 a0                        	j	2
8020032a: 28 02                        	addi	a0, sp, 264
8020032c: 97 00 00 00                  	auipc	ra, 0
80200330: e7 80 e0 0f                  	jalr	254(ra)
80200334: 09 a0                        	j	2
80200336: 46 75                        	ld	a0, 112(sp)
80200338: 83 35 85 10                  	ld	a1, 264(a0)
8020033c: 13 86 25 00                  	addi	a2, a1, 2
80200340: 32 e0                        	sd	a2, 0(sp)
80200342: 63 6a b6 00                  	bltu	a2, a1, 20
80200346: 09 a0                        	j	2
80200348: 02 65                        	ld	a0, 0(sp)
8020034a: c6 75                        	ld	a1, 112(sp)
8020034c: 23 b4 a5 10                  	sd	a0, 264(a1)
80200350: fe 60                        	ld	ra, 472(sp)
80200352: 3d 61                        	addi	sp, sp, 480
80200354: 82 80                        	ret

0000000080200356 .LBB1_26:
80200356: 17 45 00 00                  	auipc	a0, 4
8020035a: 13 05 a5 e7                  	addi	a0, a0, -390

000000008020035e .LBB1_27:
8020035e: 17 46 00 00                  	auipc	a2, 4
80200362: 13 06 a6 e5                  	addi	a2, a2, -422
80200366: f1 45                        	addi	a1, zero, 28
80200368: 97 00 00 00                  	auipc	ra, 0
8020036c: e7 80 20 3f                  	jalr	1010(ra)
80200370: 00 00                        	unimp	

0000000080200372 _ZN2os2io7putchar17hc250dea37310c406E:
80200372: 01 11                        	addi	sp, sp, -32
80200374: 06 ec                        	sd	ra, 24(sp)
80200376: aa 85                        	add	a1, zero, a0
80200378: 2a ca                        	sw	a0, 20(sp)
8020037a: 13 75 f5 0f                  	andi	a0, a0, 255
8020037e: 2e e4                        	sd	a1, 8(sp)
80200380: 97 00 00 00                  	auipc	ra, 0
80200384: e7 80 00 0f                  	jalr	240(ra)
80200388: 09 a0                        	j	2
8020038a: e2 60                        	ld	ra, 24(sp)
8020038c: 05 61                        	addi	sp, sp, 32
8020038e: 82 80                        	ret

0000000080200390 _ZN2os2io4puts17h56a15a13239ae282E:
80200390: 1d 71                        	addi	sp, sp, -96
80200392: 86 ec                        	sd	ra, 88(sp)
80200394: 2a fc                        	sd	a0, 56(sp)
80200396: ae e0                        	sd	a1, 64(sp)
80200398: 97 20 00 00                  	auipc	ra, 2
8020039c: e7 80 80 3c                  	jalr	968(ra)
802003a0: 2a ec                        	sd	a0, 24(sp)
802003a2: 2e e8                        	sd	a1, 16(sp)
802003a4: 09 a0                        	j	2
802003a6: 62 65                        	ld	a0, 24(sp)
802003a8: c2 65                        	ld	a1, 16(sp)
802003aa: 97 20 00 00                  	auipc	ra, 2
802003ae: e7 80 20 5a                  	jalr	1442(ra)
802003b2: 2a e4                        	sd	a0, 8(sp)
802003b4: 2e e0                        	sd	a1, 0(sp)
802003b6: 09 a0                        	j	2
802003b8: 22 65                        	ld	a0, 8(sp)
802003ba: 2a f0                        	sd	a0, 32(sp)
802003bc: 82 65                        	ld	a1, 0(sp)
802003be: 2e f4                        	sd	a1, 40(sp)
802003c0: 09 a0                        	j	2
802003c2: 08 10                        	addi	a0, sp, 32
802003c4: 97 20 00 00                  	auipc	ra, 2
802003c8: e7 80 c0 3d                  	jalr	988(ra)
802003cc: 02 15                        	slli	a0, a0, 32
802003ce: 01 91                        	srli	a0, a0, 32
802003d0: 2a da                        	sw	a0, 52(sp)
802003d2: 09 a0                        	j	2
802003d4: 52 55                        	lw	a0, 52(sp)
802003d6: b7 05 ef ff                  	lui	a1, 1048304
802003da: 2e 95                        	add	a0, a0, a1
802003dc: 02 15                        	slli	a0, a0, 32
802003de: 01 91                        	srli	a0, a0, 32
802003e0: b3 35 a0 00                  	snez	a1, a0
802003e4: 01 46                        	mv	a2, zero
802003e6: 63 04 c5 00                  	beq	a0, a2, 8
802003ea: 09 a0                        	j	2
802003ec: 29 a0                        	j	10
802003ee: e6 60                        	ld	ra, 88(sp)
802003f0: 25 61                        	addi	sp, sp, 96
802003f2: 82 80                        	ret
802003f4: 00 00                        	unimp	
802003f6: 52 55                        	lw	a0, 52(sp)
802003f8: aa c6                        	sw	a0, 76(sp)
802003fa: aa c8                        	sw	a0, 80(sp)
802003fc: aa ca                        	sw	a0, 84(sp)
802003fe: 97 00 00 00                  	auipc	ra, 0
80200402: e7 80 40 f7                  	jalr	-140(ra)
80200406: 09 a0                        	j	2
80200408: 6d bf                        	j	-70

000000008020040a _ZN51_$LT$os..io..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h3767b8e74ab318f3E:
8020040a: 01 11                        	addi	sp, sp, -32
8020040c: 06 ec                        	sd	ra, 24(sp)
8020040e: 2a e0                        	sd	a0, 0(sp)
80200410: 2e e4                        	sd	a1, 8(sp)
80200412: 32 e8                        	sd	a2, 16(sp)
80200414: 2e 85                        	add	a0, zero, a1
80200416: b2 85                        	add	a1, zero, a2
80200418: 97 00 00 00                  	auipc	ra, 0
8020041c: e7 80 80 f7                  	jalr	-136(ra)
80200420: 09 a0                        	j	2
80200422: 01 45                        	mv	a0, zero
80200424: e2 60                        	ld	ra, 24(sp)
80200426: 05 61                        	addi	sp, sp, 32
80200428: 82 80                        	ret

000000008020042a _ZN2os2io6_print17ha05267e260bbed65E:
8020042a: 5d 71                        	addi	sp, sp, -80
8020042c: 86 e4                        	sd	ra, 72(sp)
8020042e: 0c 75                        	ld	a1, 40(a0)
80200430: ae e0                        	sd	a1, 64(sp)
80200432: 0c 71                        	ld	a1, 32(a0)
80200434: 2e fc                        	sd	a1, 56(sp)
80200436: 0c 6d                        	ld	a1, 24(a0)
80200438: 2e f8                        	sd	a1, 48(sp)
8020043a: 0c 69                        	ld	a1, 16(a0)
8020043c: 2e f4                        	sd	a1, 40(sp)
8020043e: 0c 65                        	ld	a1, 8(a0)
80200440: 2e f0                        	sd	a1, 32(sp)
80200442: 08 61                        	ld	a0, 0(a0)
80200444: 2a ec                        	sd	a0, 24(sp)
80200446: 08 08                        	addi	a0, sp, 16
80200448: 2c 08                        	addi	a1, sp, 24
8020044a: 97 00 00 00                  	auipc	ra, 0
8020044e: e7 80 c0 08                  	jalr	140(ra)
80200452: 2a e4                        	sd	a0, 8(sp)
80200454: 09 a0                        	j	2

0000000080200456 .LBB3_3:
80200456: 97 45 00 00                  	auipc	a1, 4
8020045a: 93 85 25 da                  	addi	a1, a1, -606
8020045e: 22 65                        	ld	a0, 8(sp)
80200460: 97 30 00 00                  	auipc	ra, 3
80200464: e7 80 20 a3                  	jalr	-1486(ra)
80200468: 09 a0                        	j	2
8020046a: a6 60                        	ld	ra, 72(sp)
8020046c: 61 61                        	addi	sp, sp, 80
8020046e: 82 80                        	ret

0000000080200470 _ZN2os3sbi15console_putchar17he947ea5d70e1b4ceE:
80200470: 39 71                        	addi	sp, sp, -64
80200472: 2a e8                        	sd	a0, 16(sp)
80200474: 85 45                        	addi	a1, zero, 1
80200476: 2e f0                        	sd	a1, 32(sp)
80200478: 2a f4                        	sd	a0, 40(sp)
8020047a: 01 46                        	mv	a2, zero
8020047c: 32 f8                        	sd	a2, 48(sp)
8020047e: 32 fc                        	sd	a2, 56(sp)
80200480: 2e e4                        	sd	a1, 8(sp)
80200482: b2 85                        	add	a1, zero, a2
80200484: a2 68                        	ld	a7, 8(sp)
80200486: 73 00 00 00                  	ecall	
8020048a: 2a ec                        	sd	a0, 24(sp)
8020048c: 09 a0                        	j	2
8020048e: 21 61                        	addi	sp, sp, 64
80200490: 82 80                        	ret

0000000080200492 _ZN4core3fmt5Write10write_char17h7e89a5f48cfb2101E:
80200492: 5d 71                        	addi	sp, sp, -80
80200494: 86 e4                        	sd	ra, 72(sp)
80200496: 2e 86                        	add	a2, zero, a1
80200498: 2a fc                        	sd	a0, 56(sp)
8020049a: ae c2                        	sw	a1, 68(sp)
8020049c: 81 46                        	mv	a3, zero
8020049e: 36 da                        	sw	a3, 52(sp)
802004a0: 54 18                        	addi	a3, sp, 52
802004a2: 11 47                        	addi	a4, zero, 4
802004a4: 2a f4                        	sd	a0, 40(sp)
802004a6: 2e 85                        	add	a0, zero, a1
802004a8: b6 85                        	add	a1, zero, a3
802004aa: 32 f0                        	sd	a2, 32(sp)
802004ac: 3a 86                        	add	a2, zero, a4
802004ae: 97 20 00 00                  	auipc	ra, 2
802004b2: e7 80 e0 1b                  	jalr	446(ra)
802004b6: 2a ec                        	sd	a0, 24(sp)
802004b8: 2e e8                        	sd	a1, 16(sp)
802004ba: 09 a0                        	j	2
802004bc: 22 75                        	ld	a0, 40(sp)
802004be: e2 65                        	ld	a1, 24(sp)
802004c0: 42 66                        	ld	a2, 16(sp)
802004c2: 97 00 00 00                  	auipc	ra, 0
802004c6: e7 80 80 f4                  	jalr	-184(ra)
802004ca: 2a e4                        	sd	a0, 8(sp)
802004cc: 09 a0                        	j	2
802004ce: 22 65                        	ld	a0, 8(sp)
802004d0: a6 60                        	ld	ra, 72(sp)
802004d2: 61 61                        	addi	sp, sp, 80
802004d4: 82 80                        	ret

00000000802004d6 _ZN4core3fmt5Write9write_fmt17h6b72c10f2e801d0fE:
802004d6: 5d 71                        	addi	sp, sp, -80
802004d8: 86 e4                        	sd	ra, 72(sp)
802004da: 2a e8                        	sd	a0, 16(sp)
802004dc: 88 61                        	ld	a0, 0(a1)
802004de: 2a ec                        	sd	a0, 24(sp)
802004e0: 88 65                        	ld	a0, 8(a1)
802004e2: 2a f0                        	sd	a0, 32(sp)
802004e4: 88 69                        	ld	a0, 16(a1)
802004e6: 2a f4                        	sd	a0, 40(sp)
802004e8: 88 6d                        	ld	a0, 24(a1)
802004ea: 2a f8                        	sd	a0, 48(sp)
802004ec: 88 71                        	ld	a0, 32(a1)
802004ee: 2a fc                        	sd	a0, 56(sp)
802004f0: 88 75                        	ld	a0, 40(a1)
802004f2: aa e0                        	sd	a0, 64(sp)

00000000802004f4 .LBB1_2:
802004f4: 97 45 00 00                  	auipc	a1, 4
802004f8: 93 85 c5 d1                  	addi	a1, a1, -740
802004fc: 08 08                        	addi	a0, sp, 16
802004fe: 30 08                        	addi	a2, sp, 24
80200500: 97 10 00 00                  	auipc	ra, 1
80200504: e7 80 60 87                  	jalr	-1930(ra)
80200508: 2a e4                        	sd	a0, 8(sp)
8020050a: 09 a0                        	j	2
8020050c: 22 65                        	ld	a0, 8(sp)
8020050e: a6 60                        	ld	ra, 72(sp)
80200510: 61 61                        	addi	sp, sp, 80
80200512: 82 80                        	ret

0000000080200514 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h911d16ad7cd0f99dE:
80200514: 79 71                        	addi	sp, sp, -48
80200516: 06 f4                        	sd	ra, 40(sp)
80200518: 2e 86                        	add	a2, zero, a1
8020051a: 2a ec                        	sd	a0, 24(sp)
8020051c: 2e d2                        	sw	a1, 36(sp)
8020051e: 08 61                        	ld	a0, 0(a0)
80200520: 32 e8                        	sd	a2, 16(sp)
80200522: 97 00 00 00                  	auipc	ra, 0
80200526: e7 80 00 f7                  	jalr	-144(ra)
8020052a: 2a e4                        	sd	a0, 8(sp)
8020052c: 09 a0                        	j	2
8020052e: 22 65                        	ld	a0, 8(sp)
80200530: a2 70                        	ld	ra, 40(sp)
80200532: 45 61                        	addi	sp, sp, 48
80200534: 82 80                        	ret

0000000080200536 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h167a188a9a178deeE:
80200536: 5d 71                        	addi	sp, sp, -80
80200538: 86 e4                        	sd	ra, 72(sp)
8020053a: aa e0                        	sd	a0, 64(sp)
8020053c: 08 61                        	ld	a0, 0(a0)
8020053e: 90 75                        	ld	a2, 40(a1)
80200540: 32 fc                        	sd	a2, 56(sp)
80200542: 90 71                        	ld	a2, 32(a1)
80200544: 32 f8                        	sd	a2, 48(sp)
80200546: 90 6d                        	ld	a2, 24(a1)
80200548: 32 f4                        	sd	a2, 40(sp)
8020054a: 90 69                        	ld	a2, 16(a1)
8020054c: 32 f0                        	sd	a2, 32(sp)
8020054e: 90 65                        	ld	a2, 8(a1)
80200550: 32 ec                        	sd	a2, 24(sp)
80200552: 8c 61                        	ld	a1, 0(a1)
80200554: 2e e8                        	sd	a1, 16(sp)
80200556: 0c 08                        	addi	a1, sp, 16
80200558: 97 00 00 00                  	auipc	ra, 0
8020055c: e7 80 e0 f7                  	jalr	-130(ra)
80200560: 2a e4                        	sd	a0, 8(sp)
80200562: 09 a0                        	j	2
80200564: 22 65                        	ld	a0, 8(sp)
80200566: a6 60                        	ld	ra, 72(sp)
80200568: 61 61                        	addi	sp, sp, 80
8020056a: 82 80                        	ret

000000008020056c _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h30f3f1171d719fd3E:
8020056c: 79 71                        	addi	sp, sp, -48
8020056e: 06 f4                        	sd	ra, 40(sp)
80200570: 2a e8                        	sd	a0, 16(sp)
80200572: 2e ec                        	sd	a1, 24(sp)
80200574: 32 f0                        	sd	a2, 32(sp)
80200576: 08 61                        	ld	a0, 0(a0)
80200578: 97 00 00 00                  	auipc	ra, 0
8020057c: e7 80 20 e9                  	jalr	-366(ra)
80200580: 2a e4                        	sd	a0, 8(sp)
80200582: 09 a0                        	j	2
80200584: 22 65                        	ld	a0, 8(sp)
80200586: a2 70                        	ld	ra, 40(sp)
80200588: 45 61                        	addi	sp, sp, 48
8020058a: 82 80                        	ret

000000008020058c _ZN4core3ops8function6FnOnce9call_once17h18f451d4e9740791E:
8020058c: 08 61                        	ld	a0, 0(a0)
8020058e: 01 a0                        	j	0

0000000080200590 _ZN4core3ptr13drop_in_place17h00027e84e2978af7E:
80200590: 82 80                        	ret

0000000080200592 _ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h5b56fd9706c86594E:
80200592: 5d 71                        	addi	sp, sp, -80
80200594: 86 e4                        	sd	ra, 72(sp)
80200596: a2 e0                        	sd	s0, 64(sp)
80200598: 26 fc                        	sd	s1, 56(sp)
8020059a: 2e 84                        	add	s0, zero, a1
8020059c: aa 84                        	add	s1, zero, a0
8020059e: 97 10 00 00                  	auipc	ra, 1
802005a2: e7 80 e0 70                  	jalr	1806(ra)
802005a6: 1d e5                        	bnez	a0, 46
802005a8: 08 70                        	ld	a0, 32(s0)
802005aa: 0c 74                        	ld	a1, 40(s0)

00000000802005ac .LBB76_4:
802005ac: 17 46 00 00                  	auipc	a2, 4
802005b0: 13 06 c6 cd                  	addi	a2, a2, -804
802005b4: 32 e4                        	sd	a2, 8(sp)
802005b6: 05 46                        	addi	a2, zero, 1
802005b8: 32 e8                        	sd	a2, 16(sp)
802005ba: 02 ec                        	sd	zero, 24(sp)

00000000802005bc .LBB76_5:
802005bc: 17 46 00 00                  	auipc	a2, 4
802005c0: 13 06 46 cc                  	addi	a2, a2, -828
802005c4: 32 f4                        	sd	a2, 40(sp)
802005c6: 02 f8                        	sd	zero, 48(sp)
802005c8: 30 00                        	addi	a2, sp, 8
802005ca: 97 00 00 00                  	auipc	ra, 0
802005ce: e7 80 c0 7a                  	jalr	1964(ra)
802005d2: 19 c5                        	beqz	a0, 14
802005d4: 05 45                        	addi	a0, zero, 1
802005d6: e2 74                        	ld	s1, 56(sp)
802005d8: 06 64                        	ld	s0, 64(sp)
802005da: a6 60                        	ld	ra, 72(sp)
802005dc: 61 61                        	addi	sp, sp, 80
802005de: 82 80                        	ret
802005e0: 13 85 84 00                  	addi	a0, s1, 8
802005e4: a2 85                        	add	a1, zero, s0
802005e6: e2 74                        	ld	s1, 56(sp)
802005e8: 06 64                        	ld	s0, 64(sp)
802005ea: a6 60                        	ld	ra, 72(sp)
802005ec: 61 61                        	addi	sp, sp, 80
802005ee: 17 13 00 00                  	auipc	t1, 1
802005f2: 67 00 e3 6b                  	jr	1726(t1)

00000000802005f6 _ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc8534dacc0949383E:
802005f6: 37 85 a7 fa                  	lui	a0, 1026680
802005fa: 1b 05 d5 32                  	addiw	a0, a0, 813
802005fe: 32 05                        	slli	a0, a0, 12
80200600: 13 05 d5 5b                  	addi	a0, a0, 1469
80200604: 32 05                        	slli	a0, a0, 12
80200606: 13 05 b5 58                  	addi	a0, a0, 1419
8020060a: 32 05                        	slli	a0, a0, 12
8020060c: 13 05 b5 48                  	addi	a0, a0, 1163
80200610: 82 80                        	ret

0000000080200612 _ZN4core6result13unwrap_failed17hfee963a945caf0a4E:
80200612: 19 71                        	addi	sp, sp, -128
80200614: 86 fc                        	sd	ra, 120(sp)
80200616: 2a e4                        	sd	a0, 8(sp)
80200618: 2e e8                        	sd	a1, 16(sp)
8020061a: 32 ec                        	sd	a2, 24(sp)
8020061c: 36 f0                        	sd	a3, 32(sp)
8020061e: 28 00                        	addi	a0, sp, 8
80200620: aa ec                        	sd	a0, 88(sp)

0000000080200622 .LBB117_1:
80200622: 17 25 00 00                  	auipc	a0, 2
80200626: 13 05 85 a5                  	addi	a0, a0, -1448
8020062a: aa f0                        	sd	a0, 96(sp)
8020062c: 28 08                        	addi	a0, sp, 24
8020062e: aa f4                        	sd	a0, 104(sp)

0000000080200630 .LBB117_2:
80200630: 17 25 00 00                  	auipc	a0, 2
80200634: 13 05 25 a4                  	addi	a0, a0, -1470
80200638: aa f8                        	sd	a0, 112(sp)

000000008020063a .LBB117_3:
8020063a: 17 45 00 00                  	auipc	a0, 4
8020063e: 13 05 65 c9                  	addi	a0, a0, -874
80200642: 2a f4                        	sd	a0, 40(sp)
80200644: 09 45                        	addi	a0, zero, 2
80200646: 2a f8                        	sd	a0, 48(sp)
80200648: 02 fc                        	sd	zero, 56(sp)
8020064a: ac 08                        	addi	a1, sp, 88
8020064c: ae e4                        	sd	a1, 72(sp)
8020064e: aa e8                        	sd	a0, 80(sp)
80200650: 28 10                        	addi	a0, sp, 40
80200652: ba 85                        	add	a1, zero, a4
80200654: 97 00 00 00                  	auipc	ra, 0
80200658: e7 80 20 17                  	jalr	370(ra)
8020065c: 00 00                        	unimp	

000000008020065e _ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17ha4bdc962d9fdaa65E:
8020065e: 75 71                        	addi	sp, sp, -144
80200660: 06 e5                        	sd	ra, 136(sp)
80200662: 22 e1                        	sd	s0, 128(sp)
80200664: a6 fc                        	sd	s1, 120(sp)
80200666: ca f8                        	sd	s2, 112(sp)
80200668: 2e 84                        	add	s0, zero, a1
8020066a: 8c 75                        	ld	a1, 40(a1)
8020066c: 14 70                        	ld	a3, 32(s0)
8020066e: 98 6d                        	ld	a4, 24(a1)
80200670: 2a 89                        	add	s2, zero, a0

0000000080200672 .LBB121_8:
80200672: 97 45 00 00                  	auipc	a1, 4
80200676: 93 85 e5 c9                  	addi	a1, a1, -866
8020067a: 31 46                        	addi	a2, zero, 12
8020067c: 36 85                        	add	a0, zero, a3
8020067e: 02 97                        	jalr	a4
80200680: 85 44                        	addi	s1, zero, 1
80200682: 69 e5                        	bnez	a0, 202
80200684: 03 35 09 01                  	ld	a0, 16(s2)
80200688: 09 c9                        	beqz	a0, 18
8020068a: 2a e4                        	sd	a0, 8(sp)
8020068c: 28 00                        	addi	a0, sp, 8
8020068e: 2a e8                        	sd	a0, 16(sp)

0000000080200690 .LBB121_9:
80200690: 17 25 00 00                  	auipc	a0, 2
80200694: 13 05 a5 9f                  	addi	a0, a0, -1542
80200698: 35 a8                        	j	60
8020069a: 03 35 89 00                  	ld	a0, 8(s2)
8020069e: 83 34 09 00                  	ld	s1, 0(s2)
802006a2: 0c 6d                        	ld	a1, 24(a0)
802006a4: 26 85                        	add	a0, zero, s1
802006a6: 82 95                        	jalr	a1
802006a8: b7 f5 7e 00                  	lui	a1, 2031
802006ac: 9b 85 95 2a                  	addiw	a1, a1, 681
802006b0: ba 05                        	slli	a1, a1, 14
802006b2: 93 85 b5 7b                  	addi	a1, a1, 1979
802006b6: b2 05                        	slli	a1, a1, 12
802006b8: 93 85 f5 31                  	addi	a1, a1, 799
802006bc: ba 05                        	slli	a1, a1, 14
802006be: 93 85 45 cf                  	addi	a1, a1, -780
802006c2: 63 1e b5 02                  	bne	a0, a1, 60
802006c6: 26 e4                        	sd	s1, 8(sp)
802006c8: 28 00                        	addi	a0, sp, 8
802006ca: 2a e8                        	sd	a0, 16(sp)

00000000802006cc .LBB121_10:
802006cc: 17 25 00 00                  	auipc	a0, 2
802006d0: 13 05 05 9f                  	addi	a0, a0, -1552
802006d4: 2a ec                        	sd	a0, 24(sp)
802006d6: 08 70                        	ld	a0, 32(s0)
802006d8: 0c 74                        	ld	a1, 40(s0)

00000000802006da .LBB121_11:
802006da: 17 46 00 00                  	auipc	a2, 4
802006de: 13 06 66 c4                  	addi	a2, a2, -954
802006e2: b2 e0                        	sd	a2, 64(sp)
802006e4: 09 46                        	addi	a2, zero, 2
802006e6: b2 e4                        	sd	a2, 72(sp)
802006e8: 82 e8                        	sd	zero, 80(sp)
802006ea: 10 08                        	addi	a2, sp, 16
802006ec: b2 f0                        	sd	a2, 96(sp)
802006ee: 85 44                        	addi	s1, zero, 1
802006f0: a6 f4                        	sd	s1, 104(sp)
802006f2: 90 00                        	addi	a2, sp, 64
802006f4: 97 00 00 00                  	auipc	ra, 0
802006f8: e7 80 20 68                  	jalr	1666(ra)
802006fc: 21 e9                        	bnez	a0, 80
802006fe: 03 35 89 01                  	ld	a0, 24(s2)
80200702: 93 05 05 01                  	addi	a1, a0, 16
80200706: 13 06 45 01                  	addi	a2, a0, 20
8020070a: 2a e8                        	sd	a0, 16(sp)

000000008020070c .LBB121_12:
8020070c: 17 25 00 00                  	auipc	a0, 2
80200710: 13 05 e5 96                  	addi	a0, a0, -1682
80200714: 2a ec                        	sd	a0, 24(sp)
80200716: 2e f0                        	sd	a1, 32(sp)

0000000080200718 .LBB121_13:
80200718: 17 25 00 00                  	auipc	a0, 2
8020071c: 13 05 a5 92                  	addi	a0, a0, -1750
80200720: 2a f4                        	sd	a0, 40(sp)
80200722: 32 f8                        	sd	a2, 48(sp)
80200724: 2a fc                        	sd	a0, 56(sp)
80200726: 08 70                        	ld	a0, 32(s0)
80200728: 0c 74                        	ld	a1, 40(s0)

000000008020072a .LBB121_14:
8020072a: 17 46 00 00                  	auipc	a2, 4
8020072e: 13 06 e6 c1                  	addi	a2, a2, -994
80200732: b2 e0                        	sd	a2, 64(sp)
80200734: 0d 46                        	addi	a2, zero, 3
80200736: b2 e4                        	sd	a2, 72(sp)
80200738: 82 e8                        	sd	zero, 80(sp)
8020073a: 14 08                        	addi	a3, sp, 16
8020073c: b6 f0                        	sd	a3, 96(sp)
8020073e: b2 f4                        	sd	a2, 104(sp)
80200740: 90 00                        	addi	a2, sp, 64
80200742: 97 00 00 00                  	auipc	ra, 0
80200746: e7 80 40 63                  	jalr	1588(ra)
8020074a: aa 84                        	add	s1, zero, a0
8020074c: 26 85                        	add	a0, zero, s1
8020074e: 46 79                        	ld	s2, 112(sp)
80200750: e6 74                        	ld	s1, 120(sp)
80200752: 0a 64                        	ld	s0, 128(sp)
80200754: aa 60                        	ld	ra, 136(sp)
80200756: 49 61                        	addi	sp, sp, 144
80200758: 82 80                        	ret

000000008020075a _ZN4core9panicking5panic17hada9984cc1d6f2faE:
8020075a: 5d 71                        	addi	sp, sp, -80
8020075c: 86 e4                        	sd	ra, 72(sp)
8020075e: 2a fc                        	sd	a0, 56(sp)
80200760: ae e0                        	sd	a1, 64(sp)
80200762: 28 18                        	addi	a0, sp, 56
80200764: 2a e4                        	sd	a0, 8(sp)
80200766: 05 45                        	addi	a0, zero, 1
80200768: 2a e8                        	sd	a0, 16(sp)
8020076a: 02 ec                        	sd	zero, 24(sp)

000000008020076c .LBB128_1:
8020076c: 17 45 00 00                  	auipc	a0, 4
80200770: 13 05 45 b1                  	addi	a0, a0, -1260
80200774: 2a f4                        	sd	a0, 40(sp)
80200776: 02 f8                        	sd	zero, 48(sp)
80200778: 28 00                        	addi	a0, sp, 8
8020077a: b2 85                        	add	a1, zero, a2
8020077c: 97 00 00 00                  	auipc	ra, 0
80200780: e7 80 a0 04                  	jalr	74(ra)
80200784: 00 00                        	unimp	

0000000080200786 _ZN4core9panicking18panic_bounds_check17hb127dc4cc37fde7aE:
80200786: 59 71                        	addi	sp, sp, -112
80200788: 86 f4                        	sd	ra, 104(sp)
8020078a: 2a e4                        	sd	a0, 8(sp)
8020078c: 2e e8                        	sd	a1, 16(sp)
8020078e: 08 08                        	addi	a0, sp, 16
80200790: aa e4                        	sd	a0, 72(sp)

0000000080200792 .LBB129_1:
80200792: 17 25 00 00                  	auipc	a0, 2
80200796: 13 05 05 8c                  	addi	a0, a0, -1856
8020079a: aa e8                        	sd	a0, 80(sp)
8020079c: 2c 00                        	addi	a1, sp, 8
8020079e: ae ec                        	sd	a1, 88(sp)
802007a0: aa f0                        	sd	a0, 96(sp)

00000000802007a2 .LBB129_2:
802007a2: 17 45 00 00                  	auipc	a0, 4
802007a6: 13 05 e5 be                  	addi	a0, a0, -1042
802007aa: 2a ec                        	sd	a0, 24(sp)
802007ac: 09 45                        	addi	a0, zero, 2
802007ae: 2a f0                        	sd	a0, 32(sp)
802007b0: 02 f4                        	sd	zero, 40(sp)
802007b2: ac 00                        	addi	a1, sp, 72
802007b4: 2e fc                        	sd	a1, 56(sp)
802007b6: aa e0                        	sd	a0, 64(sp)
802007b8: 28 08                        	addi	a0, sp, 24
802007ba: b2 85                        	add	a1, zero, a2
802007bc: 97 00 00 00                  	auipc	ra, 0
802007c0: e7 80 a0 00                  	jalr	10(ra)
802007c4: 00 00                        	unimp	

00000000802007c6 _ZN4core9panicking9panic_fmt17h2f823c72a23f8e31E:
802007c6: 79 71                        	addi	sp, sp, -48
802007c8: 06 f4                        	sd	ra, 40(sp)

00000000802007ca .LBB130_1:
802007ca: 17 46 00 00                  	auipc	a2, 4
802007ce: 13 06 66 ab                  	addi	a2, a2, -1354
802007d2: 32 e4                        	sd	a2, 8(sp)

00000000802007d4 .LBB130_2:
802007d4: 17 46 00 00                  	auipc	a2, 4
802007d8: 13 06 c6 b1                  	addi	a2, a2, -1252
802007dc: 32 e8                        	sd	a2, 16(sp)
802007de: 2a ec                        	sd	a0, 24(sp)
802007e0: 2e f0                        	sd	a1, 32(sp)
802007e2: 28 00                        	addi	a0, sp, 8
802007e4: 97 20 00 00                  	auipc	ra, 2
802007e8: e7 80 e0 a6                  	jalr	-1426(ra)
802007ec: 00 00                        	unimp	

00000000802007ee _ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17he3aedd4f3d080c40E:
802007ee: 35 71                        	addi	sp, sp, -160
802007f0: 06 ed                        	sd	ra, 152(sp)
802007f2: 22 e9                        	sd	s0, 144(sp)
802007f4: 26 e5                        	sd	s1, 136(sp)
802007f6: 4a e1                        	sd	s2, 128(sp)
802007f8: ce fc                        	sd	s3, 120(sp)
802007fa: d2 f8                        	sd	s4, 112(sp)
802007fc: d6 f4                        	sd	s5, 104(sp)
802007fe: da f0                        	sd	s6, 96(sp)
80200800: de ec                        	sd	s7, 88(sp)
80200802: e2 e8                        	sd	s8, 80(sp)
80200804: e6 e4                        	sd	s9, 72(sp)
80200806: ea e0                        	sd	s10, 64(sp)
80200808: 6e fc                        	sd	s11, 56(sp)
8020080a: 63 09 06 12                  	beqz	a2, 306
8020080e: b2 8d                        	add	s11, zero, a2
80200810: ae 8a                        	add	s5, zero, a1
80200812: 2a 89                        	add	s2, zero, a0
80200814: 13 0b 81 00                  	addi	s6, sp, 8
80200818: 93 09 cb 02                  	addi	s3, s6, 44
8020081c: 95 4b                        	addi	s7, zero, 5
8020081e: 13 95 1b 02                  	slli	a0, s7, 33
80200822: 13 0c a5 00                  	addi	s8, a0, 10
80200826: 85 4c                        	addi	s9, zero, 1

0000000080200828 .LBB132_31:
80200828: 17 45 00 00                  	auipc	a0, 4
8020082c: 13 05 05 a7                  	addi	a0, a0, -1424
80200830: 2a e0                        	sd	a0, 0(sp)
80200832: 31 a0                        	j	12
80200834: b3 8d 8d 40                  	sub	s11, s11, s0
80200838: ea 8a                        	add	s5, zero, s10
8020083a: 63 81 0d 10                  	beqz	s11, 258
8020083e: 03 35 09 01                  	ld	a0, 16(s2)
80200842: 03 45 05 00                  	lbu	a0, 0(a0)
80200846: 11 c9                        	beqz	a0, 20
80200848: 83 35 89 00                  	ld	a1, 8(s2)
8020084c: 03 35 09 00                  	ld	a0, 0(s2)
80200850: 94 6d                        	ld	a3, 24(a1)
80200852: 11 46                        	addi	a2, zero, 4
80200854: 82 65                        	ld	a1, 0(sp)
80200856: 82 96                        	jalr	a3
80200858: 65 e5                        	bnez	a0, 232
8020085a: 56 e4                        	sd	s5, 8(sp)
8020085c: 6e e8                        	sd	s11, 16(sp)
8020085e: 02 ec                        	sd	zero, 24(sp)
80200860: 6e f0                        	sd	s11, 32(sp)
80200862: 62 f8                        	sd	s8, 48(sp)
80200864: 66 f4                        	sd	s9, 40(sp)
80200866: 29 45                        	addi	a0, zero, 10
80200868: d6 85                        	add	a1, zero, s5
8020086a: 6e 86                        	add	a2, zero, s11
8020086c: 97 10 00 00                  	auipc	ra, 1
80200870: e7 80 60 f0                  	jalr	-250(ra)
80200874: 63 10 95 07                  	bne	a0, s9, 96
80200878: 62 65                        	ld	a0, 24(sp)
8020087a: 2e 95                        	add	a0, a0, a1
8020087c: 93 04 15 00                  	addi	s1, a0, 1
80200880: 26 ec                        	sd	s1, 24(sp)
80200882: 22 74                        	ld	s0, 40(sp)
80200884: 63 f4 84 00                  	bgeu	s1, s0, 8
80200888: 42 6d                        	ld	s10, 16(sp)
8020088a: 1d a0                        	j	38
8020088c: 42 6d                        	ld	s10, 16(sp)
8020088e: 63 61 9d 02                  	bltu	s10, s1, 34
80200892: 63 77 74 0d                  	bgeu	s0, s7, 206
80200896: 22 65                        	ld	a0, 8(sp)
80200898: 33 8a 84 40                  	sub	s4, s1, s0
8020089c: 52 95                        	add	a0, a0, s4
8020089e: 63 08 35 09                  	beq	a0, s3, 144
802008a2: ce 85                        	add	a1, zero, s3
802008a4: 22 86                        	add	a2, zero, s0
802008a6: 97 20 00 00                  	auipc	ra, 2
802008aa: e7 80 c0 98                  	jalr	-1652(ra)
802008ae: 41 c1                        	beqz	a0, 128
802008b0: 02 76                        	ld	a2, 32(sp)
802008b2: 63 63 96 02                  	bltu	a2, s1, 38
802008b6: 63 61 cd 02                  	bltu	s10, a2, 34
802008ba: a2 65                        	ld	a1, 8(sp)
802008bc: 33 05 64 01                  	add	a0, s0, s6
802008c0: 03 05 b5 02                  	lb	a0, 43(a0)
802008c4: a6 95                        	add	a1, a1, s1
802008c6: 05 8e                        	sub	a2, a2, s1
802008c8: 97 10 00 00                  	auipc	ra, 1
802008cc: e7 80 a0 ea                  	jalr	-342(ra)
802008d0: e3 04 95 fb                  	beq	a0, s9, -88
802008d4: 02 75                        	ld	a0, 32(sp)
802008d6: 2a ec                        	sd	a0, 24(sp)
802008d8: 03 35 09 01                  	ld	a0, 16(s2)
802008dc: 23 00 05 00                  	sb	zero, 0(a0)
802008e0: 6e 84                        	add	s0, zero, s11
802008e2: 03 35 09 00                  	ld	a0, 0(s2)
802008e6: 83 35 89 00                  	ld	a1, 8(s2)
802008ea: 13 36 14 00                  	seqz	a2, s0
802008ee: b3 c6 8d 00                  	xor	a3, s11, s0
802008f2: 93 b6 16 00                  	seqz	a3, a3
802008f6: b3 64 d6 00                  	or	s1, a2, a3
802008fa: 33 8d 8a 00                  	add	s10, s5, s0
802008fe: 89 e8                        	bnez	s1, 18
80200900: 63 7b b4 07                  	bgeu	s0, s11, 118
80200904: 03 06 0d 00                  	lb	a2, 0(s10)
80200908: 93 06 f0 fb                  	addi	a3, zero, -65
8020090c: 63 d5 c6 06                  	bge	a3, a2, 106
80200910: 94 6d                        	ld	a3, 24(a1)
80200912: d6 85                        	add	a1, zero, s5
80200914: 22 86                        	add	a2, zero, s0
80200916: 82 96                        	jalr	a3
80200918: 05 e5                        	bnez	a0, 40
8020091a: 89 fc                        	bnez	s1, -230
8020091c: 63 7a b4 07                  	bgeu	s0, s11, 116
80200920: 03 05 0d 00                  	lb	a0, 0(s10)
80200924: 93 05 f0 fb                  	addi	a1, zero, -65
80200928: e3 c6 a5 f0                  	blt	a1, a0, -244
8020092c: 95 a0                        	j	100
8020092e: 03 35 09 01                  	ld	a0, 16(s2)
80200932: 23 00 95 01                  	sb	s9, 0(a0)
80200936: 13 04 1a 00                  	addi	s0, s4, 1
8020093a: 65 b7                        	j	-88
8020093c: 01 45                        	mv	a0, zero
8020093e: 11 a0                        	j	4
80200940: 05 45                        	addi	a0, zero, 1
80200942: e2 7d                        	ld	s11, 56(sp)
80200944: 06 6d                        	ld	s10, 64(sp)
80200946: a6 6c                        	ld	s9, 72(sp)
80200948: 46 6c                        	ld	s8, 80(sp)
8020094a: e6 6b                        	ld	s7, 88(sp)
8020094c: 06 7b                        	ld	s6, 96(sp)
8020094e: a6 7a                        	ld	s5, 104(sp)
80200950: 46 7a                        	ld	s4, 112(sp)
80200952: e6 79                        	ld	s3, 120(sp)
80200954: 0a 69                        	ld	s2, 128(sp)
80200956: aa 64                        	ld	s1, 136(sp)
80200958: 4a 64                        	ld	s0, 144(sp)
8020095a: ea 60                        	ld	ra, 152(sp)
8020095c: 0d 61                        	addi	sp, sp, 160
8020095e: 82 80                        	ret

0000000080200960 .LBB132_32:
80200960: 17 46 00 00                  	auipc	a2, 4
80200964: 13 06 86 cf                  	addi	a2, a2, -776
80200968: 91 45                        	addi	a1, zero, 4
8020096a: 22 85                        	add	a0, zero, s0
8020096c: 97 10 00 00                  	auipc	ra, 1
80200970: e7 80 20 f2                  	jalr	-222(ra)
80200974: 00 00                        	unimp	

0000000080200976 .LBB132_33:
80200976: 17 47 00 00                  	auipc	a4, 4
8020097a: 13 07 27 d1                  	addi	a4, a4, -750
8020097e: 56 85                        	add	a0, zero, s5
80200980: ee 85                        	add	a1, zero, s11
80200982: 01 46                        	mv	a2, zero
80200984: a2 86                        	add	a3, zero, s0
80200986: 97 10 00 00                  	auipc	ra, 1
8020098a: e7 80 80 f8                  	jalr	-120(ra)
8020098e: 00 00                        	unimp	

0000000080200990 .LBB132_34:
80200990: 17 47 00 00                  	auipc	a4, 4
80200994: 13 07 07 d1                  	addi	a4, a4, -752
80200998: 56 85                        	add	a0, zero, s5
8020099a: ee 85                        	add	a1, zero, s11
8020099c: 22 86                        	add	a2, zero, s0
8020099e: ee 86                        	add	a3, zero, s11
802009a0: 97 10 00 00                  	auipc	ra, 1
802009a4: e7 80 e0 f6                  	jalr	-146(ra)
802009a8: 00 00                        	unimp	

00000000802009aa _ZN4core3fmt8builders10DebugTuple5field17h10609664a1c96872E:
802009aa: 75 71                        	addi	sp, sp, -144
802009ac: 06 e5                        	sd	ra, 136(sp)
802009ae: 22 e1                        	sd	s0, 128(sp)
802009b0: a6 fc                        	sd	s1, 120(sp)
802009b2: ca f8                        	sd	s2, 112(sp)
802009b4: ce f4                        	sd	s3, 104(sp)
802009b6: 2a 84                        	add	s0, zero, a0
802009b8: 03 45 05 01                  	lbu	a0, 16(a0)
802009bc: 85 44                        	addi	s1, zero, 1
802009be: 69 e1                        	bnez	a0, 194
802009c0: b2 89                        	add	s3, zero, a2
802009c2: 2e 89                        	add	s2, zero, a1
802009c4: 08 60                        	ld	a0, 0(s0)
802009c6: 83 65 05 03                  	lwu	a1, 48(a0)
802009ca: 10 64                        	ld	a2, 8(s0)
802009cc: 93 f6 45 00                  	andi	a3, a1, 4
802009d0: 89 ea                        	bnez	a3, 18
802009d2: 85 44                        	addi	s1, zero, 1
802009d4: 51 c6                        	beqz	a2, 140

00000000802009d6 .LBB136_14:
802009d6: 97 45 00 00                  	auipc	a1, 4
802009da: 93 85 c5 a0                  	addi	a1, a1, -1524
802009de: 09 46                        	addi	a2, zero, 2
802009e0: 69 a0                        	j	138
802009e2: 11 ee                        	bnez	a2, 28
802009e4: 0c 75                        	ld	a1, 40(a0)
802009e6: 08 71                        	ld	a0, 32(a0)
802009e8: 94 6d                        	ld	a3, 24(a1)

00000000802009ea .LBB136_15:
802009ea: 97 45 00 00                  	auipc	a1, 4
802009ee: 93 85 a5 9f                  	addi	a1, a1, -1542
802009f2: 09 46                        	addi	a2, zero, 2
802009f4: 82 96                        	jalr	a3
802009f6: 49 e5                        	bnez	a0, 138
802009f8: 08 60                        	ld	a0, 0(s0)
802009fa: 83 65 05 03                  	lwu	a1, 48(a0)
802009fe: 85 44                        	addi	s1, zero, 1
80200a00: a3 03 91 02                  	sb	s1, 39(sp)
80200a04: 10 71                        	ld	a2, 32(a0)
80200a06: 14 75                        	ld	a3, 40(a0)
80200a08: 32 e4                        	sd	a2, 8(sp)
80200a0a: 36 e8                        	sd	a3, 16(sp)
80200a0c: 13 06 71 02                  	addi	a2, sp, 39
80200a10: 32 ec                        	sd	a2, 24(sp)
80200a12: 50 59                        	lw	a2, 52(a0)
80200a14: 83 06 85 03                  	lb	a3, 56(a0)
80200a18: 18 61                        	ld	a4, 0(a0)
80200a1a: 1c 65                        	ld	a5, 8(a0)
80200a1c: 03 38 05 01                  	ld	a6, 16(a0)
80200a20: 08 6d                        	ld	a0, 24(a0)
80200a22: ae cc                        	sw	a1, 88(sp)
80200a24: b2 ce                        	sw	a2, 92(sp)
80200a26: 23 00 d1 06                  	sb	a3, 96(sp)
80200a2a: 3a f4                        	sd	a4, 40(sp)
80200a2c: 3e f8                        	sd	a5, 48(sp)
80200a2e: 42 fc                        	sd	a6, 56(sp)
80200a30: aa e0                        	sd	a0, 64(sp)
80200a32: 28 00                        	addi	a0, sp, 8
80200a34: 03 b6 89 01                  	ld	a2, 24(s3)
80200a38: aa e4                        	sd	a0, 72(sp)

0000000080200a3a .LBB136_16:
80200a3a: 17 45 00 00                  	auipc	a0, 4
80200a3e: 13 05 65 97                  	addi	a0, a0, -1674
80200a42: aa e8                        	sd	a0, 80(sp)
80200a44: 2c 10                        	addi	a1, sp, 40
80200a46: 4a 85                        	add	a0, zero, s2
80200a48: 02 96                        	jalr	a2
80200a4a: 1d e9                        	bnez	a0, 54
80200a4c: c6 65                        	ld	a1, 80(sp)
80200a4e: 26 65                        	ld	a0, 72(sp)
80200a50: 94 6d                        	ld	a3, 24(a1)

0000000080200a52 .LBB136_17:
80200a52: 97 45 00 00                  	auipc	a1, 4
80200a56: 93 85 e5 98                  	addi	a1, a1, -1650
80200a5a: 09 46                        	addi	a2, zero, 2
80200a5c: 82 96                        	jalr	a3
80200a5e: 05 a0                        	j	32

0000000080200a60 .LBB136_18:
80200a60: 97 45 00 00                  	auipc	a1, 4
80200a64: 93 85 65 98                  	addi	a1, a1, -1658
80200a68: 05 46                        	addi	a2, zero, 1
80200a6a: 14 75                        	ld	a3, 40(a0)
80200a6c: 08 71                        	ld	a0, 32(a0)
80200a6e: 94 6e                        	ld	a3, 24(a3)
80200a70: 82 96                        	jalr	a3
80200a72: 19 e5                        	bnez	a0, 14
80200a74: 0c 60                        	ld	a1, 0(s0)
80200a76: 03 b6 89 01                  	ld	a2, 24(s3)
80200a7a: 4a 85                        	add	a0, zero, s2
80200a7c: 02 96                        	jalr	a2
80200a7e: aa 84                        	add	s1, zero, a0
80200a80: 08 64                        	ld	a0, 8(s0)
80200a82: 23 08 94 00                  	sb	s1, 16(s0)
80200a86: 05 05                        	addi	a0, a0, 1
80200a88: 08 e4                        	sd	a0, 8(s0)
80200a8a: 22 85                        	add	a0, zero, s0
80200a8c: a6 79                        	ld	s3, 104(sp)
80200a8e: 46 79                        	ld	s2, 112(sp)
80200a90: e6 74                        	ld	s1, 120(sp)
80200a92: 0a 64                        	ld	s0, 128(sp)
80200a94: aa 60                        	ld	ra, 136(sp)
80200a96: 49 61                        	addi	sp, sp, 144
80200a98: 82 80                        	ret

0000000080200a9a _ZN4core3fmt8builders10DebugTuple6finish17h00fad7daa6b35633E:
80200a9a: 01 11                        	addi	sp, sp, -32
80200a9c: 06 ec                        	sd	ra, 24(sp)
80200a9e: 22 e8                        	sd	s0, 16(sp)
80200aa0: 26 e4                        	sd	s1, 8(sp)
80200aa2: 2a 84                        	add	s0, zero, a0
80200aa4: 0c 65                        	ld	a1, 8(a0)
80200aa6: 03 45 05 01                  	lbu	a0, 16(a0)
80200aaa: b9 c5                        	beqz	a1, 78
80200aac: 85 44                        	addi	s1, zero, 1
80200aae: 31 e1                        	bnez	a0, 68
80200ab0: 05 45                        	addi	a0, zero, 1
80200ab2: 63 95 a5 02                  	bne	a1, a0, 42
80200ab6: 03 45 14 01                  	lbu	a0, 17(s0)
80200aba: 0d c1                        	beqz	a0, 34
80200abc: 08 60                        	ld	a0, 0(s0)
80200abe: 83 45 05 03                  	lbu	a1, 48(a0)
80200ac2: 91 89                        	andi	a1, a1, 4
80200ac4: 81 ed                        	bnez	a1, 24
80200ac6: 0c 75                        	ld	a1, 40(a0)
80200ac8: 08 71                        	ld	a0, 32(a0)
80200aca: 94 6d                        	ld	a3, 24(a1)

0000000080200acc .LBB137_9:
80200acc: 97 45 00 00                  	auipc	a1, 4
80200ad0: 93 85 b5 91                  	addi	a1, a1, -1765
80200ad4: 05 46                        	addi	a2, zero, 1
80200ad6: 85 44                        	addi	s1, zero, 1
80200ad8: 82 96                        	jalr	a3
80200ada: 01 ed                        	bnez	a0, 24
80200adc: 08 60                        	ld	a0, 0(s0)
80200ade: 0c 75                        	ld	a1, 40(a0)
80200ae0: 08 71                        	ld	a0, 32(a0)
80200ae2: 94 6d                        	ld	a3, 24(a1)

0000000080200ae4 .LBB137_10:
80200ae4: 97 45 00 00                  	auipc	a1, 4
80200ae8: 93 85 45 90                  	addi	a1, a1, -1788
80200aec: 05 46                        	addi	a2, zero, 1
80200aee: 82 96                        	jalr	a3
80200af0: aa 84                        	add	s1, zero, a0
80200af2: 23 08 94 00                  	sb	s1, 16(s0)
80200af6: 26 85                        	add	a0, zero, s1
80200af8: 33 35 a0 00                  	snez	a0, a0
80200afc: a2 64                        	ld	s1, 8(sp)
80200afe: 42 64                        	ld	s0, 16(sp)
80200b00: e2 60                        	ld	ra, 24(sp)
80200b02: 05 61                        	addi	sp, sp, 32
80200b04: 82 80                        	ret

0000000080200b06 _ZN4core3fmt5Write10write_char17h88d98e20541d2fccE:
80200b06: 41 11                        	addi	sp, sp, -16
80200b08: 06 e4                        	sd	ra, 8(sp)
80200b0a: 2e 86                        	add	a2, zero, a1
80200b0c: 81 25                        	sext.w	a1, a1
80200b0e: 93 06 00 08                  	addi	a3, zero, 128
80200b12: 02 c2                        	sw	zero, 4(sp)
80200b14: 63 fd d5 00                  	bgeu	a1, a3, 26
80200b18: 4c 00                        	addi	a1, sp, 4
80200b1a: 23 02 c1 00                  	sb	a2, 4(sp)
80200b1e: 05 46                        	addi	a2, zero, 1
80200b20: 97 00 00 00                  	auipc	ra, 0
80200b24: e7 80 e0 cc                  	jalr	-818(ra)
80200b28: a2 60                        	ld	ra, 8(sp)
80200b2a: 41 01                        	addi	sp, sp, 16
80200b2c: 82 80                        	ret
80200b2e: 9b 55 b6 00                  	srliw	a1, a2, 11
80200b32: 95 e5                        	bnez	a1, 44
80200b34: 4c 00                        	addi	a1, sp, 4
80200b36: 93 56 66 00                  	srli	a3, a2, 6
80200b3a: 93 e6 06 0c                  	ori	a3, a3, 192
80200b3e: 23 02 d1 00                  	sb	a3, 4(sp)
80200b42: 13 76 f6 03                  	andi	a2, a2, 63
80200b46: 13 66 06 08                  	ori	a2, a2, 128
80200b4a: a3 02 c1 00                  	sb	a2, 5(sp)
80200b4e: 09 46                        	addi	a2, zero, 2
80200b50: 97 00 00 00                  	auipc	ra, 0
80200b54: e7 80 e0 c9                  	jalr	-866(ra)
80200b58: a2 60                        	ld	ra, 8(sp)
80200b5a: 41 01                        	addi	sp, sp, 16
80200b5c: 82 80                        	ret
80200b5e: 9b 56 06 01                  	srliw	a3, a2, 16
80200b62: 4c 00                        	addi	a1, sp, 4
80200b64: 8d ee                        	bnez	a3, 58
80200b66: 9b 56 c6 00                  	srliw	a3, a2, 12
80200b6a: 93 e6 06 0e                  	ori	a3, a3, 224
80200b6e: 23 02 d1 00                  	sb	a3, 4(sp)
80200b72: 9b 56 66 00                  	srliw	a3, a2, 6
80200b76: 93 f6 f6 03                  	andi	a3, a3, 63
80200b7a: 93 e6 06 08                  	ori	a3, a3, 128
80200b7e: a3 02 d1 00                  	sb	a3, 5(sp)
80200b82: 13 76 f6 03                  	andi	a2, a2, 63
80200b86: 13 66 06 08                  	ori	a2, a2, 128
80200b8a: 23 03 c1 00                  	sb	a2, 6(sp)
80200b8e: 0d 46                        	addi	a2, zero, 3
80200b90: 97 00 00 00                  	auipc	ra, 0
80200b94: e7 80 e0 c5                  	jalr	-930(ra)
80200b98: a2 60                        	ld	ra, 8(sp)
80200b9a: 41 01                        	addi	sp, sp, 16
80200b9c: 82 80                        	ret
80200b9e: 9b 56 26 01                  	srliw	a3, a2, 18
80200ba2: 93 e6 06 0f                  	ori	a3, a3, 240
80200ba6: 23 02 d1 00                  	sb	a3, 4(sp)
80200baa: 9b 56 c6 00                  	srliw	a3, a2, 12
80200bae: 93 f6 f6 03                  	andi	a3, a3, 63
80200bb2: 93 e6 06 08                  	ori	a3, a3, 128
80200bb6: a3 02 d1 00                  	sb	a3, 5(sp)
80200bba: 9b 56 66 00                  	srliw	a3, a2, 6
80200bbe: 93 f6 f6 03                  	andi	a3, a3, 63
80200bc2: 93 e6 06 08                  	ori	a3, a3, 128
80200bc6: 23 03 d1 00                  	sb	a3, 6(sp)
80200bca: 13 76 f6 03                  	andi	a2, a2, 63
80200bce: 13 66 06 08                  	ori	a2, a2, 128
80200bd2: a3 03 c1 00                  	sb	a2, 7(sp)
80200bd6: 11 46                        	addi	a2, zero, 4
80200bd8: 97 00 00 00                  	auipc	ra, 0
80200bdc: e7 80 60 c1                  	jalr	-1002(ra)
80200be0: a2 60                        	ld	ra, 8(sp)
80200be2: 41 01                        	addi	sp, sp, 16
80200be4: 82 80                        	ret

0000000080200be6 _ZN4core3fmt5Write9write_fmt17h89d269e5e8b0f57eE:
80200be6: 39 71                        	addi	sp, sp, -64
80200be8: 06 fc                        	sd	ra, 56(sp)
80200bea: 90 75                        	ld	a2, 40(a1)
80200bec: 94 71                        	ld	a3, 32(a1)
80200bee: 2a e0                        	sd	a0, 0(sp)
80200bf0: 32 f8                        	sd	a2, 48(sp)
80200bf2: 36 f4                        	sd	a3, 40(sp)
80200bf4: 88 6d                        	ld	a0, 24(a1)
80200bf6: 90 69                        	ld	a2, 16(a1)
80200bf8: 94 65                        	ld	a3, 8(a1)
80200bfa: 8c 61                        	ld	a1, 0(a1)
80200bfc: 2a f0                        	sd	a0, 32(sp)
80200bfe: 32 ec                        	sd	a2, 24(sp)
80200c00: 36 e8                        	sd	a3, 16(sp)
80200c02: 2e e4                        	sd	a1, 8(sp)

0000000080200c04 .LBB155_1:
80200c04: 97 45 00 00                  	auipc	a1, 4
80200c08: 93 85 45 8e                  	addi	a1, a1, -1820
80200c0c: 0a 85                        	add	a0, zero, sp
80200c0e: 30 00                        	addi	a2, sp, 8
80200c10: 97 00 00 00                  	auipc	ra, 0
80200c14: e7 80 60 16                  	jalr	358(ra)
80200c18: e2 70                        	ld	ra, 56(sp)
80200c1a: 21 61                        	addi	sp, sp, 64
80200c1c: 82 80                        	ret

0000000080200c1e _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17hb5709b01b7c41321E:
80200c1e: 08 61                        	ld	a0, 0(a0)
80200c20: 17 03 00 00                  	auipc	t1, 0
80200c24: 67 00 e3 bc                  	jr	-1074(t1)

0000000080200c28 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h20ad077d9942d13eE:
80200c28: 41 11                        	addi	sp, sp, -16
80200c2a: 06 e4                        	sd	ra, 8(sp)
80200c2c: 2e 86                        	add	a2, zero, a1
80200c2e: 08 61                        	ld	a0, 0(a0)
80200c30: 81 25                        	sext.w	a1, a1
80200c32: 93 06 00 08                  	addi	a3, zero, 128
80200c36: 02 c2                        	sw	zero, 4(sp)
80200c38: 63 fd d5 00                  	bgeu	a1, a3, 26
80200c3c: 4c 00                        	addi	a1, sp, 4
80200c3e: 23 02 c1 00                  	sb	a2, 4(sp)
80200c42: 05 46                        	addi	a2, zero, 1
80200c44: 97 00 00 00                  	auipc	ra, 0
80200c48: e7 80 a0 ba                  	jalr	-1110(ra)
80200c4c: a2 60                        	ld	ra, 8(sp)
80200c4e: 41 01                        	addi	sp, sp, 16
80200c50: 82 80                        	ret
80200c52: 9b 55 b6 00                  	srliw	a1, a2, 11
80200c56: 95 e5                        	bnez	a1, 44
80200c58: 4c 00                        	addi	a1, sp, 4
80200c5a: 93 56 66 00                  	srli	a3, a2, 6
80200c5e: 93 e6 06 0c                  	ori	a3, a3, 192
80200c62: 23 02 d1 00                  	sb	a3, 4(sp)
80200c66: 13 76 f6 03                  	andi	a2, a2, 63
80200c6a: 13 66 06 08                  	ori	a2, a2, 128
80200c6e: a3 02 c1 00                  	sb	a2, 5(sp)
80200c72: 09 46                        	addi	a2, zero, 2
80200c74: 97 00 00 00                  	auipc	ra, 0
80200c78: e7 80 a0 b7                  	jalr	-1158(ra)
80200c7c: a2 60                        	ld	ra, 8(sp)
80200c7e: 41 01                        	addi	sp, sp, 16
80200c80: 82 80                        	ret
80200c82: 9b 56 06 01                  	srliw	a3, a2, 16
80200c86: 4c 00                        	addi	a1, sp, 4
80200c88: 8d ee                        	bnez	a3, 58
80200c8a: 9b 56 c6 00                  	srliw	a3, a2, 12
80200c8e: 93 e6 06 0e                  	ori	a3, a3, 224
80200c92: 23 02 d1 00                  	sb	a3, 4(sp)
80200c96: 9b 56 66 00                  	srliw	a3, a2, 6
80200c9a: 93 f6 f6 03                  	andi	a3, a3, 63
80200c9e: 93 e6 06 08                  	ori	a3, a3, 128
80200ca2: a3 02 d1 00                  	sb	a3, 5(sp)
80200ca6: 13 76 f6 03                  	andi	a2, a2, 63
80200caa: 13 66 06 08                  	ori	a2, a2, 128
80200cae: 23 03 c1 00                  	sb	a2, 6(sp)
80200cb2: 0d 46                        	addi	a2, zero, 3
80200cb4: 97 00 00 00                  	auipc	ra, 0
80200cb8: e7 80 a0 b3                  	jalr	-1222(ra)
80200cbc: a2 60                        	ld	ra, 8(sp)
80200cbe: 41 01                        	addi	sp, sp, 16
80200cc0: 82 80                        	ret
80200cc2: 9b 56 26 01                  	srliw	a3, a2, 18
80200cc6: 93 e6 06 0f                  	ori	a3, a3, 240
80200cca: 23 02 d1 00                  	sb	a3, 4(sp)
80200cce: 9b 56 c6 00                  	srliw	a3, a2, 12
80200cd2: 93 f6 f6 03                  	andi	a3, a3, 63
80200cd6: 93 e6 06 08                  	ori	a3, a3, 128
80200cda: a3 02 d1 00                  	sb	a3, 5(sp)
80200cde: 9b 56 66 00                  	srliw	a3, a2, 6
80200ce2: 93 f6 f6 03                  	andi	a3, a3, 63
80200ce6: 93 e6 06 08                  	ori	a3, a3, 128
80200cea: 23 03 d1 00                  	sb	a3, 6(sp)
80200cee: 13 76 f6 03                  	andi	a2, a2, 63
80200cf2: 13 66 06 08                  	ori	a2, a2, 128
80200cf6: a3 03 c1 00                  	sb	a2, 7(sp)
80200cfa: 11 46                        	addi	a2, zero, 4
80200cfc: 97 00 00 00                  	auipc	ra, 0
80200d00: e7 80 20 af                  	jalr	-1294(ra)
80200d04: a2 60                        	ld	ra, 8(sp)
80200d06: 41 01                        	addi	sp, sp, 16
80200d08: 82 80                        	ret

0000000080200d0a _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h99d0fa3a9ff66bb1E:
80200d0a: 39 71                        	addi	sp, sp, -64
80200d0c: 06 fc                        	sd	ra, 56(sp)
80200d0e: 08 61                        	ld	a0, 0(a0)
80200d10: 90 75                        	ld	a2, 40(a1)
80200d12: 94 71                        	ld	a3, 32(a1)
80200d14: 2a e0                        	sd	a0, 0(sp)
80200d16: 32 f8                        	sd	a2, 48(sp)
80200d18: 36 f4                        	sd	a3, 40(sp)
80200d1a: 88 6d                        	ld	a0, 24(a1)
80200d1c: 90 69                        	ld	a2, 16(a1)
80200d1e: 94 65                        	ld	a3, 8(a1)
80200d20: 8c 61                        	ld	a1, 0(a1)
80200d22: 2a f0                        	sd	a0, 32(sp)
80200d24: 32 ec                        	sd	a2, 24(sp)
80200d26: 36 e8                        	sd	a3, 16(sp)
80200d28: 2e e4                        	sd	a1, 8(sp)

0000000080200d2a .LBB158_1:
80200d2a: 97 35 00 00                  	auipc	a1, 3
80200d2e: 93 85 e5 7b                  	addi	a1, a1, 1982
80200d32: 0a 85                        	add	a0, zero, sp
80200d34: 30 00                        	addi	a2, sp, 8
80200d36: 97 00 00 00                  	auipc	ra, 0
80200d3a: e7 80 00 04                  	jalr	64(ra)
80200d3e: e2 70                        	ld	ra, 56(sp)
80200d40: 21 61                        	addi	sp, sp, 64
80200d42: 82 80                        	ret

0000000080200d44 _ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha5d29d1af7bdcf5aE:
80200d44: 39 71                        	addi	sp, sp, -64
80200d46: 06 fc                        	sd	ra, 56(sp)
80200d48: 10 75                        	ld	a2, 40(a0)
80200d4a: 18 71                        	ld	a4, 32(a0)
80200d4c: 94 71                        	ld	a3, 32(a1)
80200d4e: 8c 75                        	ld	a1, 40(a1)
80200d50: 32 f8                        	sd	a2, 48(sp)
80200d52: 3a f4                        	sd	a4, 40(sp)
80200d54: 10 6d                        	ld	a2, 24(a0)
80200d56: 18 69                        	ld	a4, 16(a0)
80200d58: 1c 65                        	ld	a5, 8(a0)
80200d5a: 08 61                        	ld	a0, 0(a0)
80200d5c: 32 f0                        	sd	a2, 32(sp)
80200d5e: 3a ec                        	sd	a4, 24(sp)
80200d60: 3e e8                        	sd	a5, 16(sp)
80200d62: 2a e4                        	sd	a0, 8(sp)
80200d64: 30 00                        	addi	a2, sp, 8
80200d66: 36 85                        	add	a0, zero, a3
80200d68: 97 00 00 00                  	auipc	ra, 0
80200d6c: e7 80 e0 00                  	jalr	14(ra)
80200d70: e2 70                        	ld	ra, 56(sp)
80200d72: 21 61                        	addi	sp, sp, 64
80200d74: 82 80                        	ret

0000000080200d76 _ZN4core3fmt5write17hab57c96bb669b93aE:
80200d76: 35 71                        	addi	sp, sp, -160
80200d78: 06 ed                        	sd	ra, 152(sp)
80200d7a: 22 e9                        	sd	s0, 144(sp)
80200d7c: 26 e5                        	sd	s1, 136(sp)
80200d7e: 4a e1                        	sd	s2, 128(sp)
80200d80: ce fc                        	sd	s3, 120(sp)
80200d82: d2 f8                        	sd	s4, 112(sp)
80200d84: d6 f4                        	sd	s5, 104(sp)
80200d86: da f0                        	sd	s6, 96(sp)
80200d88: de ec                        	sd	s7, 88(sp)
80200d8a: e2 e8                        	sd	s8, 80(sp)
80200d8c: e6 e4                        	sd	s9, 72(sp)
80200d8e: ea e0                        	sd	s10, 64(sp)
80200d90: 85 46                        	addi	a3, zero, 1
80200d92: 96 16                        	slli	a3, a3, 37
80200d94: 36 f8                        	sd	a3, 48(sp)
80200d96: 8d 46                        	addi	a3, zero, 3
80200d98: 23 0c d1 02                  	sb	a3, 56(sp)
80200d9c: 04 6a                        	ld	s1, 16(a2)
80200d9e: 02 e0                        	sd	zero, 0(sp)
80200da0: 02 e8                        	sd	zero, 16(sp)
80200da2: 2a f0                        	sd	a0, 32(sp)
80200da4: 2e f4                        	sd	a1, 40(sp)
80200da6: 63 81 04 10                  	beqz	s1, 258
80200daa: 14 6e                        	ld	a3, 24(a2)
80200dac: 03 3a 86 00                  	ld	s4, 8(a2)
80200db0: 83 39 06 00                  	ld	s3, 0(a2)
80200db4: d2 8b                        	add	s7, zero, s4
80200db6: 63 63 da 00                  	bltu	s4, a3, 6
80200dba: b6 8b                        	add	s7, zero, a3
80200dbc: 63 84 0b 14                  	beqz	s7, 328
80200dc0: 03 3b 06 02                  	ld	s6, 32(a2)
80200dc4: 83 3a 86 02                  	ld	s5, 40(a2)
80200dc8: 83 b6 09 00                  	ld	a3, 0(s3)
80200dcc: 03 b6 89 00                  	ld	a2, 8(s3)
80200dd0: 98 6d                        	ld	a4, 24(a1)
80200dd2: b6 85                        	add	a1, zero, a3
80200dd4: 02 97                        	jalr	a4
80200dd6: 63 15 05 14                  	bnez	a0, 330
80200dda: 01 44                        	mv	s0, zero
80200ddc: 93 84 04 03                  	addi	s1, s1, 48
80200de0: 13 8d 89 01                  	addi	s10, s3, 24
80200de4: 0a 89                        	add	s2, zero, sp
80200de6: 09 4c                        	addi	s8, zero, 2

0000000080200de8 .LBB162_41:
80200de8: 97 fc ff ff                  	auipc	s9, 1048575
80200dec: 93 8c 4c 7a                  	addi	s9, s9, 1956
80200df0: 03 a5 84 ff                  	lw	a0, -8(s1)
80200df4: 2a da                        	sw	a0, 52(sp)
80200df6: 03 85 04 00                  	lb	a0, 0(s1)
80200dfa: 23 0c a1 02                  	sb	a0, 56(sp)
80200dfe: 03 a5 c4 ff                  	lw	a0, -4(s1)
80200e02: 2a d8                        	sw	a0, 48(sp)
80200e04: 03 b6 84 fe                  	ld	a2, -24(s1)
80200e08: 03 b5 04 ff                  	ld	a0, -16(s1)
80200e0c: 09 ce                        	beqz	a2, 26
80200e0e: 81 45                        	mv	a1, zero
80200e10: 63 0e 86 01                  	beq	a2, s8, 28
80200e14: 63 77 55 13                  	bgeu	a0, s5, 302
80200e18: 12 05                        	slli	a0, a0, 4
80200e1a: 5a 95                        	add	a0, a0, s6
80200e1c: 0c 65                        	ld	a1, 8(a0)
80200e1e: 63 96 95 01                  	bne	a1, s9, 12
80200e22: 08 61                        	ld	a0, 0(a0)
80200e24: 08 61                        	ld	a0, 0(a0)
80200e26: 85 45                        	addi	a1, zero, 1
80200e28: 11 a0                        	j	4
80200e2a: 81 45                        	mv	a1, zero
80200e2c: 2e e0                        	sd	a1, 0(sp)
80200e2e: 2a e4                        	sd	a0, 8(sp)
80200e30: 03 b6 84 fd                  	ld	a2, -40(s1)
80200e34: 03 b5 04 fe                  	ld	a0, -32(s1)
80200e38: 09 ce                        	beqz	a2, 26
80200e3a: 81 45                        	mv	a1, zero
80200e3c: 63 0c 86 01                  	beq	a2, s8, 24
80200e40: 63 71 55 11                  	bgeu	a0, s5, 258
80200e44: 12 05                        	slli	a0, a0, 4
80200e46: 5a 95                        	add	a0, a0, s6
80200e48: 0c 65                        	ld	a1, 8(a0)
80200e4a: 63 93 95 05                  	bne	a1, s9, 70
80200e4e: 08 61                        	ld	a0, 0(a0)
80200e50: 08 61                        	ld	a0, 0(a0)
80200e52: 85 45                        	addi	a1, zero, 1
80200e54: 2e e8                        	sd	a1, 16(sp)
80200e56: 2a ec                        	sd	a0, 24(sp)
80200e58: 03 b5 04 fd                  	ld	a0, -48(s1)
80200e5c: 63 71 55 05                  	bgeu	a0, s5, 66
80200e60: 12 05                        	slli	a0, a0, 4
80200e62: b3 05 ab 00                  	add	a1, s6, a0
80200e66: 88 61                        	ld	a0, 0(a1)
80200e68: 90 65                        	ld	a2, 8(a1)
80200e6a: ca 85                        	add	a1, zero, s2
80200e6c: 02 96                        	jalr	a2
80200e6e: 4d e9                        	bnez	a0, 178
80200e70: 05 04                        	addi	s0, s0, 1
80200e72: 63 7a 74 09                  	bgeu	s0, s7, 148
80200e76: a2 76                        	ld	a3, 40(sp)
80200e78: 02 75                        	ld	a0, 32(sp)
80200e7a: 83 35 8d ff                  	ld	a1, -8(s10)
80200e7e: 03 36 0d 00                  	ld	a2, 0(s10)
80200e82: 94 6e                        	ld	a3, 24(a3)
80200e84: 93 84 84 03                  	addi	s1, s1, 56
80200e88: 41 0d                        	addi	s10, s10, 16
80200e8a: 82 96                        	jalr	a3
80200e8c: 35 d1                        	beqz	a0, -156
80200e8e: 49 a8                        	j	146
80200e90: 81 45                        	mv	a1, zero
80200e92: 2e e8                        	sd	a1, 16(sp)
80200e94: 2a ec                        	sd	a0, 24(sp)
80200e96: 03 b5 04 fd                  	ld	a0, -48(s1)
80200e9a: e3 63 55 fd                  	bltu	a0, s5, -58

0000000080200e9e .LBB162_42:
80200e9e: 17 36 00 00                  	auipc	a2, 3
80200ea2: 13 06 26 69                  	addi	a2, a2, 1682
80200ea6: 55 a0                        	j	164
80200ea8: 00 72                        	ld	s0, 32(a2)
80200eaa: 14 76                        	ld	a3, 40(a2)
80200eac: 03 3a 86 00                  	ld	s4, 8(a2)
80200eb0: 83 39 06 00                  	ld	s3, 0(a2)
80200eb4: d2 8b                        	add	s7, zero, s4
80200eb6: 63 63 da 00                  	bltu	s4, a3, 6
80200eba: b6 8b                        	add	s7, zero, a3
80200ebc: 63 84 0b 04                  	beqz	s7, 72
80200ec0: 83 b6 09 00                  	ld	a3, 0(s3)
80200ec4: 03 b6 89 00                  	ld	a2, 8(s3)
80200ec8: 98 6d                        	ld	a4, 24(a1)
80200eca: b6 85                        	add	a1, zero, a3
80200ecc: 02 97                        	jalr	a4
80200ece: 29 e9                        	bnez	a0, 82
80200ed0: 81 44                        	mv	s1, zero
80200ed2: 21 04                        	addi	s0, s0, 8
80200ed4: 93 8a 89 01                  	addi	s5, s3, 24
80200ed8: 0a 89                        	add	s2, zero, sp
80200eda: 10 60                        	ld	a2, 0(s0)
80200edc: 03 35 84 ff                  	ld	a0, -8(s0)
80200ee0: ca 85                        	add	a1, zero, s2
80200ee2: 02 96                        	jalr	a2
80200ee4: 15 ed                        	bnez	a0, 60
80200ee6: 85 04                        	addi	s1, s1, 1
80200ee8: 63 ff 74 01                  	bgeu	s1, s7, 30
80200eec: a2 76                        	ld	a3, 40(sp)
80200eee: 02 75                        	ld	a0, 32(sp)
80200ef0: 83 b5 8a ff                  	ld	a1, -8(s5)
80200ef4: 03 b6 0a 00                  	ld	a2, 0(s5)
80200ef8: 94 6e                        	ld	a3, 24(a3)
80200efa: 41 04                        	addi	s0, s0, 16
80200efc: c1 0a                        	addi	s5, s5, 16
80200efe: 82 96                        	jalr	a3
80200f00: 69 dd                        	beqz	a0, -38
80200f02: 39 a8                        	j	30
80200f04: 81 4b                        	mv	s7, zero
80200f06: 63 ff 4b 01                  	bgeu	s7, s4, 30
80200f0a: 02 75                        	ld	a0, 32(sp)
80200f0c: a2 76                        	ld	a3, 40(sp)
80200f0e: 93 95 4b 00                  	slli	a1, s7, 4
80200f12: 33 86 b9 00                  	add	a2, s3, a1
80200f16: 0c 62                        	ld	a1, 0(a2)
80200f18: 10 66                        	ld	a2, 8(a2)
80200f1a: 94 6e                        	ld	a3, 24(a3)
80200f1c: 82 96                        	jalr	a3
80200f1e: 19 c1                        	beqz	a0, 6
80200f20: 05 45                        	addi	a0, zero, 1
80200f22: 11 a0                        	j	4
80200f24: 01 45                        	mv	a0, zero
80200f26: 06 6d                        	ld	s10, 64(sp)
80200f28: a6 6c                        	ld	s9, 72(sp)
80200f2a: 46 6c                        	ld	s8, 80(sp)
80200f2c: e6 6b                        	ld	s7, 88(sp)
80200f2e: 06 7b                        	ld	s6, 96(sp)
80200f30: a6 7a                        	ld	s5, 104(sp)
80200f32: 46 7a                        	ld	s4, 112(sp)
80200f34: e6 79                        	ld	s3, 120(sp)
80200f36: 0a 69                        	ld	s2, 128(sp)
80200f38: aa 64                        	ld	s1, 136(sp)
80200f3a: 4a 64                        	ld	s0, 144(sp)
80200f3c: ea 60                        	ld	ra, 152(sp)
80200f3e: 0d 61                        	addi	sp, sp, 160
80200f40: 82 80                        	ret

0000000080200f42 .LBB162_43:
80200f42: 17 36 00 00                  	auipc	a2, 3
80200f46: 13 06 66 60                  	addi	a2, a2, 1542
80200f4a: d6 85                        	add	a1, zero, s5
80200f4c: 97 00 00 00                  	auipc	ra, 0
80200f50: e7 80 a0 83                  	jalr	-1990(ra)
80200f54: 00 00                        	unimp	

0000000080200f56 _ZN4core3fmt9Formatter12pad_integral17hd6c3049cc532f3cdE:
80200f56: 59 71                        	addi	sp, sp, -112
80200f58: 86 f4                        	sd	ra, 104(sp)
80200f5a: a2 f0                        	sd	s0, 96(sp)
80200f5c: a6 ec                        	sd	s1, 88(sp)
80200f5e: ca e8                        	sd	s2, 80(sp)
80200f60: ce e4                        	sd	s3, 72(sp)
80200f62: d2 e0                        	sd	s4, 64(sp)
80200f64: 56 fc                        	sd	s5, 56(sp)
80200f66: 5a f8                        	sd	s6, 48(sp)
80200f68: 5e f4                        	sd	s7, 40(sp)
80200f6a: 62 f0                        	sd	s8, 32(sp)
80200f6c: 66 ec                        	sd	s9, 24(sp)
80200f6e: 6a e8                        	sd	s10, 16(sp)
80200f70: 6e e4                        	sd	s11, 8(sp)
80200f72: be 89                        	add	s3, zero, a5
80200f74: 3a 89                        	add	s2, zero, a4
80200f76: b6 8a                        	add	s5, zero, a3
80200f78: 2a 84                        	add	s0, zero, a0
80200f7a: b1 c9                        	beqz	a1, 84
80200f7c: 03 65 04 03                  	lwu	a0, 48(s0)
80200f80: 93 75 15 00                  	andi	a1, a0, 1
80200f84: 37 0a 11 00                  	lui	s4, 272
80200f88: 99 c1                        	beqz	a1, 6
80200f8a: 13 0a b0 02                  	addi	s4, zero, 43
80200f8e: b3 8c 35 01                  	add	s9, a1, s3
80200f92: 93 75 45 00                  	andi	a1, a0, 4
80200f96: a9 c5                        	beqz	a1, 74
80200f98: 81 45                        	mv	a1, zero
80200f9a: 63 80 0a 02                  	beqz	s5, 32
80200f9e: d6 86                        	add	a3, zero, s5
80200fa0: 32 87                        	add	a4, zero, a2
80200fa2: 83 47 07 00                  	lbu	a5, 0(a4)
80200fa6: 05 07                        	addi	a4, a4, 1
80200fa8: 93 f7 07 0c                  	andi	a5, a5, 192
80200fac: 93 c7 07 08                  	xori	a5, a5, 128
80200fb0: 93 b7 17 00                  	seqz	a5, a5
80200fb4: fd 16                        	addi	a3, a3, -1
80200fb6: be 95                        	add	a1, a1, a5
80200fb8: ed f6                        	bnez	a3, -22
80200fba: b3 86 5c 01                  	add	a3, s9, s5
80200fbe: b3 8c b6 40                  	sub	s9, a3, a1
80200fc2: 32 8b                        	add	s6, zero, a2
80200fc4: 0c 60                        	ld	a1, 0(s0)
80200fc6: 85 4d                        	addi	s11, zero, 1
80200fc8: 63 81 b5 03                  	beq	a1, s11, 34
80200fcc: a9 a0                        	j	74
80200fce: 03 65 04 03                  	lwu	a0, 48(s0)
80200fd2: 93 8c 19 00                  	addi	s9, s3, 1
80200fd6: 13 0a d0 02                  	addi	s4, zero, 45
80200fda: 93 75 45 00                  	andi	a1, a0, 4
80200fde: cd fd                        	bnez	a1, -70
80200fe0: 01 4b                        	mv	s6, zero
80200fe2: 0c 60                        	ld	a1, 0(s0)
80200fe4: 85 4d                        	addi	s11, zero, 1
80200fe6: 63 98 b5 03                  	bne	a1, s11, 48
80200fea: 03 3d 84 00                  	ld	s10, 8(s0)
80200fee: 63 f4 ac 03                  	bgeu	s9, s10, 40
80200ff2: 21 89                        	andi	a0, a0, 8
80200ff4: 2d e1                        	bnez	a0, 98
80200ff6: 03 45 84 03                  	lbu	a0, 56(s0)
80200ffa: 05 46                        	addi	a2, zero, 1
80200ffc: 8d 46                        	addi	a3, zero, 3
80200ffe: 85 45                        	addi	a1, zero, 1
80201000: 63 03 d5 00                  	beq	a0, a3, 6
80201004: aa 85                        	add	a1, zero, a0
80201006: 33 05 9d 41                  	sub	a0, s10, s9
8020100a: 63 49 b6 08                  	blt	a2, a1, 146
8020100e: d1 e9                        	bnez	a1, 148
80201010: 2a 8c                        	add	s8, zero, a0
80201012: 01 45                        	mv	a0, zero
80201014: 5d a0                        	j	166
80201016: 22 85                        	add	a0, zero, s0
80201018: d2 85                        	add	a1, zero, s4
8020101a: 5a 86                        	add	a2, zero, s6
8020101c: d6 86                        	add	a3, zero, s5
8020101e: 97 00 00 00                  	auipc	ra, 0
80201022: e7 80 80 15                  	jalr	344(ra)
80201026: 01 e9                        	bnez	a0, 16
80201028: 0c 74                        	ld	a1, 40(s0)
8020102a: 08 70                        	ld	a0, 32(s0)
8020102c: 94 6d                        	ld	a3, 24(a1)
8020102e: ca 85                        	add	a1, zero, s2
80201030: 4e 86                        	add	a2, zero, s3
80201032: 82 96                        	jalr	a3
80201034: aa 8d                        	add	s11, zero, a0
80201036: 6e 85                        	add	a0, zero, s11
80201038: a2 6d                        	ld	s11, 8(sp)
8020103a: 42 6d                        	ld	s10, 16(sp)
8020103c: e2 6c                        	ld	s9, 24(sp)
8020103e: 02 7c                        	ld	s8, 32(sp)
80201040: a2 7b                        	ld	s7, 40(sp)
80201042: 42 7b                        	ld	s6, 48(sp)
80201044: e2 7a                        	ld	s5, 56(sp)
80201046: 06 6a                        	ld	s4, 64(sp)
80201048: a6 69                        	ld	s3, 72(sp)
8020104a: 46 69                        	ld	s2, 80(sp)
8020104c: e6 64                        	ld	s1, 88(sp)
8020104e: 06 74                        	ld	s0, 96(sp)
80201050: a6 70                        	ld	ra, 104(sp)
80201052: 65 61                        	addi	sp, sp, 112
80201054: 82 80                        	ret
80201056: 83 6b 44 03                  	lwu	s7, 52(s0)
8020105a: 13 05 00 03                  	addi	a0, zero, 48
8020105e: 03 4c 84 03                  	lbu	s8, 56(s0)
80201062: 48 d8                        	sw	a0, 52(s0)
80201064: 85 4d                        	addi	s11, zero, 1
80201066: 23 0c b4 03                  	sb	s11, 56(s0)
8020106a: 22 85                        	add	a0, zero, s0
8020106c: d2 85                        	add	a1, zero, s4
8020106e: 5a 86                        	add	a2, zero, s6
80201070: d6 86                        	add	a3, zero, s5
80201072: 97 00 00 00                  	auipc	ra, 0
80201076: e7 80 40 10                  	jalr	260(ra)
8020107a: 55 fd                        	bnez	a0, -68
8020107c: 03 45 84 03                  	lbu	a0, 56(s0)
80201080: 05 46                        	addi	a2, zero, 1
80201082: 8d 46                        	addi	a3, zero, 3
80201084: 85 45                        	addi	a1, zero, 1
80201086: 63 03 d5 00                  	beq	a0, a3, 6
8020108a: aa 85                        	add	a1, zero, a0
8020108c: 33 05 9d 41                  	sub	a0, s10, s9
80201090: 63 4b b6 00                  	blt	a2, a1, 22
80201094: 81 ed                        	bnez	a1, 24
80201096: aa 8a                        	add	s5, zero, a0
80201098: 01 45                        	mv	a0, zero
8020109a: 41 a0                        	j	128
8020109c: 0d 46                        	addi	a2, zero, 3
8020109e: 63 99 c5 00                  	bne	a1, a2, 18
802010a2: 01 4c                        	mv	s8, zero
802010a4: 19 a8                        	j	22
802010a6: 0d 46                        	addi	a2, zero, 3
802010a8: 63 94 c5 06                  	bne	a1, a2, 104
802010ac: 81 4a                        	mv	s5, zero
802010ae: b5 a0                        	j	108
802010b0: 93 05 15 00                  	addi	a1, a0, 1
802010b4: 05 81                        	srli	a0, a0, 1
802010b6: 13 dc 15 00                  	srli	s8, a1, 1
802010ba: 93 04 15 00                  	addi	s1, a0, 1
802010be: fd 14                        	addi	s1, s1, -1
802010c0: 81 c8                        	beqz	s1, 16
802010c2: 0c 74                        	ld	a1, 40(s0)
802010c4: 08 70                        	ld	a0, 32(s0)
802010c6: 90 71                        	ld	a2, 32(a1)
802010c8: 4c 58                        	lw	a1, 52(s0)
802010ca: 02 96                        	jalr	a2
802010cc: 6d d9                        	beqz	a0, -14
802010ce: 85 a0                        	j	96
802010d0: 83 6b 44 03                  	lwu	s7, 52(s0)
802010d4: 22 85                        	add	a0, zero, s0
802010d6: d2 85                        	add	a1, zero, s4
802010d8: 5a 86                        	add	a2, zero, s6
802010da: d6 86                        	add	a3, zero, s5
802010dc: 97 00 00 00                  	auipc	ra, 0
802010e0: e7 80 a0 09                  	jalr	154(ra)
802010e4: 85 4d                        	addi	s11, zero, 1
802010e6: 21 f9                        	bnez	a0, -176
802010e8: 0c 74                        	ld	a1, 40(s0)
802010ea: 08 70                        	ld	a0, 32(s0)
802010ec: 94 6d                        	ld	a3, 24(a1)
802010ee: ca 85                        	add	a1, zero, s2
802010f0: 4e 86                        	add	a2, zero, s3
802010f2: 82 96                        	jalr	a3
802010f4: 29 f1                        	bnez	a0, -190
802010f6: 03 39 04 02                  	ld	s2, 32(s0)
802010fa: 00 74                        	ld	s0, 40(s0)
802010fc: 93 04 1c 00                  	addi	s1, s8, 1
80201100: fd 14                        	addi	s1, s1, -1
80201102: b5 c0                        	beqz	s1, 100
80201104: 10 70                        	ld	a2, 32(s0)
80201106: 4a 85                        	add	a0, zero, s2
80201108: de 85                        	add	a1, zero, s7
8020110a: 02 96                        	jalr	a2
8020110c: 75 d9                        	beqz	a0, -12
8020110e: 25 b7                        	j	-216
80201110: 93 05 15 00                  	addi	a1, a0, 1
80201114: 05 81                        	srli	a0, a0, 1
80201116: 93 da 15 00                  	srli	s5, a1, 1
8020111a: 93 04 15 00                  	addi	s1, a0, 1
8020111e: fd 14                        	addi	s1, s1, -1
80201120: 89 c8                        	beqz	s1, 18
80201122: 0c 74                        	ld	a1, 40(s0)
80201124: 08 70                        	ld	a0, 32(s0)
80201126: 90 71                        	ld	a2, 32(a1)
80201128: 4c 58                        	lw	a1, 52(s0)
8020112a: 02 96                        	jalr	a2
8020112c: 6d d9                        	beqz	a0, -14
8020112e: 85 4d                        	addi	s11, zero, 1
80201130: 19 b7                        	j	-250
80201132: 0c 74                        	ld	a1, 40(s0)
80201134: 03 6a 44 03                  	lwu	s4, 52(s0)
80201138: 08 70                        	ld	a0, 32(s0)
8020113a: 94 6d                        	ld	a3, 24(a1)
8020113c: ca 85                        	add	a1, zero, s2
8020113e: 4e 86                        	add	a2, zero, s3
80201140: 82 96                        	jalr	a3
80201142: 85 4d                        	addi	s11, zero, 1
80201144: e3 19 05 ee                  	bnez	a0, -270
80201148: 03 39 04 02                  	ld	s2, 32(s0)
8020114c: 83 39 84 02                  	ld	s3, 40(s0)
80201150: 93 84 1a 00                  	addi	s1, s5, 1
80201154: fd 14                        	addi	s1, s1, -1
80201156: 91 c8                        	beqz	s1, 20
80201158: 03 b6 09 02                  	ld	a2, 32(s3)
8020115c: 4a 85                        	add	a0, zero, s2
8020115e: d2 85                        	add	a1, zero, s4
80201160: 02 96                        	jalr	a2
80201162: 6d d9                        	beqz	a0, -14
80201164: c9 bd                        	j	-302
80201166: 81 4d                        	mv	s11, zero
80201168: f9 b5                        	j	-306
8020116a: 81 4d                        	mv	s11, zero
8020116c: 23 2a 74 03                  	sw	s7, 52(s0)
80201170: 23 0c 84 03                  	sb	s8, 56(s0)
80201174: c9 b5                        	j	-318

0000000080201176 _ZN4core3fmt9Formatter12pad_integral12write_prefix17hf78ea515610d6c2eE:
80201176: 01 11                        	addi	sp, sp, -32
80201178: 06 ec                        	sd	ra, 24(sp)
8020117a: 22 e8                        	sd	s0, 16(sp)
8020117c: 26 e4                        	sd	s1, 8(sp)
8020117e: 4a e0                        	sd	s2, 0(sp)
80201180: 13 97 05 02                  	slli	a4, a1, 32
80201184: 01 93                        	srli	a4, a4, 32
80201186: b7 07 11 00                  	lui	a5, 272
8020118a: 36 89                        	add	s2, zero, a3
8020118c: b2 84                        	add	s1, zero, a2
8020118e: 2a 84                        	add	s0, zero, a0
80201190: 63 09 f7 00                  	beq	a4, a5, 18
80201194: 10 74                        	ld	a2, 40(s0)
80201196: 08 70                        	ld	a0, 32(s0)
80201198: 10 72                        	ld	a2, 32(a2)
8020119a: 02 96                        	jalr	a2
8020119c: aa 85                        	add	a1, zero, a0
8020119e: 05 45                        	addi	a0, zero, 1
802011a0: 91 e9                        	bnez	a1, 20
802011a2: 81 c8                        	beqz	s1, 16
802011a4: 0c 74                        	ld	a1, 40(s0)
802011a6: 08 70                        	ld	a0, 32(s0)
802011a8: 94 6d                        	ld	a3, 24(a1)
802011aa: a6 85                        	add	a1, zero, s1
802011ac: 4a 86                        	add	a2, zero, s2
802011ae: 82 96                        	jalr	a3
802011b0: 11 a0                        	j	4
802011b2: 01 45                        	mv	a0, zero
802011b4: 02 69                        	ld	s2, 0(sp)
802011b6: a2 64                        	ld	s1, 8(sp)
802011b8: 42 64                        	ld	s0, 16(sp)
802011ba: e2 60                        	ld	ra, 24(sp)
802011bc: 05 61                        	addi	sp, sp, 32
802011be: 82 80                        	ret

00000000802011c0 _ZN4core3fmt9Formatter3pad17h017f758b28b77478E:
802011c0: 39 71                        	addi	sp, sp, -64
802011c2: 06 fc                        	sd	ra, 56(sp)
802011c4: 22 f8                        	sd	s0, 48(sp)
802011c6: 26 f4                        	sd	s1, 40(sp)
802011c8: 4a f0                        	sd	s2, 32(sp)
802011ca: 4e ec                        	sd	s3, 24(sp)
802011cc: 52 e8                        	sd	s4, 16(sp)
802011ce: 56 e4                        	sd	s5, 8(sp)
802011d0: 5a e0                        	sd	s6, 0(sp)
802011d2: 2a 8b                        	add	s6, zero, a0
802011d4: 83 33 05 00                  	ld	t2, 0(a0)
802011d8: 08 69                        	ld	a0, 16(a0)
802011da: 85 46                        	addi	a3, zero, 1
802011dc: 32 8a                        	add	s4, zero, a2
802011de: 2e 89                        	add	s2, zero, a1
802011e0: 63 95 d3 00                  	bne	t2, a3, 10
802011e4: 63 05 d5 00                  	beq	a0, a3, 10
802011e8: 09 aa                        	j	274
802011ea: 63 11 d5 18                  	bne	a0, a3, 386
802011ee: 63 0c 0a 0c                  	beqz	s4, 216
802011f2: 03 35 8b 01                  	ld	a0, 24(s6)
802011f6: 81 45                        	mv	a1, zero
802011f8: 33 07 49 01                  	add	a4, s2, s4
802011fc: 93 06 15 00                  	addi	a3, a0, 1
80201200: 7d 5e                        	addi	t3, zero, -1
80201202: 13 03 f0 0d                  	addi	t1, zero, 223
80201206: 13 08 00 0f                  	addi	a6, zero, 240
8020120a: b7 08 1c 00                  	lui	a7, 448
8020120e: b7 02 11 00                  	lui	t0, 272
80201212: ca 87                        	add	a5, zero, s2
80201214: 4a 85                        	add	a0, zero, s2
80201216: 03 84 07 00                  	lb	s0, 0(a5)
8020121a: 13 86 17 00                  	addi	a2, a5, 1
8020121e: 93 74 f4 0f                  	andi	s1, s0, 255
80201222: 63 54 8e 00                  	bge	t3, s0, 8
80201226: b2 87                        	add	a5, zero, a2
80201228: 69 a0                        	j	138
8020122a: 63 03 e6 04                  	beq	a2, a4, 70
8020122e: 03 c4 17 00                  	lbu	s0, 1(a5)
80201232: 13 86 27 00                  	addi	a2, a5, 2
80201236: 13 74 f4 03                  	andi	s0, s0, 63
8020123a: b2 87                        	add	a5, zero, a2
8020123c: 93 fe f4 01                  	andi	t4, s1, 31
80201240: 63 7f 93 02                  	bgeu	t1, s1, 62
80201244: 63 02 e6 04                  	beq	a2, a4, 68
80201248: 03 4f 06 00                  	lbu	t5, 0(a2)
8020124c: 93 07 16 00                  	addi	a5, a2, 1
80201250: 13 76 ff 03                  	andi	a2, t5, 63
80201254: 3e 8f                        	add	t5, zero, a5
80201256: 1a 04                        	slli	s0, s0, 6
80201258: 51 8c                        	or	s0, s0, a2
8020125a: 63 ed 04 03                  	bltu	s1, a6, 58
8020125e: 63 00 ef 04                  	beq	t5, a4, 64
80201262: 03 46 0f 00                  	lbu	a2, 0(t5)
80201266: 93 07 1f 00                  	addi	a5, t5, 1
8020126a: 13 76 f6 03                  	andi	a2, a2, 63
8020126e: 0d a8                        	j	50
80201270: 01 44                        	mv	s0, zero
80201272: b2 87                        	add	a5, zero, a2
80201274: 3a 86                        	add	a2, zero, a4
80201276: 93 fe f4 01                  	andi	t4, s1, 31
8020127a: e3 65 93 fc                  	bltu	t1, s1, -54
8020127e: 13 96 6e 00                  	slli	a2, t4, 6
80201282: b3 64 c4 00                  	or	s1, s0, a2
80201286: 35 a0                        	j	44
80201288: 01 46                        	mv	a2, zero
8020128a: 3a 8f                        	add	t5, zero, a4
8020128c: 1a 04                        	slli	s0, s0, 6
8020128e: 51 8c                        	or	s0, s0, a2
80201290: e3 f7 04 fd                  	bgeu	s1, a6, -50
80201294: 13 96 ce 00                  	slli	a2, t4, 12
80201298: b3 64 c4 00                  	or	s1, s0, a2
8020129c: 19 a8                        	j	22
8020129e: 01 46                        	mv	a2, zero
802012a0: 93 94 2e 01                  	slli	s1, t4, 18
802012a4: b3 f4 14 01                  	and	s1, s1, a7
802012a8: 1a 04                        	slli	s0, s0, 6
802012aa: c1 8c                        	or	s1, s1, s0
802012ac: d1 8c                        	or	s1, s1, a2
802012ae: 63 83 54 04                  	beq	s1, t0, 70
802012b2: fd 16                        	addi	a3, a3, -1
802012b4: 99 ca                        	beqz	a3, 22
802012b6: 33 85 a5 40                  	sub	a0, a1, a0
802012ba: b3 05 f5 00                  	add	a1, a0, a5
802012be: 3e 85                        	add	a0, zero, a5
802012c0: e3 1b f7 f4                  	bne	a4, a5, -170
802012c4: 05 a8                        	j	48
802012c6: 01 4a                        	mv	s4, zero
802012c8: 35 a0                        	j	44
802012ca: 37 05 11 00                  	lui	a0, 272
802012ce: 63 83 a4 02                  	beq	s1, a0, 38
802012d2: 89 cd                        	beqz	a1, 26
802012d4: 63 8c 45 01                  	beq	a1, s4, 24
802012d8: 63 f4 45 13                  	bgeu	a1, s4, 296
802012dc: 33 05 b9 00                  	add	a0, s2, a1
802012e0: 03 05 05 00                  	lb	a0, 0(a0)
802012e4: 13 06 00 fc                  	addi	a2, zero, -64
802012e8: 63 4c c5 10                  	blt	a0, a2, 280
802012ec: 4a 85                        	add	a0, zero, s2
802012ee: 19 c1                        	beqz	a0, 6
802012f0: 2a 89                        	add	s2, zero, a0
802012f2: 2e 8a                        	add	s4, zero, a1
802012f4: 05 45                        	addi	a0, zero, 1
802012f6: 63 9b a3 06                  	bne	t2, a0, 118
802012fa: 81 45                        	mv	a1, zero
802012fc: 63 00 0a 02                  	beqz	s4, 32
80201300: 52 85                        	add	a0, zero, s4
80201302: 4a 86                        	add	a2, zero, s2
80201304: 83 46 06 00                  	lbu	a3, 0(a2)
80201308: 05 06                        	addi	a2, a2, 1
8020130a: 93 f6 06 0c                  	andi	a3, a3, 192
8020130e: 93 c6 06 08                  	xori	a3, a3, 128
80201312: 93 b6 16 00                  	seqz	a3, a3
80201316: 7d 15                        	addi	a0, a0, -1
80201318: b6 95                        	add	a1, a1, a3
8020131a: 6d f5                        	bnez	a0, -22
8020131c: 03 35 8b 00                  	ld	a0, 8(s6)
80201320: b3 05 ba 40                  	sub	a1, s4, a1
80201324: 63 f4 a5 04                  	bgeu	a1, a0, 72
80201328: 81 45                        	mv	a1, zero
8020132a: 63 00 0a 02                  	beqz	s4, 32
8020132e: 52 86                        	add	a2, zero, s4
80201330: ca 86                        	add	a3, zero, s2
80201332: 03 c7 06 00                  	lbu	a4, 0(a3)
80201336: 85 06                        	addi	a3, a3, 1
80201338: 13 77 07 0c                  	andi	a4, a4, 192
8020133c: 13 47 07 08                  	xori	a4, a4, 128
80201340: 13 37 17 00                  	seqz	a4, a4
80201344: 7d 16                        	addi	a2, a2, -1
80201346: ba 95                        	add	a1, a1, a4
80201348: 6d f6                        	bnez	a2, -22
8020134a: 83 46 8b 03                  	lbu	a3, 56(s6)
8020134e: 01 46                        	mv	a2, zero
80201350: 0d 47                        	addi	a4, zero, 3
80201352: b3 85 45 41                  	sub	a1, a1, s4
80201356: 63 83 e6 00                  	beq	a3, a4, 6
8020135a: 36 86                        	add	a2, zero, a3
8020135c: 85 46                        	addi	a3, zero, 1
8020135e: 2e 95                        	add	a0, a0, a1
80201360: 63 ca c6 02                  	blt	a3, a2, 52
80201364: 1d ea                        	bnez	a2, 54
80201366: aa 8a                        	add	s5, zero, a0
80201368: 01 45                        	mv	a0, zero
8020136a: 3d a8                        	j	62
8020136c: 83 35 8b 02                  	ld	a1, 40(s6)
80201370: 03 35 0b 02                  	ld	a0, 32(s6)
80201374: 94 6d                        	ld	a3, 24(a1)
80201376: ca 85                        	add	a1, zero, s2
80201378: 52 86                        	add	a2, zero, s4
8020137a: 82 96                        	jalr	a3
8020137c: aa 84                        	add	s1, zero, a0
8020137e: 26 85                        	add	a0, zero, s1
80201380: 02 6b                        	ld	s6, 0(sp)
80201382: a2 6a                        	ld	s5, 8(sp)
80201384: 42 6a                        	ld	s4, 16(sp)
80201386: e2 69                        	ld	s3, 24(sp)
80201388: 02 79                        	ld	s2, 32(sp)
8020138a: a2 74                        	ld	s1, 40(sp)
8020138c: 42 74                        	ld	s0, 48(sp)
8020138e: e2 70                        	ld	ra, 56(sp)
80201390: 21 61                        	addi	sp, sp, 64
80201392: 82 80                        	ret
80201394: 8d 45                        	addi	a1, zero, 3
80201396: 63 14 b6 00                  	bne	a2, a1, 8
8020139a: 81 4a                        	mv	s5, zero
8020139c: 31 a0                        	j	12
8020139e: 93 05 15 00                  	addi	a1, a0, 1
802013a2: 05 81                        	srli	a0, a0, 1
802013a4: 93 da 15 00                  	srli	s5, a1, 1
802013a8: 13 04 15 00                  	addi	s0, a0, 1
802013ac: 7d 14                        	addi	s0, s0, -1
802013ae: 01 cc                        	beqz	s0, 24
802013b0: 83 35 8b 02                  	ld	a1, 40(s6)
802013b4: 03 35 0b 02                  	ld	a0, 32(s6)
802013b8: 90 71                        	ld	a2, 32(a1)
802013ba: 83 25 4b 03                  	lw	a1, 52(s6)
802013be: 02 96                        	jalr	a2
802013c0: 75 d5                        	beqz	a0, -20
802013c2: 85 44                        	addi	s1, zero, 1
802013c4: 6d bf                        	j	-70
802013c6: 83 35 8b 02                  	ld	a1, 40(s6)
802013ca: 83 69 4b 03                  	lwu	s3, 52(s6)
802013ce: 03 35 0b 02                  	ld	a0, 32(s6)
802013d2: 94 6d                        	ld	a3, 24(a1)
802013d4: ca 85                        	add	a1, zero, s2
802013d6: 52 86                        	add	a2, zero, s4
802013d8: 82 96                        	jalr	a3
802013da: 85 44                        	addi	s1, zero, 1
802013dc: 4d f1                        	bnez	a0, -94
802013de: 03 39 0b 02                  	ld	s2, 32(s6)
802013e2: 03 3a 8b 02                  	ld	s4, 40(s6)
802013e6: 13 84 1a 00                  	addi	s0, s5, 1
802013ea: 7d 14                        	addi	s0, s0, -1
802013ec: 01 c8                        	beqz	s0, 16
802013ee: 03 36 0a 02                  	ld	a2, 32(s4)
802013f2: 4a 85                        	add	a0, zero, s2
802013f4: ce 85                        	add	a1, zero, s3
802013f6: 02 96                        	jalr	a2
802013f8: 6d d9                        	beqz	a0, -14
802013fa: 51 b7                        	j	-124
802013fc: 81 44                        	mv	s1, zero
802013fe: 41 b7                        	j	-128
80201400: 01 45                        	mv	a0, zero
80201402: e3 09 05 ee                  	beqz	a0, -270
80201406: ed b5                        	j	-278

0000000080201408 _ZN4core3fmt9Formatter11debug_tuple17h3e7836b24f51e394E:
80201408: 01 11                        	addi	sp, sp, -32
8020140a: 06 ec                        	sd	ra, 24(sp)
8020140c: 22 e8                        	sd	s0, 16(sp)
8020140e: 26 e4                        	sd	s1, 8(sp)
80201410: 4a e0                        	sd	s2, 0(sp)
80201412: 2e 84                        	add	s0, zero, a1
80201414: 98 75                        	ld	a4, 40(a1)
80201416: 8c 71                        	ld	a1, 32(a1)
80201418: 18 6f                        	ld	a4, 24(a4)
8020141a: 36 89                        	add	s2, zero, a3
8020141c: aa 84                        	add	s1, zero, a0
8020141e: 2e 85                        	add	a0, zero, a1
80201420: b2 85                        	add	a1, zero, a2
80201422: 36 86                        	add	a2, zero, a3
80201424: 02 97                        	jalr	a4
80201426: 93 35 19 00                  	seqz	a1, s2
8020142a: 80 e0                        	sd	s0, 0(s1)
8020142c: 23 88 a4 00                  	sb	a0, 16(s1)
80201430: 23 b4 04 00                  	sd	zero, 8(s1)
80201434: a3 88 b4 00                  	sb	a1, 17(s1)
80201438: 02 69                        	ld	s2, 0(sp)
8020143a: a2 64                        	ld	s1, 8(sp)
8020143c: 42 64                        	ld	s0, 16(sp)
8020143e: e2 60                        	ld	ra, 24(sp)
80201440: 05 61                        	addi	sp, sp, 32
80201442: 82 80                        	ret

0000000080201444 _ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hd80063bf4fae91a8E:
80201444: 59 71                        	addi	sp, sp, -112
80201446: 86 f4                        	sd	ra, 104(sp)
80201448: a2 f0                        	sd	s0, 96(sp)
8020144a: a6 ec                        	sd	s1, 88(sp)
8020144c: ca e8                        	sd	s2, 80(sp)
8020144e: ce e4                        	sd	s3, 72(sp)
80201450: d2 e0                        	sd	s4, 64(sp)
80201452: 56 fc                        	sd	s5, 56(sp)
80201454: 5a f8                        	sd	s6, 48(sp)
80201456: 5e f4                        	sd	s7, 40(sp)
80201458: 62 f0                        	sd	s8, 32(sp)
8020145a: 66 ec                        	sd	s9, 24(sp)
8020145c: 6a e8                        	sd	s10, 16(sp)
8020145e: 6e e4                        	sd	s11, 8(sp)
80201460: 2e 84                        	add	s0, zero, a1
80201462: 8c 75                        	ld	a1, 40(a1)
80201464: 10 70                        	ld	a2, 32(s0)
80201466: 94 71                        	ld	a3, 32(a1)
80201468: aa 84                        	add	s1, zero, a0
8020146a: 93 05 70 02                  	addi	a1, zero, 39
8020146e: 32 85                        	add	a0, zero, a2
80201470: 82 96                        	jalr	a3
80201472: aa 85                        	add	a1, zero, a0
80201474: 05 45                        	addi	a0, zero, 1
80201476: 63 97 05 22                  	bnez	a1, 558
8020147a: 03 e9 04 00                  	lwu	s2, 0(s1)
8020147e: 13 05 10 02                  	addi	a0, zero, 33
80201482: 89 44                        	addi	s1, zero, 2
80201484: 63 4e 25 01                  	blt	a0, s2, 28
80201488: 25 45                        	addi	a0, zero, 9
8020148a: 63 09 a9 02                  	beq	s2, a0, 50
8020148e: 29 45                        	addi	a0, zero, 10
80201490: 63 09 a9 02                  	beq	s2, a0, 50
80201494: 35 45                        	addi	a0, zero, 13
80201496: 63 19 a9 02                  	bne	s2, a0, 50
8020149a: 93 09 20 07                  	addi	s3, zero, 114
8020149e: a1 aa                        	j	344
802014a0: 13 05 20 02                  	addi	a0, zero, 34
802014a4: 63 0a a9 00                  	beq	s2, a0, 20
802014a8: 13 05 70 02                  	addi	a0, zero, 39
802014ac: 63 06 a9 00                  	beq	s2, a0, 12
802014b0: 13 05 c0 05                  	addi	a0, zero, 92
802014b4: 63 1a a9 00                  	bne	s2, a0, 20
802014b8: ca 89                        	add	s3, zero, s2
802014ba: 35 aa                        	j	316
802014bc: 93 09 40 07                  	addi	s3, zero, 116
802014c0: 1d aa                        	j	310
802014c2: 93 09 e0 06                  	addi	s3, zero, 110
802014c6: 05 aa                        	j	304
802014c8: 4a 85                        	add	a0, zero, s2
802014ca: 97 10 00 00                  	auipc	ra, 1
802014ce: e7 80 40 c0                  	jalr	-1020(ra)
802014d2: 25 e5                        	bnez	a0, 104
802014d4: 13 55 09 01                  	srli	a0, s2, 16
802014d8: 05 e5                        	bnez	a0, 40

00000000802014da .LBB193_53:
802014da: 97 35 00 00                  	auipc	a1, 3
802014de: 93 85 65 33                  	addi	a1, a1, 822

00000000802014e2 .LBB193_54:
802014e2: 97 36 00 00                  	auipc	a3, 3
802014e6: 93 86 06 38                  	addi	a3, a3, 896

00000000802014ea .LBB193_55:
802014ea: 97 37 00 00                  	auipc	a5, 3
802014ee: 93 87 a7 49                  	addi	a5, a5, 1178
802014f2: 13 06 90 02                  	addi	a2, zero, 41
802014f6: 13 07 20 12                  	addi	a4, zero, 290
802014fa: 13 08 50 13                  	addi	a6, zero, 309
802014fe: 3d a0                        	j	46
80201500: 13 55 19 01                  	srli	a0, s2, 17
80201504: 63 11 05 1c                  	bnez	a0, 450

0000000080201508 .LBB193_56:
80201508: 97 35 00 00                  	auipc	a1, 3
8020150c: 93 85 15 5b                  	addi	a1, a1, 1457

0000000080201510 .LBB193_57:
80201510: 97 36 00 00                  	auipc	a3, 3
80201514: 93 86 56 5f                  	addi	a3, a3, 1525

0000000080201518 .LBB193_58:
80201518: 97 37 00 00                  	auipc	a5, 3
8020151c: 93 87 c7 69                  	addi	a5, a5, 1692
80201520: 13 06 60 02                  	addi	a2, zero, 38
80201524: 13 07 f0 0a                  	addi	a4, zero, 175
80201528: 13 08 30 1a                  	addi	a6, zero, 419
8020152c: 4a 85                        	add	a0, zero, s2
8020152e: 97 00 00 00                  	auipc	ra, 0
80201532: e7 80 80 67                  	jalr	1656(ra)
80201536: 63 1c 05 22                  	bnez	a0, 568
8020153a: 13 65 19 00                  	ori	a0, s2, 1
8020153e: 93 55 15 00                  	srli	a1, a0, 1
80201542: 4d 8d                        	or	a0, a0, a1
80201544: 93 55 25 00                  	srli	a1, a0, 2
80201548: 4d 8d                        	or	a0, a0, a1
8020154a: 93 55 45 00                  	srli	a1, a0, 4
8020154e: 4d 8d                        	or	a0, a0, a1
80201550: 93 55 85 00                  	srli	a1, a0, 8
80201554: 4d 8d                        	or	a0, a0, a1
80201556: 93 55 05 01                  	srli	a1, a0, 16
8020155a: 4d 8d                        	or	a0, a0, a1
8020155c: 93 55 05 02                  	srli	a1, a0, 32
80201560: 4d 8d                        	or	a0, a0, a1
80201562: 13 45 f5 ff                  	not	a0, a0
80201566: 93 55 15 00                  	srli	a1, a0, 1
8020156a: 37 56 55 05                  	lui	a2, 21845
8020156e: 1b 06 56 55                  	addiw	a2, a2, 1365
80201572: 32 06                        	slli	a2, a2, 12
80201574: 13 06 56 55                  	addi	a2, a2, 1365
80201578: 32 06                        	slli	a2, a2, 12
8020157a: 13 06 56 55                  	addi	a2, a2, 1365
8020157e: 32 06                        	slli	a2, a2, 12
80201580: 13 06 56 55                  	addi	a2, a2, 1365
80201584: f1 8d                        	and	a1, a1, a2
80201586: 0d 8d                        	sub	a0, a0, a1
80201588: b7 35 33 03                  	lui	a1, 13107
8020158c: 9b 85 35 33                  	addiw	a1, a1, 819
80201590: b2 05                        	slli	a1, a1, 12
80201592: 93 85 35 33                  	addi	a1, a1, 819
80201596: b2 05                        	slli	a1, a1, 12
80201598: 93 85 35 33                  	addi	a1, a1, 819
8020159c: b2 05                        	slli	a1, a1, 12
8020159e: 93 85 35 33                  	addi	a1, a1, 819
802015a2: 33 76 b5 00                  	and	a2, a0, a1
802015a6: 09 81                        	srli	a0, a0, 2
802015a8: 6d 8d                        	and	a0, a0, a1
802015aa: 32 95                        	add	a0, a0, a2
802015ac: 93 55 45 00                  	srli	a1, a0, 4
802015b0: 2e 95                        	add	a0, a0, a1
802015b2: b7 f5 f0 00                  	lui	a1, 3855
802015b6: 9b 85 15 0f                  	addiw	a1, a1, 241
802015ba: b2 05                        	slli	a1, a1, 12
802015bc: 93 85 f5 f0                  	addi	a1, a1, -241
802015c0: b2 05                        	slli	a1, a1, 12
802015c2: 93 85 15 0f                  	addi	a1, a1, 241
802015c6: b2 05                        	slli	a1, a1, 12
802015c8: 93 85 f5 f0                  	addi	a1, a1, -241
802015cc: 6d 8d                        	and	a0, a0, a1
802015ce: b7 05 01 01                  	lui	a1, 4112
802015d2: 9b 85 15 10                  	addiw	a1, a1, 257
802015d6: c2 05                        	slli	a1, a1, 16
802015d8: 93 85 15 10                  	addi	a1, a1, 257
802015dc: c2 05                        	slli	a1, a1, 16
802015de: 93 85 15 10                  	addi	a1, a1, 257
802015e2: 33 05 b5 02                  	<unknown>
802015e6: 61 91                        	srli	a0, a0, 56
802015e8: 01 15                        	addi	a0, a0, -32
802015ea: 1b 55 25 00                  	srliw	a0, a0, 2
802015ee: 13 45 75 00                  	xori	a0, a0, 7
802015f2: 2a e0                        	sd	a0, 0(sp)
802015f4: 8d 44                        	addi	s1, zero, 3
802015f6: 15 4a                        	addi	s4, zero, 5
802015f8: 13 95 09 02                  	slli	a0, s3, 32
802015fc: 93 5a 05 02                  	srli	s5, a0, 32
80201600: 37 0b 11 00                  	lui	s6, 272
80201604: 89 4b                        	addi	s7, zero, 2
80201606: 05 4c                        	addi	s8, zero, 1
80201608: a9 4c                        	addi	s9, zero, 10
8020160a: 0d 4d                        	addi	s10, zero, 3
8020160c: 91 4d                        	addi	s11, zero, 4
8020160e: 39 a0                        	j	14
80201610: 85 44                        	addi	s1, zero, 1
80201612: 10 74                        	ld	a2, 40(s0)
80201614: 08 70                        	ld	a0, 32(s0)
80201616: 10 72                        	ld	a2, 32(a2)
80201618: 02 96                        	jalr	a2
8020161a: 45 e5                        	bnez	a0, 168
8020161c: 13 95 04 02                  	slli	a0, s1, 32
80201620: 01 91                        	srli	a0, a0, 32
80201622: 63 48 ac 00                  	blt	s8, a0, 16
80201626: 2d c9                        	beqz	a0, 114
80201628: 63 88 6a 07                  	beq	s5, s6, 112
8020162c: 81 44                        	mv	s1, zero
8020162e: ce 85                        	add	a1, zero, s3
80201630: cd b7                        	j	-30
80201632: 93 05 c0 05                  	addi	a1, zero, 92
80201636: e3 0d 75 fd                  	beq	a0, s7, -38
8020163a: 13 75 fa 0f                  	andi	a0, s4, 255
8020163e: 8d 44                        	addi	s1, zero, 3
80201640: 63 c9 ab 00                  	blt	s7, a0, 18
80201644: 31 c9                        	beqz	a0, 84
80201646: 63 10 85 03                  	bne	a0, s8, 32
8020164a: 01 4a                        	mv	s4, zero
8020164c: 93 05 d0 07                  	addi	a1, zero, 125
80201650: c9 b7                        	j	-62
80201652: 63 05 a5 03                  	beq	a0, s10, 42
80201656: 11 4a                        	addi	s4, zero, 4
80201658: e3 1d b5 fb                  	bne	a0, s11, -70
8020165c: 0d 4a                        	addi	s4, zero, 3
8020165e: 93 05 50 07                  	addi	a1, zero, 117
80201662: 8d 44                        	addi	s1, zero, 3
80201664: 7d b7                        	j	-82
80201666: 02 66                        	ld	a2, 0(sp)
80201668: 13 15 26 00                  	slli	a0, a2, 2
8020166c: 3b 55 a9 00                  	srlw	a0, s2, a0
80201670: 3d 89                        	andi	a0, a0, 15
80201672: 63 69 95 01                  	bltu	a0, s9, 18
80201676: 93 05 75 05                  	addi	a1, a0, 87
8020167a: 39 a0                        	j	14
8020167c: 09 4a                        	addi	s4, zero, 2
8020167e: 93 05 b0 07                  	addi	a1, zero, 123
80201682: 41 bf                        	j	-112
80201684: 93 65 05 03                  	ori	a1, a0, 48
80201688: 01 45                        	mv	a0, zero
8020168a: 05 4a                        	addi	s4, zero, 1
8020168c: 01 c6                        	beqz	a2, 8
8020168e: 13 05 f6 ff                  	addi	a0, a2, -1
80201692: 09 4a                        	addi	s4, zero, 2
80201694: 2a e0                        	sd	a0, 0(sp)
80201696: b5 bf                        	j	-132
80201698: 0c 74                        	ld	a1, 40(s0)
8020169a: 08 70                        	ld	a0, 32(s0)
8020169c: 90 71                        	ld	a2, 32(a1)
8020169e: 93 05 70 02                  	addi	a1, zero, 39
802016a2: 02 96                        	jalr	a2
802016a4: a2 6d                        	ld	s11, 8(sp)
802016a6: 42 6d                        	ld	s10, 16(sp)
802016a8: e2 6c                        	ld	s9, 24(sp)
802016aa: 02 7c                        	ld	s8, 32(sp)
802016ac: a2 7b                        	ld	s7, 40(sp)
802016ae: 42 7b                        	ld	s6, 48(sp)
802016b0: e2 7a                        	ld	s5, 56(sp)
802016b2: 06 6a                        	ld	s4, 64(sp)
802016b4: a6 69                        	ld	s3, 72(sp)
802016b6: 46 69                        	ld	s2, 80(sp)
802016b8: e6 64                        	ld	s1, 88(sp)
802016ba: 06 74                        	ld	s0, 96(sp)
802016bc: a6 70                        	ld	ra, 104(sp)
802016be: 65 61                        	addi	sp, sp, 112
802016c0: 82 80                        	ret
802016c2: 05 45                        	addi	a0, zero, 1
802016c4: c5 b7                        	j	-32
802016c6: 37 05 f2 ff                  	lui	a0, 1048352
802016ca: 1b 05 05 e1                  	addiw	a0, a0, -496
802016ce: 3b 05 a9 00                  	addw	a0, s2, a0
802016d2: b7 05 03 00                  	lui	a1, 48
802016d6: 9b 85 05 e1                  	addiw	a1, a1, -496
802016da: e3 60 b5 e6                  	bltu	a0, a1, -416
802016de: 37 f5 fc ff                  	lui	a0, 1048527
802016e2: 1b 05 55 cb                  	addiw	a0, a0, -843
802016e6: 4a 95                        	add	a0, a0, s2
802016e8: 01 25                        	sext.w	a0, a0
802016ea: b7 f5 0a 00                  	lui	a1, 175
802016ee: 9b 85 55 db                  	addiw	a1, a1, -587
802016f2: e3 64 b5 e4                  	bltu	a0, a1, -440
802016f6: 37 05 fd ff                  	lui	a0, 1048528
802016fa: 1b 05 25 5e                  	addiw	a0, a0, 1506
802016fe: 4a 95                        	add	a0, a0, s2
80201700: 01 25                        	sext.w	a0, a0
80201702: 93 05 20 5e                  	addi	a1, zero, 1506
80201706: e3 6a b5 e2                  	bltu	a0, a1, -460
8020170a: 37 15 fd ff                  	lui	a0, 1048529
8020170e: 1b 05 f5 41                  	addiw	a0, a0, 1055
80201712: 4a 95                        	add	a0, a0, s2
80201714: 01 25                        	sext.w	a0, a0
80201716: 85 65                        	lui	a1, 1
80201718: 9b 85 f5 c1                  	addiw	a1, a1, -993
8020171c: e3 6f b5 e0                  	bltu	a0, a1, -482
80201720: 37 35 fd ff                  	lui	a0, 1048531
80201724: 1b 05 e5 15                  	addiw	a0, a0, 350
80201728: 4a 95                        	add	a0, a0, s2
8020172a: 01 25                        	sext.w	a0, a0
8020172c: b9 45                        	addi	a1, zero, 14
8020172e: e3 66 b5 e0                  	bltu	a0, a1, -500
80201732: 37 05 20 00                  	lui	a0, 512
80201736: 79 35                        	addiw	a0, a0, -2
80201738: 33 75 a9 00                  	and	a0, s2, a0
8020173c: b7 c5 02 00                  	lui	a1, 44
80201740: 9b 85 e5 81                  	addiw	a1, a1, -2018
80201744: e3 0b b5 de                  	beq	a0, a1, -522
80201748: 37 65 fd ff                  	lui	a0, 1048534
8020174c: 1b 05 25 92                  	addiw	a0, a0, -1758
80201750: 4a 95                        	add	a0, a0, s2
80201752: 01 25                        	sext.w	a0, a0
80201754: 93 05 20 02                  	addi	a1, zero, 34
80201758: e3 61 b5 de                  	bltu	a0, a1, -542
8020175c: 37 55 fd ff                  	lui	a0, 1048533
80201760: 1b 05 b5 8c                  	addiw	a0, a0, -1845
80201764: 4a 95                        	add	a0, a0, s2
80201766: 01 25                        	sext.w	a0, a0
80201768: a9 45                        	addi	a1, zero, 10
8020176a: e3 f8 a5 dc                  	bgeu	a1, a0, -560
8020176e: 85 44                        	addi	s1, zero, 1
80201770: a1 b3                        	j	-696

0000000080201772 _ZN4core5slice6memchr6memchr17hc5c23a081ffd9f1fE:
80201772: 41 11                        	addi	sp, sp, -16
80201774: 06 e4                        	sd	ra, 8(sp)
80201776: aa 86                        	add	a3, zero, a0
80201778: 01 45                        	mv	a0, zero
8020177a: 13 f7 75 00                  	andi	a4, a1, 7
8020177e: 93 f8 f6 0f                  	andi	a7, a3, 255
80201782: 1d c3                        	beqz	a4, 38
80201784: a1 46                        	addi	a3, zero, 8
80201786: 99 8e                        	sub	a3, a3, a4
80201788: 85 c2                        	beqz	a3, 32
8020178a: 32 85                        	add	a0, zero, a2
8020178c: 63 63 d6 00                  	bltu	a2, a3, 6
80201790: 36 85                        	add	a0, zero, a3
80201792: 55 c9                        	beqz	a0, 180
80201794: 81 46                        	mv	a3, zero
80201796: 33 87 d5 00                  	add	a4, a1, a3
8020179a: 03 47 07 00                  	lbu	a4, 0(a4)
8020179e: 63 02 17 0f                  	beq	a4, a7, 228
802017a2: 85 06                        	addi	a3, a3, 1
802017a4: e3 19 d5 fe                  	bne	a0, a3, -14
802017a8: c1 46                        	addi	a3, zero, 16
802017aa: 63 62 d6 0a                  	bltu	a2, a3, 164
802017ae: 13 08 06 ff                  	addi	a6, a2, -16
802017b2: 63 6e a8 08                  	bltu	a6, a0, 156
802017b6: b7 06 01 01                  	lui	a3, 4112
802017ba: 9b 86 16 10                  	addiw	a3, a3, 257
802017be: c2 06                        	slli	a3, a3, 16
802017c0: 93 86 16 10                  	addi	a3, a3, 257
802017c4: c2 06                        	slli	a3, a3, 16
802017c6: 93 86 16 10                  	addi	a3, a3, 257
802017ca: b3 82 d8 02                  	<unknown>
802017ce: b7 06 ff fe                  	lui	a3, 1044464
802017d2: 9b 86 f6 ef                  	addiw	a3, a3, -257
802017d6: c2 06                        	slli	a3, a3, 16
802017d8: 93 86 f6 ef                  	addi	a3, a3, -257
802017dc: c2 06                        	slli	a3, a3, 16
802017de: 13 83 f6 ef                  	addi	t1, a3, -257
802017e2: 41 77                        	lui	a4, 1048560
802017e4: 1b 07 17 10                  	addiw	a4, a4, 257
802017e8: 42 07                        	slli	a4, a4, 16
802017ea: 13 07 17 10                  	addi	a4, a4, 257
802017ee: 42 07                        	slli	a4, a4, 16
802017f0: 13 07 17 10                  	addi	a4, a4, 257
802017f4: 3e 07                        	slli	a4, a4, 15
802017f6: 93 03 07 08                  	addi	t2, a4, 128
802017fa: b3 87 a5 00                  	add	a5, a1, a0
802017fe: 94 63                        	ld	a3, 0(a5)
80201800: 9c 67                        	ld	a5, 8(a5)
80201802: b3 c6 56 00                  	xor	a3, a3, t0
80201806: 13 c7 f6 ff                  	not	a4, a3
8020180a: 9a 96                        	add	a3, a3, t1
8020180c: 33 77 77 00                  	and	a4, a4, t2
80201810: f9 8e                        	and	a3, a3, a4
80201812: 33 c7 57 00                  	xor	a4, a5, t0
80201816: 93 47 f7 ff                  	not	a5, a4
8020181a: 1a 97                        	add	a4, a4, t1
8020181c: b3 f7 77 00                  	and	a5, a5, t2
80201820: 7d 8f                        	and	a4, a4, a5
80201822: d9 8e                        	or	a3, a3, a4
80201824: 81 e6                        	bnez	a3, 8
80201826: 41 05                        	addi	a0, a0, 16
80201828: e3 79 a8 fc                  	bgeu	a6, a0, -46
8020182c: 63 71 a6 02                  	bgeu	a2, a0, 34

0000000080201830 .LBB198_25:
80201830: 97 36 00 00                  	auipc	a3, 3
80201834: 93 86 06 d5                  	addi	a3, a3, -688
80201838: b2 85                        	add	a1, zero, a2
8020183a: 36 86                        	add	a2, zero, a3
8020183c: 97 00 00 00                  	auipc	ra, 0
80201840: e7 80 20 09                  	jalr	146(ra)
80201844: 00 00                        	unimp	
80201846: 01 45                        	mv	a0, zero
80201848: c1 46                        	addi	a3, zero, 16
8020184a: e3 72 d6 f6                  	bgeu	a2, a3, -156
8020184e: 63 16 c5 00                  	bne	a0, a2, 12
80201852: 01 46                        	mv	a2, zero
80201854: 81 45                        	mv	a1, zero
80201856: aa 86                        	add	a3, zero, a0
80201858: 35 a0                        	j	44
8020185a: 81 46                        	mv	a3, zero
8020185c: 09 8e                        	sub	a2, a2, a0
8020185e: aa 95                        	add	a1, a1, a0
80201860: 33 87 d5 00                  	add	a4, a1, a3
80201864: 03 47 07 00                  	lbu	a4, 0(a4)
80201868: 63 09 17 01                  	beq	a4, a7, 18
8020186c: 85 06                        	addi	a3, a3, 1
8020186e: e3 19 d6 fe                  	bne	a2, a3, -14
80201872: 81 45                        	mv	a1, zero
80201874: b3 06 a6 00                  	add	a3, a2, a0
80201878: 31 a0                        	j	12
8020187a: 85 45                        	addi	a1, zero, 1
8020187c: 36 86                        	add	a2, zero, a3
8020187e: aa 96                        	add	a3, a3, a0
80201880: 11 a0                        	j	4
80201882: 85 45                        	addi	a1, zero, 1
80201884: 2e 85                        	add	a0, zero, a1
80201886: b6 85                        	add	a1, zero, a3
80201888: a2 60                        	ld	ra, 8(sp)
8020188a: 41 01                        	addi	sp, sp, 16
8020188c: 82 80                        	ret

000000008020188e _ZN4core5slice20slice_index_len_fail17h674859de081ebee9E:
8020188e: 59 71                        	addi	sp, sp, -112
80201890: 86 f4                        	sd	ra, 104(sp)
80201892: 2a e4                        	sd	a0, 8(sp)
80201894: 2e e8                        	sd	a1, 16(sp)
80201896: 28 00                        	addi	a0, sp, 8
80201898: aa e4                        	sd	a0, 72(sp)

000000008020189a .LBB200_1:
8020189a: 17 05 00 00                  	auipc	a0, 0
8020189e: 13 05 85 7b                  	addi	a0, a0, 1976
802018a2: aa e8                        	sd	a0, 80(sp)
802018a4: 0c 08                        	addi	a1, sp, 16
802018a6: ae ec                        	sd	a1, 88(sp)
802018a8: aa f0                        	sd	a0, 96(sp)

00000000802018aa .LBB200_2:
802018aa: 17 35 00 00                  	auipc	a0, 3
802018ae: 13 05 65 d1                  	addi	a0, a0, -746
802018b2: 2a ec                        	sd	a0, 24(sp)
802018b4: 09 45                        	addi	a0, zero, 2
802018b6: 2a f0                        	sd	a0, 32(sp)
802018b8: 02 f4                        	sd	zero, 40(sp)
802018ba: ac 00                        	addi	a1, sp, 72
802018bc: 2e fc                        	sd	a1, 56(sp)
802018be: aa e0                        	sd	a0, 64(sp)
802018c0: 28 08                        	addi	a0, sp, 24
802018c2: b2 85                        	add	a1, zero, a2
802018c4: 97 f0 ff ff                  	auipc	ra, 1048575
802018c8: e7 80 20 f0                  	jalr	-254(ra)
802018cc: 00 00                        	unimp	

00000000802018ce _ZN4core5slice22slice_index_order_fail17h448310845a3aec23E:
802018ce: 59 71                        	addi	sp, sp, -112
802018d0: 86 f4                        	sd	ra, 104(sp)
802018d2: 2a e4                        	sd	a0, 8(sp)
802018d4: 2e e8                        	sd	a1, 16(sp)
802018d6: 28 00                        	addi	a0, sp, 8
802018d8: aa e4                        	sd	a0, 72(sp)

00000000802018da .LBB201_1:
802018da: 17 05 00 00                  	auipc	a0, 0
802018de: 13 05 85 77                  	addi	a0, a0, 1912
802018e2: aa e8                        	sd	a0, 80(sp)
802018e4: 0c 08                        	addi	a1, sp, 16
802018e6: ae ec                        	sd	a1, 88(sp)
802018e8: aa f0                        	sd	a0, 96(sp)

00000000802018ea .LBB201_2:
802018ea: 17 35 00 00                  	auipc	a0, 3
802018ee: 13 05 e5 d1                  	addi	a0, a0, -738
802018f2: 2a ec                        	sd	a0, 24(sp)
802018f4: 09 45                        	addi	a0, zero, 2
802018f6: 2a f0                        	sd	a0, 32(sp)
802018f8: 02 f4                        	sd	zero, 40(sp)
802018fa: ac 00                        	addi	a1, sp, 72
802018fc: 2e fc                        	sd	a1, 56(sp)
802018fe: aa e0                        	sd	a0, 64(sp)
80201900: 28 08                        	addi	a0, sp, 24
80201902: b2 85                        	add	a1, zero, a2
80201904: 97 f0 ff ff                  	auipc	ra, 1048575
80201908: e7 80 20 ec                  	jalr	-318(ra)
8020190c: 00 00                        	unimp	

000000008020190e _ZN4core3str16slice_error_fail17h6e4abdbba00369c0E:
8020190e: 15 71                        	addi	sp, sp, -224
80201910: 86 ed                        	sd	ra, 216(sp)
80201912: 32 e4                        	sd	a2, 8(sp)
80201914: 36 e8                        	sd	a3, 16(sp)
80201916: 13 08 10 10                  	addi	a6, zero, 257
8020191a: 85 47                        	addi	a5, zero, 1
8020191c: ae 83                        	add	t2, zero, a1
8020191e: 63 ef 05 03                  	bltu	a1, a6, 62
80201922: 81 43                        	mv	t2, zero
80201924: 13 88 15 f0                  	addi	a6, a1, -255
80201928: 93 08 05 10                  	addi	a7, a0, 256
8020192c: 93 02 f0 fb                  	addi	t0, zero, -65
80201930: 13 03 10 f0                  	addi	t1, zero, -255
80201934: 1e 8e                        	add	t3, zero, t2
80201936: 93 83 03 10                  	addi	t2, t2, 256
8020193a: 63 f8 b3 00                  	bgeu	t2, a1, 16
8020193e: b3 87 c8 01                  	add	a5, a7, t3
80201942: 83 87 07 00                  	lb	a5, 0(a5)
80201946: 63 c8 f2 02                  	blt	t0, a5, 48
8020194a: 93 03 fe ff                  	addi	t2, t3, -1
8020194e: 63 04 6e 00                  	beq	t3, t1, 8
80201952: e3 11 c8 ff                  	bne	a6, t3, -30
80201956: 81 47                        	mv	a5, zero
80201958: 93 83 03 10                  	addi	t2, t2, 256
8020195c: 2a ec                        	sd	a0, 24(sp)
8020195e: 1e f0                        	sd	t2, 32(sp)
80201960: 99 ef                        	bnez	a5, 30

0000000080201962 .LBB224_53:
80201962: 97 37 00 00                  	auipc	a5, 3
80201966: 93 87 67 d5                  	addi	a5, a5, -682
8020196a: 15 48                        	addi	a6, zero, 5
8020196c: 3e f4                        	sd	a5, 40(sp)
8020196e: 42 f8                        	sd	a6, 48(sp)
80201970: 63 f0 c5 02                  	bgeu	a1, a2, 32
80201974: a9 a8                        	j	90
80201976: 81 47                        	mv	a5, zero
80201978: 2a ec                        	sd	a0, 24(sp)
8020197a: 1e f0                        	sd	t2, 32(sp)
8020197c: fd d3                        	beqz	a5, -26
8020197e: 01 48                        	mv	a6, zero

0000000080201980 .LBB224_54:
80201980: 97 37 00 00                  	auipc	a5, 3
80201984: 93 87 07 90                  	addi	a5, a5, -1792
80201988: 3e f4                        	sd	a5, 40(sp)
8020198a: 42 f8                        	sd	a6, 48(sp)
8020198c: 63 e1 c5 04                  	bltu	a1, a2, 66
80201990: 63 ef d5 02                  	bltu	a1, a3, 62
80201994: 63 f4 c6 08                  	bgeu	a3, a2, 136
80201998: 28 00                        	addi	a0, sp, 8
8020199a: 2a e5                        	sd	a0, 136(sp)

000000008020199c .LBB224_55:
8020199c: 17 05 00 00                  	auipc	a0, 0
802019a0: 13 05 65 6b                  	addi	a0, a0, 1718
802019a4: 2a e9                        	sd	a0, 144(sp)
802019a6: 0c 08                        	addi	a1, sp, 16
802019a8: 2e ed                        	sd	a1, 152(sp)
802019aa: 2a f1                        	sd	a0, 160(sp)
802019ac: 28 08                        	addi	a0, sp, 24
802019ae: 2a f5                        	sd	a0, 168(sp)

00000000802019b0 .LBB224_56:
802019b0: 17 05 00 00                  	auipc	a0, 0
802019b4: 13 05 a5 6c                  	addi	a0, a0, 1738
802019b8: 2a f9                        	sd	a0, 176(sp)
802019ba: 2c 10                        	addi	a1, sp, 40
802019bc: 2e fd                        	sd	a1, 184(sp)
802019be: aa e1                        	sd	a0, 192(sp)

00000000802019c0 .LBB224_57:
802019c0: 17 35 00 00                  	auipc	a0, 3
802019c4: 13 05 05 d6                  	addi	a0, a0, -672
802019c8: aa ec                        	sd	a0, 88(sp)
802019ca: 11 45                        	addi	a0, zero, 4
802019cc: 25 a8                        	j	56
802019ce: 63 e3 c5 00                  	bltu	a1, a2, 6
802019d2: 36 86                        	add	a2, zero, a3
802019d4: b2 e4                        	sd	a2, 72(sp)
802019d6: a8 00                        	addi	a0, sp, 72
802019d8: 2a e5                        	sd	a0, 136(sp)

00000000802019da .LBB224_58:
802019da: 17 05 00 00                  	auipc	a0, 0
802019de: 13 05 85 67                  	addi	a0, a0, 1656
802019e2: 2a e9                        	sd	a0, 144(sp)
802019e4: 28 08                        	addi	a0, sp, 24
802019e6: 2a ed                        	sd	a0, 152(sp)

00000000802019e8 .LBB224_59:
802019e8: 17 05 00 00                  	auipc	a0, 0
802019ec: 13 05 25 69                  	addi	a0, a0, 1682
802019f0: 2a f1                        	sd	a0, 160(sp)
802019f2: 2c 10                        	addi	a1, sp, 40
802019f4: 2e f5                        	sd	a1, 168(sp)
802019f6: 2a f9                        	sd	a0, 176(sp)

00000000802019f8 .LBB224_60:
802019f8: 17 35 00 00                  	auipc	a0, 3
802019fc: 13 05 85 ce                  	addi	a0, a0, -792
80201a00: aa ec                        	sd	a0, 88(sp)
80201a02: 0d 45                        	addi	a0, zero, 3
80201a04: aa f0                        	sd	a0, 96(sp)
80201a06: 82 f4                        	sd	zero, 104(sp)
80201a08: 2c 01                        	addi	a1, sp, 136
80201a0a: ae fc                        	sd	a1, 120(sp)
80201a0c: 2a e1                        	sd	a0, 128(sp)
80201a0e: a8 08                        	addi	a0, sp, 88
80201a10: ba 85                        	add	a1, zero, a4
80201a12: 97 f0 ff ff                  	auipc	ra, 1048575
80201a16: e7 80 40 db                  	jalr	-588(ra)
80201a1a: 00 00                        	unimp	
80201a1c: 09 ce                        	beqz	a2, 26
80201a1e: 63 8c c5 00                  	beq	a1, a2, 24
80201a22: 63 7b b6 00                  	bgeu	a2, a1, 22
80201a26: b3 07 c5 00                  	add	a5, a0, a2
80201a2a: 03 88 07 00                  	lb	a6, 0(a5)
80201a2e: 93 07 00 fc                  	addi	a5, zero, -64
80201a32: 63 43 f8 00                  	blt	a6, a5, 6
80201a36: 36 86                        	add	a2, zero, a3
80201a38: 32 fc                        	sd	a2, 56(sp)
80201a3a: 1d c6                        	beqz	a2, 46
80201a3c: 63 06 b6 02                  	beq	a2, a1, 44
80201a40: 93 87 15 00                  	addi	a5, a1, 1
80201a44: 13 08 00 fc                  	addi	a6, zero, -64
80201a48: 85 48                        	addi	a7, zero, 1
80201a4a: b2 86                        	add	a3, zero, a2
80201a4c: 63 78 b6 00                  	bgeu	a2, a1, 16
80201a50: 33 06 d5 00                  	add	a2, a0, a3
80201a54: 03 06 06 00                  	lb	a2, 0(a2)
80201a58: 63 59 06 01                  	bge	a2, a6, 18
80201a5c: 13 86 f6 ff                  	addi	a2, a3, -1
80201a60: 63 84 16 01                  	beq	a3, a7, 8
80201a64: e3 93 d7 fe                  	bne	a5, a3, -26
80201a68: b2 86                        	add	a3, zero, a2
80201a6a: 63 9e b6 00                  	bne	a3, a1, 28

0000000080201a6e .LBB224_61:
80201a6e: 17 35 00 00                  	auipc	a0, 3
80201a72: 13 05 25 83                  	addi	a0, a0, -1998
80201a76: 93 05 b0 02                  	addi	a1, zero, 43
80201a7a: 3a 86                        	add	a2, zero, a4
80201a7c: 97 f0 ff ff                  	auipc	ra, 1048575
80201a80: e7 80 e0 cd                  	jalr	-802(ra)
80201a84: 00 00                        	unimp	
80201a86: b3 07 d5 00                  	add	a5, a0, a3
80201a8a: 03 86 07 00                  	lb	a2, 0(a5)
80201a8e: 7d 58                        	addi	a6, zero, -1
80201a90: 93 72 f6 0f                  	andi	t0, a2, 255
80201a94: 63 56 c8 00                  	bge	a6, a2, 12
80201a98: 96 c2                        	sw	t0, 68(sp)
80201a9a: a8 00                        	addi	a0, sp, 72
80201a9c: 85 45                        	addi	a1, zero, 1
80201a9e: 65 a8                        	j	184
80201aa0: 2e 95                        	add	a0, a0, a1
80201aa2: 93 85 17 00                  	addi	a1, a5, 1
80201aa6: 63 9f a5 00                  	bne	a1, a0, 30
80201aaa: 81 47                        	mv	a5, zero
80201aac: aa 85                        	add	a1, zero, a0
80201aae: 13 06 f0 0d                  	addi	a2, zero, 223
80201ab2: 13 f8 f2 01                  	andi	a6, t0, 31
80201ab6: 63 63 56 02                  	bltu	a2, t0, 38
80201aba: 13 15 68 00                  	slli	a0, a6, 6
80201abe: 33 e6 a7 00                  	or	a2, a5, a0
80201ac2: 9d a8                        	j	118
80201ac4: 03 c6 17 00                  	lbu	a2, 1(a5)
80201ac8: 93 85 27 00                  	addi	a1, a5, 2
80201acc: 93 77 f6 03                  	andi	a5, a2, 63
80201ad0: 13 06 f0 0d                  	addi	a2, zero, 223
80201ad4: 13 f8 f2 01                  	andi	a6, t0, 31
80201ad8: e3 71 56 fe                  	bgeu	a2, t0, -30
80201adc: 63 95 a5 00                  	bne	a1, a0, 10
80201ae0: 81 45                        	mv	a1, zero
80201ae2: aa 88                        	add	a7, zero, a0
80201ae4: 39 a0                        	j	14
80201ae6: 03 c6 05 00                  	lbu	a2, 0(a1)
80201aea: 93 88 15 00                  	addi	a7, a1, 1
80201aee: 93 75 f6 03                  	andi	a1, a2, 63
80201af2: 13 96 67 00                  	slli	a2, a5, 6
80201af6: 13 03 00 0f                  	addi	t1, zero, 240
80201afa: b3 e7 c5 00                  	or	a5, a1, a2
80201afe: 63 e6 62 00                  	bltu	t0, t1, 12
80201b02: 63 99 a8 00                  	bne	a7, a0, 18
80201b06: 01 45                        	mv	a0, zero
80201b08: 11 a8                        	j	20
80201b0a: 13 15 c8 00                  	slli	a0, a6, 12
80201b0e: 33 e6 a7 00                  	or	a2, a5, a0
80201b12: 1d a0                        	j	38
80201b14: 03 c5 08 00                  	lbu	a0, 0(a7)
80201b18: 13 75 f5 03                  	andi	a0, a0, 63
80201b1c: 93 15 28 01                  	slli	a1, a6, 18
80201b20: 37 06 1c 00                  	lui	a2, 448
80201b24: f1 8d                        	and	a1, a1, a2
80201b26: 13 96 67 00                  	slli	a2, a5, 6
80201b2a: d1 8d                        	or	a1, a1, a2
80201b2c: 33 e6 a5 00                  	or	a2, a1, a0
80201b30: 37 05 11 00                  	lui	a0, 272
80201b34: e3 0d a6 f2                  	beq	a2, a0, -198
80201b38: b2 c2                        	sw	a2, 68(sp)
80201b3a: a8 00                        	addi	a0, sp, 72
80201b3c: 93 07 00 08                  	addi	a5, zero, 128
80201b40: 85 45                        	addi	a1, zero, 1
80201b42: 63 6a f6 00                  	bltu	a2, a5, 20
80201b46: 93 57 b6 00                  	srli	a5, a2, 11
80201b4a: 89 45                        	addi	a1, zero, 2
80201b4c: 89 c7                        	beqz	a5, 10
80201b4e: 41 82                        	srli	a2, a2, 16
80201b50: 8d 45                        	addi	a1, zero, 3
80201b52: 11 c2                        	beqz	a2, 4
80201b54: 91 45                        	addi	a1, zero, 4
80201b56: b6 95                        	add	a1, a1, a3
80201b58: b6 e4                        	sd	a3, 72(sp)
80201b5a: ae e8                        	sd	a1, 80(sp)
80201b5c: 2c 18                        	addi	a1, sp, 56
80201b5e: 2e e5                        	sd	a1, 136(sp)

0000000080201b60 .LBB224_62:
80201b60: 97 05 00 00                  	auipc	a1, 0
80201b64: 93 85 25 4f                  	addi	a1, a1, 1266
80201b68: 2e e9                        	sd	a1, 144(sp)
80201b6a: cc 00                        	addi	a1, sp, 68
80201b6c: 2e ed                        	sd	a1, 152(sp)

0000000080201b6e .LBB224_63:
80201b6e: 97 05 00 00                  	auipc	a1, 0
80201b72: 93 85 65 8d                  	addi	a1, a1, -1834
80201b76: 2e f1                        	sd	a1, 160(sp)
80201b78: 2a f5                        	sd	a0, 168(sp)

0000000080201b7a .LBB224_64:
80201b7a: 17 f5 ff ff                  	auipc	a0, 1048575
80201b7e: 13 05 85 a1                  	addi	a0, a0, -1512
80201b82: 2a f9                        	sd	a0, 176(sp)
80201b84: 28 08                        	addi	a0, sp, 24
80201b86: 2a fd                        	sd	a0, 184(sp)

0000000080201b88 .LBB224_65:
80201b88: 17 05 00 00                  	auipc	a0, 0
80201b8c: 13 05 25 4f                  	addi	a0, a0, 1266
80201b90: aa e1                        	sd	a0, 192(sp)
80201b92: 2c 10                        	addi	a1, sp, 40
80201b94: ae e5                        	sd	a1, 200(sp)
80201b96: aa e9                        	sd	a0, 208(sp)

0000000080201b98 .LBB224_66:
80201b98: 17 35 00 00                  	auipc	a0, 3
80201b9c: 13 05 85 bf                  	addi	a0, a0, -1032
80201ba0: aa ec                        	sd	a0, 88(sp)
80201ba2: 15 45                        	addi	a0, zero, 5
80201ba4: 85 b5                        	j	-416

0000000080201ba6 _ZN4core7unicode9printable5check17h4beff69f6604437dE:
80201ba6: 41 11                        	addi	sp, sp, -16
80201ba8: 06 e4                        	sd	ra, 8(sp)
80201baa: 29 ca                        	beqz	a2, 82
80201bac: 81 42                        	mv	t0, zero
80201bae: c1 68                        	lui	a7, 16
80201bb0: 9b 88 08 f0                  	addiw	a7, a7, -256
80201bb4: b3 78 15 01                  	and	a7, a0, a7
80201bb8: 13 d3 88 00                  	srli	t1, a7, 8
80201bbc: 06 06                        	slli	a2, a2, 1
80201bbe: b3 83 c5 00                  	add	t2, a1, a2
80201bc2: 13 7e f5 0f                  	andi	t3, a0, 255
80201bc6: 83 ce 05 00                  	lbu	t4, 0(a1)
80201bca: 03 c6 15 00                  	lbu	a2, 1(a1)
80201bce: 89 05                        	addi	a1, a1, 2
80201bd0: b3 88 c2 00                  	add	a7, t0, a2
80201bd4: 63 9f 6e 00                  	bne	t4, t1, 30
80201bd8: 63 e4 58 0a                  	bltu	a7, t0, 168
80201bdc: 63 6d 17 0b                  	bltu	a4, a7, 186
80201be0: b6 92                        	add	t0, t0, a3
80201be2: 11 ca                        	beqz	a2, 20
80201be4: 83 ce 02 00                  	lbu	t4, 0(t0)
80201be8: 85 02                        	addi	t0, t0, 1
80201bea: 7d 16                        	addi	a2, a2, -1
80201bec: e3 9b ce ff                  	bne	t4, t3, -10
80201bf0: b9 a8                        	j	94
80201bf2: 63 65 d3 01                  	bltu	t1, t4, 10
80201bf6: c6 82                        	add	t0, zero, a7
80201bf8: e3 97 75 fc                  	bne	a1, t2, -50
80201bfc: 63 0e 08 04                  	beqz	a6, 92
80201c00: b3 85 07 01                  	add	a1, a5, a6
80201c04: 41 66                        	lui	a2, 16
80201c06: 7d 36                        	addiw	a2, a2, -1
80201c08: 69 8e                        	and	a2, a2, a0
80201c0a: 05 45                        	addi	a0, zero, 1
80201c0c: 83 86 07 00                  	lb	a3, 0(a5)
80201c10: 13 87 17 00                  	addi	a4, a5, 1
80201c14: 63 c9 06 00                  	bltz	a3, 18
80201c18: 93 f6 f6 0f                  	andi	a3, a3, 255
80201c1c: ba 87                        	add	a5, zero, a4
80201c1e: 15 9e                        	subw	a2, a2, a3
80201c20: 63 5f 06 00                  	bgez	a2, 30
80201c24: 0d a0                        	j	34
80201c26: 63 0e b7 02                  	beq	a4, a1, 60
80201c2a: 03 c7 17 00                  	lbu	a4, 1(a5)
80201c2e: 93 f6 f6 07                  	andi	a3, a3, 127
80201c32: a2 06                        	slli	a3, a3, 8
80201c34: 89 07                        	addi	a5, a5, 2
80201c36: d9 8e                        	or	a3, a3, a4
80201c38: 15 9e                        	subw	a2, a2, a3
80201c3a: 63 46 06 00                  	bltz	a2, 12
80201c3e: 13 45 15 00                  	xori	a0, a0, 1
80201c42: e3 95 b7 fc                  	bne	a5, a1, -54
80201c46: 05 89                        	andi	a0, a0, 1
80201c48: a2 60                        	ld	ra, 8(sp)
80201c4a: 41 01                        	addi	sp, sp, 16
80201c4c: 82 80                        	ret
80201c4e: 01 45                        	mv	a0, zero
80201c50: 05 89                        	andi	a0, a0, 1
80201c52: a2 60                        	ld	ra, 8(sp)
80201c54: 41 01                        	addi	sp, sp, 16
80201c56: 82 80                        	ret
80201c58: 05 45                        	addi	a0, zero, 1
80201c5a: 05 89                        	andi	a0, a0, 1
80201c5c: a2 60                        	ld	ra, 8(sp)
80201c5e: 41 01                        	addi	sp, sp, 16
80201c60: 82 80                        	ret

0000000080201c62 .LBB249_23:
80201c62: 17 25 00 00                  	auipc	a0, 2
80201c66: 13 05 e5 63                  	addi	a0, a0, 1598

0000000080201c6a .LBB249_24:
80201c6a: 17 36 00 00                  	auipc	a2, 3
80201c6e: 13 06 e6 b8                  	addi	a2, a2, -1138
80201c72: 93 05 b0 02                  	addi	a1, zero, 43
80201c76: 97 f0 ff ff                  	auipc	ra, 1048575
80201c7a: e7 80 40 ae                  	jalr	-1308(ra)
80201c7e: 00 00                        	unimp	

0000000080201c80 .LBB249_25:
80201c80: 17 36 00 00                  	auipc	a2, 3
80201c84: 13 06 06 b6                  	addi	a2, a2, -1184
80201c88: 16 85                        	add	a0, zero, t0
80201c8a: c6 85                        	add	a1, zero, a7
80201c8c: 97 00 00 00                  	auipc	ra, 0
80201c90: e7 80 20 c4                  	jalr	-958(ra)
80201c94: 00 00                        	unimp	

0000000080201c96 .LBB249_26:
80201c96: 17 36 00 00                  	auipc	a2, 3
80201c9a: 13 06 a6 b4                  	addi	a2, a2, -1206
80201c9e: 46 85                        	add	a0, zero, a7
80201ca0: ba 85                        	add	a1, zero, a4
80201ca2: 97 00 00 00                  	auipc	ra, 0
80201ca6: e7 80 c0 be                  	jalr	-1044(ra)
80201caa: 00 00                        	unimp	

0000000080201cac _ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h2cbbcd02530bd107E:
80201cac: 75 71                        	addi	sp, sp, -144
80201cae: 06 e5                        	sd	ra, 136(sp)
80201cb0: 2e 88                        	add	a6, zero, a1
80201cb2: 83 e5 05 03                  	lwu	a1, 48(a1)
80201cb6: 13 f6 05 01                  	andi	a2, a1, 16
80201cba: 11 ee                        	bnez	a2, 28
80201cbc: 08 61                        	ld	a0, 0(a0)
80201cbe: 93 f5 05 02                  	andi	a1, a1, 32
80201cc2: b9 e1                        	bnez	a1, 70
80201cc4: 85 45                        	addi	a1, zero, 1
80201cc6: 42 86                        	add	a2, zero, a6
80201cc8: 97 00 00 00                  	auipc	ra, 0
80201ccc: e7 80 80 1c                  	jalr	456(ra)
80201cd0: aa 60                        	ld	ra, 136(sp)
80201cd2: 49 61                        	addi	sp, sp, 144
80201cd4: 82 80                        	ret
80201cd6: 08 61                        	ld	a0, 0(a0)
80201cd8: 81 45                        	mv	a1, zero
80201cda: 30 00                        	addi	a2, sp, 8
80201cdc: a9 46                        	addi	a3, zero, 10
80201cde: 39 a0                        	j	14
80201ce0: 93 87 77 05                  	addi	a5, a5, 87
80201ce4: a3 0f f7 06                  	sb	a5, 127(a4)
80201ce8: fd 15                        	addi	a1, a1, -1
80201cea: 31 c5                        	beqz	a0, 76
80201cec: 33 07 b6 00                  	add	a4, a2, a1
80201cf0: 93 77 f5 00                  	andi	a5, a0, 15
80201cf4: 11 81                        	srli	a0, a0, 4
80201cf6: e3 f5 d7 fe                  	bgeu	a5, a3, -22
80201cfa: 93 e7 07 03                  	ori	a5, a5, 48
80201cfe: a3 0f f7 06                  	sb	a5, 127(a4)
80201d02: fd 15                        	addi	a1, a1, -1
80201d04: 65 f5                        	bnez	a0, -24
80201d06: 05 a8                        	j	48
80201d08: 81 45                        	mv	a1, zero
80201d0a: 30 00                        	addi	a2, sp, 8
80201d0c: a9 46                        	addi	a3, zero, 10
80201d0e: 39 a0                        	j	14
80201d10: 93 87 77 03                  	addi	a5, a5, 55
80201d14: a3 0f f7 06                  	sb	a5, 127(a4)
80201d18: fd 15                        	addi	a1, a1, -1
80201d1a: 11 cd                        	beqz	a0, 28
80201d1c: 33 07 b6 00                  	add	a4, a2, a1
80201d20: 93 77 f5 00                  	andi	a5, a0, 15
80201d24: 11 81                        	srli	a0, a0, 4
80201d26: e3 f5 d7 fe                  	bgeu	a5, a3, -22
80201d2a: 93 e7 07 03                  	ori	a5, a5, 48
80201d2e: a3 0f f7 06                  	sb	a5, 127(a4)
80201d32: fd 15                        	addi	a1, a1, -1
80201d34: 65 f5                        	bnez	a0, -24
80201d36: 13 85 05 08                  	addi	a0, a1, 128
80201d3a: 93 06 10 08                  	addi	a3, zero, 129
80201d3e: 63 76 d5 02                  	bgeu	a0, a3, 44
80201d42: b3 07 b0 40                  	neg	a5, a1
80201d46: 33 05 b6 00                  	add	a0, a2, a1
80201d4a: 13 07 05 08                  	addi	a4, a0, 128

0000000080201d4e .LBB458_14:
80201d4e: 17 26 00 00                  	auipc	a2, 2
80201d52: 13 06 a6 6c                  	addi	a2, a2, 1738
80201d56: 85 45                        	addi	a1, zero, 1
80201d58: 89 46                        	addi	a3, zero, 2
80201d5a: 42 85                        	add	a0, zero, a6
80201d5c: 97 f0 ff ff                  	auipc	ra, 1048575
80201d60: e7 80 a0 1f                  	jalr	506(ra)
80201d64: aa 60                        	ld	ra, 136(sp)
80201d66: 49 61                        	addi	sp, sp, 144
80201d68: 82 80                        	ret

0000000080201d6a .LBB458_15:
80201d6a: 17 26 00 00                  	auipc	a2, 2
80201d6e: 13 06 66 69                  	addi	a2, a2, 1686
80201d72: 93 05 00 08                  	addi	a1, zero, 128
80201d76: 97 00 00 00                  	auipc	ra, 0
80201d7a: e7 80 80 b5                  	jalr	-1192(ra)
80201d7e: 00 00                        	unimp	

0000000080201d80 _ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h0c8e9a47c9cbfbc9E:
80201d80: 75 71                        	addi	sp, sp, -144
80201d82: 06 e5                        	sd	ra, 136(sp)
80201d84: 2e 88                        	add	a6, zero, a1
80201d86: 81 45                        	mv	a1, zero
80201d88: 03 67 05 00                  	lwu	a4, 0(a0)
80201d8c: 93 08 81 00                  	addi	a7, sp, 8
80201d90: 37 05 00 10                  	lui	a0, 65536
80201d94: 7d 35                        	addiw	a0, a0, -1
80201d96: a9 42                        	addi	t0, zero, 10
80201d98: 39 a0                        	j	14
80201d9a: 13 06 76 03                  	addi	a2, a2, 55
80201d9e: a3 8f c7 06                  	sb	a2, 127(a5)
80201da2: fd 15                        	addi	a1, a1, -1
80201da4: 0d c3                        	beqz	a4, 34
80201da6: b3 87 b8 00                  	add	a5, a7, a1
80201daa: 93 56 47 00                  	srli	a3, a4, 4
80201dae: 13 76 f7 00                  	andi	a2, a4, 15
80201db2: 33 f7 a6 00                  	and	a4, a3, a0
80201db6: e3 72 56 fe                  	bgeu	a2, t0, -28
80201dba: 13 66 06 03                  	ori	a2, a2, 48
80201dbe: a3 8f c7 06                  	sb	a2, 127(a5)
80201dc2: fd 15                        	addi	a1, a1, -1
80201dc4: 6d f3                        	bnez	a4, -30
80201dc6: 13 85 05 08                  	addi	a0, a1, 128
80201dca: 13 06 10 08                  	addi	a2, zero, 129
80201dce: 63 76 c5 02                  	bgeu	a0, a2, 44
80201dd2: b3 07 b0 40                  	neg	a5, a1
80201dd6: 33 85 b8 00                  	add	a0, a7, a1
80201dda: 13 07 05 08                  	addi	a4, a0, 128

0000000080201dde .LBB470_7:
80201dde: 17 26 00 00                  	auipc	a2, 2
80201de2: 13 06 a6 63                  	addi	a2, a2, 1594
80201de6: 85 45                        	addi	a1, zero, 1
80201de8: 89 46                        	addi	a3, zero, 2
80201dea: 42 85                        	add	a0, zero, a6
80201dec: 97 f0 ff ff                  	auipc	ra, 1048575
80201df0: e7 80 a0 16                  	jalr	362(ra)
80201df4: aa 60                        	ld	ra, 136(sp)
80201df6: 49 61                        	addi	sp, sp, 144
80201df8: 82 80                        	ret

0000000080201dfa .LBB470_8:
80201dfa: 17 26 00 00                  	auipc	a2, 2
80201dfe: 13 06 66 60                  	addi	a2, a2, 1542
80201e02: 93 05 00 08                  	addi	a1, zero, 128
80201e06: 97 00 00 00                  	auipc	ra, 0
80201e0a: e7 80 80 ac                  	jalr	-1336(ra)
80201e0e: 00 00                        	unimp	

0000000080201e10 _ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17he358e3b3276f5d2eE:
80201e10: 75 71                        	addi	sp, sp, -144
80201e12: 06 e5                        	sd	ra, 136(sp)
80201e14: 14 61                        	ld	a3, 0(a0)
80201e16: 2e 85                        	add	a0, zero, a1
80201e18: 81 45                        	mv	a1, zero
80201e1a: 13 08 81 00                  	addi	a6, sp, 8
80201e1e: 29 47                        	addi	a4, zero, 10
80201e20: 39 a0                        	j	14
80201e22: 13 06 76 05                  	addi	a2, a2, 87
80201e26: a3 8f c7 06                  	sb	a2, 127(a5)
80201e2a: fd 15                        	addi	a1, a1, -1
80201e2c: 91 ce                        	beqz	a3, 28
80201e2e: b3 07 b8 00                  	add	a5, a6, a1
80201e32: 13 f6 f6 00                  	andi	a2, a3, 15
80201e36: 91 82                        	srli	a3, a3, 4
80201e38: e3 75 e6 fe                  	bgeu	a2, a4, -22
80201e3c: 13 66 06 03                  	ori	a2, a2, 48
80201e40: a3 8f c7 06                  	sb	a2, 127(a5)
80201e44: fd 15                        	addi	a1, a1, -1
80201e46: e5 f6                        	bnez	a3, -24
80201e48: 93 86 05 08                  	addi	a3, a1, 128
80201e4c: 13 06 10 08                  	addi	a2, zero, 129
80201e50: 63 f4 c6 02                  	bgeu	a3, a2, 40
80201e54: b3 07 b0 40                  	neg	a5, a1
80201e58: c2 95                        	add	a1, a1, a6
80201e5a: 13 87 05 08                  	addi	a4, a1, 128

0000000080201e5e .LBB473_7:
80201e5e: 17 26 00 00                  	auipc	a2, 2
80201e62: 13 06 a6 5b                  	addi	a2, a2, 1466
80201e66: 85 45                        	addi	a1, zero, 1
80201e68: 89 46                        	addi	a3, zero, 2
80201e6a: 97 f0 ff ff                  	auipc	ra, 1048575
80201e6e: e7 80 c0 0e                  	jalr	236(ra)
80201e72: aa 60                        	ld	ra, 136(sp)
80201e74: 49 61                        	addi	sp, sp, 144
80201e76: 82 80                        	ret

0000000080201e78 .LBB473_8:
80201e78: 17 26 00 00                  	auipc	a2, 2
80201e7c: 13 06 86 58                  	addi	a2, a2, 1416
80201e80: 93 05 00 08                  	addi	a1, zero, 128
80201e84: 36 85                        	add	a0, zero, a3
80201e86: 97 00 00 00                  	auipc	ra, 0
80201e8a: e7 80 80 a4                  	jalr	-1464(ra)
80201e8e: 00 00                        	unimp	

0000000080201e90 _ZN4core3fmt3num3imp7fmt_u6417h373d4d6e712c9b1fE:
80201e90: 5d 71                        	addi	sp, sp, -80
80201e92: 86 e4                        	sd	ra, 72(sp)
80201e94: a2 e0                        	sd	s0, 64(sp)
80201e96: 26 fc                        	sd	s1, 56(sp)
80201e98: 4a f8                        	sd	s2, 48(sp)
80201e9a: 4e f4                        	sd	s3, 40(sp)
80201e9c: 32 88                        	add	a6, zero, a2
80201e9e: 13 56 45 00                  	srli	a2, a0, 4
80201ea2: 13 07 70 02                  	addi	a4, zero, 39
80201ea6: 93 06 10 27                  	addi	a3, zero, 625

0000000080201eaa .LBB479_10:
80201eaa: 97 28 00 00                  	auipc	a7, 2
80201eae: 93 88 08 57                  	addi	a7, a7, 1392
80201eb2: 63 73 d6 02                  	bgeu	a2, a3, 38
80201eb6: 13 06 30 06                  	addi	a2, zero, 99
80201eba: 63 4e a6 0c                  	blt	a2, a0, 220
80201ebe: 29 46                        	addi	a2, zero, 10
80201ec0: 63 59 c5 12                  	bge	a0, a2, 306
80201ec4: 13 06 f7 ff                  	addi	a2, a4, -1
80201ec8: 93 06 11 00                  	addi	a3, sp, 1
80201ecc: b2 96                        	add	a3, a3, a2
80201ece: 13 05 05 03                  	addi	a0, a0, 48
80201ed2: 23 80 a6 00                  	sb	a0, 0(a3)
80201ed6: 2d aa                        	j	314
80201ed8: 01 47                        	mv	a4, zero
80201eda: 37 36 1a 00                  	lui	a2, 419
80201ede: 1b 06 36 6e                  	addiw	a2, a2, 1763
80201ee2: 3a 06                        	slli	a2, a2, 14
80201ee4: 13 06 76 ac                  	addi	a2, a2, -1337
80201ee8: 3a 06                        	slli	a2, a2, 14
80201eea: 13 06 36 43                  	addi	a2, a2, 1075
80201eee: 36 06                        	slli	a2, a2, 13
80201ef0: 93 02 b6 94                  	addi	t0, a2, -1717
80201ef4: 09 66                        	lui	a2, 2
80201ef6: 9b 03 06 71                  	addiw	t2, a2, 1808
80201efa: 41 66                        	lui	a2, 16
80201efc: 9b 0e c6 ff                  	addiw	t4, a2, -4
80201f00: b7 f6 51 00                  	lui	a3, 1311
80201f04: 9b 86 56 b8                  	addiw	a3, a3, -1147
80201f08: b6 06                        	slli	a3, a3, 13
80201f0a: 93 86 76 3d                  	addi	a3, a3, 983
80201f0e: ba 06                        	slli	a3, a3, 14
80201f10: 93 86 f6 28                  	addi	a3, a3, 655
80201f14: b2 06                        	slli	a3, a3, 12
80201f16: 13 8f 36 5c                  	addi	t5, a3, 1475
80201f1a: 13 03 40 06                  	addi	t1, zero, 100
80201f1e: 9b 0f e6 ff                  	addiw	t6, a2, -2
80201f22: 13 0e 11 00                  	addi	t3, sp, 1
80201f26: 37 e6 f5 05                  	lui	a2, 24414
80201f2a: 1b 09 f6 0f                  	addiw	s2, a2, 255
80201f2e: aa 87                        	add	a5, zero, a0
80201f30: 33 35 55 02                  	<unknown>
80201f34: 2d 81                        	srli	a0, a0, 11
80201f36: b3 06 75 02                  	<unknown>
80201f3a: b3 86 d7 40                  	sub	a3, a5, a3
80201f3e: 33 f4 d6 01                  	and	s0, a3, t4
80201f42: 09 80                        	srli	s0, s0, 2
80201f44: 33 34 e4 03                  	<unknown>
80201f48: 09 80                        	srli	s0, s0, 2
80201f4a: 93 14 14 00                  	slli	s1, s0, 1
80201f4e: 33 04 64 02                  	<unknown>
80201f52: 81 8e                        	sub	a3, a3, s0
80201f54: 86 06                        	slli	a3, a3, 1
80201f56: b3 f6 f6 01                  	and	a3, a3, t6
80201f5a: 33 84 14 01                  	add	s0, s1, a7
80201f5e: b3 04 ee 00                  	add	s1, t3, a4
80201f62: 83 49 04 00                  	lbu	s3, 0(s0)
80201f66: 03 04 14 00                  	lb	s0, 1(s0)
80201f6a: c6 96                        	add	a3, a3, a7
80201f6c: 03 86 16 00                  	lb	a2, 1(a3)
80201f70: 83 c6 06 00                  	lbu	a3, 0(a3)
80201f74: 23 82 84 02                  	sb	s0, 36(s1)
80201f78: a3 81 34 03                  	sb	s3, 35(s1)
80201f7c: 23 83 c4 02                  	sb	a2, 38(s1)
80201f80: a3 82 d4 02                  	sb	a3, 37(s1)
80201f84: 71 17                        	addi	a4, a4, -4
80201f86: e3 64 f9 fa                  	bltu	s2, a5, -88
80201f8a: 13 07 77 02                  	addi	a4, a4, 39
80201f8e: 13 06 30 06                  	addi	a2, zero, 99
80201f92: e3 56 a6 f2                  	bge	a2, a0, -212
80201f96: 41 66                        	lui	a2, 16
80201f98: 9b 06 c6 ff                  	addiw	a3, a2, -4
80201f9c: e9 8e                        	and	a3, a3, a0
80201f9e: 89 82                        	srli	a3, a3, 2
80201fa0: b7 f7 51 00                  	lui	a5, 1311
80201fa4: 9b 87 57 b8                  	addiw	a5, a5, -1147
80201fa8: b6 07                        	slli	a5, a5, 13
80201faa: 93 87 77 3d                  	addi	a5, a5, 983
80201fae: ba 07                        	slli	a5, a5, 14
80201fb0: 93 87 f7 28                  	addi	a5, a5, 655
80201fb4: b2 07                        	slli	a5, a5, 12
80201fb6: 93 87 37 5c                  	addi	a5, a5, 1475
80201fba: b3 b6 f6 02                  	<unknown>
80201fbe: 89 82                        	srli	a3, a3, 2
80201fc0: 93 07 40 06                  	addi	a5, zero, 100
80201fc4: b3 87 f6 02                  	<unknown>
80201fc8: 1d 8d                        	sub	a0, a0, a5
80201fca: 06 05                        	slli	a0, a0, 1
80201fcc: 79 36                        	addiw	a2, a2, -2
80201fce: 71 8d                        	and	a0, a0, a2
80201fd0: 79 17                        	addi	a4, a4, -2
80201fd2: 46 95                        	add	a0, a0, a7
80201fd4: 03 06 15 00                  	lb	a2, 1(a0)
80201fd8: 03 45 05 00                  	lbu	a0, 0(a0)
80201fdc: 93 07 11 00                  	addi	a5, sp, 1
80201fe0: ba 97                        	add	a5, a5, a4
80201fe2: a3 80 c7 00                  	sb	a2, 1(a5)
80201fe6: 23 80 a7 00                  	sb	a0, 0(a5)
80201fea: 36 85                        	add	a0, zero, a3
80201fec: 29 46                        	addi	a2, zero, 10
80201fee: e3 4b c5 ec                  	blt	a0, a2, -298
80201ff2: 06 05                        	slli	a0, a0, 1
80201ff4: 13 06 e7 ff                  	addi	a2, a4, -2
80201ff8: 46 95                        	add	a0, a0, a7
80201ffa: 83 06 15 00                  	lb	a3, 1(a0)
80201ffe: 03 45 05 00                  	lbu	a0, 0(a0)
80202002: 13 07 11 00                  	addi	a4, sp, 1
80202006: 32 97                        	add	a4, a4, a2
80202008: a3 00 d7 00                  	sb	a3, 1(a4)
8020200c: 23 00 a7 00                  	sb	a0, 0(a4)
80202010: 13 05 11 00                  	addi	a0, sp, 1
80202014: 33 07 c5 00                  	add	a4, a0, a2
80202018: 13 05 70 02                  	addi	a0, zero, 39
8020201c: b3 07 c5 40                  	sub	a5, a0, a2

0000000080202020 .LBB479_11:
80202020: 17 26 00 00                  	auipc	a2, 2
80202024: 13 06 06 26                  	addi	a2, a2, 608
80202028: 42 85                        	add	a0, zero, a6
8020202a: 81 46                        	mv	a3, zero
8020202c: 97 f0 ff ff                  	auipc	ra, 1048575
80202030: e7 80 a0 f2                  	jalr	-214(ra)
80202034: a2 79                        	ld	s3, 40(sp)
80202036: 42 79                        	ld	s2, 48(sp)
80202038: e2 74                        	ld	s1, 56(sp)
8020203a: 06 64                        	ld	s0, 64(sp)
8020203c: a6 60                        	ld	ra, 72(sp)
8020203e: 61 61                        	addi	sp, sp, 80
80202040: 82 80                        	ret

0000000080202042 _ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha1dc7db1ae6e1ccdE:
80202042: 03 65 05 00                  	lwu	a0, 0(a0)
80202046: 2e 86                        	add	a2, zero, a1
80202048: 85 45                        	addi	a1, zero, 1
8020204a: 17 03 00 00                  	auipc	t1, 0
8020204e: 67 00 63 e4                  	jr	-442(t1)

0000000080202052 _ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hfdb2265e757676d6E:
80202052: 08 61                        	ld	a0, 0(a0)
80202054: 2e 86                        	add	a2, zero, a1
80202056: 85 45                        	addi	a1, zero, 1
80202058: 17 03 00 00                  	auipc	t1, 0
8020205c: 67 00 83 e3                  	jr	-456(t1)

0000000080202060 _ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h521c7eeed0830024E:
80202060: 90 75                        	ld	a2, 40(a1)
80202062: 88 71                        	ld	a0, 32(a1)
80202064: 1c 6e                        	ld	a5, 24(a2)

0000000080202066 .LBB514_1:
80202066: 97 35 00 00                  	auipc	a1, 3
8020206a: 93 85 25 d6                  	addi	a1, a1, -670
8020206e: 15 46                        	addi	a2, zero, 5
80202070: 82 87                        	jr	a5

0000000080202072 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4f9c2310c108c28E:
80202072: 10 65                        	ld	a2, 8(a0)
80202074: 08 61                        	ld	a0, 0(a0)
80202076: 1c 6e                        	ld	a5, 24(a2)
80202078: 82 87                        	jr	a5

000000008020207a _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb0118f6aeefbaeabE:
8020207a: 14 61                        	ld	a3, 0(a0)
8020207c: 10 65                        	ld	a2, 8(a0)
8020207e: 2e 85                        	add	a0, zero, a1
80202080: b6 85                        	add	a1, zero, a3
80202082: 17 f3 ff ff                  	auipc	t1, 1048575
80202086: 67 00 e3 13                  	jr	318(t1)

000000008020208a _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbc8f730ffe70e98bE:
8020208a: 39 71                        	addi	sp, sp, -64
8020208c: 06 fc                        	sd	ra, 56(sp)
8020208e: 10 61                        	ld	a2, 0(a0)
80202090: 14 76                        	ld	a3, 40(a2)
80202092: 88 71                        	ld	a0, 32(a1)
80202094: 8c 75                        	ld	a1, 40(a1)
80202096: 36 f8                        	sd	a3, 48(sp)
80202098: 14 72                        	ld	a3, 32(a2)
8020209a: 36 f4                        	sd	a3, 40(sp)
8020209c: 14 6e                        	ld	a3, 24(a2)
8020209e: 36 f0                        	sd	a3, 32(sp)
802020a0: 14 6a                        	ld	a3, 16(a2)
802020a2: 36 ec                        	sd	a3, 24(sp)
802020a4: 14 66                        	ld	a3, 8(a2)
802020a6: 36 e8                        	sd	a3, 16(sp)
802020a8: 10 62                        	ld	a2, 0(a2)
802020aa: 32 e4                        	sd	a2, 8(sp)
802020ac: 30 00                        	addi	a2, sp, 8
802020ae: 97 f0 ff ff                  	auipc	ra, 1048575
802020b2: e7 80 80 cc                  	jalr	-824(ra)
802020b6: e2 70                        	ld	ra, 56(sp)
802020b8: 21 61                        	addi	sp, sp, 64
802020ba: 82 80                        	ret

00000000802020bc _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf32251b00daa423dE:
802020bc: 08 61                        	ld	a0, 0(a0)
802020be: 14 61                        	ld	a3, 0(a0)
802020c0: 10 65                        	ld	a2, 8(a0)
802020c2: 2e 85                        	add	a0, zero, a1
802020c4: b6 85                        	add	a1, zero, a3
802020c6: 17 f3 ff ff                  	auipc	t1, 1048575
802020ca: 67 00 a3 0f                  	jr	250(t1)

00000000802020ce _ZN4core7unicode12unicode_data15grapheme_extend6lookup17h5925f327e5e33873E:
802020ce: 41 11                        	addi	sp, sp, -16
802020d0: 06 e4                        	sd	ra, 8(sp)
802020d2: 81 46                        	mv	a3, zero
802020d4: 9b 05 05 00                  	sext.w	a1, a0
802020d8: 45 66                        	lui	a2, 17
802020da: 1b 07 46 d2                  	addiw	a4, a2, -732
802020de: 1b 16 b5 00                  	slliw	a2, a0, 11
802020e2: 63 e3 e5 00                  	bltu	a1, a4, 6
802020e6: bd 46                        	addi	a3, zero, 15
802020e8: 13 87 86 00                  	addi	a4, a3, 8
802020ec: 93 17 27 00                  	slli	a5, a4, 2

00000000802020f0 .LBB634_27:
802020f0: 97 35 00 00                  	auipc	a1, 3
802020f4: 93 85 05 ce                  	addi	a1, a1, -800
802020f8: ae 97                        	add	a5, a5, a1
802020fa: 9c 43                        	lw	a5, 0(a5)
802020fc: 9b 97 b7 00                  	slliw	a5, a5, 11
80202100: 63 63 f6 00                  	bltu	a2, a5, 6
80202104: ba 86                        	add	a3, zero, a4
80202106: 13 87 46 00                  	addi	a4, a3, 4
8020210a: 93 17 27 00                  	slli	a5, a4, 2
8020210e: ae 97                        	add	a5, a5, a1
80202110: 9c 43                        	lw	a5, 0(a5)
80202112: 9b 97 b7 00                  	slliw	a5, a5, 11
80202116: 63 63 f6 00                  	bltu	a2, a5, 6
8020211a: ba 86                        	add	a3, zero, a4
8020211c: 13 87 26 00                  	addi	a4, a3, 2
80202120: 93 17 27 00                  	slli	a5, a4, 2
80202124: ae 97                        	add	a5, a5, a1
80202126: 9c 43                        	lw	a5, 0(a5)
80202128: 9b 97 b7 00                  	slliw	a5, a5, 11
8020212c: 63 63 f6 00                  	bltu	a2, a5, 6
80202130: ba 86                        	add	a3, zero, a4
80202132: 13 87 16 00                  	addi	a4, a3, 1
80202136: 93 17 27 00                  	slli	a5, a4, 2
8020213a: ae 97                        	add	a5, a5, a1
8020213c: 9c 43                        	lw	a5, 0(a5)
8020213e: 9b 97 b7 00                  	slliw	a5, a5, 11
80202142: 63 63 f6 00                  	bltu	a2, a5, 6
80202146: ba 86                        	add	a3, zero, a4
80202148: 13 97 26 00                  	slli	a4, a3, 2
8020214c: 2e 97                        	add	a4, a4, a1
8020214e: 18 43                        	lw	a4, 0(a4)
80202150: 1b 17 b7 00                  	slliw	a4, a4, 11
80202154: b3 37 c7 00                  	sltu	a5, a4, a2
80202158: 39 8e                        	xor	a2, a2, a4
8020215a: 13 36 16 00                  	seqz	a2, a2
8020215e: 3e 96                        	add	a2, a2, a5
80202160: 33 07 d6 00                  	add	a4, a2, a3
80202164: f9 46                        	addi	a3, zero, 30
80202166: 63 e0 e6 0a                  	bltu	a3, a4, 160
8020216a: 93 17 27 00                  	slli	a5, a4, 2
8020216e: 13 06 10 2b                  	addi	a2, zero, 689
80202172: 63 07 d7 00                  	beq	a4, a3, 14
80202176: 33 86 f5 00                  	add	a2, a1, a5
8020217a: 03 66 46 00                  	lwu	a2, 4(a2)
8020217e: 55 82                        	srli	a2, a2, 21
80202180: 93 06 f7 ff                  	addi	a3, a4, -1
80202184: 63 74 d7 00                  	bgeu	a4, a3, 8
80202188: 01 47                        	mv	a4, zero
8020218a: 21 a8                        	j	24
8020218c: 7d 47                        	addi	a4, zero, 31
8020218e: 63 f7 e6 08                  	bgeu	a3, a4, 142
80202192: 8a 06                        	slli	a3, a3, 2
80202194: ae 96                        	add	a3, a3, a1
80202196: 83 e6 06 00                  	lwu	a3, 0(a3)
8020219a: 37 07 20 00                  	lui	a4, 512
8020219e: 7d 37                        	addiw	a4, a4, -1
802021a0: 75 8f                        	and	a4, a4, a3
802021a2: be 95                        	add	a1, a1, a5
802021a4: 83 e5 05 00                  	lwu	a1, 0(a1)
802021a8: 93 d6 55 01                  	srli	a3, a1, 21
802021ac: 93 85 16 00                  	addi	a1, a3, 1
802021b0: 63 0a b6 02                  	beq	a2, a1, 52
802021b4: 81 45                        	mv	a1, zero
802021b6: 3b 07 e5 40                  	subw	a4, a0, a4
802021ba: 13 05 f6 ff                  	addi	a0, a2, -1
802021be: 13 08 00 2b                  	addi	a6, zero, 688

00000000802021c2 .LBB634_28:
802021c2: 97 37 00 00                  	auipc	a5, 3
802021c6: 93 87 a7 c8                  	addi	a5, a5, -886
802021ca: 63 62 d8 02                  	bltu	a6, a3, 36
802021ce: 33 86 f6 00                  	add	a2, a3, a5
802021d2: 03 46 06 00                  	lbu	a2, 0(a2)
802021d6: b1 9d                        	addw	a1, a1, a2
802021d8: 63 66 b7 00                  	bltu	a4, a1, 12
802021dc: 85 06                        	addi	a3, a3, 1
802021de: e3 16 d5 fe                  	bne	a0, a3, -20
802021e2: aa 86                        	add	a3, zero, a0
802021e4: 13 f5 16 00                  	andi	a0, a3, 1
802021e8: a2 60                        	ld	ra, 8(sp)
802021ea: 41 01                        	addi	sp, sp, 16
802021ec: 82 80                        	ret

00000000802021ee .LBB634_29:
802021ee: 17 36 00 00                  	auipc	a2, 3
802021f2: 13 06 a6 ba                  	addi	a2, a2, -1110
802021f6: 93 05 10 2b                  	addi	a1, zero, 689
802021fa: 36 85                        	add	a0, zero, a3
802021fc: 97 e0 ff ff                  	auipc	ra, 1048574
80202200: e7 80 a0 58                  	jalr	1418(ra)
80202204: 00 00                        	unimp	

0000000080202206 .LBB634_30:
80202206: 17 36 00 00                  	auipc	a2, 3
8020220a: 13 06 a6 b7                  	addi	a2, a2, -1158
8020220e: fd 45                        	addi	a1, zero, 31
80202210: 3a 85                        	add	a0, zero, a4
80202212: 97 e0 ff ff                  	auipc	ra, 1048574
80202216: e7 80 40 57                  	jalr	1396(ra)
8020221a: 00 00                        	unimp	

000000008020221c .LBB634_31:
8020221c: 17 36 00 00                  	auipc	a2, 3
80202220: 13 06 46 b9                  	addi	a2, a2, -1132
80202224: fd 45                        	addi	a1, zero, 31
80202226: 36 85                        	add	a0, zero, a3
80202228: 97 e0 ff ff                  	auipc	ra, 1048574
8020222c: e7 80 e0 55                  	jalr	1374(ra)
80202230: 00 00                        	unimp	

0000000080202232 memcmp:
80202232: 19 ca                        	beqz	a2, 22
80202234: 83 46 05 00                  	lbu	a3, 0(a0)
80202238: 03 c7 05 00                  	lbu	a4, 0(a1)
8020223c: 63 98 e6 00                  	bne	a3, a4, 16
80202240: 7d 16                        	addi	a2, a2, -1
80202242: 85 05                        	addi	a1, a1, 1
80202244: 05 05                        	addi	a0, a0, 1
80202246: 7d f6                        	bnez	a2, -18
80202248: 01 45                        	mv	a0, zero
8020224a: 82 80                        	ret
8020224c: 33 85 e6 40                  	sub	a0, a3, a4
80202250: 82 80                        	ret

0000000080202252 rust_begin_unwind:
80202252: 51 71                        	addi	sp, sp, -240
80202254: 86 f5                        	sd	ra, 232(sp)
80202256: aa e0                        	sd	a0, 64(sp)

0000000080202258 .LBB0_7:
80202258: 17 35 00 00                  	auipc	a0, 3
8020225c: 13 05 85 ec                  	addi	a0, a0, -312
80202260: 0c 61                        	ld	a1, 0(a0)

0000000080202262 .LBB0_8:
80202262: 17 35 00 00                  	auipc	a0, 3
80202266: 13 05 65 ed                  	addi	a0, a0, -298
8020226a: 08 61                        	ld	a0, 0(a0)
8020226c: 90 00                        	addi	a2, sp, 64
8020226e: b2 e9                        	sd	a2, 208(sp)
80202270: b2 ed                        	sd	a2, 216(sp)

0000000080202272 .LBB0_9:
80202272: 97 06 00 00                  	auipc	a3, 0
80202276: 93 86 46 08                  	addi	a3, a3, 132
8020227a: 2a fc                        	sd	a0, 56(sp)
8020227c: 32 85                        	add	a0, zero, a2
8020227e: 2e f8                        	sd	a1, 48(sp)
80202280: b6 85                        	add	a1, zero, a3
80202282: 97 00 00 00                  	auipc	ra, 0
80202286: e7 80 40 0b                  	jalr	180(ra)
8020228a: 2a f4                        	sd	a0, 40(sp)
8020228c: 2e f0                        	sd	a1, 32(sp)
8020228e: 09 a0                        	j	2
80202290: 22 75                        	ld	a0, 40(sp)
80202292: aa e1                        	sd	a0, 192(sp)
80202294: 82 75                        	ld	a1, 32(sp)
80202296: ae e5                        	sd	a1, 200(sp)
80202298: 08 09                        	addi	a0, sp, 144
8020229a: 94 01                        	addi	a3, sp, 192
8020229c: 05 46                        	addi	a2, zero, 1
8020229e: e2 75                        	ld	a1, 56(sp)
802022a0: 32 ec                        	sd	a2, 24(sp)
802022a2: 62 67                        	ld	a4, 24(sp)
802022a4: 97 00 00 00                  	auipc	ra, 0
802022a8: e7 80 00 14                  	jalr	320(ra)
802022ac: 09 a0                        	j	2
802022ae: 08 09                        	addi	a0, sp, 144
802022b0: 2a e5                        	sd	a0, 136(sp)
802022b2: aa f1                        	sd	a0, 224(sp)

00000000802022b4 .LBB0_10:
802022b4: 97 f5 ff ff                  	auipc	a1, 1048575
802022b8: 93 85 05 a9                  	addi	a1, a1, -1392
802022bc: 97 00 00 00                  	auipc	ra, 0
802022c0: e7 80 00 0e                  	jalr	224(ra)
802022c4: 2a e8                        	sd	a0, 16(sp)
802022c6: 2e e4                        	sd	a1, 8(sp)
802022c8: 09 a0                        	j	2
802022ca: 42 65                        	ld	a0, 16(sp)
802022cc: aa fc                        	sd	a0, 120(sp)
802022ce: a2 65                        	ld	a1, 8(sp)
802022d0: 2e e1                        	sd	a1, 128(sp)
802022d2: a8 00                        	addi	a0, sp, 72
802022d4: 09 46                        	addi	a2, zero, 2
802022d6: b4 18                        	addi	a3, sp, 120
802022d8: 05 47                        	addi	a4, zero, 1
802022da: c2 75                        	ld	a1, 48(sp)
802022dc: 97 00 00 00                  	auipc	ra, 0
802022e0: e7 80 80 10                  	jalr	264(ra)
802022e4: 09 a0                        	j	2
802022e6: a8 00                        	addi	a0, sp, 72
802022e8: 97 e0 ff ff                  	auipc	ra, 1048574
802022ec: e7 80 20 14                  	jalr	322(ra)
802022f0: 09 a0                        	j	2
802022f2: 09 a0                        	j	2
802022f4: 01 a0                        	j	0

00000000802022f6 _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8cf603764e0a2b3fE:
802022f6: 01 11                        	addi	sp, sp, -32
802022f8: 06 ec                        	sd	ra, 24(sp)
802022fa: 2a e4                        	sd	a0, 8(sp)
802022fc: 2e e8                        	sd	a1, 16(sp)
802022fe: 08 61                        	ld	a0, 0(a0)
80202300: 97 e0 ff ff                  	auipc	ra, 1048574
80202304: e7 80 e0 35                  	jalr	862(ra)
80202308: 2a e0                        	sd	a0, 0(sp)
8020230a: 09 a0                        	j	2
8020230c: 02 65                        	ld	a0, 0(sp)
8020230e: e2 60                        	ld	ra, 24(sp)
80202310: 05 61                        	addi	sp, sp, 32
80202312: 82 80                        	ret

0000000080202314 _ZN4core3fmt10ArgumentV13new17h6721b717afbba0ecE:
80202314: 5d 71                        	addi	sp, sp, -80
80202316: 2a f8                        	sd	a0, 48(sp)
80202318: 2e fc                        	sd	a1, 56(sp)
8020231a: ae e0                        	sd	a1, 64(sp)
8020231c: 2a ec                        	sd	a0, 24(sp)
8020231e: 2e e8                        	sd	a1, 16(sp)
80202320: 09 a0                        	j	2
80202322: 62 65                        	ld	a0, 24(sp)
80202324: aa e4                        	sd	a0, 72(sp)
80202326: 2a e4                        	sd	a0, 8(sp)
80202328: 09 a0                        	j	2
8020232a: 22 65                        	ld	a0, 8(sp)
8020232c: 2a f0                        	sd	a0, 32(sp)
8020232e: c2 65                        	ld	a1, 16(sp)
80202330: 2e f4                        	sd	a1, 40(sp)
80202332: 61 61                        	addi	sp, sp, 80
80202334: 82 80                        	ret

0000000080202336 _ZN4core3fmt10ArgumentV13new17h72b93e85df3ea5a1E:
80202336: 5d 71                        	addi	sp, sp, -80
80202338: 2a f8                        	sd	a0, 48(sp)
8020233a: 2e fc                        	sd	a1, 56(sp)
8020233c: ae e0                        	sd	a1, 64(sp)
8020233e: 2a ec                        	sd	a0, 24(sp)
80202340: 2e e8                        	sd	a1, 16(sp)
80202342: 09 a0                        	j	2
80202344: 62 65                        	ld	a0, 24(sp)
80202346: aa e4                        	sd	a0, 72(sp)
80202348: 2a e4                        	sd	a0, 8(sp)
8020234a: 09 a0                        	j	2
8020234c: 22 65                        	ld	a0, 8(sp)
8020234e: 2a f0                        	sd	a0, 32(sp)
80202350: c2 65                        	ld	a1, 16(sp)
80202352: 2e f4                        	sd	a1, 40(sp)
80202354: 61 61                        	addi	sp, sp, 80
80202356: 82 80                        	ret

0000000080202358 _ZN4core3fmt10ArgumentV13new17hc7927a9dfa6ab335E:
80202358: 5d 71                        	addi	sp, sp, -80
8020235a: 2a f8                        	sd	a0, 48(sp)
8020235c: 2e fc                        	sd	a1, 56(sp)
8020235e: ae e0                        	sd	a1, 64(sp)
80202360: 2a ec                        	sd	a0, 24(sp)
80202362: 2e e8                        	sd	a1, 16(sp)
80202364: 09 a0                        	j	2
80202366: 62 65                        	ld	a0, 24(sp)
80202368: aa e4                        	sd	a0, 72(sp)
8020236a: 2a e4                        	sd	a0, 8(sp)
8020236c: 09 a0                        	j	2
8020236e: 22 65                        	ld	a0, 8(sp)
80202370: 2a f0                        	sd	a0, 32(sp)
80202372: c2 65                        	ld	a1, 16(sp)
80202374: 2e f4                        	sd	a1, 40(sp)
80202376: 61 61                        	addi	sp, sp, 80
80202378: 82 80                        	ret

000000008020237a _ZN4core3fmt10ArgumentV13new17hc8fb905cbd5a1c30E:
8020237a: 5d 71                        	addi	sp, sp, -80
8020237c: 2a f8                        	sd	a0, 48(sp)
8020237e: 2e fc                        	sd	a1, 56(sp)
80202380: ae e0                        	sd	a1, 64(sp)
80202382: 2a ec                        	sd	a0, 24(sp)
80202384: 2e e8                        	sd	a1, 16(sp)
80202386: 09 a0                        	j	2
80202388: 62 65                        	ld	a0, 24(sp)
8020238a: aa e4                        	sd	a0, 72(sp)
8020238c: 2a e4                        	sd	a0, 8(sp)
8020238e: 09 a0                        	j	2
80202390: 22 65                        	ld	a0, 8(sp)
80202392: 2a f0                        	sd	a0, 32(sp)
80202394: c2 65                        	ld	a1, 16(sp)
80202396: 2e f4                        	sd	a1, 40(sp)
80202398: 61 61                        	addi	sp, sp, 80
8020239a: 82 80                        	ret

000000008020239c _ZN4core3fmt10ArgumentV13new17hde0e33b34f2b63e5E:
8020239c: 5d 71                        	addi	sp, sp, -80
8020239e: 2a f8                        	sd	a0, 48(sp)
802023a0: 2e fc                        	sd	a1, 56(sp)
802023a2: ae e0                        	sd	a1, 64(sp)
802023a4: 2a ec                        	sd	a0, 24(sp)
802023a6: 2e e8                        	sd	a1, 16(sp)
802023a8: 09 a0                        	j	2
802023aa: 62 65                        	ld	a0, 24(sp)
802023ac: aa e4                        	sd	a0, 72(sp)
802023ae: 2a e4                        	sd	a0, 8(sp)
802023b0: 09 a0                        	j	2
802023b2: 22 65                        	ld	a0, 8(sp)
802023b4: 2a f0                        	sd	a0, 32(sp)
802023b6: c2 65                        	ld	a1, 16(sp)
802023b8: 2e f4                        	sd	a1, 40(sp)
802023ba: 61 61                        	addi	sp, sp, 80
802023bc: 82 80                        	ret

00000000802023be _ZN4core3fmt9Arguments16new_v1_formatted17hb923ed8418479ac4E:
802023be: 39 71                        	addi	sp, sp, -64
802023c0: 2e e8                        	sd	a1, 16(sp)
802023c2: 32 ec                        	sd	a2, 24(sp)
802023c4: 36 f0                        	sd	a3, 32(sp)
802023c6: 3a f4                        	sd	a4, 40(sp)
802023c8: 3e f8                        	sd	a5, 48(sp)
802023ca: 42 fc                        	sd	a6, 56(sp)
802023cc: 3e e0                        	sd	a5, 0(sp)
802023ce: 42 e4                        	sd	a6, 8(sp)
802023d0: 0c e1                        	sd	a1, 0(a0)
802023d2: 10 e5                        	sd	a2, 8(a0)
802023d4: 82 65                        	ld	a1, 0(sp)
802023d6: 22 66                        	ld	a2, 8(sp)
802023d8: 0c e9                        	sd	a1, 16(a0)
802023da: 10 ed                        	sd	a2, 24(a0)
802023dc: 14 f1                        	sd	a3, 32(a0)
802023de: 18 f5                        	sd	a4, 40(a0)
802023e0: 21 61                        	addi	sp, sp, 64
802023e2: 82 80                        	ret

00000000802023e4 _ZN4core3fmt9Arguments6new_v117h29435e54f21a433bE:
802023e4: 79 71                        	addi	sp, sp, -48
802023e6: 2e e8                        	sd	a1, 16(sp)
802023e8: 32 ec                        	sd	a2, 24(sp)
802023ea: 36 f0                        	sd	a3, 32(sp)
802023ec: 3a f4                        	sd	a4, 40(sp)
802023ee: 81 47                        	mv	a5, zero
802023f0: 3e e0                        	sd	a5, 0(sp)
802023f2: 0c e1                        	sd	a1, 0(a0)
802023f4: 10 e5                        	sd	a2, 8(a0)
802023f6: 82 65                        	ld	a1, 0(sp)
802023f8: 22 66                        	ld	a2, 8(sp)
802023fa: 0c e9                        	sd	a1, 16(a0)
802023fc: 10 ed                        	sd	a2, 24(a0)
802023fe: 14 f1                        	sd	a3, 32(a0)
80202400: 18 f5                        	sd	a4, 40(a0)
80202402: 45 61                        	addi	sp, sp, 48
80202404: 82 80                        	ret

0000000080202406 _ZN4core3ptr13drop_in_place17h2f4c75a541ad9e3bE:
80202406: 41 11                        	addi	sp, sp, -16
80202408: 2a e4                        	sd	a0, 8(sp)
8020240a: 41 01                        	addi	sp, sp, 16
8020240c: 82 80                        	ret

000000008020240e _ZN4core3ptr13drop_in_place17h35367304aefc0e6cE:
8020240e: 41 11                        	addi	sp, sp, -16
80202410: 2a e4                        	sd	a0, 8(sp)
80202412: 41 01                        	addi	sp, sp, 16
80202414: 82 80                        	ret

0000000080202416 _ZN4core4char7methods15encode_utf8_raw17hc658ca42979be01dE:
80202416: 45 71                        	addi	sp, sp, -464
80202418: 86 e7                        	sd	ra, 456(sp)
8020241a: aa 86                        	add	a3, zero, a0
8020241c: 2a d3                        	sw	a0, 164(sp)
8020241e: ae ea                        	sd	a1, 336(sp)
80202420: b2 ee                        	sd	a2, 344(sp)
80202422: 32 ed                        	sd	a2, 152(sp)
80202424: 2e e9                        	sd	a1, 144(sp)
80202426: 36 e5                        	sd	a3, 136(sp)
80202428: 97 00 00 00                  	auipc	ra, 0
8020242c: e7 80 c0 27                  	jalr	636(ra)
80202430: 2a f5                        	sd	a0, 168(sp)
80202432: 09 a0                        	j	2
80202434: 2a 75                        	ld	a0, 168(sp)

0000000080202436 .LBB0_22:
80202436: 17 36 00 00                  	auipc	a2, 3
8020243a: 13 06 a6 d7                  	addi	a2, a2, -646
8020243e: ca 65                        	ld	a1, 144(sp)
80202440: 2a e1                        	sd	a0, 128(sp)
80202442: 2e 85                        	add	a0, zero, a1
80202444: ea 65                        	ld	a1, 152(sp)
80202446: 97 00 00 00                  	auipc	ra, 0
8020244a: e7 80 60 73                  	jalr	1846(ra)
8020244e: aa fc                        	sd	a0, 120(sp)
80202450: ae f8                        	sd	a1, 112(sp)
80202452: 09 a0                        	j	2
80202454: 0a 65                        	ld	a0, 128(sp)
80202456: 2a f9                        	sd	a0, 176(sp)
80202458: e6 75                        	ld	a1, 120(sp)
8020245a: 2e fd                        	sd	a1, 184(sp)
8020245c: 46 76                        	ld	a2, 112(sp)
8020245e: b2 e1                        	sd	a2, 192(sp)
80202460: 85 46                        	addi	a3, zero, 1
80202462: 0a 67                        	ld	a4, 128(sp)
80202464: aa f4                        	sd	a0, 104(sp)
80202466: 63 02 d7 02                  	beq	a4, a3, 36
8020246a: 09 a0                        	j	2
8020246c: 09 45                        	addi	a0, zero, 2
8020246e: a6 75                        	ld	a1, 104(sp)
80202470: 63 81 a5 04                  	beq	a1, a0, 66
80202474: 09 a0                        	j	2
80202476: 0d 45                        	addi	a0, zero, 3
80202478: a6 75                        	ld	a1, 104(sp)
8020247a: 63 81 a5 04                  	beq	a1, a0, 66
8020247e: 09 a0                        	j	2
80202480: 11 45                        	addi	a0, zero, 4
80202482: a6 75                        	ld	a1, 104(sp)
80202484: 63 81 a5 04                  	beq	a1, a0, 66
80202488: 31 a0                        	j	12
8020248a: 0e 65                        	ld	a0, 192(sp)
8020248c: 81 45                        	mv	a1, zero
8020248e: 63 11 b5 04                  	bne	a0, a1, 66
80202492: 09 a0                        	j	2

0000000080202494 .LBB0_23:
80202494: 17 35 00 00                  	auipc	a0, 3
80202498: 13 05 c5 db                  	addi	a0, a0, -580
8020249c: 0c 61                        	ld	a1, 0(a0)
8020249e: 4a 65                        	ld	a0, 144(sp)
802024a0: 6a 66                        	ld	a2, 152(sp)
802024a2: ae f0                        	sd	a1, 96(sp)
802024a4: b2 85                        	add	a1, zero, a2
802024a6: 97 00 00 00                  	auipc	ra, 0
802024aa: e7 80 80 5e                  	jalr	1512(ra)
802024ae: aa e2                        	sd	a0, 320(sp)
802024b0: fd a0                        	j	238
802024b2: 0e 65                        	ld	a0, 192(sp)
802024b4: 85 45                        	addi	a1, zero, 1
802024b6: 63 e4 a5 02                  	bltu	a1, a0, 40
802024ba: e9 bf                        	j	-38
802024bc: 0e 65                        	ld	a0, 192(sp)
802024be: 89 45                        	addi	a1, zero, 2
802024c0: 63 e4 a5 04                  	bltu	a1, a0, 72
802024c4: c1 bf                        	j	-48
802024c6: 0e 65                        	ld	a0, 192(sp)
802024c8: 8d 45                        	addi	a1, zero, 3
802024ca: 63 ef a5 06                  	bltu	a1, a0, 126
802024ce: d9 b7                        	j	-58
802024d0: 6a 75                        	ld	a0, 184(sp)
802024d2: 2a f7                        	sd	a0, 424(sp)
802024d4: 83 05 41 0a                  	lb	a1, 164(sp)
802024d8: 23 00 b5 00                  	sb	a1, 0(a0)
802024dc: 8d a2                        	j	354
802024de: 6a 75                        	ld	a0, 184(sp)
802024e0: 2a ef                        	sd	a0, 408(sp)
802024e2: 93 05 15 00                  	addi	a1, a0, 1
802024e6: 2e f3                        	sd	a1, 416(sp)
802024e8: 9a 55                        	lw	a1, 164(sp)
802024ea: 99 81                        	srli	a1, a1, 6
802024ec: fd 89                        	andi	a1, a1, 31
802024ee: 93 e5 05 0c                  	ori	a1, a1, 192
802024f2: 23 00 b5 00                  	sb	a1, 0(a0)
802024f6: 83 45 41 0a                  	lbu	a1, 164(sp)
802024fa: 93 f5 f5 03                  	andi	a1, a1, 63
802024fe: 93 e5 05 08                  	ori	a1, a1, 128
80202502: a3 00 b5 00                  	sb	a1, 1(a0)
80202506: 25 aa                        	j	312
80202508: 6a 75                        	ld	a0, 184(sp)
8020250a: 2a e3                        	sd	a0, 384(sp)
8020250c: 93 05 15 00                  	addi	a1, a0, 1
80202510: 2e e7                        	sd	a1, 392(sp)
80202512: 93 05 25 00                  	addi	a1, a0, 2
80202516: 2e eb                        	sd	a1, 400(sp)
80202518: 9a 55                        	lw	a1, 164(sp)
8020251a: b1 81                        	srli	a1, a1, 12
8020251c: bd 89                        	andi	a1, a1, 15
8020251e: 93 e5 05 0e                  	ori	a1, a1, 224
80202522: 23 00 b5 00                  	sb	a1, 0(a0)
80202526: 9a 55                        	lw	a1, 164(sp)
80202528: 99 81                        	srli	a1, a1, 6
8020252a: 93 f5 f5 03                  	andi	a1, a1, 63
8020252e: 93 e5 05 08                  	ori	a1, a1, 128
80202532: a3 00 b5 00                  	sb	a1, 1(a0)
80202536: 83 45 41 0a                  	lbu	a1, 164(sp)
8020253a: 93 f5 f5 03                  	andi	a1, a1, 63
8020253e: 93 e5 05 08                  	ori	a1, a1, 128
80202542: 23 01 b5 00                  	sb	a1, 2(a0)
80202546: e5 a8                        	j	248
80202548: 6a 75                        	ld	a0, 184(sp)
8020254a: aa f2                        	sd	a0, 352(sp)
8020254c: 93 05 15 00                  	addi	a1, a0, 1
80202550: ae f6                        	sd	a1, 360(sp)
80202552: 93 05 25 00                  	addi	a1, a0, 2
80202556: ae fa                        	sd	a1, 368(sp)
80202558: 93 05 35 00                  	addi	a1, a0, 3
8020255c: ae fe                        	sd	a1, 376(sp)
8020255e: 9a 55                        	lw	a1, 164(sp)
80202560: c9 81                        	srli	a1, a1, 18
80202562: 9d 89                        	andi	a1, a1, 7
80202564: 93 e5 05 0f                  	ori	a1, a1, 240
80202568: 23 00 b5 00                  	sb	a1, 0(a0)
8020256c: 9a 55                        	lw	a1, 164(sp)
8020256e: b1 81                        	srli	a1, a1, 12
80202570: 93 f5 f5 03                  	andi	a1, a1, 63
80202574: 93 e5 05 08                  	ori	a1, a1, 128
80202578: a3 00 b5 00                  	sb	a1, 1(a0)
8020257c: 9a 55                        	lw	a1, 164(sp)
8020257e: 99 81                        	srli	a1, a1, 6
80202580: 93 f5 f5 03                  	andi	a1, a1, 63
80202584: 93 e5 05 08                  	ori	a1, a1, 128
80202588: 23 01 b5 00                  	sb	a1, 2(a0)
8020258c: 83 45 41 0a                  	lbu	a1, 164(sp)
80202590: 93 f5 f5 03                  	andi	a1, a1, 63
80202594: 93 e5 05 08                  	ori	a1, a1, 128
80202598: a3 01 b5 00                  	sb	a1, 3(a0)
8020259c: 4d a0                        	j	162
8020259e: 28 11                        	addi	a0, sp, 168
802025a0: 2a f6                        	sd	a0, 296(sp)
802025a2: 4c 11                        	addi	a1, sp, 164
802025a4: 2e fa                        	sd	a1, 304(sp)
802025a6: 90 02                        	addi	a2, sp, 320
802025a8: 32 fe                        	sd	a2, 312(sp)
802025aa: 2a fb                        	sd	a0, 432(sp)
802025ac: 2e ff                        	sd	a1, 440(sp)
802025ae: b2 e3                        	sd	a2, 448(sp)

00000000802025b0 .LBB0_24:
802025b0: 97 06 00 00                  	auipc	a3, 0
802025b4: 93 86 26 aa                  	addi	a3, a3, -1374
802025b8: ae ec                        	sd	a1, 88(sp)
802025ba: b6 85                        	add	a1, zero, a3
802025bc: b2 e8                        	sd	a2, 80(sp)
802025be: 97 00 00 00                  	auipc	ra, 0
802025c2: e7 80 a0 d9                  	jalr	-614(ra)
802025c6: aa e4                        	sd	a0, 72(sp)
802025c8: ae e0                        	sd	a1, 64(sp)
802025ca: 09 a0                        	j	2

00000000802025cc .LBB0_25:
802025cc: 97 f5 ff ff                  	auipc	a1, 1048575
802025d0: 93 85 45 7b                  	addi	a1, a1, 1972
802025d4: 66 65                        	ld	a0, 88(sp)
802025d6: 97 00 00 00                  	auipc	ra, 0
802025da: e7 80 e0 d3                  	jalr	-706(ra)
802025de: 2a fc                        	sd	a0, 56(sp)
802025e0: 2e f8                        	sd	a1, 48(sp)
802025e2: 09 a0                        	j	2

00000000802025e4 .LBB0_26:
802025e4: 97 05 00 00                  	auipc	a1, 0
802025e8: 93 85 e5 a6                  	addi	a1, a1, -1426
802025ec: 46 65                        	ld	a0, 80(sp)
802025ee: 97 00 00 00                  	auipc	ra, 0
802025f2: e7 80 a0 d6                  	jalr	-662(ra)
802025f6: 2a f4                        	sd	a0, 40(sp)
802025f8: 2e f0                        	sd	a1, 32(sp)
802025fa: 09 a0                        	j	2
802025fc: 26 65                        	ld	a0, 72(sp)
802025fe: aa fd                        	sd	a0, 248(sp)
80202600: 86 65                        	ld	a1, 64(sp)
80202602: 2e e2                        	sd	a1, 256(sp)
80202604: 62 76                        	ld	a2, 56(sp)
80202606: 32 e6                        	sd	a2, 264(sp)
80202608: c2 76                        	ld	a3, 48(sp)
8020260a: 36 ea                        	sd	a3, 272(sp)
8020260c: 22 77                        	ld	a4, 40(sp)
8020260e: 3a ee                        	sd	a4, 280(sp)
80202610: 82 77                        	ld	a5, 32(sp)
80202612: 3e f2                        	sd	a5, 288(sp)
80202614: a8 01                        	addi	a0, sp, 200
80202616: b4 19                        	addi	a3, sp, 248
80202618: 0d 48                        	addi	a6, zero, 3
8020261a: 86 75                        	ld	a1, 96(sp)
8020261c: 42 86                        	add	a2, zero, a6
8020261e: 42 87                        	add	a4, zero, a6
80202620: 97 00 00 00                  	auipc	ra, 0
80202624: e7 80 40 dc                  	jalr	-572(ra)
80202628: 09 a0                        	j	2

000000008020262a .LBB0_27:
8020262a: 97 35 00 00                  	auipc	a1, 3
8020262e: 93 85 65 c9                  	addi	a1, a1, -874
80202632: a8 01                        	addi	a0, sp, 200
80202634: 97 e0 ff ff                  	auipc	ra, 1048574
80202638: e7 80 20 19                  	jalr	402(ra)
8020263c: 00 00                        	unimp	
8020263e: 2a 75                        	ld	a0, 168(sp)
80202640: aa e6                        	sd	a0, 328(sp)

0000000080202642 .LBB0_28:
80202642: 97 36 00 00                  	auipc	a3, 3
80202646: 93 86 66 b8                  	addi	a3, a3, -1146
8020264a: ca 65                        	ld	a1, 144(sp)
8020264c: 2a ec                        	sd	a0, 24(sp)
8020264e: 2e 85                        	add	a0, zero, a1
80202650: ea 65                        	ld	a1, 152(sp)
80202652: 62 66                        	ld	a2, 24(sp)
80202654: 97 00 00 00                  	auipc	ra, 0
80202658: e7 80 a0 4f                  	jalr	1274(ra)
8020265c: 2a e8                        	sd	a0, 16(sp)
8020265e: 2e e4                        	sd	a1, 8(sp)
80202660: 09 a0                        	j	2
80202662: 42 65                        	ld	a0, 16(sp)
80202664: a2 65                        	ld	a1, 8(sp)
80202666: be 60                        	ld	ra, 456(sp)
80202668: 79 61                        	addi	sp, sp, 464
8020266a: 82 80                        	ret

000000008020266c _ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h2a51dd2a7fd4fbb6E:
8020266c: 5d 71                        	addi	sp, sp, -80
8020266e: 86 e4                        	sd	ra, 72(sp)
80202670: aa 86                        	add	a3, zero, a0
80202672: 2a da                        	sw	a0, 52(sp)
80202674: 2e fc                        	sd	a1, 56(sp)
80202676: b2 e0                        	sd	a2, 64(sp)
80202678: 36 f4                        	sd	a3, 40(sp)
8020267a: 97 00 00 00                  	auipc	ra, 0
8020267e: e7 80 c0 d9                  	jalr	-612(ra)
80202682: 2a f0                        	sd	a0, 32(sp)
80202684: 2e ec                        	sd	a1, 24(sp)
80202686: 09 a0                        	j	2
80202688: 02 75                        	ld	a0, 32(sp)
8020268a: e2 65                        	ld	a1, 24(sp)
8020268c: 97 00 00 00                  	auipc	ra, 0
80202690: e7 80 a0 10                  	jalr	266(ra)
80202694: 2a e8                        	sd	a0, 16(sp)
80202696: 2e e4                        	sd	a1, 8(sp)
80202698: 09 a0                        	j	2
8020269a: 42 65                        	ld	a0, 16(sp)
8020269c: a2 65                        	ld	a1, 8(sp)
8020269e: a6 60                        	ld	ra, 72(sp)
802026a0: 61 61                        	addi	sp, sp, 80
802026a2: 82 80                        	ret

00000000802026a4 _ZN4core4char7methods8len_utf817h6510ddd9ffbe7b2dE:
802026a4: 01 11                        	addi	sp, sp, -32
802026a6: 9b 05 05 00                  	sext.w	a1, a0
802026aa: 2a 86                        	add	a2, zero, a0
802026ac: 2a ce                        	sw	a0, 28(sp)
802026ae: 13 05 00 08                  	addi	a0, zero, 128
802026b2: 32 e4                        	sd	a2, 8(sp)
802026b4: 63 ea a5 00                  	bltu	a1, a0, 20
802026b8: 09 a0                        	j	2
802026ba: 22 65                        	ld	a0, 8(sp)
802026bc: 9b 55 b5 00                  	srliw	a1, a0, 11
802026c0: 01 46                        	mv	a2, zero
802026c2: 63 8d c5 00                  	beq	a1, a2, 26
802026c6: 21 a0                        	j	8
802026c8: 05 45                        	addi	a0, zero, 1
802026ca: 2a e8                        	sd	a0, 16(sp)
802026cc: 1d a0                        	j	38
802026ce: 22 65                        	ld	a0, 8(sp)
802026d0: 9b 55 05 01                  	srliw	a1, a0, 16
802026d4: 01 46                        	mv	a2, zero
802026d6: 63 89 c5 00                  	beq	a1, a2, 18
802026da: 21 a0                        	j	8
802026dc: 09 45                        	addi	a0, zero, 2
802026de: 2a e8                        	sd	a0, 16(sp)
802026e0: 01 a8                        	j	16
802026e2: 11 45                        	addi	a0, zero, 4
802026e4: 2a e8                        	sd	a0, 16(sp)
802026e6: 21 a0                        	j	8
802026e8: 0d 45                        	addi	a0, zero, 3
802026ea: 2a e8                        	sd	a0, 16(sp)
802026ec: 09 a0                        	j	2
802026ee: 09 a0                        	j	2
802026f0: 09 a0                        	j	2
802026f2: 42 65                        	ld	a0, 16(sp)
802026f4: 05 61                        	addi	sp, sp, 32
802026f6: 82 80                        	ret

00000000802026f8 _ZN4core3str11unwrap_or_017h3db272e821d958a4E:
802026f8: 41 11                        	addi	sp, sp, -16
802026fa: 2a e0                        	sd	a0, 0(sp)
802026fc: b3 35 a0 00                  	snez	a1, a0
80202700: 01 46                        	mv	a2, zero
80202702: 63 04 c5 00                  	beq	a0, a2, 8
80202706: 09 a0                        	j	2
80202708: 31 a0                        	j	12
8020270a: 01 45                        	mv	a0, zero
8020270c: 23 07 a1 00                  	sb	a0, 14(sp)
80202710: 11 a8                        	j	20
80202712: 00 00                        	unimp	
80202714: 02 65                        	ld	a0, 0(sp)
80202716: 03 05 05 00                  	lb	a0, 0(a0)
8020271a: a3 07 a1 00                  	sb	a0, 15(sp)
8020271e: 23 07 a1 00                  	sb	a0, 14(sp)
80202722: 09 a0                        	j	2
80202724: 03 05 e1 00                  	lb	a0, 14(sp)
80202728: 41 01                        	addi	sp, sp, 16
8020272a: 82 80                        	ret

000000008020272c _ZN4core3str15utf8_first_byte17h4128d37b3be252dfE:
8020272c: 41 11                        	addi	sp, sp, -16
8020272e: 2e 86                        	add	a2, zero, a1
80202730: aa 86                        	add	a3, zero, a0
80202732: a3 05 a1 00                  	sb	a0, 11(sp)
80202736: 2e c6                        	sw	a1, 12(sp)
80202738: 9d 89                        	andi	a1, a1, 7
8020273a: 13 07 f0 07                  	addi	a4, zero, 127
8020273e: b3 55 b7 00                  	srl	a1, a4, a1
80202742: 6d 8d                        	and	a0, a0, a1
80202744: 41 01                        	addi	sp, sp, 16
80202746: 82 80                        	ret

0000000080202748 _ZN4core3str18utf8_acc_cont_byte17hfcd205be2a814c44E:
80202748: 41 11                        	addi	sp, sp, -16
8020274a: 2e 86                        	add	a2, zero, a1
8020274c: aa 86                        	add	a3, zero, a0
8020274e: 2a c4                        	sw	a0, 8(sp)
80202750: a3 07 b1 00                  	sb	a1, 15(sp)
80202754: 1a 05                        	slli	a0, a0, 6
80202756: 93 f5 f5 03                  	andi	a1, a1, 63
8020275a: 4d 8d                        	or	a0, a0, a1
8020275c: 41 01                        	addi	sp, sp, 16
8020275e: 82 80                        	ret

0000000080202760 _ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc6e91c7e8eba136aE:
80202760: 59 71                        	addi	sp, sp, -112
80202762: 86 f4                        	sd	ra, 104(sp)
80202764: 2a fc                        	sd	a0, 56(sp)
80202766: ae e0                        	sd	a1, 64(sp)
80202768: aa ec                        	sd	a0, 88(sp)
8020276a: ae f0                        	sd	a1, 96(sp)
8020276c: aa e4                        	sd	a0, 72(sp)
8020276e: ae e8                        	sd	a1, 80(sp)
80202770: 2a f0                        	sd	a0, 32(sp)
80202772: 2e ec                        	sd	a1, 24(sp)
80202774: 09 a0                        	j	2
80202776: 02 75                        	ld	a0, 32(sp)
80202778: e2 65                        	ld	a1, 24(sp)
8020277a: 97 00 00 00                  	auipc	ra, 0
8020277e: e7 80 40 32                  	jalr	804(ra)
80202782: 2a e8                        	sd	a0, 16(sp)
80202784: 2e e4                        	sd	a1, 8(sp)
80202786: 09 a0                        	j	2
80202788: 42 65                        	ld	a0, 16(sp)
8020278a: 2a f4                        	sd	a0, 40(sp)
8020278c: a2 65                        	ld	a1, 8(sp)
8020278e: 2e f8                        	sd	a1, 48(sp)
80202790: a6 70                        	ld	ra, 104(sp)
80202792: 65 61                        	addi	sp, sp, 112
80202794: 82 80                        	ret

0000000080202796 _ZN4core3str23from_utf8_unchecked_mut17h2a02401009ab2db2E:
80202796: 41 11                        	addi	sp, sp, -16
80202798: 2a e0                        	sd	a0, 0(sp)
8020279a: 2e e4                        	sd	a1, 8(sp)
8020279c: 41 01                        	addi	sp, sp, 16
8020279e: 82 80                        	ret

00000000802027a0 _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd7578050d5b4a346E:
802027a0: 79 71                        	addi	sp, sp, -48
802027a2: 06 f4                        	sd	ra, 40(sp)
802027a4: 2a f0                        	sd	a0, 32(sp)
802027a6: 97 00 00 00                  	auipc	ra, 0
802027aa: e7 80 a0 02                  	jalr	42(ra)
802027ae: 2a ec                        	sd	a0, 24(sp)
802027b0: 2e e8                        	sd	a1, 16(sp)
802027b2: 09 a0                        	j	2
802027b4: 62 65                        	ld	a0, 24(sp)
802027b6: c2 65                        	ld	a1, 16(sp)
802027b8: 97 00 00 00                  	auipc	ra, 0
802027bc: e7 80 60 1d                  	jalr	470(ra)
802027c0: 02 15                        	slli	a0, a0, 32
802027c2: 01 91                        	srli	a0, a0, 32
802027c4: 2a e4                        	sd	a0, 8(sp)
802027c6: 09 a0                        	j	2
802027c8: 22 65                        	ld	a0, 8(sp)
802027ca: a2 70                        	ld	ra, 40(sp)
802027cc: 45 61                        	addi	sp, sp, 48
802027ce: 82 80                        	ret

00000000802027d0 _ZN4core3str15next_code_point17hb7f85faf684d5cf3E:
802027d0: 31 71                        	addi	sp, sp, -192
802027d2: 06 fd                        	sd	ra, 184(sp)
802027d4: 2a e5                        	sd	a0, 136(sp)
802027d6: aa f4                        	sd	a0, 104(sp)
802027d8: 97 00 00 00                  	auipc	ra, 0
802027dc: e7 80 40 3c                  	jalr	964(ra)
802027e0: aa f0                        	sd	a0, 96(sp)
802027e2: 09 a0                        	j	2
802027e4: 06 75                        	ld	a0, 96(sp)
802027e6: 97 00 00 00                  	auipc	ra, 0
802027ea: e7 80 40 26                  	jalr	612(ra)
802027ee: aa fc                        	sd	a0, 120(sp)
802027f0: 09 a0                        	j	2
802027f2: 66 75                        	ld	a0, 120(sp)
802027f4: 93 35 15 00                  	seqz	a1, a0
802027f8: 01 46                        	mv	a2, zero
802027fa: 63 14 c5 00                  	bne	a0, a2, 8
802027fe: 09 a0                        	j	2
80202800: 39 a8                        	j	30
80202802: 66 75                        	ld	a0, 120(sp)
80202804: 2a ed                        	sd	a0, 152(sp)
80202806: 03 05 05 00                  	lb	a0, 0(a0)
8020280a: 93 75 f5 0f                  	andi	a1, a0, 255
8020280e: a3 03 a1 0a                  	sb	a0, 167(sp)
80202812: 7d 56                        	addi	a2, zero, -1
80202814: ae ec                        	sd	a1, 88(sp)
80202816: 63 41 a6 04                  	blt	a2, a0, 66
8020281a: 2d a0                        	j	42
8020281c: 00 00                        	unimp	
8020281e: 97 00 00 00                  	auipc	ra, 0
80202822: e7 80 a0 21                  	jalr	538(ra)
80202826: 31 a0                        	j	12
80202828: 46 55                        	lw	a0, 112(sp)
8020282a: d6 55                        	lw	a1, 116(sp)
8020282c: ea 70                        	ld	ra, 184(sp)
8020282e: 29 61                        	addi	sp, sp, 192
80202830: 82 80                        	ret
80202832: 97 00 00 00                  	auipc	ra, 0
80202836: e7 80 c0 20                  	jalr	524(ra)
8020283a: aa d8                        	sw	a0, 112(sp)
8020283c: ae da                        	sw	a1, 116(sp)
8020283e: 09 a0                        	j	2
80202840: 09 a0                        	j	2
80202842: dd b7                        	j	-26
80202844: 89 45                        	addi	a1, zero, 2
80202846: 66 65                        	ld	a0, 88(sp)
80202848: 97 00 00 00                  	auipc	ra, 0
8020284c: e7 80 40 ee                  	jalr	-284(ra)
80202850: aa 85                        	add	a1, zero, a0
80202852: 2a d5                        	sw	a0, 168(sp)
80202854: ae e8                        	sd	a1, 80(sp)
80202856: 31 a0                        	j	12
80202858: 66 65                        	ld	a0, 88(sp)
8020285a: aa da                        	sw	a0, 116(sp)
8020285c: 85 45                        	addi	a1, zero, 1
8020285e: ae d8                        	sw	a1, 112(sp)
80202860: cd b7                        	j	-30
80202862: 26 75                        	ld	a0, 104(sp)
80202864: 97 00 00 00                  	auipc	ra, 0
80202868: e7 80 80 33                  	jalr	824(ra)
8020286c: aa e4                        	sd	a0, 72(sp)
8020286e: 09 a0                        	j	2
80202870: 26 65                        	ld	a0, 72(sp)
80202872: 97 00 00 00                  	auipc	ra, 0
80202876: e7 80 60 e8                  	jalr	-378(ra)
8020287a: aa 85                        	add	a1, zero, a0
8020287c: 23 07 a1 0a                  	sb	a0, 174(sp)
80202880: ae e0                        	sd	a1, 64(sp)
80202882: 09 a0                        	j	2
80202884: 46 65                        	ld	a0, 80(sp)
80202886: 86 65                        	ld	a1, 64(sp)
80202888: 97 00 00 00                  	auipc	ra, 0
8020288c: e7 80 00 ec                  	jalr	-320(ra)
80202890: 2a c3                        	sw	a0, 132(sp)
80202892: 09 a0                        	j	2
80202894: 13 05 f0 0d                  	addi	a0, zero, 223
80202898: e6 65                        	ld	a1, 88(sp)
8020289a: 63 64 b5 00                  	bltu	a0, a1, 8
8020289e: 09 a0                        	j	2
802028a0: 4d a0                        	j	162
802028a2: 26 75                        	ld	a0, 104(sp)
802028a4: 97 00 00 00                  	auipc	ra, 0
802028a8: e7 80 80 2f                  	jalr	760(ra)
802028ac: 2a fc                        	sd	a0, 56(sp)
802028ae: 09 a0                        	j	2
802028b0: 62 75                        	ld	a0, 56(sp)
802028b2: 97 00 00 00                  	auipc	ra, 0
802028b6: e7 80 60 e4                  	jalr	-442(ra)
802028ba: aa 85                        	add	a1, zero, a0
802028bc: a3 07 a1 0a                  	sb	a0, 175(sp)
802028c0: 2e f8                        	sd	a1, 48(sp)
802028c2: 09 a0                        	j	2
802028c4: 06 65                        	ld	a0, 64(sp)
802028c6: 13 75 f5 03                  	andi	a0, a0, 63
802028ca: c2 75                        	ld	a1, 48(sp)
802028cc: 97 00 00 00                  	auipc	ra, 0
802028d0: e7 80 c0 e7                  	jalr	-388(ra)
802028d4: aa 85                        	add	a1, zero, a0
802028d6: 2a d9                        	sw	a0, 176(sp)
802028d8: 2e f4                        	sd	a1, 40(sp)
802028da: 09 a0                        	j	2
802028dc: 46 65                        	ld	a0, 80(sp)
802028de: 93 15 c5 00                  	slli	a1, a0, 12
802028e2: 22 76                        	ld	a2, 40(sp)
802028e4: d1 8d                        	or	a1, a1, a2
802028e6: 2e c3                        	sw	a1, 132(sp)
802028e8: 93 05 f0 0e                  	addi	a1, zero, 239
802028ec: e6 66                        	ld	a3, 88(sp)
802028ee: 63 e4 d5 00                  	bltu	a1, a3, 8
802028f2: 09 a0                        	j	2
802028f4: b1 a0                        	j	76
802028f6: 26 75                        	ld	a0, 104(sp)
802028f8: 97 00 00 00                  	auipc	ra, 0
802028fc: e7 80 40 2a                  	jalr	676(ra)
80202900: 2a f0                        	sd	a0, 32(sp)
80202902: 09 a0                        	j	2
80202904: 02 75                        	ld	a0, 32(sp)
80202906: 97 00 00 00                  	auipc	ra, 0
8020290a: e7 80 20 df                  	jalr	-526(ra)
8020290e: aa 85                        	add	a1, zero, a0
80202910: a3 0b a1 0a                  	sb	a0, 183(sp)
80202914: 2e ec                        	sd	a1, 24(sp)
80202916: 09 a0                        	j	2
80202918: 46 65                        	ld	a0, 80(sp)
8020291a: 93 75 75 00                  	andi	a1, a0, 7
8020291e: ca 05                        	slli	a1, a1, 18
80202920: 22 75                        	ld	a0, 40(sp)
80202922: 62 66                        	ld	a2, 24(sp)
80202924: 2e e8                        	sd	a1, 16(sp)
80202926: b2 85                        	add	a1, zero, a2
80202928: 97 00 00 00                  	auipc	ra, 0
8020292c: e7 80 00 e2                  	jalr	-480(ra)
80202930: 2a e4                        	sd	a0, 8(sp)
80202932: 09 a0                        	j	2
80202934: 42 65                        	ld	a0, 16(sp)
80202936: a2 65                        	ld	a1, 8(sp)
80202938: 33 66 b5 00                  	or	a2, a0, a1
8020293c: 32 c3                        	sw	a2, 132(sp)
8020293e: 09 a0                        	j	2
80202940: 09 a0                        	j	2
80202942: 1a 45                        	lw	a0, 132(sp)
80202944: aa da                        	sw	a0, 116(sp)
80202946: 05 45                        	addi	a0, zero, 1
80202948: aa d8                        	sw	a0, 112(sp)
8020294a: f9 bd                        	j	-290

000000008020294c _ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hed92b511aec1b664E:
8020294c: 41 11                        	addi	sp, sp, -16
8020294e: 2a e0                        	sd	a0, 0(sp)
80202950: 2e e4                        	sd	a1, 8(sp)
80202952: 41 01                        	addi	sp, sp, 16
80202954: 82 80                        	ret

0000000080202956 _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17he2af2fb0bc5df439E:
80202956: 01 11                        	addi	sp, sp, -32
80202958: 06 ec                        	sd	ra, 24(sp)
8020295a: aa 85                        	add	a1, zero, a0
8020295c: 2a ca                        	sw	a0, 20(sp)
8020295e: 2e e4                        	sd	a1, 8(sp)
80202960: 97 00 00 00                  	auipc	ra, 0
80202964: e7 80 80 01                  	jalr	24(ra)
80202968: 02 15                        	slli	a0, a0, 32
8020296a: 01 91                        	srli	a0, a0, 32
8020296c: 2a e0                        	sd	a0, 0(sp)
8020296e: 09 a0                        	j	2
80202970: 02 65                        	ld	a0, 0(sp)
80202972: e2 60                        	ld	ra, 24(sp)
80202974: 05 61                        	addi	sp, sp, 32
80202976: 82 80                        	ret

0000000080202978 _ZN4core4char7convert18from_u32_unchecked17hd908e5915aa75ccbE:
80202978: 41 11                        	addi	sp, sp, -16
8020297a: aa 85                        	add	a1, zero, a0
8020297c: 2a c4                        	sw	a0, 8(sp)
8020297e: 2a c6                        	sw	a0, 12(sp)
80202980: 02 15                        	slli	a0, a0, 32
80202982: 01 91                        	srli	a0, a0, 32
80202984: 2a e0                        	sd	a0, 0(sp)
80202986: 09 a0                        	j	2
80202988: 02 65                        	ld	a0, 0(sp)
8020298a: 41 01                        	addi	sp, sp, 16
8020298c: 82 80                        	ret

000000008020298e _ZN4core6option15Option$LT$T$GT$3map17hfa56d22648f61ebfE:
8020298e: 79 71                        	addi	sp, sp, -48
80202990: 06 f4                        	sd	ra, 40(sp)
80202992: 2e 86                        	add	a2, zero, a1
80202994: aa 86                        	add	a3, zero, a0
80202996: 2a c4                        	sw	a0, 8(sp)
80202998: 2e c6                        	sw	a1, 12(sp)
8020299a: 85 45                        	addi	a1, zero, 1
8020299c: a3 0f b1 00                  	sb	a1, 31(sp)
802029a0: 02 15                        	slli	a0, a0, 32
802029a2: 01 91                        	srli	a0, a0, 32
802029a4: 81 45                        	mv	a1, zero
802029a6: 63 04 b5 00                  	beq	a0, a1, 8
802029aa: 09 a0                        	j	2
802029ac: 31 a0                        	j	12
802029ae: 37 05 11 00                  	lui	a0, 272
802029b2: 2a ca                        	sw	a0, 20(sp)
802029b4: 1d a8                        	j	54
802029b6: 00 00                        	unimp	
802029b8: 32 45                        	lw	a0, 12(sp)
802029ba: 2a d2                        	sw	a0, 36(sp)
802029bc: 81 45                        	mv	a1, zero
802029be: a3 0f b1 00                  	sb	a1, 31(sp)
802029c2: 2a cc                        	sw	a0, 24(sp)
802029c4: 97 00 00 00                  	auipc	ra, 0
802029c8: e7 80 20 f9                  	jalr	-110(ra)
802029cc: 02 15                        	slli	a0, a0, 32
802029ce: 01 91                        	srli	a0, a0, 32
802029d0: 2a e0                        	sd	a0, 0(sp)
802029d2: 09 a0                        	j	2
802029d4: 02 65                        	ld	a0, 0(sp)
802029d6: 2a ca                        	sw	a0, 20(sp)
802029d8: 09 a8                        	j	18
802029da: 52 45                        	lw	a0, 20(sp)
802029dc: a2 70                        	ld	ra, 40(sp)
802029de: 45 61                        	addi	sp, sp, 48
802029e0: 82 80                        	ret
802029e2: 01 45                        	mv	a0, zero
802029e4: a3 0f a1 00                  	sb	a0, 31(sp)
802029e8: cd bf                        	j	-14
802029ea: 03 45 f1 01                  	lbu	a0, 31(sp)
802029ee: 05 89                        	andi	a0, a0, 1
802029f0: 6d f9                        	bnez	a0, -14
802029f2: e5 b7                        	j	-24

00000000802029f4 _ZN4core6option15Option$LT$T$GT$5ok_or17h11ad4c0512f01e43E:
802029f4: 79 71                        	addi	sp, sp, -48
802029f6: 2a e4                        	sd	a0, 8(sp)
802029f8: 85 45                        	addi	a1, zero, 1
802029fa: a3 0f b1 00                  	sb	a1, 31(sp)
802029fe: b3 35 a0 00                  	snez	a1, a0
80202a02: 01 46                        	mv	a2, zero
80202a04: 63 04 c5 00                  	beq	a0, a2, 8
80202a08: 09 a0                        	j	2
80202a0a: 39 a0                        	j	14
80202a0c: 01 45                        	mv	a0, zero
80202a0e: a3 0f a1 00                  	sb	a0, 31(sp)
80202a12: 2a e8                        	sd	a0, 16(sp)
80202a14: 31 a0                        	j	12
80202a16: 00 00                        	unimp	
80202a18: 22 65                        	ld	a0, 8(sp)
80202a1a: 2a f4                        	sd	a0, 40(sp)
80202a1c: 2a e8                        	sd	a0, 16(sp)
80202a1e: 09 a0                        	j	2
80202a20: 03 45 f1 01                  	lbu	a0, 31(sp)
80202a24: 05 89                        	andi	a0, a0, 1
80202a26: 09 e5                        	bnez	a0, 10
80202a28: 09 a0                        	j	2
80202a2a: 42 65                        	ld	a0, 16(sp)
80202a2c: 45 61                        	addi	sp, sp, 48
80202a2e: 82 80                        	ret
80202a30: 01 45                        	mv	a0, zero
80202a32: a3 0f a1 00                  	sb	a0, 31(sp)
80202a36: d5 bf                        	j	-12

0000000080202a38 _ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h24395377c0a33081E:
80202a38: 41 11                        	addi	sp, sp, -16
80202a3a: 41 01                        	addi	sp, sp, 16
80202a3c: 82 80                        	ret

0000000080202a3e _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h00d17c189e2225c4E:
80202a3e: 41 11                        	addi	sp, sp, -16
80202a40: 01 45                        	mv	a0, zero
80202a42: 2a c0                        	sw	a0, 0(sp)
80202a44: 92 45                        	lw	a1, 4(sp)
80202a46: 41 01                        	addi	sp, sp, 16
80202a48: 82 80                        	ret

0000000080202a4a _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17ha2da53438ec835fdE:
80202a4a: 01 11                        	addi	sp, sp, -32
80202a4c: 06 ec                        	sd	ra, 24(sp)
80202a4e: 2a e8                        	sd	a0, 16(sp)
80202a50: 97 00 00 00                  	auipc	ra, 0
80202a54: e7 80 40 fa                  	jalr	-92(ra)
80202a58: 2a e4                        	sd	a0, 8(sp)
80202a5a: 09 a0                        	j	2
80202a5c: 22 65                        	ld	a0, 8(sp)
80202a5e: e2 60                        	ld	ra, 24(sp)
80202a60: 05 61                        	addi	sp, sp, 32
80202a62: 82 80                        	ret

0000000080202a64 _ZN4core5slice18from_raw_parts_mut17h6b0ef297164d307cE:
80202a64: 79 71                        	addi	sp, sp, -48
80202a66: 06 f4                        	sd	ra, 40(sp)
80202a68: 2a ec                        	sd	a0, 24(sp)
80202a6a: 2e f0                        	sd	a1, 32(sp)
80202a6c: 97 00 00 00                  	auipc	ra, 0
80202a70: e7 80 00 38                  	jalr	896(ra)
80202a74: 2a e8                        	sd	a0, 16(sp)
80202a76: 2e e4                        	sd	a1, 8(sp)
80202a78: 09 a0                        	j	2
80202a7a: 42 65                        	ld	a0, 16(sp)
80202a7c: a2 65                        	ld	a1, 8(sp)
80202a7e: a2 70                        	ld	ra, 40(sp)
80202a80: 45 61                        	addi	sp, sp, 48
80202a82: 82 80                        	ret

0000000080202a84 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h57e364ee384ce5b1E:
80202a84: 41 11                        	addi	sp, sp, -16
80202a86: 2a e0                        	sd	a0, 0(sp)
80202a88: 2e e4                        	sd	a1, 8(sp)
80202a8a: 41 01                        	addi	sp, sp, 16
80202a8c: 82 80                        	ret

0000000080202a8e _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17haef3b685a5d8d52dE:
80202a8e: 01 11                        	addi	sp, sp, -32
80202a90: 2a e8                        	sd	a0, 16(sp)
80202a92: 2e ec                        	sd	a1, 24(sp)
80202a94: 2a e0                        	sd	a0, 0(sp)
80202a96: 2e e4                        	sd	a1, 8(sp)
80202a98: 2e 85                        	add	a0, zero, a1
80202a9a: 05 61                        	addi	sp, sp, 32
80202a9c: 82 80                        	ret

0000000080202a9e _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hc24342e00bb9168aE:
80202a9e: 75 71                        	addi	sp, sp, -144
80202aa0: 06 e5                        	sd	ra, 136(sp)
80202aa2: aa f4                        	sd	a0, 104(sp)
80202aa4: ae f8                        	sd	a1, 112(sp)
80202aa6: aa e0                        	sd	a0, 64(sp)
80202aa8: 2e fc                        	sd	a1, 56(sp)
80202aaa: 97 00 00 00                  	auipc	ra, 0
80202aae: e7 80 a0 09                  	jalr	154(ra)
80202ab2: aa 85                        	add	a1, zero, a0
80202ab4: aa fc                        	sd	a0, 120(sp)
80202ab6: 2e f8                        	sd	a1, 48(sp)
80202ab8: 09 a0                        	j	2
80202aba: 42 75                        	ld	a0, 48(sp)
80202abc: 97 00 00 00                  	auipc	ra, 0
80202ac0: e7 80 40 3c                  	jalr	964(ra)
80202ac4: 09 a0                        	j	2
80202ac6: 09 a0                        	j	2
80202ac8: 05 45                        	addi	a0, zero, 1
80202aca: 2a e1                        	sd	a0, 128(sp)
80202acc: 2a f4                        	sd	a0, 40(sp)
80202ace: 09 a0                        	j	2
80202ad0: 01 45                        	mv	a0, zero
80202ad2: a2 75                        	ld	a1, 40(sp)
80202ad4: 63 8b a5 00                  	beq	a1, a0, 22
80202ad8: 09 a0                        	j	2
80202ada: 06 65                        	ld	a0, 64(sp)
80202adc: e2 75                        	ld	a1, 56(sp)
80202ade: 97 00 00 00                  	auipc	ra, 0
80202ae2: e7 80 00 fb                  	jalr	-80(ra)
80202ae6: 2a f0                        	sd	a0, 32(sp)
80202ae8: 25 a0                        	j	40
80202aea: 06 65                        	ld	a0, 64(sp)
80202aec: e2 75                        	ld	a1, 56(sp)
80202aee: 97 00 00 00                  	auipc	ra, 0
80202af2: e7 80 00 fa                  	jalr	-96(ra)
80202af6: 2a ec                        	sd	a0, 24(sp)
80202af8: 09 a0                        	j	2
80202afa: 42 75                        	ld	a0, 48(sp)
80202afc: e2 65                        	ld	a1, 24(sp)
80202afe: 97 00 00 00                  	auipc	ra, 0
80202b02: e7 80 20 31                  	jalr	786(ra)
80202b06: 2a e8                        	sd	a0, 16(sp)
80202b08: 09 a0                        	j	2
80202b0a: 42 65                        	ld	a0, 16(sp)
80202b0c: aa ec                        	sd	a0, 88(sp)
80202b0e: 11 a8                        	j	20
80202b10: 42 75                        	ld	a0, 48(sp)
80202b12: 82 75                        	ld	a1, 32(sp)
80202b14: 97 00 00 00                  	auipc	ra, 0
80202b18: e7 80 c0 33                  	jalr	828(ra)
80202b1c: aa ec                        	sd	a0, 88(sp)
80202b1e: 09 a0                        	j	2
80202b20: 09 a0                        	j	2
80202b22: 42 75                        	ld	a0, 48(sp)
80202b24: 97 00 00 00                  	auipc	ra, 0
80202b28: e7 80 a0 2d                  	jalr	730(ra)
80202b2c: 2a e4                        	sd	a0, 8(sp)
80202b2e: 09 a0                        	j	2
80202b30: 66 65                        	ld	a0, 88(sp)
80202b32: a2 65                        	ld	a1, 8(sp)
80202b34: ae e4                        	sd	a1, 72(sp)
80202b36: aa e8                        	sd	a0, 80(sp)
80202b38: 2a e0                        	sd	a0, 0(sp)
80202b3a: 2e 85                        	add	a0, zero, a1
80202b3c: 82 65                        	ld	a1, 0(sp)
80202b3e: aa 60                        	ld	ra, 136(sp)
80202b40: 49 61                        	addi	sp, sp, 144
80202b42: 82 80                        	ret

0000000080202b44 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hbdf34e675bfc4483E:
80202b44: 41 11                        	addi	sp, sp, -16
80202b46: 2a e0                        	sd	a0, 0(sp)
80202b48: 2e e4                        	sd	a1, 8(sp)
80202b4a: 41 01                        	addi	sp, sp, 16
80202b4c: 82 80                        	ret

0000000080202b4e _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h016b403818475202E:
80202b4e: 39 71                        	addi	sp, sp, -64
80202b50: 06 fc                        	sd	ra, 56(sp)
80202b52: 2a f0                        	sd	a0, 32(sp)
80202b54: 2e f4                        	sd	a1, 40(sp)
80202b56: 32 f8                        	sd	a2, 48(sp)
80202b58: 2a ec                        	sd	a0, 24(sp)
80202b5a: 32 85                        	add	a0, zero, a2
80202b5c: 62 66                        	ld	a2, 24(sp)
80202b5e: 2e e8                        	sd	a1, 16(sp)
80202b60: b2 85                        	add	a1, zero, a2
80202b62: 42 66                        	ld	a2, 16(sp)
80202b64: 97 00 00 00                  	auipc	ra, 0
80202b68: e7 80 40 12                  	jalr	292(ra)
80202b6c: 2a e4                        	sd	a0, 8(sp)
80202b6e: 2e e0                        	sd	a1, 0(sp)
80202b70: 09 a0                        	j	2
80202b72: 22 65                        	ld	a0, 8(sp)
80202b74: 82 65                        	ld	a1, 0(sp)
80202b76: e2 70                        	ld	ra, 56(sp)
80202b78: 21 61                        	addi	sp, sp, 64
80202b7a: 82 80                        	ret

0000000080202b7c _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hdb455dc17b99065dE:
80202b7c: 79 71                        	addi	sp, sp, -48
80202b7e: 06 f4                        	sd	ra, 40(sp)
80202b80: 2a e8                        	sd	a0, 16(sp)
80202b82: 2e ec                        	sd	a1, 24(sp)
80202b84: 97 00 00 00                  	auipc	ra, 0
80202b88: e7 80 40 14                  	jalr	324(ra)
80202b8c: 2a e4                        	sd	a0, 8(sp)
80202b8e: 2e e0                        	sd	a1, 0(sp)
80202b90: 09 a0                        	j	2
80202b92: 22 65                        	ld	a0, 8(sp)
80202b94: 82 65                        	ld	a1, 0(sp)
80202b96: a2 70                        	ld	ra, 40(sp)
80202b98: 45 61                        	addi	sp, sp, 48
80202b9a: 82 80                        	ret

0000000080202b9c _ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03480e014d6b4673E:
80202b9c: 19 71                        	addi	sp, sp, -128
80202b9e: 86 fc                        	sd	ra, 120(sp)
80202ba0: aa e0                        	sd	a0, 64(sp)
80202ba2: 0c 61                        	ld	a1, 0(a0)
80202ba4: 2a f8                        	sd	a0, 48(sp)
80202ba6: 2e 85                        	add	a0, zero, a1
80202ba8: 97 00 00 00                  	auipc	ra, 0
80202bac: e7 80 00 26                  	jalr	608(ra)
80202bb0: 2a f4                        	sd	a0, 40(sp)
80202bb2: 09 a0                        	j	2
80202bb4: 22 75                        	ld	a0, 40(sp)
80202bb6: 97 00 00 00                  	auipc	ra, 0
80202bba: e7 80 40 22                  	jalr	548(ra)
80202bbe: 09 a0                        	j	2
80202bc0: 09 a0                        	j	2
80202bc2: 05 45                        	addi	a0, zero, 1
80202bc4: aa e4                        	sd	a0, 72(sp)
80202bc6: 2a f0                        	sd	a0, 32(sp)
80202bc8: 09 a0                        	j	2
80202bca: 01 45                        	mv	a0, zero
80202bcc: 82 75                        	ld	a1, 32(sp)
80202bce: 63 94 a5 00                  	bne	a1, a0, 8
80202bd2: 09 a0                        	j	2
80202bd4: 11 a8                        	j	20
80202bd6: 42 75                        	ld	a0, 48(sp)
80202bd8: 08 65                        	ld	a0, 8(a0)
80202bda: 97 00 00 00                  	auipc	ra, 0
80202bde: e7 80 60 2a                  	jalr	678(ra)
80202be2: 09 a0                        	j	2
80202be4: 09 a0                        	j	2
80202be6: 09 a0                        	j	2
80202be8: 42 75                        	ld	a0, 48(sp)
80202bea: 08 61                        	ld	a0, 0(a0)
80202bec: 97 00 00 00                  	auipc	ra, 0
80202bf0: e7 80 c0 21                  	jalr	540(ra)
80202bf4: 2a ec                        	sd	a0, 24(sp)
80202bf6: 09 a0                        	j	2
80202bf8: 42 75                        	ld	a0, 48(sp)
80202bfa: 0c 65                        	ld	a1, 8(a0)
80202bfc: 62 66                        	ld	a2, 24(sp)
80202bfe: 63 0b b6 06                  	beq	a2, a1, 118
80202c02: 09 a0                        	j	2
80202c04: 42 75                        	ld	a0, 48(sp)
80202c06: aa ec                        	sd	a0, 88(sp)
80202c08: 85 45                        	addi	a1, zero, 1
80202c0a: ae f0                        	sd	a1, 96(sp)
80202c0c: ae f8                        	sd	a1, 112(sp)
80202c0e: 81 45                        	mv	a1, zero
80202c10: 9d ed                        	bnez	a1, 62
80202c12: 09 a0                        	j	2
80202c14: 42 75                        	ld	a0, 48(sp)
80202c16: 08 61                        	ld	a0, 0(a0)
80202c18: 97 00 00 00                  	auipc	ra, 0
80202c1c: e7 80 00 1f                  	jalr	496(ra)
80202c20: aa f4                        	sd	a0, 104(sp)
80202c22: c2 75                        	ld	a1, 48(sp)
80202c24: 90 61                        	ld	a2, 0(a1)
80202c26: 2a e8                        	sd	a0, 16(sp)
80202c28: 32 85                        	add	a0, zero, a2
80202c2a: 97 00 00 00                  	auipc	ra, 0
80202c2e: e7 80 e0 1d                  	jalr	478(ra)
80202c32: 85 45                        	addi	a1, zero, 1
80202c34: 97 00 00 00                  	auipc	ra, 0
80202c38: e7 80 20 19                  	jalr	402(ra)
80202c3c: 97 00 00 00                  	auipc	ra, 0
80202c40: e7 80 20 1c                  	jalr	450(ra)
80202c44: c2 75                        	ld	a1, 48(sp)
80202c46: 88 e1                        	sd	a0, 0(a1)
80202c48: 42 65                        	ld	a0, 16(sp)
80202c4a: aa e8                        	sd	a0, 80(sp)
80202c4c: 0d a0                        	j	34
80202c4e: 42 75                        	ld	a0, 48(sp)
80202c50: 08 65                        	ld	a0, 8(a0)
80202c52: fd 55                        	addi	a1, zero, -1
80202c54: 97 00 00 00                  	auipc	ra, 0
80202c58: e7 80 80 1d                  	jalr	472(ra)
80202c5c: c2 75                        	ld	a1, 48(sp)
80202c5e: 88 e5                        	sd	a0, 8(a1)
80202c60: 88 61                        	ld	a0, 0(a1)
80202c62: 97 00 00 00                  	auipc	ra, 0
80202c66: e7 80 60 1a                  	jalr	422(ra)
80202c6a: aa e8                        	sd	a0, 80(sp)
80202c6c: 09 a0                        	j	2
80202c6e: 46 65                        	ld	a0, 80(sp)
80202c70: 2a e4                        	sd	a0, 8(sp)
80202c72: 21 a0                        	j	8
80202c74: 01 45                        	mv	a0, zero
80202c76: 2a fc                        	sd	a0, 56(sp)
80202c78: 21 a0                        	j	8
80202c7a: 22 65                        	ld	a0, 8(sp)
80202c7c: 2a fc                        	sd	a0, 56(sp)
80202c7e: 09 a0                        	j	2
80202c80: 62 75                        	ld	a0, 56(sp)
80202c82: e6 70                        	ld	ra, 120(sp)
80202c84: 09 61                        	addi	sp, sp, 128
80202c86: 82 80                        	ret

0000000080202c88 _ZN101_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he927675add2ca41bE:
80202c88: 1d 71                        	addi	sp, sp, -96
80202c8a: 86 ec                        	sd	ra, 88(sp)
80202c8c: aa e0                        	sd	a0, 64(sp)
80202c8e: ae e4                        	sd	a1, 72(sp)
80202c90: b2 e8                        	sd	a2, 80(sp)
80202c92: 01 47                        	mv	a4, zero
80202c94: 3a f8                        	sd	a4, 48(sp)
80202c96: 2a fc                        	sd	a0, 56(sp)
80202c98: 2a f4                        	sd	a0, 40(sp)
80202c9a: 3a 85                        	add	a0, zero, a4
80202c9c: 22 77                        	ld	a4, 40(sp)
80202c9e: 2e f0                        	sd	a1, 32(sp)
80202ca0: ba 85                        	add	a1, zero, a4
80202ca2: 82 77                        	ld	a5, 32(sp)
80202ca4: 32 ec                        	sd	a2, 24(sp)
80202ca6: 3e 86                        	add	a2, zero, a5
80202ca8: 62 68                        	ld	a6, 24(sp)
80202caa: 36 e8                        	sd	a3, 16(sp)
80202cac: c2 86                        	add	a3, zero, a6
80202cae: 42 67                        	ld	a4, 16(sp)
80202cb0: 97 00 00 00                  	auipc	ra, 0
80202cb4: e7 80 40 07                  	jalr	116(ra)
80202cb8: 2a e4                        	sd	a0, 8(sp)
80202cba: 2e e0                        	sd	a1, 0(sp)
80202cbc: 09 a0                        	j	2
80202cbe: 22 65                        	ld	a0, 8(sp)
80202cc0: 82 65                        	ld	a1, 0(sp)
80202cc2: e6 60                        	ld	ra, 88(sp)
80202cc4: 25 61                        	addi	sp, sp, 96
80202cc6: 82 80                        	ret

0000000080202cc8 _ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf549b1d9b903e395E:
80202cc8: 01 11                        	addi	sp, sp, -32
80202cca: 2a e8                        	sd	a0, 16(sp)
80202ccc: 2e ec                        	sd	a1, 24(sp)
80202cce: 05 61                        	addi	sp, sp, 32
80202cd0: 82 80                        	ret

0000000080202cd2 _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h5f1970f684b92844E:
80202cd2: 1d 71                        	addi	sp, sp, -96
80202cd4: 86 ec                        	sd	ra, 88(sp)
80202cd6: 2a fc                        	sd	a0, 56(sp)
80202cd8: ae e0                        	sd	a1, 64(sp)
80202cda: b2 e4                        	sd	a2, 72(sp)
80202cdc: b6 e8                        	sd	a3, 80(sp)
80202cde: 2a f8                        	sd	a0, 48(sp)
80202ce0: 32 85                        	add	a0, zero, a2
80202ce2: 2e f4                        	sd	a1, 40(sp)
80202ce4: b6 85                        	add	a1, zero, a3
80202ce6: 97 00 00 00                  	auipc	ra, 0
80202cea: e7 80 e0 d9                  	jalr	-610(ra)
80202cee: 2a f0                        	sd	a0, 32(sp)
80202cf0: 09 a0                        	j	2
80202cf2: 02 75                        	ld	a0, 32(sp)
80202cf4: c2 75                        	ld	a1, 48(sp)
80202cf6: 97 00 00 00                  	auipc	ra, 0
80202cfa: e7 80 40 0b                  	jalr	180(ra)
80202cfe: 2a ec                        	sd	a0, 24(sp)
80202d00: 09 a0                        	j	2
80202d02: 22 75                        	ld	a0, 40(sp)
80202d04: c2 75                        	ld	a1, 48(sp)
80202d06: b3 05 b5 40                  	sub	a1, a0, a1
80202d0a: 62 65                        	ld	a0, 24(sp)
80202d0c: 97 00 00 00                  	auipc	ra, 0
80202d10: e7 80 80 d5                  	jalr	-680(ra)
80202d14: 2a e8                        	sd	a0, 16(sp)
80202d16: 2e e4                        	sd	a1, 8(sp)
80202d18: 09 a0                        	j	2
80202d1a: 42 65                        	ld	a0, 16(sp)
80202d1c: a2 65                        	ld	a1, 8(sp)
80202d1e: e6 60                        	ld	ra, 88(sp)
80202d20: 25 61                        	addi	sp, sp, 96
80202d22: 82 80                        	ret

0000000080202d24 _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h323e234b63d882efE:
80202d24: 59 71                        	addi	sp, sp, -112
80202d26: 86 f4                        	sd	ra, 104(sp)
80202d28: aa e4                        	sd	a0, 72(sp)
80202d2a: ae e8                        	sd	a1, 80(sp)
80202d2c: b2 ec                        	sd	a2, 88(sp)
80202d2e: b6 f0                        	sd	a3, 96(sp)
80202d30: ba e0                        	sd	a4, 64(sp)
80202d32: 36 fc                        	sd	a3, 56(sp)
80202d34: 32 f8                        	sd	a2, 48(sp)
80202d36: 2e f4                        	sd	a1, 40(sp)
80202d38: 2a f0                        	sd	a0, 32(sp)
80202d3a: 63 eb a5 00                  	bltu	a1, a0, 22
80202d3e: 09 a0                        	j	2
80202d40: 42 75                        	ld	a0, 48(sp)
80202d42: e2 75                        	ld	a1, 56(sp)
80202d44: 97 00 00 00                  	auipc	ra, 0
80202d48: e7 80 a0 d4                  	jalr	-694(ra)
80202d4c: 2a ec                        	sd	a0, 24(sp)
80202d4e: 09 a8                        	j	18
80202d50: 02 75                        	ld	a0, 32(sp)
80202d52: a2 75                        	ld	a1, 40(sp)
80202d54: 06 66                        	ld	a2, 64(sp)
80202d56: 97 f0 ff ff                  	auipc	ra, 1048575
80202d5a: e7 80 80 b7                  	jalr	-1160(ra)
80202d5e: 00 00                        	unimp	
80202d60: 62 65                        	ld	a0, 24(sp)
80202d62: a2 75                        	ld	a1, 40(sp)
80202d64: 63 6e b5 00                  	bltu	a0, a1, 28
80202d68: 09 a0                        	j	2
80202d6a: 02 75                        	ld	a0, 32(sp)
80202d6c: a2 75                        	ld	a1, 40(sp)
80202d6e: 42 76                        	ld	a2, 48(sp)
80202d70: e2 76                        	ld	a3, 56(sp)
80202d72: 97 00 00 00                  	auipc	ra, 0
80202d76: e7 80 00 f6                  	jalr	-160(ra)
80202d7a: 2a e8                        	sd	a0, 16(sp)
80202d7c: 2e e4                        	sd	a1, 8(sp)
80202d7e: 0d a0                        	j	34
80202d80: 42 75                        	ld	a0, 48(sp)
80202d82: e2 75                        	ld	a1, 56(sp)
80202d84: 97 00 00 00                  	auipc	ra, 0
80202d88: e7 80 a0 d0                  	jalr	-758(ra)
80202d8c: 2a e0                        	sd	a0, 0(sp)
80202d8e: 09 a0                        	j	2
80202d90: 22 75                        	ld	a0, 40(sp)
80202d92: 82 65                        	ld	a1, 0(sp)
80202d94: 06 66                        	ld	a2, 64(sp)
80202d96: 97 f0 ff ff                  	auipc	ra, 1048575
80202d9a: e7 80 80 af                  	jalr	-1288(ra)
80202d9e: 00 00                        	unimp	
80202da0: 42 65                        	ld	a0, 16(sp)
80202da2: a2 65                        	ld	a1, 8(sp)
80202da4: a6 70                        	ld	ra, 104(sp)
80202da6: 65 61                        	addi	sp, sp, 112
80202da8: 82 80                        	ret

0000000080202daa _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3afb3318b8c042f3E:
80202daa: 01 11                        	addi	sp, sp, -32
80202dac: 06 ec                        	sd	ra, 24(sp)
80202dae: 2a e4                        	sd	a0, 8(sp)
80202db0: 2e e8                        	sd	a1, 16(sp)
80202db2: 97 00 00 00                  	auipc	ra, 0
80202db6: e7 80 40 01                  	jalr	20(ra)
80202dba: 2a e0                        	sd	a0, 0(sp)
80202dbc: 09 a0                        	j	2
80202dbe: 02 65                        	ld	a0, 0(sp)
80202dc0: e2 60                        	ld	ra, 24(sp)
80202dc2: 05 61                        	addi	sp, sp, 32
80202dc4: 82 80                        	ret

0000000080202dc6 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hc8a9615531ce6041E:
80202dc6: 01 11                        	addi	sp, sp, -32
80202dc8: 2a e4                        	sd	a0, 8(sp)
80202dca: 2e e8                        	sd	a1, 16(sp)
80202dcc: 2e 95                        	add	a0, a0, a1
80202dce: 2a ec                        	sd	a0, 24(sp)
80202dd0: 2a e0                        	sd	a0, 0(sp)
80202dd2: 09 a0                        	j	2
80202dd4: 02 65                        	ld	a0, 0(sp)
80202dd6: 05 61                        	addi	sp, sp, 32
80202dd8: 82 80                        	ret

0000000080202dda _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6c6902cb61db86b9E:
80202dda: 41 11                        	addi	sp, sp, -16
80202ddc: 2a e4                        	sd	a0, 8(sp)
80202dde: 2a e0                        	sd	a0, 0(sp)
80202de0: 09 a0                        	j	2
80202de2: 02 65                        	ld	a0, 0(sp)
80202de4: 13 35 15 00                  	seqz	a0, a0
80202de8: 41 01                        	addi	sp, sp, 16
80202dea: 82 80                        	ret

0000000080202dec _ZN4core3ptr24slice_from_raw_parts_mut17h944f5aab8d5fb311E:
80202dec: 79 71                        	addi	sp, sp, -48
80202dee: 2a f0                        	sd	a0, 32(sp)
80202df0: 2e f4                        	sd	a1, 40(sp)
80202df2: 2a e8                        	sd	a0, 16(sp)
80202df4: 2e ec                        	sd	a1, 24(sp)
80202df6: 2a e0                        	sd	a0, 0(sp)
80202df8: 2e e4                        	sd	a1, 8(sp)
80202dfa: 45 61                        	addi	sp, sp, 48
80202dfc: 82 80                        	ret

0000000080202dfe _ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3e2828a5dacbe710E:
80202dfe: 41 11                        	addi	sp, sp, -16
80202e00: 2a e4                        	sd	a0, 8(sp)
80202e02: 2a e0                        	sd	a0, 0(sp)
80202e04: 41 01                        	addi	sp, sp, 16
80202e06: 82 80                        	ret

0000000080202e08 _ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a322bc62ba7fd6bE:
80202e08: 41 11                        	addi	sp, sp, -16
80202e0a: 2a e4                        	sd	a0, 8(sp)
80202e0c: 41 01                        	addi	sp, sp, 16
80202e0e: 82 80                        	ret

0000000080202e10 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h2681c248324c2332E:
80202e10: 01 11                        	addi	sp, sp, -32
80202e12: 06 ec                        	sd	ra, 24(sp)
80202e14: 2a e4                        	sd	a0, 8(sp)
80202e16: 2e e8                        	sd	a1, 16(sp)
80202e18: 97 00 00 00                  	auipc	ra, 0
80202e1c: e7 80 40 01                  	jalr	20(ra)
80202e20: 2a e0                        	sd	a0, 0(sp)
80202e22: 09 a0                        	j	2
80202e24: 02 65                        	ld	a0, 0(sp)
80202e26: e2 60                        	ld	ra, 24(sp)
80202e28: 05 61                        	addi	sp, sp, 32
80202e2a: 82 80                        	ret

0000000080202e2c _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17he65ad655237069d2E:
80202e2c: 01 11                        	addi	sp, sp, -32
80202e2e: 2a e4                        	sd	a0, 8(sp)
80202e30: 2e e8                        	sd	a1, 16(sp)
80202e32: 2e 95                        	add	a0, a0, a1
80202e34: 2a ec                        	sd	a0, 24(sp)
80202e36: 2a e0                        	sd	a0, 0(sp)
80202e38: 09 a0                        	j	2
80202e3a: 02 65                        	ld	a0, 0(sp)
80202e3c: 05 61                        	addi	sp, sp, 32
80202e3e: 82 80                        	ret

0000000080202e40 _ZN4core3ptr13drop_in_place17h18ad61e4efb2cf6dE:
80202e40: 41 11                        	addi	sp, sp, -16
80202e42: 2a e4                        	sd	a0, 8(sp)
80202e44: 41 01                        	addi	sp, sp, 16
80202e46: 82 80                        	ret

0000000080202e48 _ZN4core3ptr13drop_in_place17h6a3132201db58cddE:
80202e48: 41 11                        	addi	sp, sp, -16
80202e4a: 2a e4                        	sd	a0, 8(sp)
80202e4c: 41 01                        	addi	sp, sp, 16
80202e4e: 82 80                        	ret

0000000080202e50 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17habc4f5e931ae244cE:
80202e50: 01 11                        	addi	sp, sp, -32
80202e52: 06 ec                        	sd	ra, 24(sp)
80202e54: 2a e4                        	sd	a0, 8(sp)
80202e56: 2e e8                        	sd	a1, 16(sp)
80202e58: 97 00 00 00                  	auipc	ra, 0
80202e5c: e7 80 40 01                  	jalr	20(ra)
80202e60: 2a e0                        	sd	a0, 0(sp)
80202e62: 09 a0                        	j	2
80202e64: 02 65                        	ld	a0, 0(sp)
80202e66: e2 60                        	ld	ra, 24(sp)
80202e68: 05 61                        	addi	sp, sp, 32
80202e6a: 82 80                        	ret

0000000080202e6c _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h2f937baa2174bdd4E:
80202e6c: 01 11                        	addi	sp, sp, -32
80202e6e: 2a e4                        	sd	a0, 8(sp)
80202e70: 2e e8                        	sd	a1, 16(sp)
80202e72: 2e 95                        	add	a0, a0, a1
80202e74: 2a ec                        	sd	a0, 24(sp)
80202e76: 2a e0                        	sd	a0, 0(sp)
80202e78: 09 a0                        	j	2
80202e7a: 02 65                        	ld	a0, 0(sp)
80202e7c: 05 61                        	addi	sp, sp, 32
80202e7e: 82 80                        	ret

0000000080202e80 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h2f2f0e971149ac8cE:
80202e80: 41 11                        	addi	sp, sp, -16
80202e82: 2a e4                        	sd	a0, 8(sp)
80202e84: 2a e0                        	sd	a0, 0(sp)
80202e86: 09 a0                        	j	2
80202e88: 02 65                        	ld	a0, 0(sp)
80202e8a: 13 35 15 00                  	seqz	a0, a0
80202e8e: 41 01                        	addi	sp, sp, 16
80202e90: 82 80                        	ret

0000000080202e92 _ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69f16f68f06a68d0E:
80202e92: 01 11                        	addi	sp, sp, -32
80202e94: 2a 86                        	add	a2, zero, a0
80202e96: a3 07 a1 00                  	sb	a0, 15(sp)
80202e9a: aa 86                        	add	a3, zero, a0
80202e9c: 01 47                        	mv	a4, zero
80202e9e: 2e e0                        	sd	a1, 0(sp)
80202ea0: 63 05 e5 02                  	beq	a0, a4, 42
80202ea4: 09 a0                        	j	2

0000000080202ea6 .LBB0_5:
80202ea6: 17 25 00 00                  	auipc	a0, 2
80202eaa: 13 05 25 43                  	addi	a0, a0, 1074

0000000080202eae .LBB0_6:
80202eae: 97 26 00 00                  	auipc	a3, 2
80202eb2: 93 86 a6 45                  	addi	a3, a3, 1114
80202eb6: 93 05 b0 02                  	addi	a1, zero, 43
80202eba: 10 08                        	addi	a2, sp, 16
80202ebc: 02 67                        	ld	a4, 0(sp)
80202ebe: 97 d0 ff ff                  	auipc	ra, 1048573
80202ec2: e7 80 40 75                  	jalr	1876(ra)
80202ec6: 00 00                        	unimp	
80202ec8: 00 00                        	unimp	
80202eca: 05 61                        	addi	sp, sp, 32
80202ecc: 82 80                        	ret

0000000080202ece _ZN5riscv8register4sepc4read17he914ae40011e1ac0E:
80202ece: 41 11                        	addi	sp, sp, -16
80202ed0: 06 e4                        	sd	ra, 8(sp)
80202ed2: 97 00 00 00                  	auipc	ra, 0
80202ed6: e7 80 40 01                  	jalr	20(ra)
80202eda: 2a e0                        	sd	a0, 0(sp)
80202edc: 09 a0                        	j	2
80202ede: 02 65                        	ld	a0, 0(sp)
80202ee0: a2 60                        	ld	ra, 8(sp)
80202ee2: 41 01                        	addi	sp, sp, 16
80202ee4: 82 80                        	ret

0000000080202ee6 _ZN5riscv8register4sepc5_read17hd649a1ba55618063E:
80202ee6: 41 11                        	addi	sp, sp, -16
80202ee8: 73 25 10 14                  	csrr	a0, sepc
80202eec: 2a e4                        	sd	a0, 8(sp)
80202eee: 41 01                        	addi	sp, sp, 16
80202ef0: 82 80                        	ret

0000000080202ef2 _ZN5riscv8register5stvec5write17h938eed133b2008a0E:
80202ef2: 01 11                        	addi	sp, sp, -32
80202ef4: 06 ec                        	sd	ra, 24(sp)
80202ef6: 2e 86                        	add	a2, zero, a1
80202ef8: 2a e4                        	sd	a0, 8(sp)
80202efa: a3 0b b1 00                  	sb	a1, 23(sp)
80202efe: aa 95                        	add	a1, a1, a0
80202f00: 2e e0                        	sd	a1, 0(sp)
80202f02: 63 ec a5 00                  	bltu	a1, a0, 24
80202f06: 09 a0                        	j	2
80202f08: 02 65                        	ld	a0, 0(sp)
80202f0a: 97 00 00 00                  	auipc	ra, 0
80202f0e: e7 80 c0 02                  	jalr	44(ra)
80202f12: 09 a0                        	j	2
80202f14: e2 60                        	ld	ra, 24(sp)
80202f16: 05 61                        	addi	sp, sp, 32
80202f18: 82 80                        	ret

0000000080202f1a .LBB0_4:
80202f1a: 17 25 00 00                  	auipc	a0, 2
80202f1e: 13 05 65 47                  	addi	a0, a0, 1142

0000000080202f22 .LBB0_5:
80202f22: 17 26 00 00                  	auipc	a2, 2
80202f26: 13 06 66 45                  	addi	a2, a2, 1110
80202f2a: f1 45                        	addi	a1, zero, 28
80202f2c: 97 e0 ff ff                  	auipc	ra, 1048574
80202f30: e7 80 e0 82                  	jalr	-2002(ra)
80202f34: 00 00                        	unimp	

0000000080202f36 _ZN5riscv8register5stvec6_write17h3bc85e8aa65109f9E:
80202f36: 41 11                        	addi	sp, sp, -16
80202f38: 2a e4                        	sd	a0, 8(sp)
80202f3a: 73 10 55 10                  	csrw	stvec, a0
80202f3e: 41 01                        	addi	sp, sp, 16
80202f40: 82 80                        	ret

0000000080202f42 _ZN5riscv8register6scause4read17h16889ebe675c0487E:
80202f42: 01 11                        	addi	sp, sp, -32
80202f44: 06 ec                        	sd	ra, 24(sp)
80202f46: 97 00 00 00                  	auipc	ra, 0
80202f4a: e7 80 60 01                  	jalr	22(ra)
80202f4e: 2a e4                        	sd	a0, 8(sp)
80202f50: 09 a0                        	j	2
80202f52: 22 65                        	ld	a0, 8(sp)
80202f54: 2a e8                        	sd	a0, 16(sp)
80202f56: e2 60                        	ld	ra, 24(sp)
80202f58: 05 61                        	addi	sp, sp, 32
80202f5a: 82 80                        	ret

0000000080202f5c _ZN5riscv8register6scause5_read17h614d050135bbe2c8E:
80202f5c: 41 11                        	addi	sp, sp, -16
80202f5e: 73 25 20 14                  	csrr	a0, scause
80202f62: 2a e4                        	sd	a0, 8(sp)
80202f64: 41 01                        	addi	sp, sp, 16
80202f66: 82 80                        	ret

0000000080202f68 _ZN5riscv8register6scause6Scause12is_interrupt17h3b13a35ff3893259E:
80202f68: 39 71                        	addi	sp, sp, -64
80202f6a: 06 fc                        	sd	ra, 56(sp)
80202f6c: 2a f4                        	sd	a0, 40(sp)
80202f6e: a1 45                        	addi	a1, zero, 8
80202f70: 2e f8                        	sd	a1, 48(sp)
80202f72: 2a f0                        	sd	a0, 32(sp)
80202f74: 2e ec                        	sd	a1, 24(sp)
80202f76: 09 a0                        	j	2
80202f78: 62 65                        	ld	a0, 24(sp)
80202f7a: 93 15 35 00                  	slli	a1, a0, 3
80202f7e: 01 46                        	mv	a2, zero
80202f80: 2e e8                        	sd	a1, 16(sp)
80202f82: 0d e6                        	bnez	a2, 42
80202f84: 09 a0                        	j	2
80202f86: 42 65                        	ld	a0, 16(sp)
80202f88: 93 05 f5 ff                  	addi	a1, a0, -1
80202f8c: 2e e4                        	sd	a1, 8(sp)
80202f8e: 63 6e b5 02                  	bltu	a0, a1, 60
80202f92: 09 a0                        	j	2
80202f94: 02 75                        	ld	a0, 32(sp)
80202f96: a2 65                        	ld	a1, 8(sp)
80202f98: 97 00 00 00                  	auipc	ra, 0
80202f9c: e7 80 40 0d                  	jalr	212(ra)
80202fa0: 2a e0                        	sd	a0, 0(sp)
80202fa2: 09 a0                        	j	2
80202fa4: 02 65                        	ld	a0, 0(sp)
80202fa6: e2 70                        	ld	ra, 56(sp)
80202fa8: 21 61                        	addi	sp, sp, 64
80202faa: 82 80                        	ret

0000000080202fac .LBB2_7:
80202fac: 17 25 00 00                  	auipc	a0, 2
80202fb0: 13 05 45 47                  	addi	a0, a0, 1140

0000000080202fb4 .LBB2_8:
80202fb4: 17 26 00 00                  	auipc	a2, 2
80202fb8: 13 06 c6 44                  	addi	a2, a2, 1100
80202fbc: 93 05 10 02                  	addi	a1, zero, 33
80202fc0: 97 d0 ff ff                  	auipc	ra, 1048573
80202fc4: e7 80 a0 79                  	jalr	1946(ra)
80202fc8: 00 00                        	unimp	

0000000080202fca .LBB2_9:
80202fca: 17 25 00 00                  	auipc	a0, 2
80202fce: 13 05 65 48                  	addi	a0, a0, 1158

0000000080202fd2 .LBB2_10:
80202fd2: 17 26 00 00                  	auipc	a2, 2
80202fd6: 13 06 e6 42                  	addi	a2, a2, 1070
80202fda: 93 05 10 02                  	addi	a1, zero, 33
80202fde: 97 d0 ff ff                  	auipc	ra, 1048573
80202fe2: e7 80 c0 77                  	jalr	1916(ra)
80202fe6: 00 00                        	unimp	

0000000080202fe8 _ZN5riscv8register6scause6Scause5cause17h5ba3eb7389dd99b5E:
80202fe8: 5d 71                        	addi	sp, sp, -80
80202fea: 86 e4                        	sd	ra, 72(sp)
80202fec: aa e0                        	sd	a0, 64(sp)
80202fee: 2a f8                        	sd	a0, 48(sp)
80202ff0: 97 00 00 00                  	auipc	ra, 0
80202ff4: e7 80 80 f7                  	jalr	-136(ra)
80202ff8: 2a f4                        	sd	a0, 40(sp)
80202ffa: 09 a0                        	j	2
80202ffc: 22 75                        	ld	a0, 40(sp)
80202ffe: 09 e9                        	bnez	a0, 18
80203000: 09 a0                        	j	2
80203002: 42 75                        	ld	a0, 48(sp)
80203004: 97 00 00 00                  	auipc	ra, 0
80203008: e7 80 a0 27                  	jalr	634(ra)
8020300c: 2a f0                        	sd	a0, 32(sp)
8020300e: 05 a8                        	j	48
80203010: 42 75                        	ld	a0, 48(sp)
80203012: 97 00 00 00                  	auipc	ra, 0
80203016: e7 80 c0 26                  	jalr	620(ra)
8020301a: 2a ec                        	sd	a0, 24(sp)
8020301c: 09 a0                        	j	2
8020301e: 62 65                        	ld	a0, 24(sp)
80203020: 97 00 00 00                  	auipc	ra, 0
80203024: e7 80 40 10                  	jalr	260(ra)
80203028: 13 75 f5 0f                  	andi	a0, a0, 255
8020302c: 2a e8                        	sd	a0, 16(sp)
8020302e: 09 a0                        	j	2
80203030: 42 65                        	ld	a0, 16(sp)
80203032: a3 0c a1 02                  	sb	a0, 57(sp)
80203036: 81 45                        	mv	a1, zero
80203038: 23 0c b1 02                  	sb	a1, 56(sp)
8020303c: 0d a0                        	j	34
8020303e: 02 75                        	ld	a0, 32(sp)
80203040: 97 00 00 00                  	auipc	ra, 0
80203044: e7 80 40 16                  	jalr	356(ra)
80203048: 13 75 f5 0f                  	andi	a0, a0, 255
8020304c: 2a e4                        	sd	a0, 8(sp)
8020304e: 09 a0                        	j	2
80203050: 22 65                        	ld	a0, 8(sp)
80203052: a3 0c a1 02                  	sb	a0, 57(sp)
80203056: 85 45                        	addi	a1, zero, 1
80203058: 23 0c b1 02                  	sb	a1, 56(sp)
8020305c: 09 a0                        	j	2
8020305e: 03 45 81 03                  	lbu	a0, 56(sp)
80203062: 83 05 91 03                  	lb	a1, 57(sp)
80203066: a6 60                        	ld	ra, 72(sp)
80203068: 61 61                        	addi	sp, sp, 80
8020306a: 82 80                        	ret

000000008020306c _ZN45_$LT$usize$u20$as$u20$bit_field..BitField$GT$7get_bit17h1cbe1ad554a714f7E:
8020306c: 79 71                        	addi	sp, sp, -48
8020306e: 2a f0                        	sd	a0, 32(sp)
80203070: 2e f4                        	sd	a1, 40(sp)
80203072: 13 06 f0 03                  	addi	a2, zero, 63
80203076: 2e ec                        	sd	a1, 24(sp)
80203078: 2a e8                        	sd	a0, 16(sp)
8020307a: 63 61 b6 02                  	bltu	a2, a1, 34
8020307e: 09 a0                        	j	2
80203080: 42 65                        	ld	a0, 16(sp)
80203082: 0c 61                        	ld	a1, 0(a0)
80203084: 62 66                        	ld	a2, 24(sp)
80203086: 93 76 06 fc                  	andi	a3, a2, -64
8020308a: 05 47                        	addi	a4, zero, 1
8020308c: 33 17 c7 00                  	sll	a4, a4, a2
80203090: 81 47                        	mv	a5, zero
80203092: 2e e4                        	sd	a1, 8(sp)
80203094: 3a e0                        	sd	a4, 0(sp)
80203096: 63 9a f6 02                  	bne	a3, a5, 52
8020309a: 05 a0                        	j	32

000000008020309c .LBB0_5:
8020309c: 17 25 00 00                  	auipc	a0, 2
802030a0: 13 05 55 3d                  	addi	a0, a0, 981

00000000802030a4 .LBB0_6:
802030a4: 17 26 00 00                  	auipc	a2, 2
802030a8: 13 06 46 46                  	addi	a2, a2, 1124
802030ac: 93 05 80 02                  	addi	a1, zero, 40
802030b0: 97 d0 ff ff                  	auipc	ra, 1048573
802030b4: e7 80 a0 6a                  	jalr	1706(ra)
802030b8: 00 00                        	unimp	
802030ba: 22 65                        	ld	a0, 8(sp)
802030bc: 82 65                        	ld	a1, 0(sp)
802030be: 33 76 b5 00                  	and	a2, a0, a1
802030c2: 33 35 c0 00                  	snez	a0, a2
802030c6: 45 61                        	addi	sp, sp, 48
802030c8: 82 80                        	ret

00000000802030ca .LBB0_7:
802030ca: 17 25 00 00                  	auipc	a0, 2
802030ce: 13 05 65 4c                  	addi	a0, a0, 1222

00000000802030d2 .LBB0_8:
802030d2: 17 26 00 00                  	auipc	a2, 2
802030d6: 13 06 66 4a                  	addi	a2, a2, 1190
802030da: 93 05 30 02                  	addi	a1, zero, 35
802030de: 97 d0 ff ff                  	auipc	ra, 1048573
802030e2: e7 80 c0 67                  	jalr	1660(ra)
802030e6: 00 00                        	unimp	

00000000802030e8 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3bca98293536be8eE:
802030e8: 01 11                        	addi	sp, sp, -32
802030ea: 06 ec                        	sd	ra, 24(sp)
802030ec: 2a e4                        	sd	a0, 8(sp)
802030ee: 2e e8                        	sd	a1, 16(sp)
802030f0: 08 61                        	ld	a0, 0(a0)
802030f2: 97 00 00 00                  	auipc	ra, 0
802030f6: e7 80 a0 47                  	jalr	1146(ra)
802030fa: 2a e0                        	sd	a0, 0(sp)
802030fc: 09 a0                        	j	2
802030fe: 02 65                        	ld	a0, 0(sp)
80203100: e2 60                        	ld	ra, 24(sp)
80203102: 05 61                        	addi	sp, sp, 32
80203104: 82 80                        	ret

0000000080203106 _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h7cff4517c9f2033fE:
80203106: 01 11                        	addi	sp, sp, -32
80203108: 06 ec                        	sd	ra, 24(sp)
8020310a: 2a e4                        	sd	a0, 8(sp)
8020310c: 2e e8                        	sd	a1, 16(sp)
8020310e: 08 61                        	ld	a0, 0(a0)
80203110: 97 00 00 00                  	auipc	ra, 0
80203114: e7 80 e0 2d                  	jalr	734(ra)
80203118: 2a e0                        	sd	a0, 0(sp)
8020311a: 09 a0                        	j	2
8020311c: 02 65                        	ld	a0, 0(sp)
8020311e: e2 60                        	ld	ra, 24(sp)
80203120: 05 61                        	addi	sp, sp, 32
80203122: 82 80                        	ret

0000000080203124 _ZN5riscv8register6scause9Interrupt4from17h9dc503e4aa5c90e9E:
80203124: 01 11                        	addi	sp, sp, -32
80203126: 2a ec                        	sd	a0, 24(sp)
80203128: 81 45                        	mv	a1, zero
8020312a: 2a e4                        	sd	a0, 8(sp)
8020312c: 63 00 b5 04                  	beq	a0, a1, 64
80203130: 09 a0                        	j	2
80203132: 05 45                        	addi	a0, zero, 1
80203134: a2 65                        	ld	a1, 8(sp)
80203136: 63 8f a5 02                  	beq	a1, a0, 62
8020313a: 09 a0                        	j	2
8020313c: 11 45                        	addi	a0, zero, 4
8020313e: a2 65                        	ld	a1, 8(sp)
80203140: 63 8e a5 02                  	beq	a1, a0, 60
80203144: 09 a0                        	j	2
80203146: 15 45                        	addi	a0, zero, 5
80203148: a2 65                        	ld	a1, 8(sp)
8020314a: 63 8d a5 02                  	beq	a1, a0, 58
8020314e: 09 a0                        	j	2
80203150: 21 45                        	addi	a0, zero, 8
80203152: a2 65                        	ld	a1, 8(sp)
80203154: 63 8c a5 02                  	beq	a1, a0, 56
80203158: 09 a0                        	j	2
8020315a: 25 45                        	addi	a0, zero, 9
8020315c: a2 65                        	ld	a1, 8(sp)
8020315e: 63 8b a5 02                  	beq	a1, a0, 54
80203162: 09 a0                        	j	2
80203164: 19 45                        	addi	a0, zero, 6
80203166: a3 0b a1 00                  	sb	a0, 23(sp)
8020316a: 0d a8                        	j	50
8020316c: 01 45                        	mv	a0, zero
8020316e: a3 0b a1 00                  	sb	a0, 23(sp)
80203172: 2d a0                        	j	42
80203174: 05 45                        	addi	a0, zero, 1
80203176: a3 0b a1 00                  	sb	a0, 23(sp)
8020317a: 0d a0                        	j	34
8020317c: 09 45                        	addi	a0, zero, 2
8020317e: a3 0b a1 00                  	sb	a0, 23(sp)
80203182: 29 a8                        	j	26
80203184: 0d 45                        	addi	a0, zero, 3
80203186: a3 0b a1 00                  	sb	a0, 23(sp)
8020318a: 09 a8                        	j	18
8020318c: 11 45                        	addi	a0, zero, 4
8020318e: a3 0b a1 00                  	sb	a0, 23(sp)
80203192: 29 a0                        	j	10
80203194: 15 45                        	addi	a0, zero, 5
80203196: a3 0b a1 00                  	sb	a0, 23(sp)
8020319a: 09 a0                        	j	2
8020319c: 03 05 71 01                  	lb	a0, 23(sp)
802031a0: 05 61                        	addi	sp, sp, 32
802031a2: 82 80                        	ret

00000000802031a4 _ZN5riscv8register6scause9Exception4from17h0003af8bc6e30b76E:
802031a4: 01 11                        	addi	sp, sp, -32
802031a6: 2a ec                        	sd	a0, 24(sp)
802031a8: 81 45                        	mv	a1, zero
802031aa: 2a e4                        	sd	a0, 8(sp)
802031ac: 63 09 b5 06                  	beq	a0, a1, 114
802031b0: 09 a0                        	j	2
802031b2: 05 45                        	addi	a0, zero, 1
802031b4: a2 65                        	ld	a1, 8(sp)
802031b6: 63 88 a5 06                  	beq	a1, a0, 112
802031ba: 09 a0                        	j	2
802031bc: 09 45                        	addi	a0, zero, 2
802031be: a2 65                        	ld	a1, 8(sp)
802031c0: 63 87 a5 06                  	beq	a1, a0, 110
802031c4: 09 a0                        	j	2
802031c6: 0d 45                        	addi	a0, zero, 3
802031c8: a2 65                        	ld	a1, 8(sp)
802031ca: 63 86 a5 06                  	beq	a1, a0, 108
802031ce: 09 a0                        	j	2
802031d0: 15 45                        	addi	a0, zero, 5
802031d2: a2 65                        	ld	a1, 8(sp)
802031d4: 63 85 a5 06                  	beq	a1, a0, 106
802031d8: 09 a0                        	j	2
802031da: 19 45                        	addi	a0, zero, 6
802031dc: a2 65                        	ld	a1, 8(sp)
802031de: 63 84 a5 06                  	beq	a1, a0, 104
802031e2: 09 a0                        	j	2
802031e4: 1d 45                        	addi	a0, zero, 7
802031e6: a2 65                        	ld	a1, 8(sp)
802031e8: 63 83 a5 06                  	beq	a1, a0, 102
802031ec: 09 a0                        	j	2
802031ee: 21 45                        	addi	a0, zero, 8
802031f0: a2 65                        	ld	a1, 8(sp)
802031f2: 63 82 a5 06                  	beq	a1, a0, 100
802031f6: 09 a0                        	j	2
802031f8: 31 45                        	addi	a0, zero, 12
802031fa: a2 65                        	ld	a1, 8(sp)
802031fc: 63 81 a5 06                  	beq	a1, a0, 98
80203200: 09 a0                        	j	2
80203202: 35 45                        	addi	a0, zero, 13
80203204: a2 65                        	ld	a1, 8(sp)
80203206: 63 80 a5 06                  	beq	a1, a0, 96
8020320a: 09 a0                        	j	2
8020320c: 3d 45                        	addi	a0, zero, 15
8020320e: a2 65                        	ld	a1, 8(sp)
80203210: 63 8f a5 04                  	beq	a1, a0, 94
80203214: 09 a0                        	j	2
80203216: 2d 45                        	addi	a0, zero, 11
80203218: a3 0b a1 00                  	sb	a0, 23(sp)
8020321c: a9 a8                        	j	90
8020321e: 01 45                        	mv	a0, zero
80203220: a3 0b a1 00                  	sb	a0, 23(sp)
80203224: 89 a8                        	j	82
80203226: 05 45                        	addi	a0, zero, 1
80203228: a3 0b a1 00                  	sb	a0, 23(sp)
8020322c: a9 a0                        	j	74
8020322e: 09 45                        	addi	a0, zero, 2
80203230: a3 0b a1 00                  	sb	a0, 23(sp)
80203234: 89 a0                        	j	66
80203236: 0d 45                        	addi	a0, zero, 3
80203238: a3 0b a1 00                  	sb	a0, 23(sp)
8020323c: 2d a8                        	j	58
8020323e: 11 45                        	addi	a0, zero, 4
80203240: a3 0b a1 00                  	sb	a0, 23(sp)
80203244: 0d a8                        	j	50
80203246: 15 45                        	addi	a0, zero, 5
80203248: a3 0b a1 00                  	sb	a0, 23(sp)
8020324c: 2d a0                        	j	42
8020324e: 19 45                        	addi	a0, zero, 6
80203250: a3 0b a1 00                  	sb	a0, 23(sp)
80203254: 0d a0                        	j	34
80203256: 1d 45                        	addi	a0, zero, 7
80203258: a3 0b a1 00                  	sb	a0, 23(sp)
8020325c: 29 a8                        	j	26
8020325e: 21 45                        	addi	a0, zero, 8
80203260: a3 0b a1 00                  	sb	a0, 23(sp)
80203264: 09 a8                        	j	18
80203266: 25 45                        	addi	a0, zero, 9
80203268: a3 0b a1 00                  	sb	a0, 23(sp)
8020326c: 29 a0                        	j	10
8020326e: 29 45                        	addi	a0, zero, 10
80203270: a3 0b a1 00                  	sb	a0, 23(sp)
80203274: 09 a0                        	j	2
80203276: 03 05 71 01                  	lb	a0, 23(sp)
8020327a: 05 61                        	addi	sp, sp, 32
8020327c: 82 80                        	ret

000000008020327e _ZN5riscv8register6scause6Scause4code17h1b20b48e0c8f2f34E:
8020327e: 39 71                        	addi	sp, sp, -64
80203280: 2a f4                        	sd	a0, 40(sp)
80203282: a1 45                        	addi	a1, zero, 8
80203284: 2e fc                        	sd	a1, 56(sp)
80203286: 2a f0                        	sd	a0, 32(sp)
80203288: 2e ec                        	sd	a1, 24(sp)
8020328a: 09 a0                        	j	2
8020328c: 62 65                        	ld	a0, 24(sp)
8020328e: 93 15 35 00                  	slli	a1, a0, 3
80203292: 01 46                        	mv	a2, zero
80203294: 2e e8                        	sd	a1, 16(sp)
80203296: 15 ee                        	bnez	a2, 60
80203298: 09 a0                        	j	2
8020329a: 42 65                        	ld	a0, 16(sp)
8020329c: 93 05 f5 ff                  	addi	a1, a0, -1
802032a0: 2e e4                        	sd	a1, 8(sp)
802032a2: 63 67 b5 04                  	bltu	a0, a1, 78
802032a6: 09 a0                        	j	2
802032a8: 22 65                        	ld	a0, 8(sp)
802032aa: 93 75 05 fc                  	andi	a1, a0, -64
802032ae: 05 46                        	addi	a2, zero, 1
802032b0: 33 16 a6 00                  	sll	a2, a2, a0
802032b4: 81 46                        	mv	a3, zero
802032b6: 32 e0                        	sd	a2, 0(sp)
802032b8: 63 9b d5 04                  	bne	a1, a3, 86
802032bc: 09 a0                        	j	2
802032be: 02 65                        	ld	a0, 0(sp)
802032c0: 2a f8                        	sd	a0, 48(sp)
802032c2: 82 75                        	ld	a1, 32(sp)
802032c4: 90 61                        	ld	a2, 0(a1)
802032c6: 93 46 f5 ff                  	not	a3, a0
802032ca: 33 75 d6 00                  	and	a0, a2, a3
802032ce: 21 61                        	addi	sp, sp, 64
802032d0: 82 80                        	ret

00000000802032d2 .LBB4_8:
802032d2: 17 25 00 00                  	auipc	a0, 2
802032d6: 13 05 e5 34                  	addi	a0, a0, 846

00000000802032da .LBB4_9:
802032da: 17 26 00 00                  	auipc	a2, 2
802032de: 13 06 e6 32                  	addi	a2, a2, 814
802032e2: 93 05 10 02                  	addi	a1, zero, 33
802032e6: 97 d0 ff ff                  	auipc	ra, 1048573
802032ea: e7 80 40 47                  	jalr	1140(ra)
802032ee: 00 00                        	unimp	

00000000802032f0 .LBB4_10:
802032f0: 17 25 00 00                  	auipc	a0, 2
802032f4: 13 05 05 37                  	addi	a0, a0, 880

00000000802032f8 .LBB4_11:
802032f8: 17 26 00 00                  	auipc	a2, 2
802032fc: 13 06 06 35                  	addi	a2, a2, 848
80203300: 93 05 10 02                  	addi	a1, zero, 33
80203304: 97 d0 ff ff                  	auipc	ra, 1048573
80203308: e7 80 60 45                  	jalr	1110(ra)
8020330c: 00 00                        	unimp	

000000008020330e .LBB4_12:
8020330e: 17 25 00 00                  	auipc	a0, 2
80203312: 13 05 25 39                  	addi	a0, a0, 914

0000000080203316 .LBB4_13:
80203316: 17 26 00 00                  	auipc	a2, 2
8020331a: 13 06 26 37                  	addi	a2, a2, 882
8020331e: 93 05 30 02                  	addi	a1, zero, 35
80203322: 97 d0 ff ff                  	auipc	ra, 1048573
80203326: e7 80 80 43                  	jalr	1080(ra)
8020332a: 00 00                        	unimp	

000000008020332c _ZN66_$LT$riscv..register..scause..Trap$u20$as$u20$core..fmt..Debug$GT$3fmt17h4e589dd061a37c44E:
8020332c: 75 71                        	addi	sp, sp, -144
8020332e: 06 e5                        	sd	ra, 136(sp)
80203330: aa f4                        	sd	a0, 104(sp)
80203332: ae f8                        	sd	a1, 112(sp)
80203334: 2a f0                        	sd	a0, 32(sp)
80203336: 03 45 05 00                  	lbu	a0, 0(a0)
8020333a: 05 89                        	andi	a0, a0, 1
8020333c: 01 46                        	mv	a2, zero
8020333e: 2e e8                        	sd	a1, 16(sp)
80203340: 63 05 c5 02                  	beq	a0, a2, 42
80203344: 09 a0                        	j	2
80203346: 02 75                        	ld	a0, 32(sp)
80203348: 05 05                        	addi	a0, a0, 1
8020334a: aa fc                        	sd	a0, 120(sp)

000000008020334c .LBB5_12:
8020334c: 17 26 00 00                  	auipc	a2, 2
80203350: 13 06 76 37                  	addi	a2, a2, 887
80203354: ac 00                        	addi	a1, sp, 72
80203356: a5 46                        	addi	a3, zero, 9
80203358: 2a e4                        	sd	a0, 8(sp)
8020335a: 2e 85                        	add	a0, zero, a1
8020335c: c2 65                        	ld	a1, 16(sp)
8020335e: 97 e0 ff ff                  	auipc	ra, 1048574
80203362: e7 80 a0 0a                  	jalr	170(ra)
80203366: 89 a8                        	j	82
80203368: 00 00                        	unimp	
8020336a: 02 75                        	ld	a0, 32(sp)
8020336c: 05 05                        	addi	a0, a0, 1
8020336e: 2a e1                        	sd	a0, 128(sp)

0000000080203370 .LBB5_13:
80203370: 17 26 00 00                  	auipc	a2, 2
80203374: 13 06 06 38                  	addi	a2, a2, 896
80203378: 2c 10                        	addi	a1, sp, 40
8020337a: a5 46                        	addi	a3, zero, 9
8020337c: 2a e0                        	sd	a0, 0(sp)
8020337e: 2e 85                        	add	a0, zero, a1
80203380: c2 65                        	ld	a1, 16(sp)
80203382: 97 e0 ff ff                  	auipc	ra, 1048574
80203386: e7 80 60 08                  	jalr	134(ra)
8020338a: 09 a0                        	j	2
8020338c: 02 65                        	ld	a0, 0(sp)
8020338e: aa e0                        	sd	a0, 64(sp)

0000000080203390 .LBB5_14:
80203390: 17 26 00 00                  	auipc	a2, 2
80203394: 13 06 06 37                  	addi	a2, a2, 880
80203398: 28 10                        	addi	a0, sp, 40
8020339a: 8c 00                        	addi	a1, sp, 64
8020339c: 97 d0 ff ff                  	auipc	ra, 1048573
802033a0: e7 80 e0 60                  	jalr	1550(ra)
802033a4: 09 a0                        	j	2
802033a6: 28 10                        	addi	a0, sp, 40
802033a8: 97 d0 ff ff                  	auipc	ra, 1048573
802033ac: e7 80 20 6f                  	jalr	1778(ra)
802033b0: a3 0f a1 00                  	sb	a0, 31(sp)
802033b4: 09 a0                        	j	2
802033b6: 3d a0                        	j	46
802033b8: 22 65                        	ld	a0, 8(sp)
802033ba: aa f0                        	sd	a0, 96(sp)

00000000802033bc .LBB5_15:
802033bc: 17 26 00 00                  	auipc	a2, 2
802033c0: 13 06 46 31                  	addi	a2, a2, 788
802033c4: a8 00                        	addi	a0, sp, 72
802033c6: 8c 10                        	addi	a1, sp, 96
802033c8: 97 d0 ff ff                  	auipc	ra, 1048573
802033cc: e7 80 20 5e                  	jalr	1506(ra)
802033d0: 09 a0                        	j	2
802033d2: a8 00                        	addi	a0, sp, 72
802033d4: 97 d0 ff ff                  	auipc	ra, 1048573
802033d8: e7 80 60 6c                  	jalr	1734(ra)
802033dc: a3 0f a1 00                  	sb	a0, 31(sp)
802033e0: 09 a0                        	j	2
802033e2: 09 a0                        	j	2
802033e4: 03 45 f1 01                  	lbu	a0, 31(sp)
802033e8: aa 60                        	ld	ra, 136(sp)
802033ea: 49 61                        	addi	sp, sp, 144
802033ec: 82 80                        	ret

00000000802033ee _ZN71_$LT$riscv..register..scause..Interrupt$u20$as$u20$core..fmt..Debug$GT$3fmt17h8d39a4bdd9fcb36dE:
802033ee: 15 71                        	addi	sp, sp, -224
802033f0: 86 ed                        	sd	ra, 216(sp)
802033f2: aa e5                        	sd	a0, 200(sp)
802033f4: ae e9                        	sd	a1, 208(sp)
802033f6: 2a ec                        	sd	a0, 24(sp)
802033f8: 03 45 05 00                  	lbu	a0, 0(a0)
802033fc: 01 46                        	mv	a2, zero
802033fe: 2e e4                        	sd	a1, 8(sp)
80203400: 2a e0                        	sd	a0, 0(sp)
80203402: 63 09 c5 04                  	beq	a0, a2, 82
80203406: 09 a0                        	j	2
80203408: 05 45                        	addi	a0, zero, 1
8020340a: 82 65                        	ld	a1, 0(sp)
8020340c: 63 89 a5 06                  	beq	a1, a0, 114
80203410: 09 a0                        	j	2
80203412: 09 45                        	addi	a0, zero, 2
80203414: 82 65                        	ld	a1, 0(sp)
80203416: 63 89 a5 08                  	beq	a1, a0, 146
8020341a: 09 a0                        	j	2
8020341c: 0d 45                        	addi	a0, zero, 3
8020341e: 82 65                        	ld	a1, 0(sp)
80203420: 63 89 a5 0a                  	beq	a1, a0, 178
80203424: 09 a0                        	j	2
80203426: 11 45                        	addi	a0, zero, 4
80203428: 82 65                        	ld	a1, 0(sp)
8020342a: 63 89 a5 0c                  	beq	a1, a0, 210
8020342e: 09 a0                        	j	2
80203430: 15 45                        	addi	a0, zero, 5
80203432: 82 65                        	ld	a1, 0(sp)
80203434: 63 89 a5 0e                  	beq	a1, a0, 242
80203438: 09 a0                        	j	2

000000008020343a .LBB6_30:
8020343a: 17 26 00 00                  	auipc	a2, 2
8020343e: 13 06 66 2e                  	addi	a2, a2, 742
80203442: 08 19                        	addi	a0, sp, 176
80203444: 9d 46                        	addi	a3, zero, 7
80203446: a2 65                        	ld	a1, 8(sp)
80203448: 97 e0 ff ff                  	auipc	ra, 1048574
8020344c: e7 80 00 fc                  	jalr	-64(ra)
80203450: 01 a2                        	j	256
80203452: 00 00                        	unimp	

0000000080203454 .LBB6_31:
80203454: 17 16 00 00                  	auipc	a2, 1
80203458: 13 06 c6 1d                  	addi	a2, a2, 476
8020345c: 08 10                        	addi	a0, sp, 32
8020345e: a1 46                        	addi	a3, zero, 8
80203460: a2 65                        	ld	a1, 8(sp)
80203462: 97 e0 ff ff                  	auipc	ra, 1048574
80203466: e7 80 60 fa                  	jalr	-90(ra)
8020346a: 09 a0                        	j	2
8020346c: 08 10                        	addi	a0, sp, 32
8020346e: 97 d0 ff ff                  	auipc	ra, 1048573
80203472: e7 80 c0 62                  	jalr	1580(ra)
80203476: a3 0b a1 00                  	sb	a0, 23(sp)
8020347a: 09 a0                        	j	2
8020347c: dd a0                        	j	230

000000008020347e .LBB6_32:
8020347e: 17 26 00 00                  	auipc	a2, 2
80203482: 13 06 f6 2d                  	addi	a2, a2, 735
80203486: 28 18                        	addi	a0, sp, 56
80203488: b9 46                        	addi	a3, zero, 14
8020348a: a2 65                        	ld	a1, 8(sp)
8020348c: 97 e0 ff ff                  	auipc	ra, 1048574
80203490: e7 80 c0 f7                  	jalr	-132(ra)
80203494: 09 a0                        	j	2
80203496: 28 18                        	addi	a0, sp, 56
80203498: 97 d0 ff ff                  	auipc	ra, 1048573
8020349c: e7 80 20 60                  	jalr	1538(ra)
802034a0: a3 0b a1 00                  	sb	a0, 23(sp)
802034a4: 09 a0                        	j	2
802034a6: 75 a8                        	j	188

00000000802034a8 .LBB6_33:
802034a8: 17 26 00 00                  	auipc	a2, 2
802034ac: 13 06 c6 2a                  	addi	a2, a2, 684
802034b0: 88 08                        	addi	a0, sp, 80
802034b2: a5 46                        	addi	a3, zero, 9
802034b4: a2 65                        	ld	a1, 8(sp)
802034b6: 97 e0 ff ff                  	auipc	ra, 1048574
802034ba: e7 80 20 f5                  	jalr	-174(ra)
802034be: 09 a0                        	j	2
802034c0: 88 08                        	addi	a0, sp, 80
802034c2: 97 d0 ff ff                  	auipc	ra, 1048573
802034c6: e7 80 80 5d                  	jalr	1496(ra)
802034ca: a3 0b a1 00                  	sb	a0, 23(sp)
802034ce: 09 a0                        	j	2
802034d0: 49 a8                        	j	146

00000000802034d2 .LBB6_34:
802034d2: 17 26 00 00                  	auipc	a2, 2
802034d6: 13 06 36 27                  	addi	a2, a2, 627
802034da: a8 10                        	addi	a0, sp, 104
802034dc: bd 46                        	addi	a3, zero, 15
802034de: a2 65                        	ld	a1, 8(sp)
802034e0: 97 e0 ff ff                  	auipc	ra, 1048574
802034e4: e7 80 80 f2                  	jalr	-216(ra)
802034e8: 09 a0                        	j	2
802034ea: a8 10                        	addi	a0, sp, 104
802034ec: 97 d0 ff ff                  	auipc	ra, 1048573
802034f0: e7 80 e0 5a                  	jalr	1454(ra)
802034f4: a3 0b a1 00                  	sb	a0, 23(sp)
802034f8: 09 a0                        	j	2
802034fa: a5 a0                        	j	104

00000000802034fc .LBB6_35:
802034fc: 17 26 00 00                  	auipc	a2, 2
80203500: 13 06 d6 23                  	addi	a2, a2, 573
80203504: 08 01                        	addi	a0, sp, 128
80203506: b1 46                        	addi	a3, zero, 12
80203508: a2 65                        	ld	a1, 8(sp)
8020350a: 97 e0 ff ff                  	auipc	ra, 1048574
8020350e: e7 80 e0 ef                  	jalr	-258(ra)
80203512: 09 a0                        	j	2
80203514: 08 01                        	addi	a0, sp, 128
80203516: 97 d0 ff ff                  	auipc	ra, 1048573
8020351a: e7 80 40 58                  	jalr	1412(ra)
8020351e: a3 0b a1 00                  	sb	a0, 23(sp)
80203522: 09 a0                        	j	2
80203524: 3d a8                        	j	62

0000000080203526 .LBB6_36:
80203526: 17 26 00 00                  	auipc	a2, 2
8020352a: 13 06 16 20                  	addi	a2, a2, 513
8020352e: 28 09                        	addi	a0, sp, 152
80203530: c9 46                        	addi	a3, zero, 18
80203532: a2 65                        	ld	a1, 8(sp)
80203534: 97 e0 ff ff                  	auipc	ra, 1048574
80203538: e7 80 40 ed                  	jalr	-300(ra)
8020353c: 09 a0                        	j	2
8020353e: 28 09                        	addi	a0, sp, 152
80203540: 97 d0 ff ff                  	auipc	ra, 1048573
80203544: e7 80 a0 55                  	jalr	1370(ra)
80203548: a3 0b a1 00                  	sb	a0, 23(sp)
8020354c: 09 a0                        	j	2
8020354e: 11 a8                        	j	20
80203550: 08 19                        	addi	a0, sp, 176
80203552: 97 d0 ff ff                  	auipc	ra, 1048573
80203556: e7 80 80 54                  	jalr	1352(ra)
8020355a: a3 0b a1 00                  	sb	a0, 23(sp)
8020355e: 09 a0                        	j	2
80203560: 09 a0                        	j	2
80203562: 03 45 71 01                  	lbu	a0, 23(sp)
80203566: ee 60                        	ld	ra, 216(sp)
80203568: 2d 61                        	addi	sp, sp, 224
8020356a: 82 80                        	ret

000000008020356c _ZN71_$LT$riscv..register..scause..Exception$u20$as$u20$core..fmt..Debug$GT$3fmt17h5f1d8d0fee1d7d26E:
8020356c: 0d 71                        	addi	sp, sp, -352
8020356e: 86 ee                        	sd	ra, 344(sp)
80203570: aa e6                        	sd	a0, 328(sp)
80203572: ae ea                        	sd	a1, 336(sp)
80203574: 2a f0                        	sd	a0, 32(sp)
80203576: 03 45 05 00                  	lbu	a0, 0(a0)
8020357a: 01 46                        	mv	a2, zero
8020357c: 2e e8                        	sd	a1, 16(sp)
8020357e: 2a e4                        	sd	a0, 8(sp)
80203580: 63 02 c5 08                  	beq	a0, a2, 132
80203584: 09 a0                        	j	2
80203586: 05 45                        	addi	a0, zero, 1
80203588: a2 65                        	ld	a1, 8(sp)
8020358a: 63 82 a5 0a                  	beq	a1, a0, 164
8020358e: 09 a0                        	j	2
80203590: 09 45                        	addi	a0, zero, 2
80203592: a2 65                        	ld	a1, 8(sp)
80203594: 63 82 a5 0c                  	beq	a1, a0, 196
80203598: 09 a0                        	j	2
8020359a: 0d 45                        	addi	a0, zero, 3
8020359c: a2 65                        	ld	a1, 8(sp)
8020359e: 63 82 a5 0e                  	beq	a1, a0, 228
802035a2: 09 a0                        	j	2
802035a4: 11 45                        	addi	a0, zero, 4
802035a6: a2 65                        	ld	a1, 8(sp)
802035a8: 63 82 a5 10                  	beq	a1, a0, 260
802035ac: 09 a0                        	j	2
802035ae: 15 45                        	addi	a0, zero, 5
802035b0: a2 65                        	ld	a1, 8(sp)
802035b2: 63 82 a5 12                  	beq	a1, a0, 292
802035b6: 09 a0                        	j	2
802035b8: 19 45                        	addi	a0, zero, 6
802035ba: a2 65                        	ld	a1, 8(sp)
802035bc: 63 82 a5 14                  	beq	a1, a0, 324
802035c0: 09 a0                        	j	2
802035c2: 1d 45                        	addi	a0, zero, 7
802035c4: a2 65                        	ld	a1, 8(sp)
802035c6: 63 82 a5 16                  	beq	a1, a0, 356
802035ca: 09 a0                        	j	2
802035cc: 21 45                        	addi	a0, zero, 8
802035ce: a2 65                        	ld	a1, 8(sp)
802035d0: 63 82 a5 18                  	beq	a1, a0, 388
802035d4: 09 a0                        	j	2
802035d6: 25 45                        	addi	a0, zero, 9
802035d8: a2 65                        	ld	a1, 8(sp)
802035da: 63 82 a5 1a                  	beq	a1, a0, 420
802035de: 09 a0                        	j	2
802035e0: 29 45                        	addi	a0, zero, 10
802035e2: a2 65                        	ld	a1, 8(sp)
802035e4: 63 82 a5 1c                  	beq	a1, a0, 452
802035e8: 09 a0                        	j	2

00000000802035ea .LBB7_50:
802035ea: 17 26 00 00                  	auipc	a2, 2
802035ee: 13 06 66 13                  	addi	a2, a2, 310
802035f2: 08 1a                        	addi	a0, sp, 304
802035f4: 9d 46                        	addi	a3, zero, 7
802035f6: c2 65                        	ld	a1, 16(sp)
802035f8: 97 e0 ff ff                  	auipc	ra, 1048574
802035fc: e7 80 00 e1                  	jalr	-496(ra)
80203600: c9 aa                        	j	466
80203602: 00 00                        	unimp	

0000000080203604 .LBB7_51:
80203604: 17 26 00 00                  	auipc	a2, 2
80203608: 13 06 f6 1d                  	addi	a2, a2, 479
8020360c: 28 10                        	addi	a0, sp, 40
8020360e: d5 46                        	addi	a3, zero, 21
80203610: c2 65                        	ld	a1, 16(sp)
80203612: 97 e0 ff ff                  	auipc	ra, 1048574
80203616: e7 80 60 df                  	jalr	-522(ra)
8020361a: 09 a0                        	j	2
8020361c: 28 10                        	addi	a0, sp, 40
8020361e: 97 d0 ff ff                  	auipc	ra, 1048573
80203622: e7 80 c0 47                  	jalr	1148(ra)
80203626: a3 0f a1 00                  	sb	a0, 31(sp)
8020362a: 09 a0                        	j	2
8020362c: 65 aa                        	j	440

000000008020362e .LBB7_52:
8020362e: 17 16 00 00                  	auipc	a2, 1
80203632: 13 06 26 a0                  	addi	a2, a2, -1534
80203636: 88 00                        	addi	a0, sp, 64
80203638: c1 46                        	addi	a3, zero, 16
8020363a: c2 65                        	ld	a1, 16(sp)
8020363c: 97 e0 ff ff                  	auipc	ra, 1048574
80203640: e7 80 c0 dc                  	jalr	-564(ra)
80203644: 09 a0                        	j	2
80203646: 88 00                        	addi	a0, sp, 64
80203648: 97 d0 ff ff                  	auipc	ra, 1048573
8020364c: e7 80 20 45                  	jalr	1106(ra)
80203650: a3 0f a1 00                  	sb	a0, 31(sp)
80203654: 09 a0                        	j	2
80203656: 79 a2                        	j	398

0000000080203658 .LBB7_53:
80203658: 17 26 00 00                  	auipc	a2, 2
8020365c: 13 06 96 17                  	addi	a2, a2, 377
80203660: a8 08                        	addi	a0, sp, 88
80203662: c9 46                        	addi	a3, zero, 18
80203664: c2 65                        	ld	a1, 16(sp)
80203666: 97 e0 ff ff                  	auipc	ra, 1048574
8020366a: e7 80 20 da                  	jalr	-606(ra)
8020366e: 09 a0                        	j	2
80203670: a8 08                        	addi	a0, sp, 88
80203672: 97 d0 ff ff                  	auipc	ra, 1048573
80203676: e7 80 80 42                  	jalr	1064(ra)
8020367a: a3 0f a1 00                  	sb	a0, 31(sp)
8020367e: 09 a0                        	j	2
80203680: 95 a2                        	j	356

0000000080203682 .LBB7_54:
80203682: 17 26 00 00                  	auipc	a2, 2
80203686: 13 06 56 14                  	addi	a2, a2, 325
8020368a: 88 18                        	addi	a0, sp, 112
8020368c: a9 46                        	addi	a3, zero, 10
8020368e: c2 65                        	ld	a1, 16(sp)
80203690: 97 e0 ff ff                  	auipc	ra, 1048574
80203694: e7 80 80 d7                  	jalr	-648(ra)
80203698: 09 a0                        	j	2
8020369a: 88 18                        	addi	a0, sp, 112
8020369c: 97 d0 ff ff                  	auipc	ra, 1048573
802036a0: e7 80 e0 3f                  	jalr	1022(ra)
802036a4: a3 0f a1 00                  	sb	a0, 31(sp)
802036a8: 09 a0                        	j	2
802036aa: 2d aa                        	j	314

00000000802036ac .LBB7_55:
802036ac: 17 26 00 00                  	auipc	a2, 2
802036b0: 13 06 26 11                  	addi	a2, a2, 274
802036b4: 28 01                        	addi	a0, sp, 136
802036b6: a5 46                        	addi	a3, zero, 9
802036b8: c2 65                        	ld	a1, 16(sp)
802036ba: 97 e0 ff ff                  	auipc	ra, 1048574
802036be: e7 80 e0 d4                  	jalr	-690(ra)
802036c2: 09 a0                        	j	2
802036c4: 28 01                        	addi	a0, sp, 136
802036c6: 97 d0 ff ff                  	auipc	ra, 1048573
802036ca: e7 80 40 3d                  	jalr	980(ra)
802036ce: a3 0f a1 00                  	sb	a0, 31(sp)
802036d2: 09 a0                        	j	2
802036d4: 01 aa                        	j	272

00000000802036d6 .LBB7_56:
802036d6: 17 26 00 00                  	auipc	a2, 2
802036da: 13 06 96 0d                  	addi	a2, a2, 217
802036de: 08 11                        	addi	a0, sp, 160
802036e0: bd 46                        	addi	a3, zero, 15
802036e2: c2 65                        	ld	a1, 16(sp)
802036e4: 97 e0 ff ff                  	auipc	ra, 1048574
802036e8: e7 80 40 d2                  	jalr	-732(ra)
802036ec: 09 a0                        	j	2
802036ee: 08 11                        	addi	a0, sp, 160
802036f0: 97 d0 ff ff                  	auipc	ra, 1048573
802036f4: e7 80 a0 3a                  	jalr	938(ra)
802036f8: a3 0f a1 00                  	sb	a0, 31(sp)
802036fc: 09 a0                        	j	2
802036fe: dd a0                        	j	230

0000000080203700 .LBB7_57:
80203700: 17 26 00 00                  	auipc	a2, 2
80203704: 13 06 56 0a                  	addi	a2, a2, 165
80203708: 28 19                        	addi	a0, sp, 184
8020370a: a9 46                        	addi	a3, zero, 10
8020370c: c2 65                        	ld	a1, 16(sp)
8020370e: 97 e0 ff ff                  	auipc	ra, 1048574
80203712: e7 80 a0 cf                  	jalr	-774(ra)
80203716: 09 a0                        	j	2
80203718: 28 19                        	addi	a0, sp, 184
8020371a: 97 d0 ff ff                  	auipc	ra, 1048573
8020371e: e7 80 00 38                  	jalr	896(ra)
80203722: a3 0f a1 00                  	sb	a0, 31(sp)
80203726: 09 a0                        	j	2
80203728: 75 a8                        	j	188

000000008020372a .LBB7_58:
8020372a: 17 26 00 00                  	auipc	a2, 2
8020372e: 13 06 06 07                  	addi	a2, a2, 112
80203732: 88 09                        	addi	a0, sp, 208
80203734: ad 46                        	addi	a3, zero, 11
80203736: c2 65                        	ld	a1, 16(sp)
80203738: 97 e0 ff ff                  	auipc	ra, 1048574
8020373c: e7 80 00 cd                  	jalr	-816(ra)
80203740: 09 a0                        	j	2
80203742: 88 09                        	addi	a0, sp, 208
80203744: 97 d0 ff ff                  	auipc	ra, 1048573
80203748: e7 80 60 35                  	jalr	854(ra)
8020374c: a3 0f a1 00                  	sb	a0, 31(sp)
80203750: 09 a0                        	j	2
80203752: 49 a8                        	j	146

0000000080203754 .LBB7_59:
80203754: 17 26 00 00                  	auipc	a2, 2
80203758: 13 06 26 03                  	addi	a2, a2, 50
8020375c: a8 11                        	addi	a0, sp, 232
8020375e: d1 46                        	addi	a3, zero, 20
80203760: c2 65                        	ld	a1, 16(sp)
80203762: 97 e0 ff ff                  	auipc	ra, 1048574
80203766: e7 80 60 ca                  	jalr	-858(ra)
8020376a: 09 a0                        	j	2
8020376c: a8 11                        	addi	a0, sp, 232
8020376e: 97 d0 ff ff                  	auipc	ra, 1048573
80203772: e7 80 c0 32                  	jalr	812(ra)
80203776: a3 0f a1 00                  	sb	a0, 31(sp)
8020377a: 09 a0                        	j	2
8020377c: a5 a0                        	j	104

000000008020377e .LBB7_60:
8020377e: 17 26 00 00                  	auipc	a2, 2
80203782: 13 06 b6 ff                  	addi	a2, a2, -5
80203786: 08 02                        	addi	a0, sp, 256
80203788: b5 46                        	addi	a3, zero, 13
8020378a: c2 65                        	ld	a1, 16(sp)
8020378c: 97 e0 ff ff                  	auipc	ra, 1048574
80203790: e7 80 c0 c7                  	jalr	-900(ra)
80203794: 09 a0                        	j	2
80203796: 08 02                        	addi	a0, sp, 256
80203798: 97 d0 ff ff                  	auipc	ra, 1048573
8020379c: e7 80 20 30                  	jalr	770(ra)
802037a0: a3 0f a1 00                  	sb	a0, 31(sp)
802037a4: 09 a0                        	j	2
802037a6: 3d a8                        	j	62

00000000802037a8 .LBB7_61:
802037a8: 17 26 00 00                  	auipc	a2, 2
802037ac: 13 06 36 fc                  	addi	a2, a2, -61
802037b0: 28 0a                        	addi	a0, sp, 280
802037b2: b9 46                        	addi	a3, zero, 14
802037b4: c2 65                        	ld	a1, 16(sp)
802037b6: 97 e0 ff ff                  	auipc	ra, 1048574
802037ba: e7 80 20 c5                  	jalr	-942(ra)
802037be: 09 a0                        	j	2
802037c0: 28 0a                        	addi	a0, sp, 280
802037c2: 97 d0 ff ff                  	auipc	ra, 1048573
802037c6: e7 80 80 2d                  	jalr	728(ra)
802037ca: a3 0f a1 00                  	sb	a0, 31(sp)
802037ce: 09 a0                        	j	2
802037d0: 11 a8                        	j	20
802037d2: 08 1a                        	addi	a0, sp, 304
802037d4: 97 d0 ff ff                  	auipc	ra, 1048573
802037d8: e7 80 60 2c                  	jalr	710(ra)
802037dc: a3 0f a1 00                  	sb	a0, 31(sp)
802037e0: 09 a0                        	j	2
802037e2: 09 a0                        	j	2
802037e4: 03 45 f1 01                  	lbu	a0, 31(sp)
802037e8: f6 60                        	ld	ra, 344(sp)
802037ea: 35 61                        	addi	sp, sp, 352
802037ec: 82 80                        	ret

00000000802037ee _ZN5riscv8register7sstatus4_set17he98db55626c770ebE:
802037ee: 41 11                        	addi	sp, sp, -16
802037f0: 2a e4                        	sd	a0, 8(sp)
802037f2: 73 20 05 10                  	csrs	sstatus, a0
802037f6: 41 01                        	addi	sp, sp, 16
802037f8: 82 80                        	ret

00000000802037fa _ZN5riscv8register7sstatus7set_sie17h5cca5e0cd0731c68E:
802037fa: 41 11                        	addi	sp, sp, -16
802037fc: 06 e4                        	sd	ra, 8(sp)
802037fe: 09 45                        	addi	a0, zero, 2
80203800: 97 00 00 00                  	auipc	ra, 0
80203804: e7 80 e0 fe                  	jalr	-18(ra)
80203808: 09 a0                        	j	2
8020380a: a2 60                        	ld	ra, 8(sp)
8020380c: 41 01                        	addi	sp, sp, 16
8020380e: 82 80                        	ret

0000000080203810 _ZN5riscv8register8sscratch5write17he601096111577ed2E:
80203810: 41 11                        	addi	sp, sp, -16
80203812: 06 e4                        	sd	ra, 8(sp)
80203814: 2a e0                        	sd	a0, 0(sp)
80203816: 97 00 00 00                  	auipc	ra, 0
8020381a: e7 80 00 01                  	jalr	16(ra)
8020381e: 09 a0                        	j	2
80203820: a2 60                        	ld	ra, 8(sp)
80203822: 41 01                        	addi	sp, sp, 16
80203824: 82 80                        	ret

0000000080203826 _ZN5riscv8register8sscratch6_write17hfc0939d9191612feE:
80203826: 41 11                        	addi	sp, sp, -16
80203828: 2a e4                        	sd	a0, 8(sp)
8020382a: 73 10 05 14                  	csrw	sscratch, a0
8020382e: 41 01                        	addi	sp, sp, 16
80203830: 82 80                        	ret
		...
80203ffe: 00 00                        	unimp	
