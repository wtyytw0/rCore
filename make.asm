rust-objdump --arch-name=riscv64 -d target/riscv64imac-unknown-none-elf/debug/os | less

target/riscv64imac-unknown-none-elf/debug/os:	file format ELF64-riscv


Disassembly of section .text:

0000000080200000 stext:
80200000: 17 91 00 00                  	auipc	sp, 9
80200004: 13 01 01 00                  	mv	sp, sp
80200008: 97 00 00 00                  	auipc	ra, 0
8020000c: e7 80 80 00                  	jalr	8(ra)

0000000080200010 rust_main:
80200010: 41 11                        	addi	sp, sp, -16
80200012: 06 e4                        	sd	ra, 8(sp)
80200014: 97 20 00 00                  	auipc	ra, 2
80200018: e7 80 40 da                  	jalr	-604(ra)
8020001c: 09 a0                        	j	2
8020001e: 97 00 00 00                  	auipc	ra, 0
80200022: e7 80 c0 02                  	jalr	44(ra)
80200026: 09 a0                        	j	2
80200028: 73 00 20 30                  	mret	
8020002c: 02 90                        	ebreak	

000000008020002e .LBB0_3:
8020002e: 17 35 00 00                  	auipc	a0, 3
80200032: 13 05 25 fe                  	addi	a0, a0, -30

0000000080200036 .LBB0_4:
80200036: 17 36 00 00                  	auipc	a2, 3
8020003a: 13 06 a6 ff                  	addi	a2, a2, -6
8020003e: c1 45                        	addi	a1, zero, 16
80200040: 97 00 00 00                  	auipc	ra, 0
80200044: e7 80 00 4c                  	jalr	1216(ra)
80200048: 00 00                        	unimp	

000000008020004a _ZN2os5timer4init17h14217b32d9eb11eaE:
8020004a: 71 71                        	addi	sp, sp, -176
8020004c: 06 f5                        	sd	ra, 168(sp)

000000008020004e .LBB0_7:
8020004e: 17 95 00 00                  	auipc	a0, 9
80200052: 13 05 25 fb                  	addi	a0, a0, -78
80200056: 81 45                        	mv	a1, zero
80200058: 0c e1                        	sd	a1, 0(a0)
8020005a: 97 20 00 00                  	auipc	ra, 2
8020005e: e7 80 e0 c4                  	jalr	-946(ra)
80200062: 09 a0                        	j	2
80200064: 97 00 00 00                  	auipc	ra, 0
80200068: e7 80 00 09                  	jalr	144(ra)
8020006c: 09 a0                        	j	2

000000008020006e .LBB0_8:
8020006e: 17 35 00 00                  	auipc	a0, 3
80200072: 13 05 25 00                  	addi	a0, a0, 2
80200076: 0c 61                        	ld	a1, 0(a0)

0000000080200078 .LBB0_9:
80200078: 17 35 00 00                  	auipc	a0, 3
8020007c: 13 05 85 02                  	addi	a0, a0, 40
80200080: 08 61                        	ld	a0, 0(a0)

0000000080200082 .LBB0_10:
80200082: 17 36 00 00                  	auipc	a2, 3
80200086: 13 06 66 02                  	addi	a2, a2, 38
8020008a: 14 62                        	ld	a3, 0(a2)
8020008c: 90 18                        	addi	a2, sp, 112
8020008e: 05 47                        	addi	a4, zero, 1
80200090: 81 47                        	mv	a5, zero
80200092: 2a f0                        	sd	a0, 32(sp)
80200094: 32 85                        	add	a0, zero, a2
80200096: 02 76                        	ld	a2, 32(sp)
80200098: 2e ec                        	sd	a1, 24(sp)
8020009a: b2 85                        	add	a1, zero, a2
8020009c: 3a 86                        	add	a2, zero, a4
8020009e: 3e 87                        	add	a4, zero, a5
802000a0: 97 10 00 00                  	auipc	ra, 1
802000a4: e7 80 e0 12                  	jalr	302(ra)
802000a8: 09 a0                        	j	2
802000aa: 88 18                        	addi	a0, sp, 112
802000ac: aa f4                        	sd	a0, 104(sp)
802000ae: 2a f1                        	sd	a0, 160(sp)

00000000802000b0 .LBB0_11:
802000b0: 97 05 00 00                  	auipc	a1, 0
802000b4: 93 85 45 4e                  	addi	a1, a1, 1252
802000b8: 97 10 00 00                  	auipc	ra, 1
802000bc: e7 80 80 0b                  	jalr	184(ra)
802000c0: 2a e8                        	sd	a0, 16(sp)
802000c2: 2e e4                        	sd	a1, 8(sp)
802000c4: 09 a0                        	j	2
802000c6: 42 65                        	ld	a0, 16(sp)
802000c8: aa ec                        	sd	a0, 88(sp)
802000ca: a2 65                        	ld	a1, 8(sp)
802000cc: ae f0                        	sd	a1, 96(sp)
802000ce: 28 10                        	addi	a0, sp, 40
802000d0: 09 46                        	addi	a2, zero, 2
802000d2: b4 08                        	addi	a3, sp, 88
802000d4: 05 47                        	addi	a4, zero, 1
802000d6: e2 65                        	ld	a1, 24(sp)
802000d8: 97 10 00 00                  	auipc	ra, 1
802000dc: e7 80 60 0f                  	jalr	246(ra)
802000e0: 09 a0                        	j	2
802000e2: 28 10                        	addi	a0, sp, 40
802000e4: 97 00 00 00                  	auipc	ra, 0
802000e8: e7 80 00 13                  	jalr	304(ra)
802000ec: 09 a0                        	j	2
802000ee: aa 70                        	ld	ra, 168(sp)
802000f0: 4d 61                        	addi	sp, sp, 176
802000f2: 82 80                        	ret

00000000802000f4 _ZN2os5timer20clock_set_next_event17h49dffac111a1564eE:
802000f4: 01 11                        	addi	sp, sp, -32
802000f6: 06 ec                        	sd	ra, 24(sp)
802000f8: 97 00 00 00                  	auipc	ra, 0
802000fc: e7 80 c0 04                  	jalr	76(ra)
80200100: 2a e8                        	sd	a0, 16(sp)
80200102: 09 a0                        	j	2
80200104: 61 65                        	lui	a0, 24
80200106: 1b 05 05 6a                  	addiw	a0, a0, 1696
8020010a: c2 65                        	ld	a1, 16(sp)
8020010c: 2e 95                        	add	a0, a0, a1
8020010e: 2a e4                        	sd	a0, 8(sp)
80200110: 63 6c b5 00                  	bltu	a0, a1, 24
80200114: 09 a0                        	j	2
80200116: 22 65                        	ld	a0, 8(sp)
80200118: 97 00 00 00                  	auipc	ra, 0
8020011c: e7 80 40 16                  	jalr	356(ra)
80200120: 09 a0                        	j	2
80200122: e2 60                        	ld	ra, 24(sp)
80200124: 05 61                        	addi	sp, sp, 32
80200126: 82 80                        	ret

0000000080200128 .LBB1_5:
80200128: 17 35 00 00                  	auipc	a0, 3
8020012c: 13 05 85 fb                  	addi	a0, a0, -72

0000000080200130 .LBB1_6:
80200130: 17 36 00 00                  	auipc	a2, 3
80200134: 13 06 06 f9                  	addi	a2, a2, -112
80200138: f1 45                        	addi	a1, zero, 28
8020013a: 97 00 00 00                  	auipc	ra, 0
8020013e: e7 80 60 3c                  	jalr	966(ra)
80200142: 00 00                        	unimp	

0000000080200144 _ZN2os5timer9get_cycle17h33445f1a39d64206E:
80200144: 41 11                        	addi	sp, sp, -16
80200146: 06 e4                        	sd	ra, 8(sp)
80200148: 97 20 00 00                  	auipc	ra, 2
8020014c: e7 80 40 b8                  	jalr	-1148(ra)
80200150: 2a e0                        	sd	a0, 0(sp)
80200152: 09 a0                        	j	2
80200154: 02 65                        	ld	a0, 0(sp)
80200156: a2 60                        	ld	ra, 8(sp)
80200158: 41 01                        	addi	sp, sp, 16
8020015a: 82 80                        	ret

000000008020015c _ZN2os2io7putchar17hc250dea37310c406E:
8020015c: 01 11                        	addi	sp, sp, -32
8020015e: 06 ec                        	sd	ra, 24(sp)
80200160: aa 85                        	add	a1, zero, a0
80200162: 2a ca                        	sw	a0, 20(sp)
80200164: 13 75 f5 0f                  	andi	a0, a0, 255
80200168: 2e e4                        	sd	a1, 8(sp)
8020016a: 97 00 00 00                  	auipc	ra, 0
8020016e: e7 80 00 0f                  	jalr	240(ra)
80200172: 09 a0                        	j	2
80200174: e2 60                        	ld	ra, 24(sp)
80200176: 05 61                        	addi	sp, sp, 32
80200178: 82 80                        	ret

000000008020017a _ZN2os2io4puts17h56a15a13239ae282E:
8020017a: 1d 71                        	addi	sp, sp, -96
8020017c: 86 ec                        	sd	ra, 88(sp)
8020017e: 2a fc                        	sd	a0, 56(sp)
80200180: ae e0                        	sd	a1, 64(sp)
80200182: 97 10 00 00                  	auipc	ra, 1
80200186: e7 80 80 3c                  	jalr	968(ra)
8020018a: 2a ec                        	sd	a0, 24(sp)
8020018c: 2e e8                        	sd	a1, 16(sp)
8020018e: 09 a0                        	j	2
80200190: 62 65                        	ld	a0, 24(sp)
80200192: c2 65                        	ld	a1, 16(sp)
80200194: 97 10 00 00                  	auipc	ra, 1
80200198: e7 80 20 5a                  	jalr	1442(ra)
8020019c: 2a e4                        	sd	a0, 8(sp)
8020019e: 2e e0                        	sd	a1, 0(sp)
802001a0: 09 a0                        	j	2
802001a2: 22 65                        	ld	a0, 8(sp)
802001a4: 2a f0                        	sd	a0, 32(sp)
802001a6: 82 65                        	ld	a1, 0(sp)
802001a8: 2e f4                        	sd	a1, 40(sp)
802001aa: 09 a0                        	j	2
802001ac: 08 10                        	addi	a0, sp, 32
802001ae: 97 10 00 00                  	auipc	ra, 1
802001b2: e7 80 c0 3d                  	jalr	988(ra)
802001b6: 02 15                        	slli	a0, a0, 32
802001b8: 01 91                        	srli	a0, a0, 32
802001ba: 2a da                        	sw	a0, 52(sp)
802001bc: 09 a0                        	j	2
802001be: 52 55                        	lw	a0, 52(sp)
802001c0: b7 05 ef ff                  	lui	a1, 1048304
802001c4: 2e 95                        	add	a0, a0, a1
802001c6: 02 15                        	slli	a0, a0, 32
802001c8: 01 91                        	srli	a0, a0, 32
802001ca: b3 35 a0 00                  	snez	a1, a0
802001ce: 01 46                        	mv	a2, zero
802001d0: 63 04 c5 00                  	beq	a0, a2, 8
802001d4: 09 a0                        	j	2
802001d6: 29 a0                        	j	10
802001d8: e6 60                        	ld	ra, 88(sp)
802001da: 25 61                        	addi	sp, sp, 96
802001dc: 82 80                        	ret
802001de: 00 00                        	unimp	
802001e0: 52 55                        	lw	a0, 52(sp)
802001e2: aa c6                        	sw	a0, 76(sp)
802001e4: aa c8                        	sw	a0, 80(sp)
802001e6: aa ca                        	sw	a0, 84(sp)
802001e8: 97 00 00 00                  	auipc	ra, 0
802001ec: e7 80 40 f7                  	jalr	-140(ra)
802001f0: 09 a0                        	j	2
802001f2: 6d bf                        	j	-70

00000000802001f4 _ZN51_$LT$os..io..Stdout$u20$as$u20$core..fmt..Write$GT$9write_str17h3767b8e74ab318f3E:
802001f4: 01 11                        	addi	sp, sp, -32
802001f6: 06 ec                        	sd	ra, 24(sp)
802001f8: 2a e0                        	sd	a0, 0(sp)
802001fa: 2e e4                        	sd	a1, 8(sp)
802001fc: 32 e8                        	sd	a2, 16(sp)
802001fe: 2e 85                        	add	a0, zero, a1
80200200: b2 85                        	add	a1, zero, a2
80200202: 97 00 00 00                  	auipc	ra, 0
80200206: e7 80 80 f7                  	jalr	-136(ra)
8020020a: 09 a0                        	j	2
8020020c: 01 45                        	mv	a0, zero
8020020e: e2 60                        	ld	ra, 24(sp)
80200210: 05 61                        	addi	sp, sp, 32
80200212: 82 80                        	ret

0000000080200214 _ZN2os2io6_print17ha05267e260bbed65E:
80200214: 5d 71                        	addi	sp, sp, -80
80200216: 86 e4                        	sd	ra, 72(sp)
80200218: 0c 75                        	ld	a1, 40(a0)
8020021a: ae e0                        	sd	a1, 64(sp)
8020021c: 0c 71                        	ld	a1, 32(a0)
8020021e: 2e fc                        	sd	a1, 56(sp)
80200220: 0c 6d                        	ld	a1, 24(a0)
80200222: 2e f8                        	sd	a1, 48(sp)
80200224: 0c 69                        	ld	a1, 16(a0)
80200226: 2e f4                        	sd	a1, 40(sp)
80200228: 0c 65                        	ld	a1, 8(a0)
8020022a: 2e f0                        	sd	a1, 32(sp)
8020022c: 08 61                        	ld	a0, 0(a0)
8020022e: 2a ec                        	sd	a0, 24(sp)
80200230: 08 08                        	addi	a0, sp, 16
80200232: 2c 08                        	addi	a1, sp, 24
80200234: 97 00 00 00                  	auipc	ra, 0
80200238: e7 80 c0 0a                  	jalr	172(ra)
8020023c: 2a e4                        	sd	a0, 8(sp)
8020023e: 09 a0                        	j	2

0000000080200240 .LBB3_3:
80200240: 97 35 00 00                  	auipc	a1, 3
80200244: 93 85 85 ec                  	addi	a1, a1, -312
80200248: 22 65                        	ld	a0, 8(sp)
8020024a: 97 20 00 00                  	auipc	ra, 2
8020024e: e7 80 20 a2                  	jalr	-1502(ra)
80200252: 09 a0                        	j	2
80200254: a6 60                        	ld	ra, 72(sp)
80200256: 61 61                        	addi	sp, sp, 80
80200258: 82 80                        	ret

000000008020025a _ZN2os3sbi15console_putchar17he947ea5d70e1b4ceE:
8020025a: 39 71                        	addi	sp, sp, -64
8020025c: 2a e8                        	sd	a0, 16(sp)
8020025e: 85 45                        	addi	a1, zero, 1
80200260: 2e f0                        	sd	a1, 32(sp)
80200262: 2a f4                        	sd	a0, 40(sp)
80200264: 01 46                        	mv	a2, zero
80200266: 32 f8                        	sd	a2, 48(sp)
80200268: 32 fc                        	sd	a2, 56(sp)
8020026a: 2e e4                        	sd	a1, 8(sp)
8020026c: b2 85                        	add	a1, zero, a2
8020026e: a2 68                        	ld	a7, 8(sp)
80200270: 73 00 00 00                  	ecall	
80200274: 2a ec                        	sd	a0, 24(sp)
80200276: 09 a0                        	j	2
80200278: 21 61                        	addi	sp, sp, 64
8020027a: 82 80                        	ret

000000008020027c _ZN2os3sbi9set_timer17h6b8d44c9a6a01000E:
8020027c: 39 71                        	addi	sp, sp, -64
8020027e: 2a e8                        	sd	a0, 16(sp)
80200280: 81 45                        	mv	a1, zero
80200282: 2e f0                        	sd	a1, 32(sp)
80200284: 2a f4                        	sd	a0, 40(sp)
80200286: 2e f8                        	sd	a1, 48(sp)
80200288: 2e fc                        	sd	a1, 56(sp)
8020028a: 2e e4                        	sd	a1, 8(sp)
8020028c: 22 66                        	ld	a2, 8(sp)
8020028e: a2 68                        	ld	a7, 8(sp)
80200290: 73 00 00 00                  	ecall	
80200294: 2a ec                        	sd	a0, 24(sp)
80200296: 09 a0                        	j	2
80200298: 21 61                        	addi	sp, sp, 64
8020029a: 82 80                        	ret

000000008020029c _ZN4core3fmt5Write10write_char17h7e89a5f48cfb2101E:
8020029c: 5d 71                        	addi	sp, sp, -80
8020029e: 86 e4                        	sd	ra, 72(sp)
802002a0: 2e 86                        	add	a2, zero, a1
802002a2: 2a fc                        	sd	a0, 56(sp)
802002a4: ae c2                        	sw	a1, 68(sp)
802002a6: 81 46                        	mv	a3, zero
802002a8: 36 da                        	sw	a3, 52(sp)
802002aa: 54 18                        	addi	a3, sp, 52
802002ac: 11 47                        	addi	a4, zero, 4
802002ae: 2a f4                        	sd	a0, 40(sp)
802002b0: 2e 85                        	add	a0, zero, a1
802002b2: b6 85                        	add	a1, zero, a3
802002b4: 32 f0                        	sd	a2, 32(sp)
802002b6: 3a 86                        	add	a2, zero, a4
802002b8: 97 10 00 00                  	auipc	ra, 1
802002bc: e7 80 e0 19                  	jalr	414(ra)
802002c0: 2a ec                        	sd	a0, 24(sp)
802002c2: 2e e8                        	sd	a1, 16(sp)
802002c4: 09 a0                        	j	2
802002c6: 22 75                        	ld	a0, 40(sp)
802002c8: e2 65                        	ld	a1, 24(sp)
802002ca: 42 66                        	ld	a2, 16(sp)
802002cc: 97 00 00 00                  	auipc	ra, 0
802002d0: e7 80 80 f2                  	jalr	-216(ra)
802002d4: 2a e4                        	sd	a0, 8(sp)
802002d6: 09 a0                        	j	2
802002d8: 22 65                        	ld	a0, 8(sp)
802002da: a6 60                        	ld	ra, 72(sp)
802002dc: 61 61                        	addi	sp, sp, 80
802002de: 82 80                        	ret

00000000802002e0 _ZN4core3fmt5Write9write_fmt17h6b72c10f2e801d0fE:
802002e0: 5d 71                        	addi	sp, sp, -80
802002e2: 86 e4                        	sd	ra, 72(sp)
802002e4: 2a e8                        	sd	a0, 16(sp)
802002e6: 88 61                        	ld	a0, 0(a1)
802002e8: 2a ec                        	sd	a0, 24(sp)
802002ea: 88 65                        	ld	a0, 8(a1)
802002ec: 2a f0                        	sd	a0, 32(sp)
802002ee: 88 69                        	ld	a0, 16(a1)
802002f0: 2a f4                        	sd	a0, 40(sp)
802002f2: 88 6d                        	ld	a0, 24(a1)
802002f4: 2a f8                        	sd	a0, 48(sp)
802002f6: 88 71                        	ld	a0, 32(a1)
802002f8: 2a fc                        	sd	a0, 56(sp)
802002fa: 88 75                        	ld	a0, 40(a1)
802002fc: aa e0                        	sd	a0, 64(sp)

00000000802002fe .LBB1_2:
802002fe: 97 35 00 00                  	auipc	a1, 3
80200302: 93 85 25 e2                  	addi	a1, a1, -478
80200306: 08 08                        	addi	a0, sp, 16
80200308: 30 08                        	addi	a2, sp, 24
8020030a: 97 00 00 00                  	auipc	ra, 0
8020030e: e7 80 c0 2b                  	jalr	700(ra)
80200312: 2a e4                        	sd	a0, 8(sp)
80200314: 09 a0                        	j	2
80200316: 22 65                        	ld	a0, 8(sp)
80200318: a6 60                        	ld	ra, 72(sp)
8020031a: 61 61                        	addi	sp, sp, 80
8020031c: 82 80                        	ret

000000008020031e _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h911d16ad7cd0f99dE:
8020031e: 79 71                        	addi	sp, sp, -48
80200320: 06 f4                        	sd	ra, 40(sp)
80200322: 2e 86                        	add	a2, zero, a1
80200324: 2a ec                        	sd	a0, 24(sp)
80200326: 2e d2                        	sw	a1, 36(sp)
80200328: 08 61                        	ld	a0, 0(a0)
8020032a: 32 e8                        	sd	a2, 16(sp)
8020032c: 97 00 00 00                  	auipc	ra, 0
80200330: e7 80 00 f7                  	jalr	-144(ra)
80200334: 2a e4                        	sd	a0, 8(sp)
80200336: 09 a0                        	j	2
80200338: 22 65                        	ld	a0, 8(sp)
8020033a: a2 70                        	ld	ra, 40(sp)
8020033c: 45 61                        	addi	sp, sp, 48
8020033e: 82 80                        	ret

0000000080200340 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h167a188a9a178deeE:
80200340: 5d 71                        	addi	sp, sp, -80
80200342: 86 e4                        	sd	ra, 72(sp)
80200344: aa e0                        	sd	a0, 64(sp)
80200346: 08 61                        	ld	a0, 0(a0)
80200348: 90 75                        	ld	a2, 40(a1)
8020034a: 32 fc                        	sd	a2, 56(sp)
8020034c: 90 71                        	ld	a2, 32(a1)
8020034e: 32 f8                        	sd	a2, 48(sp)
80200350: 90 6d                        	ld	a2, 24(a1)
80200352: 32 f4                        	sd	a2, 40(sp)
80200354: 90 69                        	ld	a2, 16(a1)
80200356: 32 f0                        	sd	a2, 32(sp)
80200358: 90 65                        	ld	a2, 8(a1)
8020035a: 32 ec                        	sd	a2, 24(sp)
8020035c: 8c 61                        	ld	a1, 0(a1)
8020035e: 2e e8                        	sd	a1, 16(sp)
80200360: 0c 08                        	addi	a1, sp, 16
80200362: 97 00 00 00                  	auipc	ra, 0
80200366: e7 80 e0 f7                  	jalr	-130(ra)
8020036a: 2a e4                        	sd	a0, 8(sp)
8020036c: 09 a0                        	j	2
8020036e: 22 65                        	ld	a0, 8(sp)
80200370: a6 60                        	ld	ra, 72(sp)
80200372: 61 61                        	addi	sp, sp, 80
80200374: 82 80                        	ret

0000000080200376 _ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h30f3f1171d719fd3E:
80200376: 79 71                        	addi	sp, sp, -48
80200378: 06 f4                        	sd	ra, 40(sp)
8020037a: 2a e8                        	sd	a0, 16(sp)
8020037c: 2e ec                        	sd	a1, 24(sp)
8020037e: 32 f0                        	sd	a2, 32(sp)
80200380: 08 61                        	ld	a0, 0(a0)
80200382: 97 00 00 00                  	auipc	ra, 0
80200386: e7 80 20 e7                  	jalr	-398(ra)
8020038a: 2a e4                        	sd	a0, 8(sp)
8020038c: 09 a0                        	j	2
8020038e: 22 65                        	ld	a0, 8(sp)
80200390: a2 70                        	ld	ra, 40(sp)
80200392: 45 61                        	addi	sp, sp, 48
80200394: 82 80                        	ret

0000000080200396 _ZN4core3ops8function6FnOnce9call_once17h18f451d4e9740791E:
80200396: 08 61                        	ld	a0, 0(a0)
80200398: 01 a0                        	j	0

000000008020039a _ZN4core3ptr13drop_in_place17h00027e84e2978af7E:
8020039a: 82 80                        	ret

000000008020039c _ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17hc8534dacc0949383E:
8020039c: 37 85 a7 fa                  	lui	a0, 1026680
802003a0: 1b 05 d5 32                  	addiw	a0, a0, 813
802003a4: 32 05                        	slli	a0, a0, 12
802003a6: 13 05 d5 5b                  	addi	a0, a0, 1469
802003aa: 32 05                        	slli	a0, a0, 12
802003ac: 13 05 b5 58                  	addi	a0, a0, 1419
802003b0: 32 05                        	slli	a0, a0, 12
802003b2: 13 05 b5 48                  	addi	a0, a0, 1163
802003b6: 82 80                        	ret

00000000802003b8 _ZN4core6result13unwrap_failed17hfee963a945caf0a4E:
802003b8: 19 71                        	addi	sp, sp, -128
802003ba: 86 fc                        	sd	ra, 120(sp)
802003bc: 2a e4                        	sd	a0, 8(sp)
802003be: 2e e8                        	sd	a1, 16(sp)
802003c0: 32 ec                        	sd	a2, 24(sp)
802003c2: 36 f0                        	sd	a3, 32(sp)
802003c4: 28 00                        	addi	a0, sp, 8
802003c6: aa ec                        	sd	a0, 88(sp)

00000000802003c8 .LBB117_1:
802003c8: 17 15 00 00                  	auipc	a0, 1
802003cc: 13 05 a5 c0                  	addi	a0, a0, -1014
802003d0: aa f0                        	sd	a0, 96(sp)
802003d2: 28 08                        	addi	a0, sp, 24
802003d4: aa f4                        	sd	a0, 104(sp)

00000000802003d6 .LBB117_2:
802003d6: 17 15 00 00                  	auipc	a0, 1
802003da: 13 05 45 bf                  	addi	a0, a0, -1036
802003de: aa f8                        	sd	a0, 112(sp)

00000000802003e0 .LBB117_3:
802003e0: 17 35 00 00                  	auipc	a0, 3
802003e4: 13 05 85 d9                  	addi	a0, a0, -616
802003e8: 2a f4                        	sd	a0, 40(sp)
802003ea: 09 45                        	addi	a0, zero, 2
802003ec: 2a f8                        	sd	a0, 48(sp)
802003ee: 02 fc                        	sd	zero, 56(sp)
802003f0: ac 08                        	addi	a1, sp, 88
802003f2: ae e4                        	sd	a1, 72(sp)
802003f4: aa e8                        	sd	a0, 80(sp)
802003f6: 28 10                        	addi	a0, sp, 40
802003f8: ba 85                        	add	a1, zero, a4
802003fa: 97 00 00 00                  	auipc	ra, 0
802003fe: e7 80 20 17                  	jalr	370(ra)
80200402: 00 00                        	unimp	

0000000080200404 _ZN61_$LT$core..panic..PanicInfo$u20$as$u20$core..fmt..Display$GT$3fmt17ha4bdc962d9fdaa65E:
80200404: 75 71                        	addi	sp, sp, -144
80200406: 06 e5                        	sd	ra, 136(sp)
80200408: 22 e1                        	sd	s0, 128(sp)
8020040a: a6 fc                        	sd	s1, 120(sp)
8020040c: ca f8                        	sd	s2, 112(sp)
8020040e: 2e 84                        	add	s0, zero, a1
80200410: 8c 75                        	ld	a1, 40(a1)
80200412: 14 70                        	ld	a3, 32(s0)
80200414: 98 6d                        	ld	a4, 24(a1)
80200416: 2a 89                        	add	s2, zero, a0

0000000080200418 .LBB121_8:
80200418: 97 35 00 00                  	auipc	a1, 3
8020041c: 93 85 05 da                  	addi	a1, a1, -608
80200420: 31 46                        	addi	a2, zero, 12
80200422: 36 85                        	add	a0, zero, a3
80200424: 02 97                        	jalr	a4
80200426: 85 44                        	addi	s1, zero, 1
80200428: 69 e5                        	bnez	a0, 202
8020042a: 03 35 09 01                  	ld	a0, 16(s2)
8020042e: 09 c9                        	beqz	a0, 18
80200430: 2a e4                        	sd	a0, 8(sp)
80200432: 28 00                        	addi	a0, sp, 8
80200434: 2a e8                        	sd	a0, 16(sp)

0000000080200436 .LBB121_9:
80200436: 17 15 00 00                  	auipc	a0, 1
8020043a: 13 05 c5 ba                  	addi	a0, a0, -1108
8020043e: 35 a8                        	j	60
80200440: 03 35 89 00                  	ld	a0, 8(s2)
80200444: 83 34 09 00                  	ld	s1, 0(s2)
80200448: 0c 6d                        	ld	a1, 24(a0)
8020044a: 26 85                        	add	a0, zero, s1
8020044c: 82 95                        	jalr	a1
8020044e: b7 f5 7e 00                  	lui	a1, 2031
80200452: 9b 85 95 2a                  	addiw	a1, a1, 681
80200456: ba 05                        	slli	a1, a1, 14
80200458: 93 85 b5 7b                  	addi	a1, a1, 1979
8020045c: b2 05                        	slli	a1, a1, 12
8020045e: 93 85 f5 31                  	addi	a1, a1, 799
80200462: ba 05                        	slli	a1, a1, 14
80200464: 93 85 45 cf                  	addi	a1, a1, -780
80200468: 63 1e b5 02                  	bne	a0, a1, 60
8020046c: 26 e4                        	sd	s1, 8(sp)
8020046e: 28 00                        	addi	a0, sp, 8
80200470: 2a e8                        	sd	a0, 16(sp)

0000000080200472 .LBB121_10:
80200472: 17 15 00 00                  	auipc	a0, 1
80200476: 13 05 25 ba                  	addi	a0, a0, -1118
8020047a: 2a ec                        	sd	a0, 24(sp)
8020047c: 08 70                        	ld	a0, 32(s0)
8020047e: 0c 74                        	ld	a1, 40(s0)

0000000080200480 .LBB121_11:
80200480: 17 36 00 00                  	auipc	a2, 3
80200484: 13 06 86 d4                  	addi	a2, a2, -696
80200488: b2 e0                        	sd	a2, 64(sp)
8020048a: 09 46                        	addi	a2, zero, 2
8020048c: b2 e4                        	sd	a2, 72(sp)
8020048e: 82 e8                        	sd	zero, 80(sp)
80200490: 10 08                        	addi	a2, sp, 16
80200492: b2 f0                        	sd	a2, 96(sp)
80200494: 85 44                        	addi	s1, zero, 1
80200496: a6 f4                        	sd	s1, 104(sp)
80200498: 90 00                        	addi	a2, sp, 64
8020049a: 97 00 00 00                  	auipc	ra, 0
8020049e: e7 80 c0 12                  	jalr	300(ra)
802004a2: 21 e9                        	bnez	a0, 80
802004a4: 03 35 89 01                  	ld	a0, 24(s2)
802004a8: 93 05 05 01                  	addi	a1, a0, 16
802004ac: 13 06 45 01                  	addi	a2, a0, 20
802004b0: 2a e8                        	sd	a0, 16(sp)

00000000802004b2 .LBB121_12:
802004b2: 17 15 00 00                  	auipc	a0, 1
802004b6: 13 05 05 b2                  	addi	a0, a0, -1248
802004ba: 2a ec                        	sd	a0, 24(sp)
802004bc: 2e f0                        	sd	a1, 32(sp)

00000000802004be .LBB121_13:
802004be: 17 15 00 00                  	auipc	a0, 1
802004c2: 13 05 c5 ad                  	addi	a0, a0, -1316
802004c6: 2a f4                        	sd	a0, 40(sp)
802004c8: 32 f8                        	sd	a2, 48(sp)
802004ca: 2a fc                        	sd	a0, 56(sp)
802004cc: 08 70                        	ld	a0, 32(s0)
802004ce: 0c 74                        	ld	a1, 40(s0)

00000000802004d0 .LBB121_14:
802004d0: 17 36 00 00                  	auipc	a2, 3
802004d4: 13 06 06 d2                  	addi	a2, a2, -736
802004d8: b2 e0                        	sd	a2, 64(sp)
802004da: 0d 46                        	addi	a2, zero, 3
802004dc: b2 e4                        	sd	a2, 72(sp)
802004de: 82 e8                        	sd	zero, 80(sp)
802004e0: 14 08                        	addi	a3, sp, 16
802004e2: b6 f0                        	sd	a3, 96(sp)
802004e4: b2 f4                        	sd	a2, 104(sp)
802004e6: 90 00                        	addi	a2, sp, 64
802004e8: 97 00 00 00                  	auipc	ra, 0
802004ec: e7 80 e0 0d                  	jalr	222(ra)
802004f0: aa 84                        	add	s1, zero, a0
802004f2: 26 85                        	add	a0, zero, s1
802004f4: 46 79                        	ld	s2, 112(sp)
802004f6: e6 74                        	ld	s1, 120(sp)
802004f8: 0a 64                        	ld	s0, 128(sp)
802004fa: aa 60                        	ld	ra, 136(sp)
802004fc: 49 61                        	addi	sp, sp, 144
802004fe: 82 80                        	ret

0000000080200500 _ZN4core9panicking5panic17hada9984cc1d6f2faE:
80200500: 5d 71                        	addi	sp, sp, -80
80200502: 86 e4                        	sd	ra, 72(sp)
80200504: 2a fc                        	sd	a0, 56(sp)
80200506: ae e0                        	sd	a1, 64(sp)
80200508: 28 18                        	addi	a0, sp, 56
8020050a: 2a e4                        	sd	a0, 8(sp)
8020050c: 05 45                        	addi	a0, zero, 1
8020050e: 2a e8                        	sd	a0, 16(sp)
80200510: 02 ec                        	sd	zero, 24(sp)

0000000080200512 .LBB128_1:
80200512: 17 35 00 00                  	auipc	a0, 3
80200516: 13 05 e5 c5                  	addi	a0, a0, -930
8020051a: 2a f4                        	sd	a0, 40(sp)
8020051c: 02 f8                        	sd	zero, 48(sp)
8020051e: 28 00                        	addi	a0, sp, 8
80200520: b2 85                        	add	a1, zero, a2
80200522: 97 00 00 00                  	auipc	ra, 0
80200526: e7 80 a0 04                  	jalr	74(ra)
8020052a: 00 00                        	unimp	

000000008020052c _ZN4core9panicking18panic_bounds_check17hb127dc4cc37fde7aE:
8020052c: 59 71                        	addi	sp, sp, -112
8020052e: 86 f4                        	sd	ra, 104(sp)
80200530: 2a e4                        	sd	a0, 8(sp)
80200532: 2e e8                        	sd	a1, 16(sp)
80200534: 08 08                        	addi	a0, sp, 16
80200536: aa e4                        	sd	a0, 72(sp)

0000000080200538 .LBB129_1:
80200538: 17 15 00 00                  	auipc	a0, 1
8020053c: 13 05 25 a7                  	addi	a0, a0, -1422
80200540: aa e8                        	sd	a0, 80(sp)
80200542: 2c 00                        	addi	a1, sp, 8
80200544: ae ec                        	sd	a1, 88(sp)
80200546: aa f0                        	sd	a0, 96(sp)

0000000080200548 .LBB129_2:
80200548: 17 35 00 00                  	auipc	a0, 3
8020054c: 13 05 05 cf                  	addi	a0, a0, -784
80200550: 2a ec                        	sd	a0, 24(sp)
80200552: 09 45                        	addi	a0, zero, 2
80200554: 2a f0                        	sd	a0, 32(sp)
80200556: 02 f4                        	sd	zero, 40(sp)
80200558: ac 00                        	addi	a1, sp, 72
8020055a: 2e fc                        	sd	a1, 56(sp)
8020055c: aa e0                        	sd	a0, 64(sp)
8020055e: 28 08                        	addi	a0, sp, 24
80200560: b2 85                        	add	a1, zero, a2
80200562: 97 00 00 00                  	auipc	ra, 0
80200566: e7 80 a0 00                  	jalr	10(ra)
8020056a: 00 00                        	unimp	

000000008020056c _ZN4core9panicking9panic_fmt17h2f823c72a23f8e31E:
8020056c: 79 71                        	addi	sp, sp, -48
8020056e: 06 f4                        	sd	ra, 40(sp)

0000000080200570 .LBB130_1:
80200570: 17 36 00 00                  	auipc	a2, 3
80200574: 13 06 06 c0                  	addi	a2, a2, -1024
80200578: 32 e4                        	sd	a2, 8(sp)

000000008020057a .LBB130_2:
8020057a: 17 36 00 00                  	auipc	a2, 3
8020057e: 13 06 e6 c1                  	addi	a2, a2, -994
80200582: 32 e8                        	sd	a2, 16(sp)
80200584: 2a ec                        	sd	a0, 24(sp)
80200586: 2e f0                        	sd	a1, 32(sp)
80200588: 28 00                        	addi	a0, sp, 8
8020058a: 97 10 00 00                  	auipc	ra, 1
8020058e: e7 80 c0 a9                  	jalr	-1380(ra)
80200592: 00 00                        	unimp	

0000000080200594 _ZN59_$LT$core..fmt..Arguments$u20$as$u20$core..fmt..Display$GT$3fmt17ha5d29d1af7bdcf5aE:
80200594: 39 71                        	addi	sp, sp, -64
80200596: 06 fc                        	sd	ra, 56(sp)
80200598: 10 75                        	ld	a2, 40(a0)
8020059a: 18 71                        	ld	a4, 32(a0)
8020059c: 94 71                        	ld	a3, 32(a1)
8020059e: 8c 75                        	ld	a1, 40(a1)
802005a0: 32 f8                        	sd	a2, 48(sp)
802005a2: 3a f4                        	sd	a4, 40(sp)
802005a4: 10 6d                        	ld	a2, 24(a0)
802005a6: 18 69                        	ld	a4, 16(a0)
802005a8: 1c 65                        	ld	a5, 8(a0)
802005aa: 08 61                        	ld	a0, 0(a0)
802005ac: 32 f0                        	sd	a2, 32(sp)
802005ae: 3a ec                        	sd	a4, 24(sp)
802005b0: 3e e8                        	sd	a5, 16(sp)
802005b2: 2a e4                        	sd	a0, 8(sp)
802005b4: 30 00                        	addi	a2, sp, 8
802005b6: 36 85                        	add	a0, zero, a3
802005b8: 97 00 00 00                  	auipc	ra, 0
802005bc: e7 80 e0 00                  	jalr	14(ra)
802005c0: e2 70                        	ld	ra, 56(sp)
802005c2: 21 61                        	addi	sp, sp, 64
802005c4: 82 80                        	ret

00000000802005c6 _ZN4core3fmt5write17hab57c96bb669b93aE:
802005c6: 35 71                        	addi	sp, sp, -160
802005c8: 06 ed                        	sd	ra, 152(sp)
802005ca: 22 e9                        	sd	s0, 144(sp)
802005cc: 26 e5                        	sd	s1, 136(sp)
802005ce: 4a e1                        	sd	s2, 128(sp)
802005d0: ce fc                        	sd	s3, 120(sp)
802005d2: d2 f8                        	sd	s4, 112(sp)
802005d4: d6 f4                        	sd	s5, 104(sp)
802005d6: da f0                        	sd	s6, 96(sp)
802005d8: de ec                        	sd	s7, 88(sp)
802005da: e2 e8                        	sd	s8, 80(sp)
802005dc: e6 e4                        	sd	s9, 72(sp)
802005de: ea e0                        	sd	s10, 64(sp)
802005e0: 85 46                        	addi	a3, zero, 1
802005e2: 96 16                        	slli	a3, a3, 37
802005e4: 36 f8                        	sd	a3, 48(sp)
802005e6: 8d 46                        	addi	a3, zero, 3
802005e8: 23 0c d1 02                  	sb	a3, 56(sp)
802005ec: 04 6a                        	ld	s1, 16(a2)
802005ee: 02 e0                        	sd	zero, 0(sp)
802005f0: 02 e8                        	sd	zero, 16(sp)
802005f2: 2a f0                        	sd	a0, 32(sp)
802005f4: 2e f4                        	sd	a1, 40(sp)
802005f6: 63 81 04 10                  	beqz	s1, 258
802005fa: 14 6e                        	ld	a3, 24(a2)
802005fc: 03 3a 86 00                  	ld	s4, 8(a2)
80200600: 83 39 06 00                  	ld	s3, 0(a2)
80200604: d2 8b                        	add	s7, zero, s4
80200606: 63 63 da 00                  	bltu	s4, a3, 6
8020060a: b6 8b                        	add	s7, zero, a3
8020060c: 63 84 0b 14                  	beqz	s7, 328
80200610: 03 3b 06 02                  	ld	s6, 32(a2)
80200614: 83 3a 86 02                  	ld	s5, 40(a2)
80200618: 83 b6 09 00                  	ld	a3, 0(s3)
8020061c: 03 b6 89 00                  	ld	a2, 8(s3)
80200620: 98 6d                        	ld	a4, 24(a1)
80200622: b6 85                        	add	a1, zero, a3
80200624: 02 97                        	jalr	a4
80200626: 63 15 05 14                  	bnez	a0, 330
8020062a: 01 44                        	mv	s0, zero
8020062c: 93 84 04 03                  	addi	s1, s1, 48
80200630: 13 8d 89 01                  	addi	s10, s3, 24
80200634: 0a 89                        	add	s2, zero, sp
80200636: 09 4c                        	addi	s8, zero, 2

0000000080200638 .LBB162_41:
80200638: 97 0c 00 00                  	auipc	s9, 0
8020063c: 93 8c ec d5                  	addi	s9, s9, -674
80200640: 03 a5 84 ff                  	lw	a0, -8(s1)
80200644: 2a da                        	sw	a0, 52(sp)
80200646: 03 85 04 00                  	lb	a0, 0(s1)
8020064a: 23 0c a1 02                  	sb	a0, 56(sp)
8020064e: 03 a5 c4 ff                  	lw	a0, -4(s1)
80200652: 2a d8                        	sw	a0, 48(sp)
80200654: 03 b6 84 fe                  	ld	a2, -24(s1)
80200658: 03 b5 04 ff                  	ld	a0, -16(s1)
8020065c: 09 ce                        	beqz	a2, 26
8020065e: 81 45                        	mv	a1, zero
80200660: 63 0e 86 01                  	beq	a2, s8, 28
80200664: 63 77 55 13                  	bgeu	a0, s5, 302
80200668: 12 05                        	slli	a0, a0, 4
8020066a: 5a 95                        	add	a0, a0, s6
8020066c: 0c 65                        	ld	a1, 8(a0)
8020066e: 63 96 95 01                  	bne	a1, s9, 12
80200672: 08 61                        	ld	a0, 0(a0)
80200674: 08 61                        	ld	a0, 0(a0)
80200676: 85 45                        	addi	a1, zero, 1
80200678: 11 a0                        	j	4
8020067a: 81 45                        	mv	a1, zero
8020067c: 2e e0                        	sd	a1, 0(sp)
8020067e: 2a e4                        	sd	a0, 8(sp)
80200680: 03 b6 84 fd                  	ld	a2, -40(s1)
80200684: 03 b5 04 fe                  	ld	a0, -32(s1)
80200688: 09 ce                        	beqz	a2, 26
8020068a: 81 45                        	mv	a1, zero
8020068c: 63 0c 86 01                  	beq	a2, s8, 24
80200690: 63 71 55 11                  	bgeu	a0, s5, 258
80200694: 12 05                        	slli	a0, a0, 4
80200696: 5a 95                        	add	a0, a0, s6
80200698: 0c 65                        	ld	a1, 8(a0)
8020069a: 63 93 95 05                  	bne	a1, s9, 70
8020069e: 08 61                        	ld	a0, 0(a0)
802006a0: 08 61                        	ld	a0, 0(a0)
802006a2: 85 45                        	addi	a1, zero, 1
802006a4: 2e e8                        	sd	a1, 16(sp)
802006a6: 2a ec                        	sd	a0, 24(sp)
802006a8: 03 b5 04 fd                  	ld	a0, -48(s1)
802006ac: 63 71 55 05                  	bgeu	a0, s5, 66
802006b0: 12 05                        	slli	a0, a0, 4
802006b2: b3 05 ab 00                  	add	a1, s6, a0
802006b6: 88 61                        	ld	a0, 0(a1)
802006b8: 90 65                        	ld	a2, 8(a1)
802006ba: ca 85                        	add	a1, zero, s2
802006bc: 02 96                        	jalr	a2
802006be: 4d e9                        	bnez	a0, 178
802006c0: 05 04                        	addi	s0, s0, 1
802006c2: 63 7a 74 09                  	bgeu	s0, s7, 148
802006c6: a2 76                        	ld	a3, 40(sp)
802006c8: 02 75                        	ld	a0, 32(sp)
802006ca: 83 35 8d ff                  	ld	a1, -8(s10)
802006ce: 03 36 0d 00                  	ld	a2, 0(s10)
802006d2: 94 6e                        	ld	a3, 24(a3)
802006d4: 93 84 84 03                  	addi	s1, s1, 56
802006d8: 41 0d                        	addi	s10, s10, 16
802006da: 82 96                        	jalr	a3
802006dc: 35 d1                        	beqz	a0, -156
802006de: 49 a8                        	j	146
802006e0: 81 45                        	mv	a1, zero
802006e2: 2e e8                        	sd	a1, 16(sp)
802006e4: 2a ec                        	sd	a0, 24(sp)
802006e6: 03 b5 04 fd                  	ld	a0, -48(s1)
802006ea: e3 63 55 fd                  	bltu	a0, s5, -58

00000000802006ee .LBB162_42:
802006ee: 17 36 00 00                  	auipc	a2, 3
802006f2: 13 06 a6 c7                  	addi	a2, a2, -902
802006f6: 55 a0                        	j	164
802006f8: 00 72                        	ld	s0, 32(a2)
802006fa: 14 76                        	ld	a3, 40(a2)
802006fc: 03 3a 86 00                  	ld	s4, 8(a2)
80200700: 83 39 06 00                  	ld	s3, 0(a2)
80200704: d2 8b                        	add	s7, zero, s4
80200706: 63 63 da 00                  	bltu	s4, a3, 6
8020070a: b6 8b                        	add	s7, zero, a3
8020070c: 63 84 0b 04                  	beqz	s7, 72
80200710: 83 b6 09 00                  	ld	a3, 0(s3)
80200714: 03 b6 89 00                  	ld	a2, 8(s3)
80200718: 98 6d                        	ld	a4, 24(a1)
8020071a: b6 85                        	add	a1, zero, a3
8020071c: 02 97                        	jalr	a4
8020071e: 29 e9                        	bnez	a0, 82
80200720: 81 44                        	mv	s1, zero
80200722: 21 04                        	addi	s0, s0, 8
80200724: 93 8a 89 01                  	addi	s5, s3, 24
80200728: 0a 89                        	add	s2, zero, sp
8020072a: 10 60                        	ld	a2, 0(s0)
8020072c: 03 35 84 ff                  	ld	a0, -8(s0)
80200730: ca 85                        	add	a1, zero, s2
80200732: 02 96                        	jalr	a2
80200734: 15 ed                        	bnez	a0, 60
80200736: 85 04                        	addi	s1, s1, 1
80200738: 63 ff 74 01                  	bgeu	s1, s7, 30
8020073c: a2 76                        	ld	a3, 40(sp)
8020073e: 02 75                        	ld	a0, 32(sp)
80200740: 83 b5 8a ff                  	ld	a1, -8(s5)
80200744: 03 b6 0a 00                  	ld	a2, 0(s5)
80200748: 94 6e                        	ld	a3, 24(a3)
8020074a: 41 04                        	addi	s0, s0, 16
8020074c: c1 0a                        	addi	s5, s5, 16
8020074e: 82 96                        	jalr	a3
80200750: 69 dd                        	beqz	a0, -38
80200752: 39 a8                        	j	30
80200754: 81 4b                        	mv	s7, zero
80200756: 63 ff 4b 01                  	bgeu	s7, s4, 30
8020075a: 02 75                        	ld	a0, 32(sp)
8020075c: a2 76                        	ld	a3, 40(sp)
8020075e: 93 95 4b 00                  	slli	a1, s7, 4
80200762: 33 86 b9 00                  	add	a2, s3, a1
80200766: 0c 62                        	ld	a1, 0(a2)
80200768: 10 66                        	ld	a2, 8(a2)
8020076a: 94 6e                        	ld	a3, 24(a3)
8020076c: 82 96                        	jalr	a3
8020076e: 19 c1                        	beqz	a0, 6
80200770: 05 45                        	addi	a0, zero, 1
80200772: 11 a0                        	j	4
80200774: 01 45                        	mv	a0, zero
80200776: 06 6d                        	ld	s10, 64(sp)
80200778: a6 6c                        	ld	s9, 72(sp)
8020077a: 46 6c                        	ld	s8, 80(sp)
8020077c: e6 6b                        	ld	s7, 88(sp)
8020077e: 06 7b                        	ld	s6, 96(sp)
80200780: a6 7a                        	ld	s5, 104(sp)
80200782: 46 7a                        	ld	s4, 112(sp)
80200784: e6 79                        	ld	s3, 120(sp)
80200786: 0a 69                        	ld	s2, 128(sp)
80200788: aa 64                        	ld	s1, 136(sp)
8020078a: 4a 64                        	ld	s0, 144(sp)
8020078c: ea 60                        	ld	ra, 152(sp)
8020078e: 0d 61                        	addi	sp, sp, 160
80200790: 82 80                        	ret

0000000080200792 .LBB162_43:
80200792: 17 36 00 00                  	auipc	a2, 3
80200796: 13 06 e6 be                  	addi	a2, a2, -1042
8020079a: d6 85                        	add	a1, zero, s5
8020079c: 97 00 00 00                  	auipc	ra, 0
802007a0: e7 80 00 d9                  	jalr	-624(ra)
802007a4: 00 00                        	unimp	

00000000802007a6 _ZN4core3fmt9Formatter12pad_integral17hd6c3049cc532f3cdE:
802007a6: 59 71                        	addi	sp, sp, -112
802007a8: 86 f4                        	sd	ra, 104(sp)
802007aa: a2 f0                        	sd	s0, 96(sp)
802007ac: a6 ec                        	sd	s1, 88(sp)
802007ae: ca e8                        	sd	s2, 80(sp)
802007b0: ce e4                        	sd	s3, 72(sp)
802007b2: d2 e0                        	sd	s4, 64(sp)
802007b4: 56 fc                        	sd	s5, 56(sp)
802007b6: 5a f8                        	sd	s6, 48(sp)
802007b8: 5e f4                        	sd	s7, 40(sp)
802007ba: 62 f0                        	sd	s8, 32(sp)
802007bc: 66 ec                        	sd	s9, 24(sp)
802007be: 6a e8                        	sd	s10, 16(sp)
802007c0: 6e e4                        	sd	s11, 8(sp)
802007c2: be 89                        	add	s3, zero, a5
802007c4: 3a 89                        	add	s2, zero, a4
802007c6: b6 8a                        	add	s5, zero, a3
802007c8: 2a 84                        	add	s0, zero, a0
802007ca: b1 c9                        	beqz	a1, 84
802007cc: 03 65 04 03                  	lwu	a0, 48(s0)
802007d0: 93 75 15 00                  	andi	a1, a0, 1
802007d4: 37 0a 11 00                  	lui	s4, 272
802007d8: 99 c1                        	beqz	a1, 6
802007da: 13 0a b0 02                  	addi	s4, zero, 43
802007de: b3 8c 35 01                  	add	s9, a1, s3
802007e2: 93 75 45 00                  	andi	a1, a0, 4
802007e6: a9 c5                        	beqz	a1, 74
802007e8: 81 45                        	mv	a1, zero
802007ea: 63 80 0a 02                  	beqz	s5, 32
802007ee: d6 86                        	add	a3, zero, s5
802007f0: 32 87                        	add	a4, zero, a2
802007f2: 83 47 07 00                  	lbu	a5, 0(a4)
802007f6: 05 07                        	addi	a4, a4, 1
802007f8: 93 f7 07 0c                  	andi	a5, a5, 192
802007fc: 93 c7 07 08                  	xori	a5, a5, 128
80200800: 93 b7 17 00                  	seqz	a5, a5
80200804: fd 16                        	addi	a3, a3, -1
80200806: be 95                        	add	a1, a1, a5
80200808: ed f6                        	bnez	a3, -22
8020080a: b3 86 5c 01                  	add	a3, s9, s5
8020080e: b3 8c b6 40                  	sub	s9, a3, a1
80200812: 32 8b                        	add	s6, zero, a2
80200814: 0c 60                        	ld	a1, 0(s0)
80200816: 85 4d                        	addi	s11, zero, 1
80200818: 63 81 b5 03                  	beq	a1, s11, 34
8020081c: a9 a0                        	j	74
8020081e: 03 65 04 03                  	lwu	a0, 48(s0)
80200822: 93 8c 19 00                  	addi	s9, s3, 1
80200826: 13 0a d0 02                  	addi	s4, zero, 45
8020082a: 93 75 45 00                  	andi	a1, a0, 4
8020082e: cd fd                        	bnez	a1, -70
80200830: 01 4b                        	mv	s6, zero
80200832: 0c 60                        	ld	a1, 0(s0)
80200834: 85 4d                        	addi	s11, zero, 1
80200836: 63 98 b5 03                  	bne	a1, s11, 48
8020083a: 03 3d 84 00                  	ld	s10, 8(s0)
8020083e: 63 f4 ac 03                  	bgeu	s9, s10, 40
80200842: 21 89                        	andi	a0, a0, 8
80200844: 2d e1                        	bnez	a0, 98
80200846: 03 45 84 03                  	lbu	a0, 56(s0)
8020084a: 05 46                        	addi	a2, zero, 1
8020084c: 8d 46                        	addi	a3, zero, 3
8020084e: 85 45                        	addi	a1, zero, 1
80200850: 63 03 d5 00                  	beq	a0, a3, 6
80200854: aa 85                        	add	a1, zero, a0
80200856: 33 05 9d 41                  	sub	a0, s10, s9
8020085a: 63 49 b6 08                  	blt	a2, a1, 146
8020085e: d1 e9                        	bnez	a1, 148
80200860: 2a 8c                        	add	s8, zero, a0
80200862: 01 45                        	mv	a0, zero
80200864: 5d a0                        	j	166
80200866: 22 85                        	add	a0, zero, s0
80200868: d2 85                        	add	a1, zero, s4
8020086a: 5a 86                        	add	a2, zero, s6
8020086c: d6 86                        	add	a3, zero, s5
8020086e: 97 00 00 00                  	auipc	ra, 0
80200872: e7 80 80 15                  	jalr	344(ra)
80200876: 01 e9                        	bnez	a0, 16
80200878: 0c 74                        	ld	a1, 40(s0)
8020087a: 08 70                        	ld	a0, 32(s0)
8020087c: 94 6d                        	ld	a3, 24(a1)
8020087e: ca 85                        	add	a1, zero, s2
80200880: 4e 86                        	add	a2, zero, s3
80200882: 82 96                        	jalr	a3
80200884: aa 8d                        	add	s11, zero, a0
80200886: 6e 85                        	add	a0, zero, s11
80200888: a2 6d                        	ld	s11, 8(sp)
8020088a: 42 6d                        	ld	s10, 16(sp)
8020088c: e2 6c                        	ld	s9, 24(sp)
8020088e: 02 7c                        	ld	s8, 32(sp)
80200890: a2 7b                        	ld	s7, 40(sp)
80200892: 42 7b                        	ld	s6, 48(sp)
80200894: e2 7a                        	ld	s5, 56(sp)
80200896: 06 6a                        	ld	s4, 64(sp)
80200898: a6 69                        	ld	s3, 72(sp)
8020089a: 46 69                        	ld	s2, 80(sp)
8020089c: e6 64                        	ld	s1, 88(sp)
8020089e: 06 74                        	ld	s0, 96(sp)
802008a0: a6 70                        	ld	ra, 104(sp)
802008a2: 65 61                        	addi	sp, sp, 112
802008a4: 82 80                        	ret
802008a6: 83 6b 44 03                  	lwu	s7, 52(s0)
802008aa: 13 05 00 03                  	addi	a0, zero, 48
802008ae: 03 4c 84 03                  	lbu	s8, 56(s0)
802008b2: 48 d8                        	sw	a0, 52(s0)
802008b4: 85 4d                        	addi	s11, zero, 1
802008b6: 23 0c b4 03                  	sb	s11, 56(s0)
802008ba: 22 85                        	add	a0, zero, s0
802008bc: d2 85                        	add	a1, zero, s4
802008be: 5a 86                        	add	a2, zero, s6
802008c0: d6 86                        	add	a3, zero, s5
802008c2: 97 00 00 00                  	auipc	ra, 0
802008c6: e7 80 40 10                  	jalr	260(ra)
802008ca: 55 fd                        	bnez	a0, -68
802008cc: 03 45 84 03                  	lbu	a0, 56(s0)
802008d0: 05 46                        	addi	a2, zero, 1
802008d2: 8d 46                        	addi	a3, zero, 3
802008d4: 85 45                        	addi	a1, zero, 1
802008d6: 63 03 d5 00                  	beq	a0, a3, 6
802008da: aa 85                        	add	a1, zero, a0
802008dc: 33 05 9d 41                  	sub	a0, s10, s9
802008e0: 63 4b b6 00                  	blt	a2, a1, 22
802008e4: 81 ed                        	bnez	a1, 24
802008e6: aa 8a                        	add	s5, zero, a0
802008e8: 01 45                        	mv	a0, zero
802008ea: 41 a0                        	j	128
802008ec: 0d 46                        	addi	a2, zero, 3
802008ee: 63 99 c5 00                  	bne	a1, a2, 18
802008f2: 01 4c                        	mv	s8, zero
802008f4: 19 a8                        	j	22
802008f6: 0d 46                        	addi	a2, zero, 3
802008f8: 63 94 c5 06                  	bne	a1, a2, 104
802008fc: 81 4a                        	mv	s5, zero
802008fe: b5 a0                        	j	108
80200900: 93 05 15 00                  	addi	a1, a0, 1
80200904: 05 81                        	srli	a0, a0, 1
80200906: 13 dc 15 00                  	srli	s8, a1, 1
8020090a: 93 04 15 00                  	addi	s1, a0, 1
8020090e: fd 14                        	addi	s1, s1, -1
80200910: 81 c8                        	beqz	s1, 16
80200912: 0c 74                        	ld	a1, 40(s0)
80200914: 08 70                        	ld	a0, 32(s0)
80200916: 90 71                        	ld	a2, 32(a1)
80200918: 4c 58                        	lw	a1, 52(s0)
8020091a: 02 96                        	jalr	a2
8020091c: 6d d9                        	beqz	a0, -14
8020091e: 85 a0                        	j	96
80200920: 83 6b 44 03                  	lwu	s7, 52(s0)
80200924: 22 85                        	add	a0, zero, s0
80200926: d2 85                        	add	a1, zero, s4
80200928: 5a 86                        	add	a2, zero, s6
8020092a: d6 86                        	add	a3, zero, s5
8020092c: 97 00 00 00                  	auipc	ra, 0
80200930: e7 80 a0 09                  	jalr	154(ra)
80200934: 85 4d                        	addi	s11, zero, 1
80200936: 21 f9                        	bnez	a0, -176
80200938: 0c 74                        	ld	a1, 40(s0)
8020093a: 08 70                        	ld	a0, 32(s0)
8020093c: 94 6d                        	ld	a3, 24(a1)
8020093e: ca 85                        	add	a1, zero, s2
80200940: 4e 86                        	add	a2, zero, s3
80200942: 82 96                        	jalr	a3
80200944: 29 f1                        	bnez	a0, -190
80200946: 03 39 04 02                  	ld	s2, 32(s0)
8020094a: 00 74                        	ld	s0, 40(s0)
8020094c: 93 04 1c 00                  	addi	s1, s8, 1
80200950: fd 14                        	addi	s1, s1, -1
80200952: b5 c0                        	beqz	s1, 100
80200954: 10 70                        	ld	a2, 32(s0)
80200956: 4a 85                        	add	a0, zero, s2
80200958: de 85                        	add	a1, zero, s7
8020095a: 02 96                        	jalr	a2
8020095c: 75 d9                        	beqz	a0, -12
8020095e: 25 b7                        	j	-216
80200960: 93 05 15 00                  	addi	a1, a0, 1
80200964: 05 81                        	srli	a0, a0, 1
80200966: 93 da 15 00                  	srli	s5, a1, 1
8020096a: 93 04 15 00                  	addi	s1, a0, 1
8020096e: fd 14                        	addi	s1, s1, -1
80200970: 89 c8                        	beqz	s1, 18
80200972: 0c 74                        	ld	a1, 40(s0)
80200974: 08 70                        	ld	a0, 32(s0)
80200976: 90 71                        	ld	a2, 32(a1)
80200978: 4c 58                        	lw	a1, 52(s0)
8020097a: 02 96                        	jalr	a2
8020097c: 6d d9                        	beqz	a0, -14
8020097e: 85 4d                        	addi	s11, zero, 1
80200980: 19 b7                        	j	-250
80200982: 0c 74                        	ld	a1, 40(s0)
80200984: 03 6a 44 03                  	lwu	s4, 52(s0)
80200988: 08 70                        	ld	a0, 32(s0)
8020098a: 94 6d                        	ld	a3, 24(a1)
8020098c: ca 85                        	add	a1, zero, s2
8020098e: 4e 86                        	add	a2, zero, s3
80200990: 82 96                        	jalr	a3
80200992: 85 4d                        	addi	s11, zero, 1
80200994: e3 19 05 ee                  	bnez	a0, -270
80200998: 03 39 04 02                  	ld	s2, 32(s0)
8020099c: 83 39 84 02                  	ld	s3, 40(s0)
802009a0: 93 84 1a 00                  	addi	s1, s5, 1
802009a4: fd 14                        	addi	s1, s1, -1
802009a6: 91 c8                        	beqz	s1, 20
802009a8: 03 b6 09 02                  	ld	a2, 32(s3)
802009ac: 4a 85                        	add	a0, zero, s2
802009ae: d2 85                        	add	a1, zero, s4
802009b0: 02 96                        	jalr	a2
802009b2: 6d d9                        	beqz	a0, -14
802009b4: c9 bd                        	j	-302
802009b6: 81 4d                        	mv	s11, zero
802009b8: f9 b5                        	j	-306
802009ba: 81 4d                        	mv	s11, zero
802009bc: 23 2a 74 03                  	sw	s7, 52(s0)
802009c0: 23 0c 84 03                  	sb	s8, 56(s0)
802009c4: c9 b5                        	j	-318

00000000802009c6 _ZN4core3fmt9Formatter12pad_integral12write_prefix17hf78ea515610d6c2eE:
802009c6: 01 11                        	addi	sp, sp, -32
802009c8: 06 ec                        	sd	ra, 24(sp)
802009ca: 22 e8                        	sd	s0, 16(sp)
802009cc: 26 e4                        	sd	s1, 8(sp)
802009ce: 4a e0                        	sd	s2, 0(sp)
802009d0: 13 97 05 02                  	slli	a4, a1, 32
802009d4: 01 93                        	srli	a4, a4, 32
802009d6: b7 07 11 00                  	lui	a5, 272
802009da: 36 89                        	add	s2, zero, a3
802009dc: b2 84                        	add	s1, zero, a2
802009de: 2a 84                        	add	s0, zero, a0
802009e0: 63 09 f7 00                  	beq	a4, a5, 18
802009e4: 10 74                        	ld	a2, 40(s0)
802009e6: 08 70                        	ld	a0, 32(s0)
802009e8: 10 72                        	ld	a2, 32(a2)
802009ea: 02 96                        	jalr	a2
802009ec: aa 85                        	add	a1, zero, a0
802009ee: 05 45                        	addi	a0, zero, 1
802009f0: 91 e9                        	bnez	a1, 20
802009f2: 81 c8                        	beqz	s1, 16
802009f4: 0c 74                        	ld	a1, 40(s0)
802009f6: 08 70                        	ld	a0, 32(s0)
802009f8: 94 6d                        	ld	a3, 24(a1)
802009fa: a6 85                        	add	a1, zero, s1
802009fc: 4a 86                        	add	a2, zero, s2
802009fe: 82 96                        	jalr	a3
80200a00: 11 a0                        	j	4
80200a02: 01 45                        	mv	a0, zero
80200a04: 02 69                        	ld	s2, 0(sp)
80200a06: a2 64                        	ld	s1, 8(sp)
80200a08: 42 64                        	ld	s0, 16(sp)
80200a0a: e2 60                        	ld	ra, 24(sp)
80200a0c: 05 61                        	addi	sp, sp, 32
80200a0e: 82 80                        	ret

0000000080200a10 _ZN4core3fmt9Formatter3pad17h017f758b28b77478E:
80200a10: 39 71                        	addi	sp, sp, -64
80200a12: 06 fc                        	sd	ra, 56(sp)
80200a14: 22 f8                        	sd	s0, 48(sp)
80200a16: 26 f4                        	sd	s1, 40(sp)
80200a18: 4a f0                        	sd	s2, 32(sp)
80200a1a: 4e ec                        	sd	s3, 24(sp)
80200a1c: 52 e8                        	sd	s4, 16(sp)
80200a1e: 56 e4                        	sd	s5, 8(sp)
80200a20: 5a e0                        	sd	s6, 0(sp)
80200a22: 2a 8b                        	add	s6, zero, a0
80200a24: 83 33 05 00                  	ld	t2, 0(a0)
80200a28: 08 69                        	ld	a0, 16(a0)
80200a2a: 85 46                        	addi	a3, zero, 1
80200a2c: 32 8a                        	add	s4, zero, a2
80200a2e: 2e 89                        	add	s2, zero, a1
80200a30: 63 95 d3 00                  	bne	t2, a3, 10
80200a34: 63 05 d5 00                  	beq	a0, a3, 10
80200a38: 09 aa                        	j	274
80200a3a: 63 11 d5 18                  	bne	a0, a3, 386
80200a3e: 63 0c 0a 0c                  	beqz	s4, 216
80200a42: 03 35 8b 01                  	ld	a0, 24(s6)
80200a46: 81 45                        	mv	a1, zero
80200a48: 33 07 49 01                  	add	a4, s2, s4
80200a4c: 93 06 15 00                  	addi	a3, a0, 1
80200a50: 7d 5e                        	addi	t3, zero, -1
80200a52: 13 03 f0 0d                  	addi	t1, zero, 223
80200a56: 13 08 00 0f                  	addi	a6, zero, 240
80200a5a: b7 08 1c 00                  	lui	a7, 448
80200a5e: b7 02 11 00                  	lui	t0, 272
80200a62: ca 87                        	add	a5, zero, s2
80200a64: 4a 85                        	add	a0, zero, s2
80200a66: 03 84 07 00                  	lb	s0, 0(a5)
80200a6a: 13 86 17 00                  	addi	a2, a5, 1
80200a6e: 93 74 f4 0f                  	andi	s1, s0, 255
80200a72: 63 54 8e 00                  	bge	t3, s0, 8
80200a76: b2 87                        	add	a5, zero, a2
80200a78: 69 a0                        	j	138
80200a7a: 63 03 e6 04                  	beq	a2, a4, 70
80200a7e: 03 c4 17 00                  	lbu	s0, 1(a5)
80200a82: 13 86 27 00                  	addi	a2, a5, 2
80200a86: 13 74 f4 03                  	andi	s0, s0, 63
80200a8a: b2 87                        	add	a5, zero, a2
80200a8c: 93 fe f4 01                  	andi	t4, s1, 31
80200a90: 63 7f 93 02                  	bgeu	t1, s1, 62
80200a94: 63 02 e6 04                  	beq	a2, a4, 68
80200a98: 03 4f 06 00                  	lbu	t5, 0(a2)
80200a9c: 93 07 16 00                  	addi	a5, a2, 1
80200aa0: 13 76 ff 03                  	andi	a2, t5, 63
80200aa4: 3e 8f                        	add	t5, zero, a5
80200aa6: 1a 04                        	slli	s0, s0, 6
80200aa8: 51 8c                        	or	s0, s0, a2
80200aaa: 63 ed 04 03                  	bltu	s1, a6, 58
80200aae: 63 00 ef 04                  	beq	t5, a4, 64
80200ab2: 03 46 0f 00                  	lbu	a2, 0(t5)
80200ab6: 93 07 1f 00                  	addi	a5, t5, 1
80200aba: 13 76 f6 03                  	andi	a2, a2, 63
80200abe: 0d a8                        	j	50
80200ac0: 01 44                        	mv	s0, zero
80200ac2: b2 87                        	add	a5, zero, a2
80200ac4: 3a 86                        	add	a2, zero, a4
80200ac6: 93 fe f4 01                  	andi	t4, s1, 31
80200aca: e3 65 93 fc                  	bltu	t1, s1, -54
80200ace: 13 96 6e 00                  	slli	a2, t4, 6
80200ad2: b3 64 c4 00                  	or	s1, s0, a2
80200ad6: 35 a0                        	j	44
80200ad8: 01 46                        	mv	a2, zero
80200ada: 3a 8f                        	add	t5, zero, a4
80200adc: 1a 04                        	slli	s0, s0, 6
80200ade: 51 8c                        	or	s0, s0, a2
80200ae0: e3 f7 04 fd                  	bgeu	s1, a6, -50
80200ae4: 13 96 ce 00                  	slli	a2, t4, 12
80200ae8: b3 64 c4 00                  	or	s1, s0, a2
80200aec: 19 a8                        	j	22
80200aee: 01 46                        	mv	a2, zero
80200af0: 93 94 2e 01                  	slli	s1, t4, 18
80200af4: b3 f4 14 01                  	and	s1, s1, a7
80200af8: 1a 04                        	slli	s0, s0, 6
80200afa: c1 8c                        	or	s1, s1, s0
80200afc: d1 8c                        	or	s1, s1, a2
80200afe: 63 83 54 04                  	beq	s1, t0, 70
80200b02: fd 16                        	addi	a3, a3, -1
80200b04: 99 ca                        	beqz	a3, 22
80200b06: 33 85 a5 40                  	sub	a0, a1, a0
80200b0a: b3 05 f5 00                  	add	a1, a0, a5
80200b0e: 3e 85                        	add	a0, zero, a5
80200b10: e3 1b f7 f4                  	bne	a4, a5, -170
80200b14: 05 a8                        	j	48
80200b16: 01 4a                        	mv	s4, zero
80200b18: 35 a0                        	j	44
80200b1a: 37 05 11 00                  	lui	a0, 272
80200b1e: 63 83 a4 02                  	beq	s1, a0, 38
80200b22: 89 cd                        	beqz	a1, 26
80200b24: 63 8c 45 01                  	beq	a1, s4, 24
80200b28: 63 f4 45 13                  	bgeu	a1, s4, 296
80200b2c: 33 05 b9 00                  	add	a0, s2, a1
80200b30: 03 05 05 00                  	lb	a0, 0(a0)
80200b34: 13 06 00 fc                  	addi	a2, zero, -64
80200b38: 63 4c c5 10                  	blt	a0, a2, 280
80200b3c: 4a 85                        	add	a0, zero, s2
80200b3e: 19 c1                        	beqz	a0, 6
80200b40: 2a 89                        	add	s2, zero, a0
80200b42: 2e 8a                        	add	s4, zero, a1
80200b44: 05 45                        	addi	a0, zero, 1
80200b46: 63 9b a3 06                  	bne	t2, a0, 118
80200b4a: 81 45                        	mv	a1, zero
80200b4c: 63 00 0a 02                  	beqz	s4, 32
80200b50: 52 85                        	add	a0, zero, s4
80200b52: 4a 86                        	add	a2, zero, s2
80200b54: 83 46 06 00                  	lbu	a3, 0(a2)
80200b58: 05 06                        	addi	a2, a2, 1
80200b5a: 93 f6 06 0c                  	andi	a3, a3, 192
80200b5e: 93 c6 06 08                  	xori	a3, a3, 128
80200b62: 93 b6 16 00                  	seqz	a3, a3
80200b66: 7d 15                        	addi	a0, a0, -1
80200b68: b6 95                        	add	a1, a1, a3
80200b6a: 6d f5                        	bnez	a0, -22
80200b6c: 03 35 8b 00                  	ld	a0, 8(s6)
80200b70: b3 05 ba 40                  	sub	a1, s4, a1
80200b74: 63 f4 a5 04                  	bgeu	a1, a0, 72
80200b78: 81 45                        	mv	a1, zero
80200b7a: 63 00 0a 02                  	beqz	s4, 32
80200b7e: 52 86                        	add	a2, zero, s4
80200b80: ca 86                        	add	a3, zero, s2
80200b82: 03 c7 06 00                  	lbu	a4, 0(a3)
80200b86: 85 06                        	addi	a3, a3, 1
80200b88: 13 77 07 0c                  	andi	a4, a4, 192
80200b8c: 13 47 07 08                  	xori	a4, a4, 128
80200b90: 13 37 17 00                  	seqz	a4, a4
80200b94: 7d 16                        	addi	a2, a2, -1
80200b96: ba 95                        	add	a1, a1, a4
80200b98: 6d f6                        	bnez	a2, -22
80200b9a: 83 46 8b 03                  	lbu	a3, 56(s6)
80200b9e: 01 46                        	mv	a2, zero
80200ba0: 0d 47                        	addi	a4, zero, 3
80200ba2: b3 85 45 41                  	sub	a1, a1, s4
80200ba6: 63 83 e6 00                  	beq	a3, a4, 6
80200baa: 36 86                        	add	a2, zero, a3
80200bac: 85 46                        	addi	a3, zero, 1
80200bae: 2e 95                        	add	a0, a0, a1
80200bb0: 63 ca c6 02                  	blt	a3, a2, 52
80200bb4: 1d ea                        	bnez	a2, 54
80200bb6: aa 8a                        	add	s5, zero, a0
80200bb8: 01 45                        	mv	a0, zero
80200bba: 3d a8                        	j	62
80200bbc: 83 35 8b 02                  	ld	a1, 40(s6)
80200bc0: 03 35 0b 02                  	ld	a0, 32(s6)
80200bc4: 94 6d                        	ld	a3, 24(a1)
80200bc6: ca 85                        	add	a1, zero, s2
80200bc8: 52 86                        	add	a2, zero, s4
80200bca: 82 96                        	jalr	a3
80200bcc: aa 84                        	add	s1, zero, a0
80200bce: 26 85                        	add	a0, zero, s1
80200bd0: 02 6b                        	ld	s6, 0(sp)
80200bd2: a2 6a                        	ld	s5, 8(sp)
80200bd4: 42 6a                        	ld	s4, 16(sp)
80200bd6: e2 69                        	ld	s3, 24(sp)
80200bd8: 02 79                        	ld	s2, 32(sp)
80200bda: a2 74                        	ld	s1, 40(sp)
80200bdc: 42 74                        	ld	s0, 48(sp)
80200bde: e2 70                        	ld	ra, 56(sp)
80200be0: 21 61                        	addi	sp, sp, 64
80200be2: 82 80                        	ret
80200be4: 8d 45                        	addi	a1, zero, 3
80200be6: 63 14 b6 00                  	bne	a2, a1, 8
80200bea: 81 4a                        	mv	s5, zero
80200bec: 31 a0                        	j	12
80200bee: 93 05 15 00                  	addi	a1, a0, 1
80200bf2: 05 81                        	srli	a0, a0, 1
80200bf4: 93 da 15 00                  	srli	s5, a1, 1
80200bf8: 13 04 15 00                  	addi	s0, a0, 1
80200bfc: 7d 14                        	addi	s0, s0, -1
80200bfe: 01 cc                        	beqz	s0, 24
80200c00: 83 35 8b 02                  	ld	a1, 40(s6)
80200c04: 03 35 0b 02                  	ld	a0, 32(s6)
80200c08: 90 71                        	ld	a2, 32(a1)
80200c0a: 83 25 4b 03                  	lw	a1, 52(s6)
80200c0e: 02 96                        	jalr	a2
80200c10: 75 d5                        	beqz	a0, -20
80200c12: 85 44                        	addi	s1, zero, 1
80200c14: 6d bf                        	j	-70
80200c16: 83 35 8b 02                  	ld	a1, 40(s6)
80200c1a: 83 69 4b 03                  	lwu	s3, 52(s6)
80200c1e: 03 35 0b 02                  	ld	a0, 32(s6)
80200c22: 94 6d                        	ld	a3, 24(a1)
80200c24: ca 85                        	add	a1, zero, s2
80200c26: 52 86                        	add	a2, zero, s4
80200c28: 82 96                        	jalr	a3
80200c2a: 85 44                        	addi	s1, zero, 1
80200c2c: 4d f1                        	bnez	a0, -94
80200c2e: 03 39 0b 02                  	ld	s2, 32(s6)
80200c32: 03 3a 8b 02                  	ld	s4, 40(s6)
80200c36: 13 84 1a 00                  	addi	s0, s5, 1
80200c3a: 7d 14                        	addi	s0, s0, -1
80200c3c: 01 c8                        	beqz	s0, 16
80200c3e: 03 36 0a 02                  	ld	a2, 32(s4)
80200c42: 4a 85                        	add	a0, zero, s2
80200c44: ce 85                        	add	a1, zero, s3
80200c46: 02 96                        	jalr	a2
80200c48: 6d d9                        	beqz	a0, -14
80200c4a: 51 b7                        	j	-124
80200c4c: 81 44                        	mv	s1, zero
80200c4e: 41 b7                        	j	-128
80200c50: 01 45                        	mv	a0, zero
80200c52: e3 09 05 ee                  	beqz	a0, -270
80200c56: ed b5                        	j	-278

0000000080200c58 _ZN4core5slice20slice_index_len_fail17h674859de081ebee9E:
80200c58: 59 71                        	addi	sp, sp, -112
80200c5a: 86 f4                        	sd	ra, 104(sp)
80200c5c: 2a e4                        	sd	a0, 8(sp)
80200c5e: 2e e8                        	sd	a1, 16(sp)
80200c60: 28 00                        	addi	a0, sp, 8
80200c62: aa e4                        	sd	a0, 72(sp)

0000000080200c64 .LBB200_1:
80200c64: 17 05 00 00                  	auipc	a0, 0
80200c68: 13 05 65 34                  	addi	a0, a0, 838
80200c6c: aa e8                        	sd	a0, 80(sp)
80200c6e: 0c 08                        	addi	a1, sp, 16
80200c70: ae ec                        	sd	a1, 88(sp)
80200c72: aa f0                        	sd	a0, 96(sp)

0000000080200c74 .LBB200_2:
80200c74: 17 25 00 00                  	auipc	a0, 2
80200c78: 13 05 c5 74                  	addi	a0, a0, 1868
80200c7c: 2a ec                        	sd	a0, 24(sp)
80200c7e: 09 45                        	addi	a0, zero, 2
80200c80: 2a f0                        	sd	a0, 32(sp)
80200c82: 02 f4                        	sd	zero, 40(sp)
80200c84: ac 00                        	addi	a1, sp, 72
80200c86: 2e fc                        	sd	a1, 56(sp)
80200c88: aa e0                        	sd	a0, 64(sp)
80200c8a: 28 08                        	addi	a0, sp, 24
80200c8c: b2 85                        	add	a1, zero, a2
80200c8e: 97 00 00 00                  	auipc	ra, 0
80200c92: e7 80 e0 8d                  	jalr	-1826(ra)
80200c96: 00 00                        	unimp	

0000000080200c98 _ZN4core5slice22slice_index_order_fail17h448310845a3aec23E:
80200c98: 59 71                        	addi	sp, sp, -112
80200c9a: 86 f4                        	sd	ra, 104(sp)
80200c9c: 2a e4                        	sd	a0, 8(sp)
80200c9e: 2e e8                        	sd	a1, 16(sp)
80200ca0: 28 00                        	addi	a0, sp, 8
80200ca2: aa e4                        	sd	a0, 72(sp)

0000000080200ca4 .LBB201_1:
80200ca4: 17 05 00 00                  	auipc	a0, 0
80200ca8: 13 05 65 30                  	addi	a0, a0, 774
80200cac: aa e8                        	sd	a0, 80(sp)
80200cae: 0c 08                        	addi	a1, sp, 16
80200cb0: ae ec                        	sd	a1, 88(sp)
80200cb2: aa f0                        	sd	a0, 96(sp)

0000000080200cb4 .LBB201_2:
80200cb4: 17 25 00 00                  	auipc	a0, 2
80200cb8: 13 05 45 75                  	addi	a0, a0, 1876
80200cbc: 2a ec                        	sd	a0, 24(sp)
80200cbe: 09 45                        	addi	a0, zero, 2
80200cc0: 2a f0                        	sd	a0, 32(sp)
80200cc2: 02 f4                        	sd	zero, 40(sp)
80200cc4: ac 00                        	addi	a1, sp, 72
80200cc6: 2e fc                        	sd	a1, 56(sp)
80200cc8: aa e0                        	sd	a0, 64(sp)
80200cca: 28 08                        	addi	a0, sp, 24
80200ccc: b2 85                        	add	a1, zero, a2
80200cce: 97 00 00 00                  	auipc	ra, 0
80200cd2: e7 80 e0 89                  	jalr	-1890(ra)
80200cd6: 00 00                        	unimp	

0000000080200cd8 _ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$u32$GT$3fmt17h0c8e9a47c9cbfbc9E:
80200cd8: 75 71                        	addi	sp, sp, -144
80200cda: 06 e5                        	sd	ra, 136(sp)
80200cdc: 2e 88                        	add	a6, zero, a1
80200cde: 81 45                        	mv	a1, zero
80200ce0: 03 67 05 00                  	lwu	a4, 0(a0)
80200ce4: 93 08 81 00                  	addi	a7, sp, 8
80200ce8: 37 05 00 10                  	lui	a0, 65536
80200cec: 7d 35                        	addiw	a0, a0, -1
80200cee: a9 42                        	addi	t0, zero, 10
80200cf0: 39 a0                        	j	14
80200cf2: 13 06 76 03                  	addi	a2, a2, 55
80200cf6: a3 8f c7 06                  	sb	a2, 127(a5)
80200cfa: fd 15                        	addi	a1, a1, -1
80200cfc: 0d c3                        	beqz	a4, 34
80200cfe: b3 87 b8 00                  	add	a5, a7, a1
80200d02: 93 56 47 00                  	srli	a3, a4, 4
80200d06: 13 76 f7 00                  	andi	a2, a4, 15
80200d0a: 33 f7 a6 00                  	and	a4, a3, a0
80200d0e: e3 72 56 fe                  	bgeu	a2, t0, -28
80200d12: 13 66 06 03                  	ori	a2, a2, 48
80200d16: a3 8f c7 06                  	sb	a2, 127(a5)
80200d1a: fd 15                        	addi	a1, a1, -1
80200d1c: 6d f3                        	bnez	a4, -30
80200d1e: 13 85 05 08                  	addi	a0, a1, 128
80200d22: 13 06 10 08                  	addi	a2, zero, 129
80200d26: 63 76 c5 02                  	bgeu	a0, a2, 44
80200d2a: b3 07 b0 40                  	neg	a5, a1
80200d2e: 33 85 b8 00                  	add	a0, a7, a1
80200d32: 13 07 05 08                  	addi	a4, a0, 128

0000000080200d36 .LBB470_7:
80200d36: 17 26 00 00                  	auipc	a2, 2
80200d3a: 13 06 26 55                  	addi	a2, a2, 1362
80200d3e: 85 45                        	addi	a1, zero, 1
80200d40: 89 46                        	addi	a3, zero, 2
80200d42: 42 85                        	add	a0, zero, a6
80200d44: 97 00 00 00                  	auipc	ra, 0
80200d48: e7 80 20 a6                  	jalr	-1438(ra)
80200d4c: aa 60                        	ld	ra, 136(sp)
80200d4e: 49 61                        	addi	sp, sp, 144
80200d50: 82 80                        	ret

0000000080200d52 .LBB470_8:
80200d52: 17 26 00 00                  	auipc	a2, 2
80200d56: 13 06 e6 51                  	addi	a2, a2, 1310
80200d5a: 93 05 00 08                  	addi	a1, zero, 128
80200d5e: 97 00 00 00                  	auipc	ra, 0
80200d62: e7 80 a0 f3                  	jalr	-198(ra)
80200d66: 00 00                        	unimp	

0000000080200d68 _ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17he358e3b3276f5d2eE:
80200d68: 75 71                        	addi	sp, sp, -144
80200d6a: 06 e5                        	sd	ra, 136(sp)
80200d6c: 14 61                        	ld	a3, 0(a0)
80200d6e: 2e 85                        	add	a0, zero, a1
80200d70: 81 45                        	mv	a1, zero
80200d72: 13 08 81 00                  	addi	a6, sp, 8
80200d76: 29 47                        	addi	a4, zero, 10
80200d78: 39 a0                        	j	14
80200d7a: 13 06 76 05                  	addi	a2, a2, 87
80200d7e: a3 8f c7 06                  	sb	a2, 127(a5)
80200d82: fd 15                        	addi	a1, a1, -1
80200d84: 91 ce                        	beqz	a3, 28
80200d86: b3 07 b8 00                  	add	a5, a6, a1
80200d8a: 13 f6 f6 00                  	andi	a2, a3, 15
80200d8e: 91 82                        	srli	a3, a3, 4
80200d90: e3 75 e6 fe                  	bgeu	a2, a4, -22
80200d94: 13 66 06 03                  	ori	a2, a2, 48
80200d98: a3 8f c7 06                  	sb	a2, 127(a5)
80200d9c: fd 15                        	addi	a1, a1, -1
80200d9e: e5 f6                        	bnez	a3, -24
80200da0: 93 86 05 08                  	addi	a3, a1, 128
80200da4: 13 06 10 08                  	addi	a2, zero, 129
80200da8: 63 f4 c6 02                  	bgeu	a3, a2, 40
80200dac: b3 07 b0 40                  	neg	a5, a1
80200db0: c2 95                        	add	a1, a1, a6
80200db2: 13 87 05 08                  	addi	a4, a1, 128

0000000080200db6 .LBB473_7:
80200db6: 17 26 00 00                  	auipc	a2, 2
80200dba: 13 06 26 4d                  	addi	a2, a2, 1234
80200dbe: 85 45                        	addi	a1, zero, 1
80200dc0: 89 46                        	addi	a3, zero, 2
80200dc2: 97 00 00 00                  	auipc	ra, 0
80200dc6: e7 80 40 9e                  	jalr	-1564(ra)
80200dca: aa 60                        	ld	ra, 136(sp)
80200dcc: 49 61                        	addi	sp, sp, 144
80200dce: 82 80                        	ret

0000000080200dd0 .LBB473_8:
80200dd0: 17 26 00 00                  	auipc	a2, 2
80200dd4: 13 06 06 4a                  	addi	a2, a2, 1184
80200dd8: 93 05 00 08                  	addi	a1, zero, 128
80200ddc: 36 85                        	add	a0, zero, a3
80200dde: 97 00 00 00                  	auipc	ra, 0
80200de2: e7 80 a0 eb                  	jalr	-326(ra)
80200de6: 00 00                        	unimp	

0000000080200de8 _ZN4core3fmt3num3imp7fmt_u6417h373d4d6e712c9b1fE:
80200de8: 5d 71                        	addi	sp, sp, -80
80200dea: 86 e4                        	sd	ra, 72(sp)
80200dec: a2 e0                        	sd	s0, 64(sp)
80200dee: 26 fc                        	sd	s1, 56(sp)
80200df0: 4a f8                        	sd	s2, 48(sp)
80200df2: 4e f4                        	sd	s3, 40(sp)
80200df4: 32 88                        	add	a6, zero, a2
80200df6: 13 56 45 00                  	srli	a2, a0, 4
80200dfa: 13 07 70 02                  	addi	a4, zero, 39
80200dfe: 93 06 10 27                  	addi	a3, zero, 625

0000000080200e02 .LBB479_10:
80200e02: 97 28 00 00                  	auipc	a7, 2
80200e06: 93 88 88 48                  	addi	a7, a7, 1160
80200e0a: 63 73 d6 02                  	bgeu	a2, a3, 38
80200e0e: 13 06 30 06                  	addi	a2, zero, 99
80200e12: 63 4e a6 0c                  	blt	a2, a0, 220
80200e16: 29 46                        	addi	a2, zero, 10
80200e18: 63 59 c5 12                  	bge	a0, a2, 306
80200e1c: 13 06 f7 ff                  	addi	a2, a4, -1
80200e20: 93 06 11 00                  	addi	a3, sp, 1
80200e24: b2 96                        	add	a3, a3, a2
80200e26: 13 05 05 03                  	addi	a0, a0, 48
80200e2a: 23 80 a6 00                  	sb	a0, 0(a3)
80200e2e: 2d aa                        	j	314
80200e30: 01 47                        	mv	a4, zero
80200e32: 37 36 1a 00                  	lui	a2, 419
80200e36: 1b 06 36 6e                  	addiw	a2, a2, 1763
80200e3a: 3a 06                        	slli	a2, a2, 14
80200e3c: 13 06 76 ac                  	addi	a2, a2, -1337
80200e40: 3a 06                        	slli	a2, a2, 14
80200e42: 13 06 36 43                  	addi	a2, a2, 1075
80200e46: 36 06                        	slli	a2, a2, 13
80200e48: 93 02 b6 94                  	addi	t0, a2, -1717
80200e4c: 09 66                        	lui	a2, 2
80200e4e: 9b 03 06 71                  	addiw	t2, a2, 1808
80200e52: 41 66                        	lui	a2, 16
80200e54: 9b 0e c6 ff                  	addiw	t4, a2, -4
80200e58: b7 f6 51 00                  	lui	a3, 1311
80200e5c: 9b 86 56 b8                  	addiw	a3, a3, -1147
80200e60: b6 06                        	slli	a3, a3, 13
80200e62: 93 86 76 3d                  	addi	a3, a3, 983
80200e66: ba 06                        	slli	a3, a3, 14
80200e68: 93 86 f6 28                  	addi	a3, a3, 655
80200e6c: b2 06                        	slli	a3, a3, 12
80200e6e: 13 8f 36 5c                  	addi	t5, a3, 1475
80200e72: 13 03 40 06                  	addi	t1, zero, 100
80200e76: 9b 0f e6 ff                  	addiw	t6, a2, -2
80200e7a: 13 0e 11 00                  	addi	t3, sp, 1
80200e7e: 37 e6 f5 05                  	lui	a2, 24414
80200e82: 1b 09 f6 0f                  	addiw	s2, a2, 255
80200e86: aa 87                        	add	a5, zero, a0
80200e88: 33 35 55 02                  	<unknown>
80200e8c: 2d 81                        	srli	a0, a0, 11
80200e8e: b3 06 75 02                  	<unknown>
80200e92: b3 86 d7 40                  	sub	a3, a5, a3
80200e96: 33 f4 d6 01                  	and	s0, a3, t4
80200e9a: 09 80                        	srli	s0, s0, 2
80200e9c: 33 34 e4 03                  	<unknown>
80200ea0: 09 80                        	srli	s0, s0, 2
80200ea2: 93 14 14 00                  	slli	s1, s0, 1
80200ea6: 33 04 64 02                  	<unknown>
80200eaa: 81 8e                        	sub	a3, a3, s0
80200eac: 86 06                        	slli	a3, a3, 1
80200eae: b3 f6 f6 01                  	and	a3, a3, t6
80200eb2: 33 84 14 01                  	add	s0, s1, a7
80200eb6: b3 04 ee 00                  	add	s1, t3, a4
80200eba: 83 49 04 00                  	lbu	s3, 0(s0)
80200ebe: 03 04 14 00                  	lb	s0, 1(s0)
80200ec2: c6 96                        	add	a3, a3, a7
80200ec4: 03 86 16 00                  	lb	a2, 1(a3)
80200ec8: 83 c6 06 00                  	lbu	a3, 0(a3)
80200ecc: 23 82 84 02                  	sb	s0, 36(s1)
80200ed0: a3 81 34 03                  	sb	s3, 35(s1)
80200ed4: 23 83 c4 02                  	sb	a2, 38(s1)
80200ed8: a3 82 d4 02                  	sb	a3, 37(s1)
80200edc: 71 17                        	addi	a4, a4, -4
80200ede: e3 64 f9 fa                  	bltu	s2, a5, -88
80200ee2: 13 07 77 02                  	addi	a4, a4, 39
80200ee6: 13 06 30 06                  	addi	a2, zero, 99
80200eea: e3 56 a6 f2                  	bge	a2, a0, -212
80200eee: 41 66                        	lui	a2, 16
80200ef0: 9b 06 c6 ff                  	addiw	a3, a2, -4
80200ef4: e9 8e                        	and	a3, a3, a0
80200ef6: 89 82                        	srli	a3, a3, 2
80200ef8: b7 f7 51 00                  	lui	a5, 1311
80200efc: 9b 87 57 b8                  	addiw	a5, a5, -1147
80200f00: b6 07                        	slli	a5, a5, 13
80200f02: 93 87 77 3d                  	addi	a5, a5, 983
80200f06: ba 07                        	slli	a5, a5, 14
80200f08: 93 87 f7 28                  	addi	a5, a5, 655
80200f0c: b2 07                        	slli	a5, a5, 12
80200f0e: 93 87 37 5c                  	addi	a5, a5, 1475
80200f12: b3 b6 f6 02                  	<unknown>
80200f16: 89 82                        	srli	a3, a3, 2
80200f18: 93 07 40 06                  	addi	a5, zero, 100
80200f1c: b3 87 f6 02                  	<unknown>
80200f20: 1d 8d                        	sub	a0, a0, a5
80200f22: 06 05                        	slli	a0, a0, 1
80200f24: 79 36                        	addiw	a2, a2, -2
80200f26: 71 8d                        	and	a0, a0, a2
80200f28: 79 17                        	addi	a4, a4, -2
80200f2a: 46 95                        	add	a0, a0, a7
80200f2c: 03 06 15 00                  	lb	a2, 1(a0)
80200f30: 03 45 05 00                  	lbu	a0, 0(a0)
80200f34: 93 07 11 00                  	addi	a5, sp, 1
80200f38: ba 97                        	add	a5, a5, a4
80200f3a: a3 80 c7 00                  	sb	a2, 1(a5)
80200f3e: 23 80 a7 00                  	sb	a0, 0(a5)
80200f42: 36 85                        	add	a0, zero, a3
80200f44: 29 46                        	addi	a2, zero, 10
80200f46: e3 4b c5 ec                  	blt	a0, a2, -298
80200f4a: 06 05                        	slli	a0, a0, 1
80200f4c: 13 06 e7 ff                  	addi	a2, a4, -2
80200f50: 46 95                        	add	a0, a0, a7
80200f52: 83 06 15 00                  	lb	a3, 1(a0)
80200f56: 03 45 05 00                  	lbu	a0, 0(a0)
80200f5a: 13 07 11 00                  	addi	a4, sp, 1
80200f5e: 32 97                        	add	a4, a4, a2
80200f60: a3 00 d7 00                  	sb	a3, 1(a4)
80200f64: 23 00 a7 00                  	sb	a0, 0(a4)
80200f68: 13 05 11 00                  	addi	a0, sp, 1
80200f6c: 33 07 c5 00                  	add	a4, a0, a2
80200f70: 13 05 70 02                  	addi	a0, zero, 39
80200f74: b3 07 c5 40                  	sub	a5, a0, a2

0000000080200f78 .LBB479_11:
80200f78: 17 26 00 00                  	auipc	a2, 2
80200f7c: 13 06 86 1f                  	addi	a2, a2, 504
80200f80: 42 85                        	add	a0, zero, a6
80200f82: 81 46                        	mv	a3, zero
80200f84: 97 00 00 00                  	auipc	ra, 0
80200f88: e7 80 20 82                  	jalr	-2014(ra)
80200f8c: a2 79                        	ld	s3, 40(sp)
80200f8e: 42 79                        	ld	s2, 48(sp)
80200f90: e2 74                        	ld	s1, 56(sp)
80200f92: 06 64                        	ld	s0, 64(sp)
80200f94: a6 60                        	ld	ra, 72(sp)
80200f96: 61 61                        	addi	sp, sp, 80
80200f98: 82 80                        	ret

0000000080200f9a _ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha1dc7db1ae6e1ccdE:
80200f9a: 03 65 05 00                  	lwu	a0, 0(a0)
80200f9e: 2e 86                        	add	a2, zero, a1
80200fa0: 85 45                        	addi	a1, zero, 1
80200fa2: 17 03 00 00                  	auipc	t1, 0
80200fa6: 67 00 63 e4                  	jr	-442(t1)

0000000080200faa _ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hfdb2265e757676d6E:
80200faa: 08 61                        	ld	a0, 0(a0)
80200fac: 2e 86                        	add	a2, zero, a1
80200fae: 85 45                        	addi	a1, zero, 1
80200fb0: 17 03 00 00                  	auipc	t1, 0
80200fb4: 67 00 83 e3                  	jr	-456(t1)

0000000080200fb8 _ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h521c7eeed0830024E:
80200fb8: 90 75                        	ld	a2, 40(a1)
80200fba: 88 71                        	ld	a0, 32(a1)
80200fbc: 1c 6e                        	ld	a5, 24(a2)

0000000080200fbe .LBB514_1:
80200fbe: 97 25 00 00                  	auipc	a1, 2
80200fc2: 93 85 a5 46                  	addi	a1, a1, 1130
80200fc6: 15 46                        	addi	a2, zero, 5
80200fc8: 82 87                        	jr	a5

0000000080200fca _ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hc4f9c2310c108c28E:
80200fca: 10 65                        	ld	a2, 8(a0)
80200fcc: 08 61                        	ld	a0, 0(a0)
80200fce: 1c 6e                        	ld	a5, 24(a2)
80200fd0: 82 87                        	jr	a5

0000000080200fd2 _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb0118f6aeefbaeabE:
80200fd2: 14 61                        	ld	a3, 0(a0)
80200fd4: 10 65                        	ld	a2, 8(a0)
80200fd6: 2e 85                        	add	a0, zero, a1
80200fd8: b6 85                        	add	a1, zero, a3
80200fda: 17 03 00 00                  	auipc	t1, 0
80200fde: 67 00 63 a3                  	jr	-1482(t1)

0000000080200fe2 _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbc8f730ffe70e98bE:
80200fe2: 39 71                        	addi	sp, sp, -64
80200fe4: 06 fc                        	sd	ra, 56(sp)
80200fe6: 10 61                        	ld	a2, 0(a0)
80200fe8: 14 76                        	ld	a3, 40(a2)
80200fea: 88 71                        	ld	a0, 32(a1)
80200fec: 8c 75                        	ld	a1, 40(a1)
80200fee: 36 f8                        	sd	a3, 48(sp)
80200ff0: 14 72                        	ld	a3, 32(a2)
80200ff2: 36 f4                        	sd	a3, 40(sp)
80200ff4: 14 6e                        	ld	a3, 24(a2)
80200ff6: 36 f0                        	sd	a3, 32(sp)
80200ff8: 14 6a                        	ld	a3, 16(a2)
80200ffa: 36 ec                        	sd	a3, 24(sp)
80200ffc: 14 66                        	ld	a3, 8(a2)
80200ffe: 36 e8                        	sd	a3, 16(sp)
80201000: 10 62                        	ld	a2, 0(a2)
80201002: 32 e4                        	sd	a2, 8(sp)
80201004: 30 00                        	addi	a2, sp, 8
80201006: 97 f0 ff ff                  	auipc	ra, 1048575
8020100a: e7 80 00 5c                  	jalr	1472(ra)
8020100e: e2 70                        	ld	ra, 56(sp)
80201010: 21 61                        	addi	sp, sp, 64
80201012: 82 80                        	ret

0000000080201014 _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hf32251b00daa423dE:
80201014: 08 61                        	ld	a0, 0(a0)
80201016: 14 61                        	ld	a3, 0(a0)
80201018: 10 65                        	ld	a2, 8(a0)
8020101a: 2e 85                        	add	a0, zero, a1
8020101c: b6 85                        	add	a1, zero, a3
8020101e: 17 03 00 00                  	auipc	t1, 0
80201022: 67 00 23 9f                  	jr	-1550(t1)

0000000080201026 rust_begin_unwind:
80201026: 51 71                        	addi	sp, sp, -240
80201028: 86 f5                        	sd	ra, 232(sp)
8020102a: aa e0                        	sd	a0, 64(sp)

000000008020102c .LBB0_7:
8020102c: 17 25 00 00                  	auipc	a0, 2
80201030: 13 05 45 42                  	addi	a0, a0, 1060
80201034: 0c 61                        	ld	a1, 0(a0)

0000000080201036 .LBB0_8:
80201036: 17 25 00 00                  	auipc	a0, 2
8020103a: 13 05 25 43                  	addi	a0, a0, 1074
8020103e: 08 61                        	ld	a0, 0(a0)
80201040: 90 00                        	addi	a2, sp, 64
80201042: b2 e9                        	sd	a2, 208(sp)
80201044: b2 ed                        	sd	a2, 216(sp)

0000000080201046 .LBB0_9:
80201046: 97 06 00 00                  	auipc	a3, 0
8020104a: 93 86 46 08                  	addi	a3, a3, 132
8020104e: 2a fc                        	sd	a0, 56(sp)
80201050: 32 85                        	add	a0, zero, a2
80201052: 2e f8                        	sd	a1, 48(sp)
80201054: b6 85                        	add	a1, zero, a3
80201056: 97 00 00 00                  	auipc	ra, 0
8020105a: e7 80 60 0d                  	jalr	214(ra)
8020105e: 2a f4                        	sd	a0, 40(sp)
80201060: 2e f0                        	sd	a1, 32(sp)
80201062: 09 a0                        	j	2
80201064: 22 75                        	ld	a0, 40(sp)
80201066: aa e1                        	sd	a0, 192(sp)
80201068: 82 75                        	ld	a1, 32(sp)
8020106a: ae e5                        	sd	a1, 200(sp)
8020106c: 08 09                        	addi	a0, sp, 144
8020106e: 94 01                        	addi	a3, sp, 192
80201070: 05 46                        	addi	a2, zero, 1
80201072: e2 75                        	ld	a1, 56(sp)
80201074: 32 ec                        	sd	a2, 24(sp)
80201076: 62 67                        	ld	a4, 24(sp)
80201078: 97 00 00 00                  	auipc	ra, 0
8020107c: e7 80 60 15                  	jalr	342(ra)
80201080: 09 a0                        	j	2
80201082: 08 09                        	addi	a0, sp, 144
80201084: 2a e5                        	sd	a0, 136(sp)
80201086: aa f1                        	sd	a0, 224(sp)

0000000080201088 .LBB0_10:
80201088: 97 f5 ff ff                  	auipc	a1, 1048575
8020108c: 93 85 c5 50                  	addi	a1, a1, 1292
80201090: 97 00 00 00                  	auipc	ra, 0
80201094: e7 80 00 0e                  	jalr	224(ra)
80201098: 2a e8                        	sd	a0, 16(sp)
8020109a: 2e e4                        	sd	a1, 8(sp)
8020109c: 09 a0                        	j	2
8020109e: 42 65                        	ld	a0, 16(sp)
802010a0: aa fc                        	sd	a0, 120(sp)
802010a2: a2 65                        	ld	a1, 8(sp)
802010a4: 2e e1                        	sd	a1, 128(sp)
802010a6: a8 00                        	addi	a0, sp, 72
802010a8: 09 46                        	addi	a2, zero, 2
802010aa: b4 18                        	addi	a3, sp, 120
802010ac: 05 47                        	addi	a4, zero, 1
802010ae: c2 75                        	ld	a1, 48(sp)
802010b0: 97 00 00 00                  	auipc	ra, 0
802010b4: e7 80 e0 11                  	jalr	286(ra)
802010b8: 09 a0                        	j	2
802010ba: a8 00                        	addi	a0, sp, 72
802010bc: 97 f0 ff ff                  	auipc	ra, 1048575
802010c0: e7 80 80 15                  	jalr	344(ra)
802010c4: 09 a0                        	j	2
802010c6: 09 a0                        	j	2
802010c8: 01 a0                        	j	0

00000000802010ca _ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h8cf603764e0a2b3fE:
802010ca: 01 11                        	addi	sp, sp, -32
802010cc: 06 ec                        	sd	ra, 24(sp)
802010ce: 2a e4                        	sd	a0, 8(sp)
802010d0: 2e e8                        	sd	a1, 16(sp)
802010d2: 08 61                        	ld	a0, 0(a0)
802010d4: 97 f0 ff ff                  	auipc	ra, 1048575
802010d8: e7 80 00 33                  	jalr	816(ra)
802010dc: 2a e0                        	sd	a0, 0(sp)
802010de: 09 a0                        	j	2
802010e0: 02 65                        	ld	a0, 0(sp)
802010e2: e2 60                        	ld	ra, 24(sp)
802010e4: 05 61                        	addi	sp, sp, 32
802010e6: 82 80                        	ret

00000000802010e8 _ZN4core3fmt10ArgumentV13new17h201ef832e97aa6f5E:
802010e8: 5d 71                        	addi	sp, sp, -80
802010ea: 2a f8                        	sd	a0, 48(sp)
802010ec: 2e fc                        	sd	a1, 56(sp)
802010ee: ae e0                        	sd	a1, 64(sp)
802010f0: 2a ec                        	sd	a0, 24(sp)
802010f2: 2e e8                        	sd	a1, 16(sp)
802010f4: 09 a0                        	j	2
802010f6: 62 65                        	ld	a0, 24(sp)
802010f8: aa e4                        	sd	a0, 72(sp)
802010fa: 2a e4                        	sd	a0, 8(sp)
802010fc: 09 a0                        	j	2
802010fe: 22 65                        	ld	a0, 8(sp)
80201100: 2a f0                        	sd	a0, 32(sp)
80201102: c2 65                        	ld	a1, 16(sp)
80201104: 2e f4                        	sd	a1, 40(sp)
80201106: 61 61                        	addi	sp, sp, 80
80201108: 82 80                        	ret

000000008020110a _ZN4core3fmt10ArgumentV13new17h6721b717afbba0ecE:
8020110a: 5d 71                        	addi	sp, sp, -80
8020110c: 2a f8                        	sd	a0, 48(sp)
8020110e: 2e fc                        	sd	a1, 56(sp)
80201110: ae e0                        	sd	a1, 64(sp)
80201112: 2a ec                        	sd	a0, 24(sp)
80201114: 2e e8                        	sd	a1, 16(sp)
80201116: 09 a0                        	j	2
80201118: 62 65                        	ld	a0, 24(sp)
8020111a: aa e4                        	sd	a0, 72(sp)
8020111c: 2a e4                        	sd	a0, 8(sp)
8020111e: 09 a0                        	j	2
80201120: 22 65                        	ld	a0, 8(sp)
80201122: 2a f0                        	sd	a0, 32(sp)
80201124: c2 65                        	ld	a1, 16(sp)
80201126: 2e f4                        	sd	a1, 40(sp)
80201128: 61 61                        	addi	sp, sp, 80
8020112a: 82 80                        	ret

000000008020112c _ZN4core3fmt10ArgumentV13new17h72b93e85df3ea5a1E:
8020112c: 5d 71                        	addi	sp, sp, -80
8020112e: 2a f8                        	sd	a0, 48(sp)
80201130: 2e fc                        	sd	a1, 56(sp)
80201132: ae e0                        	sd	a1, 64(sp)
80201134: 2a ec                        	sd	a0, 24(sp)
80201136: 2e e8                        	sd	a1, 16(sp)
80201138: 09 a0                        	j	2
8020113a: 62 65                        	ld	a0, 24(sp)
8020113c: aa e4                        	sd	a0, 72(sp)
8020113e: 2a e4                        	sd	a0, 8(sp)
80201140: 09 a0                        	j	2
80201142: 22 65                        	ld	a0, 8(sp)
80201144: 2a f0                        	sd	a0, 32(sp)
80201146: c2 65                        	ld	a1, 16(sp)
80201148: 2e f4                        	sd	a1, 40(sp)
8020114a: 61 61                        	addi	sp, sp, 80
8020114c: 82 80                        	ret

000000008020114e _ZN4core3fmt10ArgumentV13new17hc7927a9dfa6ab335E:
8020114e: 5d 71                        	addi	sp, sp, -80
80201150: 2a f8                        	sd	a0, 48(sp)
80201152: 2e fc                        	sd	a1, 56(sp)
80201154: ae e0                        	sd	a1, 64(sp)
80201156: 2a ec                        	sd	a0, 24(sp)
80201158: 2e e8                        	sd	a1, 16(sp)
8020115a: 09 a0                        	j	2
8020115c: 62 65                        	ld	a0, 24(sp)
8020115e: aa e4                        	sd	a0, 72(sp)
80201160: 2a e4                        	sd	a0, 8(sp)
80201162: 09 a0                        	j	2
80201164: 22 65                        	ld	a0, 8(sp)
80201166: 2a f0                        	sd	a0, 32(sp)
80201168: c2 65                        	ld	a1, 16(sp)
8020116a: 2e f4                        	sd	a1, 40(sp)
8020116c: 61 61                        	addi	sp, sp, 80
8020116e: 82 80                        	ret

0000000080201170 _ZN4core3fmt10ArgumentV13new17hde0e33b34f2b63e5E:
80201170: 5d 71                        	addi	sp, sp, -80
80201172: 2a f8                        	sd	a0, 48(sp)
80201174: 2e fc                        	sd	a1, 56(sp)
80201176: ae e0                        	sd	a1, 64(sp)
80201178: 2a ec                        	sd	a0, 24(sp)
8020117a: 2e e8                        	sd	a1, 16(sp)
8020117c: 09 a0                        	j	2
8020117e: 62 65                        	ld	a0, 24(sp)
80201180: aa e4                        	sd	a0, 72(sp)
80201182: 2a e4                        	sd	a0, 8(sp)
80201184: 09 a0                        	j	2
80201186: 22 65                        	ld	a0, 8(sp)
80201188: 2a f0                        	sd	a0, 32(sp)
8020118a: c2 65                        	ld	a1, 16(sp)
8020118c: 2e f4                        	sd	a1, 40(sp)
8020118e: 61 61                        	addi	sp, sp, 80
80201190: 82 80                        	ret

0000000080201192 _ZN52_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..Display$GT$3fmt17hcddf7319bfe009c0E:
80201192: 01 11                        	addi	sp, sp, -32
80201194: 06 ec                        	sd	ra, 24(sp)
80201196: 2a e4                        	sd	a0, 8(sp)
80201198: 2e e8                        	sd	a1, 16(sp)
8020119a: 08 61                        	ld	a0, 0(a0)
8020119c: 97 00 00 00                  	auipc	ra, 0
802011a0: e7 80 e0 e0                  	jalr	-498(ra)
802011a4: 2a e0                        	sd	a0, 0(sp)
802011a6: 09 a0                        	j	2
802011a8: 02 65                        	ld	a0, 0(sp)
802011aa: e2 60                        	ld	ra, 24(sp)
802011ac: 05 61                        	addi	sp, sp, 32
802011ae: 82 80                        	ret

00000000802011b0 _ZN53_$LT$$RF$mut$u20$T$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h1546739b87d4d023E:
802011b0: 01 11                        	addi	sp, sp, -32
802011b2: 06 ec                        	sd	ra, 24(sp)
802011b4: 2a e4                        	sd	a0, 8(sp)
802011b6: 2e e8                        	sd	a1, 16(sp)
802011b8: 08 61                        	ld	a0, 0(a0)
802011ba: 97 00 00 00                  	auipc	ra, 0
802011be: e7 80 e0 ba                  	jalr	-1106(ra)
802011c2: 2a e0                        	sd	a0, 0(sp)
802011c4: 09 a0                        	j	2
802011c6: 02 65                        	ld	a0, 0(sp)
802011c8: e2 60                        	ld	ra, 24(sp)
802011ca: 05 61                        	addi	sp, sp, 32
802011cc: 82 80                        	ret

00000000802011ce _ZN4core3fmt9Arguments6new_v117h29435e54f21a433bE:
802011ce: 79 71                        	addi	sp, sp, -48
802011d0: 2e e8                        	sd	a1, 16(sp)
802011d2: 32 ec                        	sd	a2, 24(sp)
802011d4: 36 f0                        	sd	a3, 32(sp)
802011d6: 3a f4                        	sd	a4, 40(sp)
802011d8: 81 47                        	mv	a5, zero
802011da: 3e e0                        	sd	a5, 0(sp)
802011dc: 0c e1                        	sd	a1, 0(a0)
802011de: 10 e5                        	sd	a2, 8(a0)
802011e0: 82 65                        	ld	a1, 0(sp)
802011e2: 22 66                        	ld	a2, 8(sp)
802011e4: 0c e9                        	sd	a1, 16(a0)
802011e6: 10 ed                        	sd	a2, 24(a0)
802011e8: 14 f1                        	sd	a3, 32(a0)
802011ea: 18 f5                        	sd	a4, 40(a0)
802011ec: 45 61                        	addi	sp, sp, 48
802011ee: 82 80                        	ret

00000000802011f0 _ZN4core3ptr13drop_in_place17h2f4c75a541ad9e3bE:
802011f0: 41 11                        	addi	sp, sp, -16
802011f2: 2a e4                        	sd	a0, 8(sp)
802011f4: 41 01                        	addi	sp, sp, 16
802011f6: 82 80                        	ret

00000000802011f8 _ZN4core3ptr13drop_in_place17h35367304aefc0e6cE:
802011f8: 41 11                        	addi	sp, sp, -16
802011fa: 2a e4                        	sd	a0, 8(sp)
802011fc: 41 01                        	addi	sp, sp, 16
802011fe: 82 80                        	ret

0000000080201200 _ZN4core4char7methods15encode_utf8_raw17hc658ca42979be01dE:
80201200: 45 71                        	addi	sp, sp, -464
80201202: 86 e7                        	sd	ra, 456(sp)
80201204: aa 86                        	add	a3, zero, a0
80201206: 2a d3                        	sw	a0, 164(sp)
80201208: ae ea                        	sd	a1, 336(sp)
8020120a: b2 ee                        	sd	a2, 344(sp)
8020120c: 32 ed                        	sd	a2, 152(sp)
8020120e: 2e e9                        	sd	a1, 144(sp)
80201210: 36 e5                        	sd	a3, 136(sp)
80201212: 97 00 00 00                  	auipc	ra, 0
80201216: e7 80 c0 27                  	jalr	636(ra)
8020121a: 2a f5                        	sd	a0, 168(sp)
8020121c: 09 a0                        	j	2
8020121e: 2a 75                        	ld	a0, 168(sp)

0000000080201220 .LBB0_22:
80201220: 17 26 00 00                  	auipc	a2, 2
80201224: 13 06 06 2c                  	addi	a2, a2, 704
80201228: ca 65                        	ld	a1, 144(sp)
8020122a: 2a e1                        	sd	a0, 128(sp)
8020122c: 2e 85                        	add	a0, zero, a1
8020122e: ea 65                        	ld	a1, 152(sp)
80201230: 97 00 00 00                  	auipc	ra, 0
80201234: e7 80 60 73                  	jalr	1846(ra)
80201238: aa fc                        	sd	a0, 120(sp)
8020123a: ae f8                        	sd	a1, 112(sp)
8020123c: 09 a0                        	j	2
8020123e: 0a 65                        	ld	a0, 128(sp)
80201240: 2a f9                        	sd	a0, 176(sp)
80201242: e6 75                        	ld	a1, 120(sp)
80201244: 2e fd                        	sd	a1, 184(sp)
80201246: 46 76                        	ld	a2, 112(sp)
80201248: b2 e1                        	sd	a2, 192(sp)
8020124a: 85 46                        	addi	a3, zero, 1
8020124c: 0a 67                        	ld	a4, 128(sp)
8020124e: aa f4                        	sd	a0, 104(sp)
80201250: 63 02 d7 02                  	beq	a4, a3, 36
80201254: 09 a0                        	j	2
80201256: 09 45                        	addi	a0, zero, 2
80201258: a6 75                        	ld	a1, 104(sp)
8020125a: 63 81 a5 04                  	beq	a1, a0, 66
8020125e: 09 a0                        	j	2
80201260: 0d 45                        	addi	a0, zero, 3
80201262: a6 75                        	ld	a1, 104(sp)
80201264: 63 81 a5 04                  	beq	a1, a0, 66
80201268: 09 a0                        	j	2
8020126a: 11 45                        	addi	a0, zero, 4
8020126c: a6 75                        	ld	a1, 104(sp)
8020126e: 63 81 a5 04                  	beq	a1, a0, 66
80201272: 31 a0                        	j	12
80201274: 0e 65                        	ld	a0, 192(sp)
80201276: 81 45                        	mv	a1, zero
80201278: 63 11 b5 04                  	bne	a0, a1, 66
8020127c: 09 a0                        	j	2

000000008020127e .LBB0_23:
8020127e: 17 25 00 00                  	auipc	a0, 2
80201282: 13 05 25 30                  	addi	a0, a0, 770
80201286: 0c 61                        	ld	a1, 0(a0)
80201288: 4a 65                        	ld	a0, 144(sp)
8020128a: 6a 66                        	ld	a2, 152(sp)
8020128c: ae f0                        	sd	a1, 96(sp)
8020128e: b2 85                        	add	a1, zero, a2
80201290: 97 00 00 00                  	auipc	ra, 0
80201294: e7 80 80 5e                  	jalr	1512(ra)
80201298: aa e2                        	sd	a0, 320(sp)
8020129a: fd a0                        	j	238
8020129c: 0e 65                        	ld	a0, 192(sp)
8020129e: 85 45                        	addi	a1, zero, 1
802012a0: 63 e4 a5 02                  	bltu	a1, a0, 40
802012a4: e9 bf                        	j	-38
802012a6: 0e 65                        	ld	a0, 192(sp)
802012a8: 89 45                        	addi	a1, zero, 2
802012aa: 63 e4 a5 04                  	bltu	a1, a0, 72
802012ae: c1 bf                        	j	-48
802012b0: 0e 65                        	ld	a0, 192(sp)
802012b2: 8d 45                        	addi	a1, zero, 3
802012b4: 63 ef a5 06                  	bltu	a1, a0, 126
802012b8: d9 b7                        	j	-58
802012ba: 6a 75                        	ld	a0, 184(sp)
802012bc: 2a f7                        	sd	a0, 424(sp)
802012be: 83 05 41 0a                  	lb	a1, 164(sp)
802012c2: 23 00 b5 00                  	sb	a1, 0(a0)
802012c6: 8d a2                        	j	354
802012c8: 6a 75                        	ld	a0, 184(sp)
802012ca: 2a ef                        	sd	a0, 408(sp)
802012cc: 93 05 15 00                  	addi	a1, a0, 1
802012d0: 2e f3                        	sd	a1, 416(sp)
802012d2: 9a 55                        	lw	a1, 164(sp)
802012d4: 99 81                        	srli	a1, a1, 6
802012d6: fd 89                        	andi	a1, a1, 31
802012d8: 93 e5 05 0c                  	ori	a1, a1, 192
802012dc: 23 00 b5 00                  	sb	a1, 0(a0)
802012e0: 83 45 41 0a                  	lbu	a1, 164(sp)
802012e4: 93 f5 f5 03                  	andi	a1, a1, 63
802012e8: 93 e5 05 08                  	ori	a1, a1, 128
802012ec: a3 00 b5 00                  	sb	a1, 1(a0)
802012f0: 25 aa                        	j	312
802012f2: 6a 75                        	ld	a0, 184(sp)
802012f4: 2a e3                        	sd	a0, 384(sp)
802012f6: 93 05 15 00                  	addi	a1, a0, 1
802012fa: 2e e7                        	sd	a1, 392(sp)
802012fc: 93 05 25 00                  	addi	a1, a0, 2
80201300: 2e eb                        	sd	a1, 400(sp)
80201302: 9a 55                        	lw	a1, 164(sp)
80201304: b1 81                        	srli	a1, a1, 12
80201306: bd 89                        	andi	a1, a1, 15
80201308: 93 e5 05 0e                  	ori	a1, a1, 224
8020130c: 23 00 b5 00                  	sb	a1, 0(a0)
80201310: 9a 55                        	lw	a1, 164(sp)
80201312: 99 81                        	srli	a1, a1, 6
80201314: 93 f5 f5 03                  	andi	a1, a1, 63
80201318: 93 e5 05 08                  	ori	a1, a1, 128
8020131c: a3 00 b5 00                  	sb	a1, 1(a0)
80201320: 83 45 41 0a                  	lbu	a1, 164(sp)
80201324: 93 f5 f5 03                  	andi	a1, a1, 63
80201328: 93 e5 05 08                  	ori	a1, a1, 128
8020132c: 23 01 b5 00                  	sb	a1, 2(a0)
80201330: e5 a8                        	j	248
80201332: 6a 75                        	ld	a0, 184(sp)
80201334: aa f2                        	sd	a0, 352(sp)
80201336: 93 05 15 00                  	addi	a1, a0, 1
8020133a: ae f6                        	sd	a1, 360(sp)
8020133c: 93 05 25 00                  	addi	a1, a0, 2
80201340: ae fa                        	sd	a1, 368(sp)
80201342: 93 05 35 00                  	addi	a1, a0, 3
80201346: ae fe                        	sd	a1, 376(sp)
80201348: 9a 55                        	lw	a1, 164(sp)
8020134a: c9 81                        	srli	a1, a1, 18
8020134c: 9d 89                        	andi	a1, a1, 7
8020134e: 93 e5 05 0f                  	ori	a1, a1, 240
80201352: 23 00 b5 00                  	sb	a1, 0(a0)
80201356: 9a 55                        	lw	a1, 164(sp)
80201358: b1 81                        	srli	a1, a1, 12
8020135a: 93 f5 f5 03                  	andi	a1, a1, 63
8020135e: 93 e5 05 08                  	ori	a1, a1, 128
80201362: a3 00 b5 00                  	sb	a1, 1(a0)
80201366: 9a 55                        	lw	a1, 164(sp)
80201368: 99 81                        	srli	a1, a1, 6
8020136a: 93 f5 f5 03                  	andi	a1, a1, 63
8020136e: 93 e5 05 08                  	ori	a1, a1, 128
80201372: 23 01 b5 00                  	sb	a1, 2(a0)
80201376: 83 45 41 0a                  	lbu	a1, 164(sp)
8020137a: 93 f5 f5 03                  	andi	a1, a1, 63
8020137e: 93 e5 05 08                  	ori	a1, a1, 128
80201382: a3 01 b5 00                  	sb	a1, 3(a0)
80201386: 4d a0                        	j	162
80201388: 28 11                        	addi	a0, sp, 168
8020138a: 2a f6                        	sd	a0, 296(sp)
8020138c: 4c 11                        	addi	a1, sp, 164
8020138e: 2e fa                        	sd	a1, 304(sp)
80201390: 90 02                        	addi	a2, sp, 320
80201392: 32 fe                        	sd	a2, 312(sp)
80201394: 2a fb                        	sd	a0, 432(sp)
80201396: 2e ff                        	sd	a1, 440(sp)
80201398: b2 e3                        	sd	a2, 448(sp)

000000008020139a .LBB0_24:
8020139a: 97 06 00 00                  	auipc	a3, 0
8020139e: 93 86 06 c1                  	addi	a3, a3, -1008
802013a2: ae ec                        	sd	a1, 88(sp)
802013a4: b6 85                        	add	a1, zero, a3
802013a6: b2 e8                        	sd	a2, 80(sp)
802013a8: 97 00 00 00                  	auipc	ra, 0
802013ac: e7 80 60 da                  	jalr	-602(ra)
802013b0: aa e4                        	sd	a0, 72(sp)
802013b2: ae e0                        	sd	a1, 64(sp)
802013b4: 09 a0                        	j	2

00000000802013b6 .LBB0_25:
802013b6: 97 05 00 00                  	auipc	a1, 0
802013ba: 93 85 25 92                  	addi	a1, a1, -1758
802013be: 66 65                        	ld	a0, 88(sp)
802013c0: 97 00 00 00                  	auipc	ra, 0
802013c4: e7 80 a0 d4                  	jalr	-694(ra)
802013c8: 2a fc                        	sd	a0, 56(sp)
802013ca: 2e f8                        	sd	a1, 48(sp)
802013cc: 09 a0                        	j	2

00000000802013ce .LBB0_26:
802013ce: 97 05 00 00                  	auipc	a1, 0
802013d2: 93 85 c5 bd                  	addi	a1, a1, -1060
802013d6: 46 65                        	ld	a0, 80(sp)
802013d8: 97 00 00 00                  	auipc	ra, 0
802013dc: e7 80 60 d7                  	jalr	-650(ra)
802013e0: 2a f4                        	sd	a0, 40(sp)
802013e2: 2e f0                        	sd	a1, 32(sp)
802013e4: 09 a0                        	j	2
802013e6: 26 65                        	ld	a0, 72(sp)
802013e8: aa fd                        	sd	a0, 248(sp)
802013ea: 86 65                        	ld	a1, 64(sp)
802013ec: 2e e2                        	sd	a1, 256(sp)
802013ee: 62 76                        	ld	a2, 56(sp)
802013f0: 32 e6                        	sd	a2, 264(sp)
802013f2: c2 76                        	ld	a3, 48(sp)
802013f4: 36 ea                        	sd	a3, 272(sp)
802013f6: 22 77                        	ld	a4, 40(sp)
802013f8: 3a ee                        	sd	a4, 280(sp)
802013fa: 82 77                        	ld	a5, 32(sp)
802013fc: 3e f2                        	sd	a5, 288(sp)
802013fe: a8 01                        	addi	a0, sp, 200
80201400: b4 19                        	addi	a3, sp, 248
80201402: 0d 48                        	addi	a6, zero, 3
80201404: 86 75                        	ld	a1, 96(sp)
80201406: 42 86                        	add	a2, zero, a6
80201408: 42 87                        	add	a4, zero, a6
8020140a: 97 00 00 00                  	auipc	ra, 0
8020140e: e7 80 40 dc                  	jalr	-572(ra)
80201412: 09 a0                        	j	2

0000000080201414 .LBB0_27:
80201414: 97 25 00 00                  	auipc	a1, 2
80201418: 93 85 c5 1d                  	addi	a1, a1, 476
8020141c: a8 01                        	addi	a0, sp, 200
8020141e: 97 f0 ff ff                  	auipc	ra, 1048575
80201422: e7 80 e0 14                  	jalr	334(ra)
80201426: 00 00                        	unimp	
80201428: 2a 75                        	ld	a0, 168(sp)
8020142a: aa e6                        	sd	a0, 328(sp)

000000008020142c .LBB0_28:
8020142c: 97 26 00 00                  	auipc	a3, 2
80201430: 93 86 c6 0c                  	addi	a3, a3, 204
80201434: ca 65                        	ld	a1, 144(sp)
80201436: 2a ec                        	sd	a0, 24(sp)
80201438: 2e 85                        	add	a0, zero, a1
8020143a: ea 65                        	ld	a1, 152(sp)
8020143c: 62 66                        	ld	a2, 24(sp)
8020143e: 97 00 00 00                  	auipc	ra, 0
80201442: e7 80 a0 4f                  	jalr	1274(ra)
80201446: 2a e8                        	sd	a0, 16(sp)
80201448: 2e e4                        	sd	a1, 8(sp)
8020144a: 09 a0                        	j	2
8020144c: 42 65                        	ld	a0, 16(sp)
8020144e: a2 65                        	ld	a1, 8(sp)
80201450: be 60                        	ld	ra, 456(sp)
80201452: 79 61                        	addi	sp, sp, 464
80201454: 82 80                        	ret

0000000080201456 _ZN4core4char7methods22_$LT$impl$u20$char$GT$11encode_utf817h2a51dd2a7fd4fbb6E:
80201456: 5d 71                        	addi	sp, sp, -80
80201458: 86 e4                        	sd	ra, 72(sp)
8020145a: aa 86                        	add	a3, zero, a0
8020145c: 2a da                        	sw	a0, 52(sp)
8020145e: 2e fc                        	sd	a1, 56(sp)
80201460: b2 e0                        	sd	a2, 64(sp)
80201462: 36 f4                        	sd	a3, 40(sp)
80201464: 97 00 00 00                  	auipc	ra, 0
80201468: e7 80 c0 d9                  	jalr	-612(ra)
8020146c: 2a f0                        	sd	a0, 32(sp)
8020146e: 2e ec                        	sd	a1, 24(sp)
80201470: 09 a0                        	j	2
80201472: 02 75                        	ld	a0, 32(sp)
80201474: e2 65                        	ld	a1, 24(sp)
80201476: 97 00 00 00                  	auipc	ra, 0
8020147a: e7 80 a0 10                  	jalr	266(ra)
8020147e: 2a e8                        	sd	a0, 16(sp)
80201480: 2e e4                        	sd	a1, 8(sp)
80201482: 09 a0                        	j	2
80201484: 42 65                        	ld	a0, 16(sp)
80201486: a2 65                        	ld	a1, 8(sp)
80201488: a6 60                        	ld	ra, 72(sp)
8020148a: 61 61                        	addi	sp, sp, 80
8020148c: 82 80                        	ret

000000008020148e _ZN4core4char7methods8len_utf817h6510ddd9ffbe7b2dE:
8020148e: 01 11                        	addi	sp, sp, -32
80201490: 9b 05 05 00                  	sext.w	a1, a0
80201494: 2a 86                        	add	a2, zero, a0
80201496: 2a ce                        	sw	a0, 28(sp)
80201498: 13 05 00 08                  	addi	a0, zero, 128
8020149c: 32 e4                        	sd	a2, 8(sp)
8020149e: 63 ea a5 00                  	bltu	a1, a0, 20
802014a2: 09 a0                        	j	2
802014a4: 22 65                        	ld	a0, 8(sp)
802014a6: 9b 55 b5 00                  	srliw	a1, a0, 11
802014aa: 01 46                        	mv	a2, zero
802014ac: 63 8d c5 00                  	beq	a1, a2, 26
802014b0: 21 a0                        	j	8
802014b2: 05 45                        	addi	a0, zero, 1
802014b4: 2a e8                        	sd	a0, 16(sp)
802014b6: 1d a0                        	j	38
802014b8: 22 65                        	ld	a0, 8(sp)
802014ba: 9b 55 05 01                  	srliw	a1, a0, 16
802014be: 01 46                        	mv	a2, zero
802014c0: 63 89 c5 00                  	beq	a1, a2, 18
802014c4: 21 a0                        	j	8
802014c6: 09 45                        	addi	a0, zero, 2
802014c8: 2a e8                        	sd	a0, 16(sp)
802014ca: 01 a8                        	j	16
802014cc: 11 45                        	addi	a0, zero, 4
802014ce: 2a e8                        	sd	a0, 16(sp)
802014d0: 21 a0                        	j	8
802014d2: 0d 45                        	addi	a0, zero, 3
802014d4: 2a e8                        	sd	a0, 16(sp)
802014d6: 09 a0                        	j	2
802014d8: 09 a0                        	j	2
802014da: 09 a0                        	j	2
802014dc: 42 65                        	ld	a0, 16(sp)
802014de: 05 61                        	addi	sp, sp, 32
802014e0: 82 80                        	ret

00000000802014e2 _ZN4core3str11unwrap_or_017h3db272e821d958a4E:
802014e2: 41 11                        	addi	sp, sp, -16
802014e4: 2a e0                        	sd	a0, 0(sp)
802014e6: b3 35 a0 00                  	snez	a1, a0
802014ea: 01 46                        	mv	a2, zero
802014ec: 63 04 c5 00                  	beq	a0, a2, 8
802014f0: 09 a0                        	j	2
802014f2: 31 a0                        	j	12
802014f4: 01 45                        	mv	a0, zero
802014f6: 23 07 a1 00                  	sb	a0, 14(sp)
802014fa: 11 a8                        	j	20
802014fc: 00 00                        	unimp	
802014fe: 02 65                        	ld	a0, 0(sp)
80201500: 03 05 05 00                  	lb	a0, 0(a0)
80201504: a3 07 a1 00                  	sb	a0, 15(sp)
80201508: 23 07 a1 00                  	sb	a0, 14(sp)
8020150c: 09 a0                        	j	2
8020150e: 03 05 e1 00                  	lb	a0, 14(sp)
80201512: 41 01                        	addi	sp, sp, 16
80201514: 82 80                        	ret

0000000080201516 _ZN4core3str15utf8_first_byte17h4128d37b3be252dfE:
80201516: 41 11                        	addi	sp, sp, -16
80201518: 2e 86                        	add	a2, zero, a1
8020151a: aa 86                        	add	a3, zero, a0
8020151c: a3 05 a1 00                  	sb	a0, 11(sp)
80201520: 2e c6                        	sw	a1, 12(sp)
80201522: 9d 89                        	andi	a1, a1, 7
80201524: 13 07 f0 07                  	addi	a4, zero, 127
80201528: b3 55 b7 00                  	srl	a1, a4, a1
8020152c: 6d 8d                        	and	a0, a0, a1
8020152e: 41 01                        	addi	sp, sp, 16
80201530: 82 80                        	ret

0000000080201532 _ZN4core3str18utf8_acc_cont_byte17hfcd205be2a814c44E:
80201532: 41 11                        	addi	sp, sp, -16
80201534: 2e 86                        	add	a2, zero, a1
80201536: aa 86                        	add	a3, zero, a0
80201538: 2a c4                        	sw	a0, 8(sp)
8020153a: a3 07 b1 00                  	sb	a1, 15(sp)
8020153e: 1a 05                        	slli	a0, a0, 6
80201540: 93 f5 f5 03                  	andi	a1, a1, 63
80201544: 4d 8d                        	or	a0, a0, a1
80201546: 41 01                        	addi	sp, sp, 16
80201548: 82 80                        	ret

000000008020154a _ZN4core3str21_$LT$impl$u20$str$GT$5chars17hc6e91c7e8eba136aE:
8020154a: 59 71                        	addi	sp, sp, -112
8020154c: 86 f4                        	sd	ra, 104(sp)
8020154e: 2a fc                        	sd	a0, 56(sp)
80201550: ae e0                        	sd	a1, 64(sp)
80201552: aa ec                        	sd	a0, 88(sp)
80201554: ae f0                        	sd	a1, 96(sp)
80201556: aa e4                        	sd	a0, 72(sp)
80201558: ae e8                        	sd	a1, 80(sp)
8020155a: 2a f0                        	sd	a0, 32(sp)
8020155c: 2e ec                        	sd	a1, 24(sp)
8020155e: 09 a0                        	j	2
80201560: 02 75                        	ld	a0, 32(sp)
80201562: e2 65                        	ld	a1, 24(sp)
80201564: 97 00 00 00                  	auipc	ra, 0
80201568: e7 80 40 32                  	jalr	804(ra)
8020156c: 2a e8                        	sd	a0, 16(sp)
8020156e: 2e e4                        	sd	a1, 8(sp)
80201570: 09 a0                        	j	2
80201572: 42 65                        	ld	a0, 16(sp)
80201574: 2a f4                        	sd	a0, 40(sp)
80201576: a2 65                        	ld	a1, 8(sp)
80201578: 2e f8                        	sd	a1, 48(sp)
8020157a: a6 70                        	ld	ra, 104(sp)
8020157c: 65 61                        	addi	sp, sp, 112
8020157e: 82 80                        	ret

0000000080201580 _ZN4core3str23from_utf8_unchecked_mut17h2a02401009ab2db2E:
80201580: 41 11                        	addi	sp, sp, -16
80201582: 2a e0                        	sd	a0, 0(sp)
80201584: 2e e4                        	sd	a1, 8(sp)
80201586: 41 01                        	addi	sp, sp, 16
80201588: 82 80                        	ret

000000008020158a _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd7578050d5b4a346E:
8020158a: 79 71                        	addi	sp, sp, -48
8020158c: 06 f4                        	sd	ra, 40(sp)
8020158e: 2a f0                        	sd	a0, 32(sp)
80201590: 97 00 00 00                  	auipc	ra, 0
80201594: e7 80 a0 02                  	jalr	42(ra)
80201598: 2a ec                        	sd	a0, 24(sp)
8020159a: 2e e8                        	sd	a1, 16(sp)
8020159c: 09 a0                        	j	2
8020159e: 62 65                        	ld	a0, 24(sp)
802015a0: c2 65                        	ld	a1, 16(sp)
802015a2: 97 00 00 00                  	auipc	ra, 0
802015a6: e7 80 60 1d                  	jalr	470(ra)
802015aa: 02 15                        	slli	a0, a0, 32
802015ac: 01 91                        	srli	a0, a0, 32
802015ae: 2a e4                        	sd	a0, 8(sp)
802015b0: 09 a0                        	j	2
802015b2: 22 65                        	ld	a0, 8(sp)
802015b4: a2 70                        	ld	ra, 40(sp)
802015b6: 45 61                        	addi	sp, sp, 48
802015b8: 82 80                        	ret

00000000802015ba _ZN4core3str15next_code_point17hb7f85faf684d5cf3E:
802015ba: 31 71                        	addi	sp, sp, -192
802015bc: 06 fd                        	sd	ra, 184(sp)
802015be: 2a e5                        	sd	a0, 136(sp)
802015c0: aa f4                        	sd	a0, 104(sp)
802015c2: 97 00 00 00                  	auipc	ra, 0
802015c6: e7 80 40 3c                  	jalr	964(ra)
802015ca: aa f0                        	sd	a0, 96(sp)
802015cc: 09 a0                        	j	2
802015ce: 06 75                        	ld	a0, 96(sp)
802015d0: 97 00 00 00                  	auipc	ra, 0
802015d4: e7 80 40 26                  	jalr	612(ra)
802015d8: aa fc                        	sd	a0, 120(sp)
802015da: 09 a0                        	j	2
802015dc: 66 75                        	ld	a0, 120(sp)
802015de: 93 35 15 00                  	seqz	a1, a0
802015e2: 01 46                        	mv	a2, zero
802015e4: 63 14 c5 00                  	bne	a0, a2, 8
802015e8: 09 a0                        	j	2
802015ea: 39 a8                        	j	30
802015ec: 66 75                        	ld	a0, 120(sp)
802015ee: 2a ed                        	sd	a0, 152(sp)
802015f0: 03 05 05 00                  	lb	a0, 0(a0)
802015f4: 93 75 f5 0f                  	andi	a1, a0, 255
802015f8: a3 03 a1 0a                  	sb	a0, 167(sp)
802015fc: 7d 56                        	addi	a2, zero, -1
802015fe: ae ec                        	sd	a1, 88(sp)
80201600: 63 41 a6 04                  	blt	a2, a0, 66
80201604: 2d a0                        	j	42
80201606: 00 00                        	unimp	
80201608: 97 00 00 00                  	auipc	ra, 0
8020160c: e7 80 a0 21                  	jalr	538(ra)
80201610: 31 a0                        	j	12
80201612: 46 55                        	lw	a0, 112(sp)
80201614: d6 55                        	lw	a1, 116(sp)
80201616: ea 70                        	ld	ra, 184(sp)
80201618: 29 61                        	addi	sp, sp, 192
8020161a: 82 80                        	ret
8020161c: 97 00 00 00                  	auipc	ra, 0
80201620: e7 80 c0 20                  	jalr	524(ra)
80201624: aa d8                        	sw	a0, 112(sp)
80201626: ae da                        	sw	a1, 116(sp)
80201628: 09 a0                        	j	2
8020162a: 09 a0                        	j	2
8020162c: dd b7                        	j	-26
8020162e: 89 45                        	addi	a1, zero, 2
80201630: 66 65                        	ld	a0, 88(sp)
80201632: 97 00 00 00                  	auipc	ra, 0
80201636: e7 80 40 ee                  	jalr	-284(ra)
8020163a: aa 85                        	add	a1, zero, a0
8020163c: 2a d5                        	sw	a0, 168(sp)
8020163e: ae e8                        	sd	a1, 80(sp)
80201640: 31 a0                        	j	12
80201642: 66 65                        	ld	a0, 88(sp)
80201644: aa da                        	sw	a0, 116(sp)
80201646: 85 45                        	addi	a1, zero, 1
80201648: ae d8                        	sw	a1, 112(sp)
8020164a: cd b7                        	j	-30
8020164c: 26 75                        	ld	a0, 104(sp)
8020164e: 97 00 00 00                  	auipc	ra, 0
80201652: e7 80 80 33                  	jalr	824(ra)
80201656: aa e4                        	sd	a0, 72(sp)
80201658: 09 a0                        	j	2
8020165a: 26 65                        	ld	a0, 72(sp)
8020165c: 97 00 00 00                  	auipc	ra, 0
80201660: e7 80 60 e8                  	jalr	-378(ra)
80201664: aa 85                        	add	a1, zero, a0
80201666: 23 07 a1 0a                  	sb	a0, 174(sp)
8020166a: ae e0                        	sd	a1, 64(sp)
8020166c: 09 a0                        	j	2
8020166e: 46 65                        	ld	a0, 80(sp)
80201670: 86 65                        	ld	a1, 64(sp)
80201672: 97 00 00 00                  	auipc	ra, 0
80201676: e7 80 00 ec                  	jalr	-320(ra)
8020167a: 2a c3                        	sw	a0, 132(sp)
8020167c: 09 a0                        	j	2
8020167e: 13 05 f0 0d                  	addi	a0, zero, 223
80201682: e6 65                        	ld	a1, 88(sp)
80201684: 63 64 b5 00                  	bltu	a0, a1, 8
80201688: 09 a0                        	j	2
8020168a: 4d a0                        	j	162
8020168c: 26 75                        	ld	a0, 104(sp)
8020168e: 97 00 00 00                  	auipc	ra, 0
80201692: e7 80 80 2f                  	jalr	760(ra)
80201696: 2a fc                        	sd	a0, 56(sp)
80201698: 09 a0                        	j	2
8020169a: 62 75                        	ld	a0, 56(sp)
8020169c: 97 00 00 00                  	auipc	ra, 0
802016a0: e7 80 60 e4                  	jalr	-442(ra)
802016a4: aa 85                        	add	a1, zero, a0
802016a6: a3 07 a1 0a                  	sb	a0, 175(sp)
802016aa: 2e f8                        	sd	a1, 48(sp)
802016ac: 09 a0                        	j	2
802016ae: 06 65                        	ld	a0, 64(sp)
802016b0: 13 75 f5 03                  	andi	a0, a0, 63
802016b4: c2 75                        	ld	a1, 48(sp)
802016b6: 97 00 00 00                  	auipc	ra, 0
802016ba: e7 80 c0 e7                  	jalr	-388(ra)
802016be: aa 85                        	add	a1, zero, a0
802016c0: 2a d9                        	sw	a0, 176(sp)
802016c2: 2e f4                        	sd	a1, 40(sp)
802016c4: 09 a0                        	j	2
802016c6: 46 65                        	ld	a0, 80(sp)
802016c8: 93 15 c5 00                  	slli	a1, a0, 12
802016cc: 22 76                        	ld	a2, 40(sp)
802016ce: d1 8d                        	or	a1, a1, a2
802016d0: 2e c3                        	sw	a1, 132(sp)
802016d2: 93 05 f0 0e                  	addi	a1, zero, 239
802016d6: e6 66                        	ld	a3, 88(sp)
802016d8: 63 e4 d5 00                  	bltu	a1, a3, 8
802016dc: 09 a0                        	j	2
802016de: b1 a0                        	j	76
802016e0: 26 75                        	ld	a0, 104(sp)
802016e2: 97 00 00 00                  	auipc	ra, 0
802016e6: e7 80 40 2a                  	jalr	676(ra)
802016ea: 2a f0                        	sd	a0, 32(sp)
802016ec: 09 a0                        	j	2
802016ee: 02 75                        	ld	a0, 32(sp)
802016f0: 97 00 00 00                  	auipc	ra, 0
802016f4: e7 80 20 df                  	jalr	-526(ra)
802016f8: aa 85                        	add	a1, zero, a0
802016fa: a3 0b a1 0a                  	sb	a0, 183(sp)
802016fe: 2e ec                        	sd	a1, 24(sp)
80201700: 09 a0                        	j	2
80201702: 46 65                        	ld	a0, 80(sp)
80201704: 93 75 75 00                  	andi	a1, a0, 7
80201708: ca 05                        	slli	a1, a1, 18
8020170a: 22 75                        	ld	a0, 40(sp)
8020170c: 62 66                        	ld	a2, 24(sp)
8020170e: 2e e8                        	sd	a1, 16(sp)
80201710: b2 85                        	add	a1, zero, a2
80201712: 97 00 00 00                  	auipc	ra, 0
80201716: e7 80 00 e2                  	jalr	-480(ra)
8020171a: 2a e4                        	sd	a0, 8(sp)
8020171c: 09 a0                        	j	2
8020171e: 42 65                        	ld	a0, 16(sp)
80201720: a2 65                        	ld	a1, 8(sp)
80201722: 33 66 b5 00                  	or	a2, a0, a1
80201726: 32 c3                        	sw	a2, 132(sp)
80201728: 09 a0                        	j	2
8020172a: 09 a0                        	j	2
8020172c: 1a 45                        	lw	a0, 132(sp)
8020172e: aa da                        	sw	a0, 116(sp)
80201730: 05 45                        	addi	a0, zero, 1
80201732: aa d8                        	sw	a0, 112(sp)
80201734: f9 bd                        	j	-290

0000000080201736 _ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hed92b511aec1b664E:
80201736: 41 11                        	addi	sp, sp, -16
80201738: 2a e0                        	sd	a0, 0(sp)
8020173a: 2e e4                        	sd	a1, 8(sp)
8020173c: 41 01                        	addi	sp, sp, 16
8020173e: 82 80                        	ret

0000000080201740 _ZN75_$LT$core..str..Chars$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17he2af2fb0bc5df439E:
80201740: 01 11                        	addi	sp, sp, -32
80201742: 06 ec                        	sd	ra, 24(sp)
80201744: aa 85                        	add	a1, zero, a0
80201746: 2a ca                        	sw	a0, 20(sp)
80201748: 2e e4                        	sd	a1, 8(sp)
8020174a: 97 00 00 00                  	auipc	ra, 0
8020174e: e7 80 80 01                  	jalr	24(ra)
80201752: 02 15                        	slli	a0, a0, 32
80201754: 01 91                        	srli	a0, a0, 32
80201756: 2a e0                        	sd	a0, 0(sp)
80201758: 09 a0                        	j	2
8020175a: 02 65                        	ld	a0, 0(sp)
8020175c: e2 60                        	ld	ra, 24(sp)
8020175e: 05 61                        	addi	sp, sp, 32
80201760: 82 80                        	ret

0000000080201762 _ZN4core4char7convert18from_u32_unchecked17hd908e5915aa75ccbE:
80201762: 41 11                        	addi	sp, sp, -16
80201764: aa 85                        	add	a1, zero, a0
80201766: 2a c4                        	sw	a0, 8(sp)
80201768: 2a c6                        	sw	a0, 12(sp)
8020176a: 02 15                        	slli	a0, a0, 32
8020176c: 01 91                        	srli	a0, a0, 32
8020176e: 2a e0                        	sd	a0, 0(sp)
80201770: 09 a0                        	j	2
80201772: 02 65                        	ld	a0, 0(sp)
80201774: 41 01                        	addi	sp, sp, 16
80201776: 82 80                        	ret

0000000080201778 _ZN4core6option15Option$LT$T$GT$3map17hfa56d22648f61ebfE:
80201778: 79 71                        	addi	sp, sp, -48
8020177a: 06 f4                        	sd	ra, 40(sp)
8020177c: 2e 86                        	add	a2, zero, a1
8020177e: aa 86                        	add	a3, zero, a0
80201780: 2a c4                        	sw	a0, 8(sp)
80201782: 2e c6                        	sw	a1, 12(sp)
80201784: 85 45                        	addi	a1, zero, 1
80201786: a3 0f b1 00                  	sb	a1, 31(sp)
8020178a: 02 15                        	slli	a0, a0, 32
8020178c: 01 91                        	srli	a0, a0, 32
8020178e: 81 45                        	mv	a1, zero
80201790: 63 04 b5 00                  	beq	a0, a1, 8
80201794: 09 a0                        	j	2
80201796: 31 a0                        	j	12
80201798: 37 05 11 00                  	lui	a0, 272
8020179c: 2a ca                        	sw	a0, 20(sp)
8020179e: 1d a8                        	j	54
802017a0: 00 00                        	unimp	
802017a2: 32 45                        	lw	a0, 12(sp)
802017a4: 2a d2                        	sw	a0, 36(sp)
802017a6: 81 45                        	mv	a1, zero
802017a8: a3 0f b1 00                  	sb	a1, 31(sp)
802017ac: 2a cc                        	sw	a0, 24(sp)
802017ae: 97 00 00 00                  	auipc	ra, 0
802017b2: e7 80 20 f9                  	jalr	-110(ra)
802017b6: 02 15                        	slli	a0, a0, 32
802017b8: 01 91                        	srli	a0, a0, 32
802017ba: 2a e0                        	sd	a0, 0(sp)
802017bc: 09 a0                        	j	2
802017be: 02 65                        	ld	a0, 0(sp)
802017c0: 2a ca                        	sw	a0, 20(sp)
802017c2: 09 a8                        	j	18
802017c4: 52 45                        	lw	a0, 20(sp)
802017c6: a2 70                        	ld	ra, 40(sp)
802017c8: 45 61                        	addi	sp, sp, 48
802017ca: 82 80                        	ret
802017cc: 01 45                        	mv	a0, zero
802017ce: a3 0f a1 00                  	sb	a0, 31(sp)
802017d2: cd bf                        	j	-14
802017d4: 03 45 f1 01                  	lbu	a0, 31(sp)
802017d8: 05 89                        	andi	a0, a0, 1
802017da: 6d f9                        	bnez	a0, -14
802017dc: e5 b7                        	j	-24

00000000802017de _ZN4core6option15Option$LT$T$GT$5ok_or17h11ad4c0512f01e43E:
802017de: 79 71                        	addi	sp, sp, -48
802017e0: 2a e4                        	sd	a0, 8(sp)
802017e2: 85 45                        	addi	a1, zero, 1
802017e4: a3 0f b1 00                  	sb	a1, 31(sp)
802017e8: b3 35 a0 00                  	snez	a1, a0
802017ec: 01 46                        	mv	a2, zero
802017ee: 63 04 c5 00                  	beq	a0, a2, 8
802017f2: 09 a0                        	j	2
802017f4: 39 a0                        	j	14
802017f6: 01 45                        	mv	a0, zero
802017f8: a3 0f a1 00                  	sb	a0, 31(sp)
802017fc: 2a e8                        	sd	a0, 16(sp)
802017fe: 31 a0                        	j	12
80201800: 00 00                        	unimp	
80201802: 22 65                        	ld	a0, 8(sp)
80201804: 2a f4                        	sd	a0, 40(sp)
80201806: 2a e8                        	sd	a0, 16(sp)
80201808: 09 a0                        	j	2
8020180a: 03 45 f1 01                  	lbu	a0, 31(sp)
8020180e: 05 89                        	andi	a0, a0, 1
80201810: 09 e5                        	bnez	a0, 10
80201812: 09 a0                        	j	2
80201814: 42 65                        	ld	a0, 16(sp)
80201816: 45 61                        	addi	sp, sp, 48
80201818: 82 80                        	ret
8020181a: 01 45                        	mv	a0, zero
8020181c: a3 0f a1 00                  	sb	a0, 31(sp)
80201820: d5 bf                        	j	-12

0000000080201822 _ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h24395377c0a33081E:
80201822: 41 11                        	addi	sp, sp, -16
80201824: 41 01                        	addi	sp, sp, 16
80201826: 82 80                        	ret

0000000080201828 _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$10from_error17h00d17c189e2225c4E:
80201828: 41 11                        	addi	sp, sp, -16
8020182a: 01 45                        	mv	a0, zero
8020182c: 2a c0                        	sw	a0, 0(sp)
8020182e: 92 45                        	lw	a1, 4(sp)
80201830: 41 01                        	addi	sp, sp, 16
80201832: 82 80                        	ret

0000000080201834 _ZN69_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try..Try$GT$11into_result17ha2da53438ec835fdE:
80201834: 01 11                        	addi	sp, sp, -32
80201836: 06 ec                        	sd	ra, 24(sp)
80201838: 2a e8                        	sd	a0, 16(sp)
8020183a: 97 00 00 00                  	auipc	ra, 0
8020183e: e7 80 40 fa                  	jalr	-92(ra)
80201842: 2a e4                        	sd	a0, 8(sp)
80201844: 09 a0                        	j	2
80201846: 22 65                        	ld	a0, 8(sp)
80201848: e2 60                        	ld	ra, 24(sp)
8020184a: 05 61                        	addi	sp, sp, 32
8020184c: 82 80                        	ret

000000008020184e _ZN4core5slice18from_raw_parts_mut17h6b0ef297164d307cE:
8020184e: 79 71                        	addi	sp, sp, -48
80201850: 06 f4                        	sd	ra, 40(sp)
80201852: 2a ec                        	sd	a0, 24(sp)
80201854: 2e f0                        	sd	a1, 32(sp)
80201856: 97 00 00 00                  	auipc	ra, 0
8020185a: e7 80 00 38                  	jalr	896(ra)
8020185e: 2a e8                        	sd	a0, 16(sp)
80201860: 2e e4                        	sd	a1, 8(sp)
80201862: 09 a0                        	j	2
80201864: 42 65                        	ld	a0, 16(sp)
80201866: a2 65                        	ld	a1, 8(sp)
80201868: a2 70                        	ld	ra, 40(sp)
8020186a: 45 61                        	addi	sp, sp, 48
8020186c: 82 80                        	ret

000000008020186e _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$10as_mut_ptr17h57e364ee384ce5b1E:
8020186e: 41 11                        	addi	sp, sp, -16
80201870: 2a e0                        	sd	a0, 0(sp)
80201872: 2e e4                        	sd	a1, 8(sp)
80201874: 41 01                        	addi	sp, sp, 16
80201876: 82 80                        	ret

0000000080201878 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17haef3b685a5d8d52dE:
80201878: 01 11                        	addi	sp, sp, -32
8020187a: 2a e8                        	sd	a0, 16(sp)
8020187c: 2e ec                        	sd	a1, 24(sp)
8020187e: 2a e0                        	sd	a0, 0(sp)
80201880: 2e e4                        	sd	a1, 8(sp)
80201882: 2e 85                        	add	a0, zero, a1
80201884: 05 61                        	addi	sp, sp, 32
80201886: 82 80                        	ret

0000000080201888 _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hc24342e00bb9168aE:
80201888: 75 71                        	addi	sp, sp, -144
8020188a: 06 e5                        	sd	ra, 136(sp)
8020188c: aa f4                        	sd	a0, 104(sp)
8020188e: ae f8                        	sd	a1, 112(sp)
80201890: aa e0                        	sd	a0, 64(sp)
80201892: 2e fc                        	sd	a1, 56(sp)
80201894: 97 00 00 00                  	auipc	ra, 0
80201898: e7 80 a0 09                  	jalr	154(ra)
8020189c: aa 85                        	add	a1, zero, a0
8020189e: aa fc                        	sd	a0, 120(sp)
802018a0: 2e f8                        	sd	a1, 48(sp)
802018a2: 09 a0                        	j	2
802018a4: 42 75                        	ld	a0, 48(sp)
802018a6: 97 00 00 00                  	auipc	ra, 0
802018aa: e7 80 40 3b                  	jalr	948(ra)
802018ae: 09 a0                        	j	2
802018b0: 09 a0                        	j	2
802018b2: 05 45                        	addi	a0, zero, 1
802018b4: 2a e1                        	sd	a0, 128(sp)
802018b6: 2a f4                        	sd	a0, 40(sp)
802018b8: 09 a0                        	j	2
802018ba: 01 45                        	mv	a0, zero
802018bc: a2 75                        	ld	a1, 40(sp)
802018be: 63 8b a5 00                  	beq	a1, a0, 22
802018c2: 09 a0                        	j	2
802018c4: 06 65                        	ld	a0, 64(sp)
802018c6: e2 75                        	ld	a1, 56(sp)
802018c8: 97 00 00 00                  	auipc	ra, 0
802018cc: e7 80 00 fb                  	jalr	-80(ra)
802018d0: 2a f0                        	sd	a0, 32(sp)
802018d2: 25 a0                        	j	40
802018d4: 06 65                        	ld	a0, 64(sp)
802018d6: e2 75                        	ld	a1, 56(sp)
802018d8: 97 00 00 00                  	auipc	ra, 0
802018dc: e7 80 00 fa                  	jalr	-96(ra)
802018e0: 2a ec                        	sd	a0, 24(sp)
802018e2: 09 a0                        	j	2
802018e4: 42 75                        	ld	a0, 48(sp)
802018e6: e2 65                        	ld	a1, 24(sp)
802018e8: 97 00 00 00                  	auipc	ra, 0
802018ec: e7 80 20 31                  	jalr	786(ra)
802018f0: 2a e8                        	sd	a0, 16(sp)
802018f2: 09 a0                        	j	2
802018f4: 42 65                        	ld	a0, 16(sp)
802018f6: aa ec                        	sd	a0, 88(sp)
802018f8: 11 a8                        	j	20
802018fa: 42 75                        	ld	a0, 48(sp)
802018fc: 82 75                        	ld	a1, 32(sp)
802018fe: 97 00 00 00                  	auipc	ra, 0
80201902: e7 80 c0 32                  	jalr	812(ra)
80201906: aa ec                        	sd	a0, 88(sp)
80201908: 09 a0                        	j	2
8020190a: 09 a0                        	j	2
8020190c: 42 75                        	ld	a0, 48(sp)
8020190e: 97 00 00 00                  	auipc	ra, 0
80201912: e7 80 a0 2d                  	jalr	730(ra)
80201916: 2a e4                        	sd	a0, 8(sp)
80201918: 09 a0                        	j	2
8020191a: 66 65                        	ld	a0, 88(sp)
8020191c: a2 65                        	ld	a1, 8(sp)
8020191e: ae e4                        	sd	a1, 72(sp)
80201920: aa e8                        	sd	a0, 80(sp)
80201922: 2a e0                        	sd	a0, 0(sp)
80201924: 2e 85                        	add	a0, zero, a1
80201926: 82 65                        	ld	a1, 0(sp)
80201928: aa 60                        	ld	ra, 136(sp)
8020192a: 49 61                        	addi	sp, sp, 144
8020192c: 82 80                        	ret

000000008020192e _ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hbdf34e675bfc4483E:
8020192e: 41 11                        	addi	sp, sp, -16
80201930: 2a e0                        	sd	a0, 0(sp)
80201932: 2e e4                        	sd	a1, 8(sp)
80201934: 41 01                        	addi	sp, sp, 16
80201936: 82 80                        	ret

0000000080201938 _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h016b403818475202E:
80201938: 39 71                        	addi	sp, sp, -64
8020193a: 06 fc                        	sd	ra, 56(sp)
8020193c: 2a f0                        	sd	a0, 32(sp)
8020193e: 2e f4                        	sd	a1, 40(sp)
80201940: 32 f8                        	sd	a2, 48(sp)
80201942: 2a ec                        	sd	a0, 24(sp)
80201944: 32 85                        	add	a0, zero, a2
80201946: 62 66                        	ld	a2, 24(sp)
80201948: 2e e8                        	sd	a1, 16(sp)
8020194a: b2 85                        	add	a1, zero, a2
8020194c: 42 66                        	ld	a2, 16(sp)
8020194e: 97 00 00 00                  	auipc	ra, 0
80201952: e7 80 40 12                  	jalr	292(ra)
80201956: 2a e4                        	sd	a0, 8(sp)
80201958: 2e e0                        	sd	a1, 0(sp)
8020195a: 09 a0                        	j	2
8020195c: 22 65                        	ld	a0, 8(sp)
8020195e: 82 65                        	ld	a1, 0(sp)
80201960: e2 70                        	ld	ra, 56(sp)
80201962: 21 61                        	addi	sp, sp, 64
80201964: 82 80                        	ret

0000000080201966 _ZN4core5slice77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17hdb455dc17b99065dE:
80201966: 79 71                        	addi	sp, sp, -48
80201968: 06 f4                        	sd	ra, 40(sp)
8020196a: 2a e8                        	sd	a0, 16(sp)
8020196c: 2e ec                        	sd	a1, 24(sp)
8020196e: 97 00 00 00                  	auipc	ra, 0
80201972: e7 80 40 14                  	jalr	324(ra)
80201976: 2a e4                        	sd	a0, 8(sp)
80201978: 2e e0                        	sd	a1, 0(sp)
8020197a: 09 a0                        	j	2
8020197c: 22 65                        	ld	a0, 8(sp)
8020197e: 82 65                        	ld	a1, 0(sp)
80201980: a2 70                        	ld	ra, 40(sp)
80201982: 45 61                        	addi	sp, sp, 48
80201984: 82 80                        	ret

0000000080201986 _ZN85_$LT$core..slice..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h03480e014d6b4673E:
80201986: 19 71                        	addi	sp, sp, -128
80201988: 86 fc                        	sd	ra, 120(sp)
8020198a: aa e0                        	sd	a0, 64(sp)
8020198c: 0c 61                        	ld	a1, 0(a0)
8020198e: 2a f8                        	sd	a0, 48(sp)
80201990: 2e 85                        	add	a0, zero, a1
80201992: 97 00 00 00                  	auipc	ra, 0
80201996: e7 80 00 26                  	jalr	608(ra)
8020199a: 2a f4                        	sd	a0, 40(sp)
8020199c: 09 a0                        	j	2
8020199e: 22 75                        	ld	a0, 40(sp)
802019a0: 97 00 00 00                  	auipc	ra, 0
802019a4: e7 80 40 22                  	jalr	548(ra)
802019a8: 09 a0                        	j	2
802019aa: 09 a0                        	j	2
802019ac: 05 45                        	addi	a0, zero, 1
802019ae: aa e4                        	sd	a0, 72(sp)
802019b0: 2a f0                        	sd	a0, 32(sp)
802019b2: 09 a0                        	j	2
802019b4: 01 45                        	mv	a0, zero
802019b6: 82 75                        	ld	a1, 32(sp)
802019b8: 63 94 a5 00                  	bne	a1, a0, 8
802019bc: 09 a0                        	j	2
802019be: 11 a8                        	j	20
802019c0: 42 75                        	ld	a0, 48(sp)
802019c2: 08 65                        	ld	a0, 8(a0)
802019c4: 97 00 00 00                  	auipc	ra, 0
802019c8: e7 80 60 29                  	jalr	662(ra)
802019cc: 09 a0                        	j	2
802019ce: 09 a0                        	j	2
802019d0: 09 a0                        	j	2
802019d2: 42 75                        	ld	a0, 48(sp)
802019d4: 08 61                        	ld	a0, 0(a0)
802019d6: 97 00 00 00                  	auipc	ra, 0
802019da: e7 80 c0 21                  	jalr	540(ra)
802019de: 2a ec                        	sd	a0, 24(sp)
802019e0: 09 a0                        	j	2
802019e2: 42 75                        	ld	a0, 48(sp)
802019e4: 0c 65                        	ld	a1, 8(a0)
802019e6: 62 66                        	ld	a2, 24(sp)
802019e8: 63 0b b6 06                  	beq	a2, a1, 118
802019ec: 09 a0                        	j	2
802019ee: 42 75                        	ld	a0, 48(sp)
802019f0: aa ec                        	sd	a0, 88(sp)
802019f2: 85 45                        	addi	a1, zero, 1
802019f4: ae f0                        	sd	a1, 96(sp)
802019f6: ae f8                        	sd	a1, 112(sp)
802019f8: 81 45                        	mv	a1, zero
802019fa: 9d ed                        	bnez	a1, 62
802019fc: 09 a0                        	j	2
802019fe: 42 75                        	ld	a0, 48(sp)
80201a00: 08 61                        	ld	a0, 0(a0)
80201a02: 97 00 00 00                  	auipc	ra, 0
80201a06: e7 80 00 1f                  	jalr	496(ra)
80201a0a: aa f4                        	sd	a0, 104(sp)
80201a0c: c2 75                        	ld	a1, 48(sp)
80201a0e: 90 61                        	ld	a2, 0(a1)
80201a10: 2a e8                        	sd	a0, 16(sp)
80201a12: 32 85                        	add	a0, zero, a2
80201a14: 97 00 00 00                  	auipc	ra, 0
80201a18: e7 80 e0 1d                  	jalr	478(ra)
80201a1c: 85 45                        	addi	a1, zero, 1
80201a1e: 97 00 00 00                  	auipc	ra, 0
80201a22: e7 80 20 19                  	jalr	402(ra)
80201a26: 97 00 00 00                  	auipc	ra, 0
80201a2a: e7 80 20 1c                  	jalr	450(ra)
80201a2e: c2 75                        	ld	a1, 48(sp)
80201a30: 88 e1                        	sd	a0, 0(a1)
80201a32: 42 65                        	ld	a0, 16(sp)
80201a34: aa e8                        	sd	a0, 80(sp)
80201a36: 0d a0                        	j	34
80201a38: 42 75                        	ld	a0, 48(sp)
80201a3a: 08 65                        	ld	a0, 8(a0)
80201a3c: fd 55                        	addi	a1, zero, -1
80201a3e: 97 00 00 00                  	auipc	ra, 0
80201a42: e7 80 80 1d                  	jalr	472(ra)
80201a46: c2 75                        	ld	a1, 48(sp)
80201a48: 88 e5                        	sd	a0, 8(a1)
80201a4a: 88 61                        	ld	a0, 0(a1)
80201a4c: 97 00 00 00                  	auipc	ra, 0
80201a50: e7 80 60 1a                  	jalr	422(ra)
80201a54: aa e8                        	sd	a0, 80(sp)
80201a56: 09 a0                        	j	2
80201a58: 46 65                        	ld	a0, 80(sp)
80201a5a: 2a e4                        	sd	a0, 8(sp)
80201a5c: 21 a0                        	j	8
80201a5e: 01 45                        	mv	a0, zero
80201a60: 2a fc                        	sd	a0, 56(sp)
80201a62: 21 a0                        	j	8
80201a64: 22 65                        	ld	a0, 8(sp)
80201a66: 2a fc                        	sd	a0, 56(sp)
80201a68: 09 a0                        	j	2
80201a6a: 62 75                        	ld	a0, 56(sp)
80201a6c: e6 70                        	ld	ra, 120(sp)
80201a6e: 09 61                        	addi	sp, sp, 128
80201a70: 82 80                        	ret

0000000080201a72 _ZN101_$LT$core..ops..range..RangeTo$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17he927675add2ca41bE:
80201a72: 1d 71                        	addi	sp, sp, -96
80201a74: 86 ec                        	sd	ra, 88(sp)
80201a76: aa e0                        	sd	a0, 64(sp)
80201a78: ae e4                        	sd	a1, 72(sp)
80201a7a: b2 e8                        	sd	a2, 80(sp)
80201a7c: 01 47                        	mv	a4, zero
80201a7e: 3a f8                        	sd	a4, 48(sp)
80201a80: 2a fc                        	sd	a0, 56(sp)
80201a82: 2a f4                        	sd	a0, 40(sp)
80201a84: 3a 85                        	add	a0, zero, a4
80201a86: 22 77                        	ld	a4, 40(sp)
80201a88: 2e f0                        	sd	a1, 32(sp)
80201a8a: ba 85                        	add	a1, zero, a4
80201a8c: 82 77                        	ld	a5, 32(sp)
80201a8e: 32 ec                        	sd	a2, 24(sp)
80201a90: 3e 86                        	add	a2, zero, a5
80201a92: 62 68                        	ld	a6, 24(sp)
80201a94: 36 e8                        	sd	a3, 16(sp)
80201a96: c2 86                        	add	a3, zero, a6
80201a98: 42 67                        	ld	a4, 16(sp)
80201a9a: 97 00 00 00                  	auipc	ra, 0
80201a9e: e7 80 40 07                  	jalr	116(ra)
80201aa2: 2a e4                        	sd	a0, 8(sp)
80201aa4: 2e e0                        	sd	a1, 0(sp)
80201aa6: 09 a0                        	j	2
80201aa8: 22 65                        	ld	a0, 8(sp)
80201aaa: 82 65                        	ld	a1, 0(sp)
80201aac: e6 60                        	ld	ra, 88(sp)
80201aae: 25 61                        	addi	sp, sp, 96
80201ab0: 82 80                        	ret

0000000080201ab2 _ZN90_$LT$core..ops..range..RangeFull$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17hf549b1d9b903e395E:
80201ab2: 01 11                        	addi	sp, sp, -32
80201ab4: 2a e8                        	sd	a0, 16(sp)
80201ab6: 2e ec                        	sd	a1, 24(sp)
80201ab8: 05 61                        	addi	sp, sp, 32
80201aba: 82 80                        	ret

0000000080201abc _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h5f1970f684b92844E:
80201abc: 1d 71                        	addi	sp, sp, -96
80201abe: 86 ec                        	sd	ra, 88(sp)
80201ac0: 2a fc                        	sd	a0, 56(sp)
80201ac2: ae e0                        	sd	a1, 64(sp)
80201ac4: b2 e4                        	sd	a2, 72(sp)
80201ac6: b6 e8                        	sd	a3, 80(sp)
80201ac8: 2a f8                        	sd	a0, 48(sp)
80201aca: 32 85                        	add	a0, zero, a2
80201acc: 2e f4                        	sd	a1, 40(sp)
80201ace: b6 85                        	add	a1, zero, a3
80201ad0: 97 00 00 00                  	auipc	ra, 0
80201ad4: e7 80 e0 d9                  	jalr	-610(ra)
80201ad8: 2a f0                        	sd	a0, 32(sp)
80201ada: 09 a0                        	j	2
80201adc: 02 75                        	ld	a0, 32(sp)
80201ade: c2 75                        	ld	a1, 48(sp)
80201ae0: 97 00 00 00                  	auipc	ra, 0
80201ae4: e7 80 40 0b                  	jalr	180(ra)
80201ae8: 2a ec                        	sd	a0, 24(sp)
80201aea: 09 a0                        	j	2
80201aec: 22 75                        	ld	a0, 40(sp)
80201aee: c2 75                        	ld	a1, 48(sp)
80201af0: b3 05 b5 40                  	sub	a1, a0, a1
80201af4: 62 65                        	ld	a0, 24(sp)
80201af6: 97 00 00 00                  	auipc	ra, 0
80201afa: e7 80 80 d5                  	jalr	-680(ra)
80201afe: 2a e8                        	sd	a0, 16(sp)
80201b00: 2e e4                        	sd	a1, 8(sp)
80201b02: 09 a0                        	j	2
80201b04: 42 65                        	ld	a0, 16(sp)
80201b06: a2 65                        	ld	a1, 8(sp)
80201b08: e6 60                        	ld	ra, 88(sp)
80201b0a: 25 61                        	addi	sp, sp, 96
80201b0c: 82 80                        	ret

0000000080201b0e _ZN99_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h323e234b63d882efE:
80201b0e: 59 71                        	addi	sp, sp, -112
80201b10: 86 f4                        	sd	ra, 104(sp)
80201b12: aa e4                        	sd	a0, 72(sp)
80201b14: ae e8                        	sd	a1, 80(sp)
80201b16: b2 ec                        	sd	a2, 88(sp)
80201b18: b6 f0                        	sd	a3, 96(sp)
80201b1a: ba e0                        	sd	a4, 64(sp)
80201b1c: 36 fc                        	sd	a3, 56(sp)
80201b1e: 32 f8                        	sd	a2, 48(sp)
80201b20: 2e f4                        	sd	a1, 40(sp)
80201b22: 2a f0                        	sd	a0, 32(sp)
80201b24: 63 eb a5 00                  	bltu	a1, a0, 22
80201b28: 09 a0                        	j	2
80201b2a: 42 75                        	ld	a0, 48(sp)
80201b2c: e2 75                        	ld	a1, 56(sp)
80201b2e: 97 00 00 00                  	auipc	ra, 0
80201b32: e7 80 a0 d4                  	jalr	-694(ra)
80201b36: 2a ec                        	sd	a0, 24(sp)
80201b38: 09 a8                        	j	18
80201b3a: 02 75                        	ld	a0, 32(sp)
80201b3c: a2 75                        	ld	a1, 40(sp)
80201b3e: 06 66                        	ld	a2, 64(sp)
80201b40: 97 f0 ff ff                  	auipc	ra, 1048575
80201b44: e7 80 80 15                  	jalr	344(ra)
80201b48: 00 00                        	unimp	
80201b4a: 62 65                        	ld	a0, 24(sp)
80201b4c: a2 75                        	ld	a1, 40(sp)
80201b4e: 63 6e b5 00                  	bltu	a0, a1, 28
80201b52: 09 a0                        	j	2
80201b54: 02 75                        	ld	a0, 32(sp)
80201b56: a2 75                        	ld	a1, 40(sp)
80201b58: 42 76                        	ld	a2, 48(sp)
80201b5a: e2 76                        	ld	a3, 56(sp)
80201b5c: 97 00 00 00                  	auipc	ra, 0
80201b60: e7 80 00 f6                  	jalr	-160(ra)
80201b64: 2a e8                        	sd	a0, 16(sp)
80201b66: 2e e4                        	sd	a1, 8(sp)
80201b68: 0d a0                        	j	34
80201b6a: 42 75                        	ld	a0, 48(sp)
80201b6c: e2 75                        	ld	a1, 56(sp)
80201b6e: 97 00 00 00                  	auipc	ra, 0
80201b72: e7 80 a0 d0                  	jalr	-758(ra)
80201b76: 2a e0                        	sd	a0, 0(sp)
80201b78: 09 a0                        	j	2
80201b7a: 22 75                        	ld	a0, 40(sp)
80201b7c: 82 65                        	ld	a1, 0(sp)
80201b7e: 06 66                        	ld	a2, 64(sp)
80201b80: 97 f0 ff ff                  	auipc	ra, 1048575
80201b84: e7 80 80 0d                  	jalr	216(ra)
80201b88: 00 00                        	unimp	
80201b8a: 42 65                        	ld	a0, 16(sp)
80201b8c: a2 65                        	ld	a1, 8(sp)
80201b8e: a6 70                        	ld	ra, 104(sp)
80201b90: 65 61                        	addi	sp, sp, 112
80201b92: 82 80                        	ret

0000000080201b94 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3add17h3afb3318b8c042f3E:
80201b94: 01 11                        	addi	sp, sp, -32
80201b96: 06 ec                        	sd	ra, 24(sp)
80201b98: 2a e4                        	sd	a0, 8(sp)
80201b9a: 2e e8                        	sd	a1, 16(sp)
80201b9c: 97 00 00 00                  	auipc	ra, 0
80201ba0: e7 80 40 01                  	jalr	20(ra)
80201ba4: 2a e0                        	sd	a0, 0(sp)
80201ba6: 09 a0                        	j	2
80201ba8: 02 65                        	ld	a0, 0(sp)
80201baa: e2 60                        	ld	ra, 24(sp)
80201bac: 05 61                        	addi	sp, sp, 32
80201bae: 82 80                        	ret

0000000080201bb0 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$6offset17hc8a9615531ce6041E:
80201bb0: 01 11                        	addi	sp, sp, -32
80201bb2: 2a e4                        	sd	a0, 8(sp)
80201bb4: 2e e8                        	sd	a1, 16(sp)
80201bb6: 2e 95                        	add	a0, a0, a1
80201bb8: 2a ec                        	sd	a0, 24(sp)
80201bba: 2a e0                        	sd	a0, 0(sp)
80201bbc: 09 a0                        	j	2
80201bbe: 02 65                        	ld	a0, 0(sp)
80201bc0: 05 61                        	addi	sp, sp, 32
80201bc2: 82 80                        	ret

0000000080201bc4 _ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6c6902cb61db86b9E:
80201bc4: 41 11                        	addi	sp, sp, -16
80201bc6: 2a e4                        	sd	a0, 8(sp)
80201bc8: 2a e0                        	sd	a0, 0(sp)
80201bca: 09 a0                        	j	2
80201bcc: 02 65                        	ld	a0, 0(sp)
80201bce: 13 35 15 00                  	seqz	a0, a0
80201bd2: 41 01                        	addi	sp, sp, 16
80201bd4: 82 80                        	ret

0000000080201bd6 _ZN4core3ptr24slice_from_raw_parts_mut17h944f5aab8d5fb311E:
80201bd6: 79 71                        	addi	sp, sp, -48
80201bd8: 2a f0                        	sd	a0, 32(sp)
80201bda: 2e f4                        	sd	a1, 40(sp)
80201bdc: 2a e8                        	sd	a0, 16(sp)
80201bde: 2e ec                        	sd	a1, 24(sp)
80201be0: 2a e0                        	sd	a0, 0(sp)
80201be2: 2e e4                        	sd	a1, 8(sp)
80201be4: 45 61                        	addi	sp, sp, 48
80201be6: 82 80                        	ret

0000000080201be8 _ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3e2828a5dacbe710E:
80201be8: 41 11                        	addi	sp, sp, -16
80201bea: 2a e4                        	sd	a0, 8(sp)
80201bec: 2a e0                        	sd	a0, 0(sp)
80201bee: 41 01                        	addi	sp, sp, 16
80201bf0: 82 80                        	ret

0000000080201bf2 _ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0a322bc62ba7fd6bE:
80201bf2: 41 11                        	addi	sp, sp, -16
80201bf4: 2a e4                        	sd	a0, 8(sp)
80201bf6: 41 01                        	addi	sp, sp, 16
80201bf8: 82 80                        	ret

0000000080201bfa _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$12wrapping_add17h2681c248324c2332E:
80201bfa: 01 11                        	addi	sp, sp, -32
80201bfc: 06 ec                        	sd	ra, 24(sp)
80201bfe: 2a e4                        	sd	a0, 8(sp)
80201c00: 2e e8                        	sd	a1, 16(sp)
80201c02: 97 00 00 00                  	auipc	ra, 0
80201c06: e7 80 40 01                  	jalr	20(ra)
80201c0a: 2a e0                        	sd	a0, 0(sp)
80201c0c: 09 a0                        	j	2
80201c0e: 02 65                        	ld	a0, 0(sp)
80201c10: e2 60                        	ld	ra, 24(sp)
80201c12: 05 61                        	addi	sp, sp, 32
80201c14: 82 80                        	ret

0000000080201c16 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$15wrapping_offset17he65ad655237069d2E:
80201c16: 01 11                        	addi	sp, sp, -32
80201c18: 2a e4                        	sd	a0, 8(sp)
80201c1a: 2e e8                        	sd	a1, 16(sp)
80201c1c: 2e 95                        	add	a0, a0, a1
80201c1e: 2a ec                        	sd	a0, 24(sp)
80201c20: 2a e0                        	sd	a0, 0(sp)
80201c22: 09 a0                        	j	2
80201c24: 02 65                        	ld	a0, 0(sp)
80201c26: 05 61                        	addi	sp, sp, 32
80201c28: 82 80                        	ret

0000000080201c2a _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$3add17habc4f5e931ae244cE:
80201c2a: 01 11                        	addi	sp, sp, -32
80201c2c: 06 ec                        	sd	ra, 24(sp)
80201c2e: 2a e4                        	sd	a0, 8(sp)
80201c30: 2e e8                        	sd	a1, 16(sp)
80201c32: 97 00 00 00                  	auipc	ra, 0
80201c36: e7 80 40 01                  	jalr	20(ra)
80201c3a: 2a e0                        	sd	a0, 0(sp)
80201c3c: 09 a0                        	j	2
80201c3e: 02 65                        	ld	a0, 0(sp)
80201c40: e2 60                        	ld	ra, 24(sp)
80201c42: 05 61                        	addi	sp, sp, 32
80201c44: 82 80                        	ret

0000000080201c46 _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$6offset17h2f937baa2174bdd4E:
80201c46: 01 11                        	addi	sp, sp, -32
80201c48: 2a e4                        	sd	a0, 8(sp)
80201c4a: 2e e8                        	sd	a1, 16(sp)
80201c4c: 2e 95                        	add	a0, a0, a1
80201c4e: 2a ec                        	sd	a0, 24(sp)
80201c50: 2a e0                        	sd	a0, 0(sp)
80201c52: 09 a0                        	j	2
80201c54: 02 65                        	ld	a0, 0(sp)
80201c56: 05 61                        	addi	sp, sp, 32
80201c58: 82 80                        	ret

0000000080201c5a _ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h2f2f0e971149ac8cE:
80201c5a: 41 11                        	addi	sp, sp, -16
80201c5c: 2a e4                        	sd	a0, 8(sp)
80201c5e: 2a e0                        	sd	a0, 0(sp)
80201c60: 09 a0                        	j	2
80201c62: 02 65                        	ld	a0, 0(sp)
80201c64: 13 35 15 00                  	seqz	a0, a0
80201c68: 41 01                        	addi	sp, sp, 16
80201c6a: 82 80                        	ret

0000000080201c6c _ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h69f16f68f06a68d0E:
80201c6c: 01 11                        	addi	sp, sp, -32
80201c6e: 2a 86                        	add	a2, zero, a0
80201c70: a3 07 a1 00                  	sb	a0, 15(sp)
80201c74: aa 86                        	add	a3, zero, a0
80201c76: 01 47                        	mv	a4, zero
80201c78: 2e e0                        	sd	a1, 0(sp)
80201c7a: 63 05 e5 02                  	beq	a0, a4, 42
80201c7e: 09 a0                        	j	2

0000000080201c80 .LBB0_5:
80201c80: 17 25 00 00                  	auipc	a0, 2
80201c84: 13 05 85 98                  	addi	a0, a0, -1656

0000000080201c88 .LBB0_6:
80201c88: 97 26 00 00                  	auipc	a3, 2
80201c8c: 93 86 06 9b                  	addi	a3, a3, -1616
80201c90: 93 05 b0 02                  	addi	a1, zero, 43
80201c94: 10 08                        	addi	a2, sp, 16
80201c96: 02 67                        	ld	a4, 0(sp)
80201c98: 97 e0 ff ff                  	auipc	ra, 1048574
80201c9c: e7 80 00 72                  	jalr	1824(ra)
80201ca0: 00 00                        	unimp	
80201ca2: 00 00                        	unimp	
80201ca4: 05 61                        	addi	sp, sp, 32
80201ca6: 82 80                        	ret

0000000080201ca8 _ZN5riscv8register3sie10set_stimer17h8f1d3b900c38aaa7E:
80201ca8: 41 11                        	addi	sp, sp, -16
80201caa: 06 e4                        	sd	ra, 8(sp)
80201cac: 13 05 00 02                  	addi	a0, zero, 32
80201cb0: 97 00 00 00                  	auipc	ra, 0
80201cb4: e7 80 00 01                  	jalr	16(ra)
80201cb8: 09 a0                        	j	2
80201cba: a2 60                        	ld	ra, 8(sp)
80201cbc: 41 01                        	addi	sp, sp, 16
80201cbe: 82 80                        	ret

0000000080201cc0 _ZN5riscv8register3sie4_set17h6534116cd29a51aeE:
80201cc0: 41 11                        	addi	sp, sp, -16
80201cc2: 2a e4                        	sd	a0, 8(sp)
80201cc4: 73 20 45 10                  	csrs	sie, a0
80201cc8: 41 01                        	addi	sp, sp, 16
80201cca: 82 80                        	ret

0000000080201ccc _ZN5riscv8register4time4read17ha096649b3fab3110E:
80201ccc: 41 11                        	addi	sp, sp, -16
80201cce: 06 e4                        	sd	ra, 8(sp)
80201cd0: 97 00 00 00                  	auipc	ra, 0
80201cd4: e7 80 40 01                  	jalr	20(ra)
80201cd8: 2a e0                        	sd	a0, 0(sp)
80201cda: 09 a0                        	j	2
80201cdc: 02 65                        	ld	a0, 0(sp)
80201cde: a2 60                        	ld	ra, 8(sp)
80201ce0: 41 01                        	addi	sp, sp, 16
80201ce2: 82 80                        	ret

0000000080201ce4 _ZN5riscv8register4time5_read17h382f43f9b782d345E:
80201ce4: 41 11                        	addi	sp, sp, -16
80201ce6: 73 25 10 c0                  	rdtime	a0
80201cea: 2a e4                        	sd	a0, 8(sp)
80201cec: 41 01                        	addi	sp, sp, 16
80201cee: 82 80                        	ret

0000000080201cf0 __alltraps:
80201cf0: 73 11 01 14                  	csrrw	sp, sscratch, sp
80201cf4: 63 14 01 00                  	bnez	sp, 8

0000000080201cf8 trap_from_kernel:
80201cf8: 73 21 00 14                  	csrr	sp, sscratch

0000000080201cfc trap_from_user:
80201cfc: 2d 71                        	addi	sp, sp, -288
80201cfe: 06 e4                        	sd	ra, 8(sp)
80201d00: 0e ec                        	sd	gp, 24(sp)
80201d02: 12 f0                        	sd	tp, 32(sp)
80201d04: 16 f4                        	sd	t0, 40(sp)
80201d06: 1a f8                        	sd	t1, 48(sp)
80201d08: 1e fc                        	sd	t2, 56(sp)
80201d0a: a2 e0                        	sd	s0, 64(sp)
80201d0c: a6 e4                        	sd	s1, 72(sp)
80201d0e: aa e8                        	sd	a0, 80(sp)
80201d10: ae ec                        	sd	a1, 88(sp)
80201d12: b2 f0                        	sd	a2, 96(sp)
80201d14: b6 f4                        	sd	a3, 104(sp)
80201d16: ba f8                        	sd	a4, 112(sp)
80201d18: be fc                        	sd	a5, 120(sp)
80201d1a: 42 e1                        	sd	a6, 128(sp)
80201d1c: 46 e5                        	sd	a7, 136(sp)
80201d1e: 4a e9                        	sd	s2, 144(sp)
80201d20: 4e ed                        	sd	s3, 152(sp)
80201d22: 52 f1                        	sd	s4, 160(sp)
80201d24: 56 f5                        	sd	s5, 168(sp)
80201d26: 5a f9                        	sd	s6, 176(sp)
80201d28: 5e fd                        	sd	s7, 184(sp)
80201d2a: e2 e1                        	sd	s8, 192(sp)
80201d2c: e6 e5                        	sd	s9, 200(sp)
80201d2e: ea e9                        	sd	s10, 208(sp)
80201d30: ee ed                        	sd	s11, 216(sp)
80201d32: f2 f1                        	sd	t3, 224(sp)
80201d34: f6 f5                        	sd	t4, 232(sp)
80201d36: fa f9                        	sd	t5, 240(sp)
80201d38: fe fd                        	sd	t6, 248(sp)
80201d3a: 73 14 00 14                  	csrrw	s0, sscratch, zero
80201d3e: f3 24 00 10                  	csrr	s1, sstatus
80201d42: 73 29 10 14                  	csrr	s2, sepc
80201d46: f3 29 30 14                  	csrr	s3, stval
80201d4a: 73 2a 20 14                  	csrr	s4, scause
80201d4e: 22 e8                        	sd	s0, 16(sp)
80201d50: 26 e2                        	sd	s1, 256(sp)
80201d52: 4a e6                        	sd	s2, 264(sp)
80201d54: 4e ea                        	sd	s3, 272(sp)
80201d56: 52 ee                        	sd	s4, 280(sp)
80201d58: 0a 85                        	add	a0, zero, sp
80201d5a: ef 00 20 11                  	jal	274

0000000080201d5e __trapret:
80201d5e: 92 64                        	ld	s1, 256(sp)
80201d60: 32 69                        	ld	s2, 264(sp)
80201d62: 13 f4 04 10                  	andi	s0, s1, 256
80201d66: 01 e4                        	bnez	s0, 8

0000000080201d68 _to_user:
80201d68: 00 12                        	addi	s0, sp, 288
80201d6a: 73 10 04 14                  	csrw	sscratch, s0

0000000080201d6e _to_kernel:
80201d6e: 73 90 04 10                  	csrw	sstatus, s1
80201d72: 73 10 19 14                  	csrw	sepc, s2
80201d76: a2 60                        	ld	ra, 8(sp)
80201d78: e2 61                        	ld	gp, 24(sp)
80201d7a: 02 72                        	ld	tp, 32(sp)
80201d7c: a2 72                        	ld	t0, 40(sp)
80201d7e: 42 73                        	ld	t1, 48(sp)
80201d80: e2 73                        	ld	t2, 56(sp)
80201d82: 06 64                        	ld	s0, 64(sp)
80201d84: a6 64                        	ld	s1, 72(sp)
80201d86: 46 65                        	ld	a0, 80(sp)
80201d88: e6 65                        	ld	a1, 88(sp)
80201d8a: 06 76                        	ld	a2, 96(sp)
80201d8c: a6 76                        	ld	a3, 104(sp)
80201d8e: 46 77                        	ld	a4, 112(sp)
80201d90: e6 77                        	ld	a5, 120(sp)
80201d92: 0a 68                        	ld	a6, 128(sp)
80201d94: aa 68                        	ld	a7, 136(sp)
80201d96: 4a 69                        	ld	s2, 144(sp)
80201d98: ea 69                        	ld	s3, 152(sp)
80201d9a: 0a 7a                        	ld	s4, 160(sp)
80201d9c: aa 7a                        	ld	s5, 168(sp)
80201d9e: 4a 7b                        	ld	s6, 176(sp)
80201da0: ea 7b                        	ld	s7, 184(sp)
80201da2: 0e 6c                        	ld	s8, 192(sp)
80201da4: ae 6c                        	ld	s9, 200(sp)
80201da6: 4e 6d                        	ld	s10, 208(sp)
80201da8: ee 6d                        	ld	s11, 216(sp)
80201daa: 0e 7e                        	ld	t3, 224(sp)
80201dac: ae 7e                        	ld	t4, 232(sp)
80201dae: 4e 7f                        	ld	t5, 240(sp)
80201db0: ee 7f                        	ld	t6, 248(sp)
80201db2: 42 61                        	ld	sp, 16(sp)
80201db4: 73 00 20 10                  	sret	

0000000080201db8 _ZN2os9interrupt4init17he9418dedbd7b9b5eE:
80201db8: 71 71                        	addi	sp, sp, -176
80201dba: 06 f5                        	sd	ra, 168(sp)
80201dbc: 01 45                        	mv	a0, zero
80201dbe: 97 10 00 00                  	auipc	ra, 1
80201dc2: e7 80 20 89                  	jalr	-1902(ra)
80201dc6: 09 a0                        	j	2

0000000080201dc8 .LBB0_8:
80201dc8: 17 05 00 00                  	auipc	a0, 0
80201dcc: 13 05 85 f2                  	addi	a0, a0, -216
80201dd0: 81 45                        	mv	a1, zero
80201dd2: 97 00 00 00                  	auipc	ra, 0
80201dd6: e7 80 40 48                  	jalr	1156(ra)
80201dda: 09 a0                        	j	2
80201ddc: 97 10 00 00                  	auipc	ra, 1
80201de0: e7 80 e0 85                  	jalr	-1954(ra)
80201de4: 09 a0                        	j	2

0000000080201de6 .LBB0_9:
80201de6: 17 25 00 00                  	auipc	a0, 2
80201dea: 13 05 a5 89                  	addi	a0, a0, -1894
80201dee: 0c 61                        	ld	a1, 0(a0)

0000000080201df0 .LBB0_10:
80201df0: 17 25 00 00                  	auipc	a0, 2
80201df4: 13 05 85 8c                  	addi	a0, a0, -1848
80201df8: 08 61                        	ld	a0, 0(a0)

0000000080201dfa .LBB0_11:
80201dfa: 17 26 00 00                  	auipc	a2, 2
80201dfe: 13 06 66 8c                  	addi	a2, a2, -1850
80201e02: 14 62                        	ld	a3, 0(a2)
80201e04: 90 18                        	addi	a2, sp, 112
80201e06: 05 47                        	addi	a4, zero, 1
80201e08: 81 47                        	mv	a5, zero
80201e0a: 2a f0                        	sd	a0, 32(sp)
80201e0c: 32 85                        	add	a0, zero, a2
80201e0e: 02 76                        	ld	a2, 32(sp)
80201e10: 2e ec                        	sd	a1, 24(sp)
80201e12: b2 85                        	add	a1, zero, a2
80201e14: 3a 86                        	add	a2, zero, a4
80201e16: 3e 87                        	add	a4, zero, a5
80201e18: 97 f0 ff ff                  	auipc	ra, 1048575
80201e1c: e7 80 60 3b                  	jalr	950(ra)
80201e20: 09 a0                        	j	2
80201e22: 88 18                        	addi	a0, sp, 112
80201e24: aa f4                        	sd	a0, 104(sp)
80201e26: 2a f1                        	sd	a0, 160(sp)

0000000080201e28 .LBB0_12:
80201e28: 97 e5 ff ff                  	auipc	a1, 1048574
80201e2c: 93 85 c5 76                  	addi	a1, a1, 1900
80201e30: 97 f0 ff ff                  	auipc	ra, 1048575
80201e34: e7 80 00 34                  	jalr	832(ra)
80201e38: 2a e8                        	sd	a0, 16(sp)
80201e3a: 2e e4                        	sd	a1, 8(sp)
80201e3c: 09 a0                        	j	2
80201e3e: 42 65                        	ld	a0, 16(sp)
80201e40: aa ec                        	sd	a0, 88(sp)
80201e42: a2 65                        	ld	a1, 8(sp)
80201e44: ae f0                        	sd	a1, 96(sp)
80201e46: 28 10                        	addi	a0, sp, 40
80201e48: 09 46                        	addi	a2, zero, 2
80201e4a: b4 08                        	addi	a3, sp, 88
80201e4c: 05 47                        	addi	a4, zero, 1
80201e4e: e2 65                        	ld	a1, 24(sp)
80201e50: 97 f0 ff ff                  	auipc	ra, 1048575
80201e54: e7 80 e0 37                  	jalr	894(ra)
80201e58: 09 a0                        	j	2
80201e5a: 28 10                        	addi	a0, sp, 40
80201e5c: 97 e0 ff ff                  	auipc	ra, 1048574
80201e60: e7 80 80 3b                  	jalr	952(ra)
80201e64: 09 a0                        	j	2
80201e66: aa 70                        	ld	ra, 168(sp)
80201e68: 4d 61                        	addi	sp, sp, 176
80201e6a: 82 80                        	ret

0000000080201e6c rust_trap:
80201e6c: 39 71                        	addi	sp, sp, -64
80201e6e: 06 fc                        	sd	ra, 56(sp)
80201e70: 2a f8                        	sd	a0, 48(sp)
80201e72: 93 05 85 11                  	addi	a1, a0, 280
80201e76: 2a ec                        	sd	a0, 24(sp)
80201e78: 2e 85                        	add	a0, zero, a1
80201e7a: 97 00 00 00                  	auipc	ra, 0
80201e7e: e7 80 c0 4a                  	jalr	1196(ra)
80201e82: 23 04 a1 02                  	sb	a0, 40(sp)
80201e86: a3 04 b1 02                  	sb	a1, 41(sp)
80201e8a: 09 a0                        	j	2
80201e8c: 03 45 81 02                  	lbu	a0, 40(sp)
80201e90: 93 75 15 00                  	andi	a1, a0, 1
80201e94: 01 46                        	mv	a2, zero
80201e96: 2a e8                        	sd	a0, 16(sp)
80201e98: 63 88 c5 00                  	beq	a1, a2, 16
80201e9c: 09 a0                        	j	2
80201e9e: 05 45                        	addi	a0, zero, 1
80201ea0: c2 65                        	ld	a1, 16(sp)
80201ea2: 63 87 a5 02                  	beq	a1, a0, 46
80201ea6: 39 a0                        	j	14
80201ea8: 03 45 91 02                  	lbu	a0, 41(sp)
80201eac: 8d 45                        	addi	a1, zero, 3
80201eae: 63 02 b5 06                  	beq	a0, a1, 100
80201eb2: 09 a0                        	j	2

0000000080201eb4 .LBB1_13:
80201eb4: 17 25 00 00                  	auipc	a0, 2
80201eb8: 13 05 45 81                  	addi	a0, a0, -2028

0000000080201ebc .LBB1_14:
80201ebc: 17 26 00 00                  	auipc	a2, 2
80201ec0: 13 06 c6 81                  	addi	a2, a2, -2020
80201ec4: bd 45                        	addi	a1, zero, 15
80201ec6: 97 e0 ff ff                  	auipc	ra, 1048574
80201eca: e7 80 a0 63                  	jalr	1594(ra)
80201ece: 00 00                        	unimp	
80201ed0: 03 45 91 02                  	lbu	a0, 41(sp)
80201ed4: 89 45                        	addi	a1, zero, 2
80201ed6: 2a e4                        	sd	a0, 8(sp)
80201ed8: 63 01 b5 02                  	beq	a0, a1, 34
80201edc: 09 a0                        	j	2
80201ede: 0d 45                        	addi	a0, zero, 3
80201ee0: a2 65                        	ld	a1, 8(sp)
80201ee2: e3 99 a5 fc                  	bne	a1, a0, -46
80201ee6: 09 a0                        	j	2
80201ee8: 62 65                        	ld	a0, 24(sp)
80201eea: 13 05 85 10                  	addi	a0, a0, 264
80201eee: 97 00 00 00                  	auipc	ra, 0
80201ef2: e7 80 80 1a                  	jalr	424(ra)
80201ef6: 09 a0                        	j	2
80201ef8: 15 a0                        	j	36
80201efa: 62 65                        	ld	a0, 24(sp)
80201efc: 13 05 85 10                  	addi	a0, a0, 264
80201f00: e2 65                        	ld	a1, 24(sp)
80201f02: 93 85 05 11                  	addi	a1, a1, 272
80201f06: 97 00 00 00                  	auipc	ra, 0
80201f0a: e7 80 c0 01                  	jalr	28(ra)
80201f0e: 09 a0                        	j	2
80201f10: 31 a0                        	j	12
80201f12: 97 00 00 00                  	auipc	ra, 0
80201f16: e7 80 c0 25                  	jalr	604(ra)
80201f1a: 09 a0                        	j	2
80201f1c: e2 70                        	ld	ra, 56(sp)
80201f1e: 21 61                        	addi	sp, sp, 64
80201f20: 82 80                        	ret

0000000080201f22 _ZN2os9interrupt19illegal_instruction17h46a3473d2f2e7591E:
80201f22: 45 71                        	addi	sp, sp, -464
80201f24: 86 e7                        	sd	ra, 456(sp)
80201f26: aa fc                        	sd	a0, 120(sp)
80201f28: 2e e1                        	sd	a1, 128(sp)

0000000080201f2a .LBB2_13:
80201f2a: 17 15 00 00                  	auipc	a0, 1
80201f2e: 13 05 65 75                  	addi	a0, a0, 1878
80201f32: 0c 61                        	ld	a1, 0(a0)

0000000080201f34 .LBB2_14:
80201f34: 17 15 00 00                  	auipc	a0, 1
80201f38: 13 05 c5 7e                  	addi	a0, a0, 2028
80201f3c: 08 61                        	ld	a0, 0(a0)
80201f3e: b0 18                        	addi	a2, sp, 120
80201f40: 32 ea                        	sd	a2, 272(sp)
80201f42: 32 f7                        	sd	a2, 424(sp)

0000000080201f44 .LBB2_15:
80201f44: 97 f6 ff ff                  	auipc	a3, 1048575
80201f48: 93 86 c6 26                  	addi	a3, a3, 620
80201f4c: aa f8                        	sd	a0, 112(sp)
80201f4e: 32 85                        	add	a0, zero, a2
80201f50: ae f4                        	sd	a1, 104(sp)
80201f52: b6 85                        	add	a1, zero, a3
80201f54: 97 f0 ff ff                  	auipc	ra, 1048575
80201f58: e7 80 40 19                  	jalr	404(ra)
80201f5c: aa f0                        	sd	a0, 96(sp)
80201f5e: ae ec                        	sd	a1, 88(sp)
80201f60: 09 a0                        	j	2
80201f62: 06 75                        	ld	a0, 96(sp)
80201f64: 2a e2                        	sd	a0, 256(sp)
80201f66: e6 65                        	ld	a1, 88(sp)
80201f68: 2e e6                        	sd	a1, 264(sp)
80201f6a: 88 09                        	addi	a0, sp, 208
80201f6c: 14 02                        	addi	a3, sp, 256
80201f6e: 05 46                        	addi	a2, zero, 1
80201f70: c6 75                        	ld	a1, 112(sp)
80201f72: b2 e8                        	sd	a2, 80(sp)
80201f74: 46 67                        	ld	a4, 80(sp)
80201f76: 97 f0 ff ff                  	auipc	ra, 1048575
80201f7a: e7 80 80 25                  	jalr	600(ra)
80201f7e: 09 a0                        	j	2
80201f80: 88 09                        	addi	a0, sp, 208
80201f82: aa e5                        	sd	a0, 200(sp)
80201f84: 2a fb                        	sd	a0, 432(sp)

0000000080201f86 .LBB2_16:
80201f86: 97 e5 ff ff                  	auipc	a1, 1048574
80201f8a: 93 85 e5 60                  	addi	a1, a1, 1550
80201f8e: 97 f0 ff ff                  	auipc	ra, 1048575
80201f92: e7 80 20 1e                  	jalr	482(ra)
80201f96: aa e4                        	sd	a0, 72(sp)
80201f98: ae e0                        	sd	a1, 64(sp)
80201f9a: 09 a0                        	j	2
80201f9c: 26 65                        	ld	a0, 72(sp)
80201f9e: 2a fd                        	sd	a0, 184(sp)
80201fa0: 86 65                        	ld	a1, 64(sp)
80201fa2: ae e1                        	sd	a1, 192(sp)
80201fa4: 28 01                        	addi	a0, sp, 136
80201fa6: 09 46                        	addi	a2, zero, 2
80201fa8: 34 19                        	addi	a3, sp, 184
80201faa: 05 47                        	addi	a4, zero, 1
80201fac: a6 75                        	ld	a1, 104(sp)
80201fae: 97 f0 ff ff                  	auipc	ra, 1048575
80201fb2: e7 80 00 22                  	jalr	544(ra)
80201fb6: 09 a0                        	j	2
80201fb8: 28 01                        	addi	a0, sp, 136
80201fba: 97 e0 ff ff                  	auipc	ra, 1048574
80201fbe: e7 80 a0 25                  	jalr	602(ra)
80201fc2: 09 a0                        	j	2

0000000080201fc4 .LBB2_17:
80201fc4: 17 15 00 00                  	auipc	a0, 1
80201fc8: 13 05 c5 6b                  	addi	a0, a0, 1724
80201fcc: 0c 61                        	ld	a1, 0(a0)

0000000080201fce .LBB2_18:
80201fce: 17 15 00 00                  	auipc	a0, 1
80201fd2: 13 05 25 78                  	addi	a0, a0, 1922
80201fd6: 08 61                        	ld	a0, 0(a0)
80201fd8: 10 01                        	addi	a2, sp, 128
80201fda: 32 f3                        	sd	a2, 416(sp)
80201fdc: 32 ff                        	sd	a2, 440(sp)

0000000080201fde .LBB2_19:
80201fde: 97 f6 ff ff                  	auipc	a3, 1048575
80201fe2: 93 86 46 1b                  	addi	a3, a3, 436
80201fe6: 2a fc                        	sd	a0, 56(sp)
80201fe8: 32 85                        	add	a0, zero, a2
80201fea: 2e f8                        	sd	a1, 48(sp)
80201fec: b6 85                        	add	a1, zero, a3
80201fee: 97 f0 ff ff                  	auipc	ra, 1048575
80201ff2: e7 80 a0 0f                  	jalr	250(ra)
80201ff6: 2a f4                        	sd	a0, 40(sp)
80201ff8: 2e f0                        	sd	a1, 32(sp)
80201ffa: 09 a0                        	j	2
80201ffc: 22 75                        	ld	a0, 40(sp)
80201ffe: 2a eb                        	sd	a0, 400(sp)
80202000: 82 75                        	ld	a1, 32(sp)
80202002: 2e ef                        	sd	a1, 408(sp)
80202004: 88 12                        	addi	a0, sp, 352
80202006: 14 0b                        	addi	a3, sp, 400
80202008: 05 46                        	addi	a2, zero, 1
8020200a: e2 75                        	ld	a1, 56(sp)
8020200c: 32 ec                        	sd	a2, 24(sp)
8020200e: 62 67                        	ld	a4, 24(sp)
80202010: 97 f0 ff ff                  	auipc	ra, 1048575
80202014: e7 80 e0 1b                  	jalr	446(ra)
80202018: 09 a0                        	j	2
8020201a: 88 12                        	addi	a0, sp, 352
8020201c: aa ee                        	sd	a0, 344(sp)
8020201e: aa e3                        	sd	a0, 448(sp)

0000000080202020 .LBB2_20:
80202020: 97 e5 ff ff                  	auipc	a1, 1048574
80202024: 93 85 45 57                  	addi	a1, a1, 1396
80202028: 97 f0 ff ff                  	auipc	ra, 1048575
8020202c: e7 80 80 14                  	jalr	328(ra)
80202030: 2a e8                        	sd	a0, 16(sp)
80202032: 2e e4                        	sd	a1, 8(sp)
80202034: 09 a0                        	j	2
80202036: 42 65                        	ld	a0, 16(sp)
80202038: aa e6                        	sd	a0, 328(sp)
8020203a: a2 65                        	ld	a1, 8(sp)
8020203c: ae ea                        	sd	a1, 336(sp)
8020203e: 28 0a                        	addi	a0, sp, 280
80202040: 09 46                        	addi	a2, zero, 2
80202042: b4 02                        	addi	a3, sp, 328
80202044: 05 47                        	addi	a4, zero, 1
80202046: c2 75                        	ld	a1, 48(sp)
80202048: 97 f0 ff ff                  	auipc	ra, 1048575
8020204c: e7 80 60 18                  	jalr	390(ra)
80202050: 09 a0                        	j	2
80202052: 28 0a                        	addi	a0, sp, 280
80202054: 97 e0 ff ff                  	auipc	ra, 1048574
80202058: e7 80 00 1c                  	jalr	448(ra)
8020205c: 09 a0                        	j	2
8020205e: 66 75                        	ld	a0, 120(sp)
80202060: 08 61                        	ld	a0, 0(a0)
80202062: 93 05 25 00                  	addi	a1, a0, 2
80202066: 2e e0                        	sd	a1, 0(sp)
80202068: 63 e9 a5 00                  	bltu	a1, a0, 18
8020206c: 09 a0                        	j	2
8020206e: 66 75                        	ld	a0, 120(sp)
80202070: 82 65                        	ld	a1, 0(sp)
80202072: 0c e1                        	sd	a1, 0(a0)
80202074: be 60                        	ld	ra, 456(sp)
80202076: 79 61                        	addi	sp, sp, 464
80202078: 82 80                        	ret

000000008020207a .LBB2_21:
8020207a: 17 15 00 00                  	auipc	a0, 1
8020207e: 13 05 65 6f                  	addi	a0, a0, 1782

0000000080202082 .LBB2_22:
80202082: 17 16 00 00                  	auipc	a2, 1
80202086: 13 06 66 6d                  	addi	a2, a2, 1750
8020208a: f1 45                        	addi	a1, zero, 28
8020208c: 97 e0 ff ff                  	auipc	ra, 1048574
80202090: e7 80 40 47                  	jalr	1140(ra)
80202094: 00 00                        	unimp	

0000000080202096 _ZN2os9interrupt10breakpoint17h6227b8461951ee79E:
80202096: 51 71                        	addi	sp, sp, -240
80202098: 86 f5                        	sd	ra, 232(sp)
8020209a: aa e0                        	sd	a0, 64(sp)

000000008020209c .LBB3_8:
8020209c: 17 15 00 00                  	auipc	a0, 1
802020a0: 13 05 45 5e                  	addi	a0, a0, 1508
802020a4: 0c 61                        	ld	a1, 0(a0)

00000000802020a6 .LBB3_9:
802020a6: 17 15 00 00                  	auipc	a0, 1
802020aa: 13 05 a5 70                  	addi	a0, a0, 1802
802020ae: 08 61                        	ld	a0, 0(a0)
802020b0: 90 00                        	addi	a2, sp, 64
802020b2: b2 e9                        	sd	a2, 208(sp)
802020b4: b2 ed                        	sd	a2, 216(sp)

00000000802020b6 .LBB3_10:
802020b6: 97 f6 ff ff                  	auipc	a3, 1048575
802020ba: 93 86 a6 0f                  	addi	a3, a3, 250
802020be: 2a fc                        	sd	a0, 56(sp)
802020c0: 32 85                        	add	a0, zero, a2
802020c2: 2e f8                        	sd	a1, 48(sp)
802020c4: b6 85                        	add	a1, zero, a3
802020c6: 97 f0 ff ff                  	auipc	ra, 1048575
802020ca: e7 80 20 02                  	jalr	34(ra)
802020ce: 2a f4                        	sd	a0, 40(sp)
802020d0: 2e f0                        	sd	a1, 32(sp)
802020d2: 09 a0                        	j	2
802020d4: 22 75                        	ld	a0, 40(sp)
802020d6: aa e1                        	sd	a0, 192(sp)
802020d8: 82 75                        	ld	a1, 32(sp)
802020da: ae e5                        	sd	a1, 200(sp)
802020dc: 08 09                        	addi	a0, sp, 144
802020de: 94 01                        	addi	a3, sp, 192
802020e0: 05 46                        	addi	a2, zero, 1
802020e2: e2 75                        	ld	a1, 56(sp)
802020e4: 32 ec                        	sd	a2, 24(sp)
802020e6: 62 67                        	ld	a4, 24(sp)
802020e8: 97 f0 ff ff                  	auipc	ra, 1048575
802020ec: e7 80 60 0e                  	jalr	230(ra)
802020f0: 09 a0                        	j	2
802020f2: 08 09                        	addi	a0, sp, 144
802020f4: 2a e5                        	sd	a0, 136(sp)
802020f6: aa f1                        	sd	a0, 224(sp)

00000000802020f8 .LBB3_11:
802020f8: 97 e5 ff ff                  	auipc	a1, 1048574
802020fc: 93 85 c5 49                  	addi	a1, a1, 1180
80202100: 97 f0 ff ff                  	auipc	ra, 1048575
80202104: e7 80 00 07                  	jalr	112(ra)
80202108: 2a e8                        	sd	a0, 16(sp)
8020210a: 2e e4                        	sd	a1, 8(sp)
8020210c: 09 a0                        	j	2
8020210e: 42 65                        	ld	a0, 16(sp)
80202110: aa fc                        	sd	a0, 120(sp)
80202112: a2 65                        	ld	a1, 8(sp)
80202114: 2e e1                        	sd	a1, 128(sp)
80202116: a8 00                        	addi	a0, sp, 72
80202118: 09 46                        	addi	a2, zero, 2
8020211a: b4 18                        	addi	a3, sp, 120
8020211c: 05 47                        	addi	a4, zero, 1
8020211e: c2 75                        	ld	a1, 48(sp)
80202120: 97 f0 ff ff                  	auipc	ra, 1048575
80202124: e7 80 e0 0a                  	jalr	174(ra)
80202128: 09 a0                        	j	2
8020212a: a8 00                        	addi	a0, sp, 72
8020212c: 97 e0 ff ff                  	auipc	ra, 1048574
80202130: e7 80 80 0e                  	jalr	232(ra)
80202134: 09 a0                        	j	2
80202136: 06 65                        	ld	a0, 64(sp)
80202138: 08 61                        	ld	a0, 0(a0)
8020213a: 93 05 25 00                  	addi	a1, a0, 2
8020213e: 2e e0                        	sd	a1, 0(sp)
80202140: 63 e9 a5 00                  	bltu	a1, a0, 18
80202144: 09 a0                        	j	2
80202146: 06 65                        	ld	a0, 64(sp)
80202148: 82 65                        	ld	a1, 0(sp)
8020214a: 0c e1                        	sd	a1, 0(a0)
8020214c: ae 70                        	ld	ra, 232(sp)
8020214e: 6d 61                        	addi	sp, sp, 240
80202150: 82 80                        	ret

0000000080202152 .LBB3_12:
80202152: 17 15 00 00                  	auipc	a0, 1
80202156: 13 05 e5 61                  	addi	a0, a0, 1566

000000008020215a .LBB3_13:
8020215a: 17 16 00 00                  	auipc	a2, 1
8020215e: 13 06 e6 65                  	addi	a2, a2, 1630
80202162: f1 45                        	addi	a1, zero, 28
80202164: 97 e0 ff ff                  	auipc	ra, 1048574
80202168: e7 80 c0 39                  	jalr	924(ra)
8020216c: 00 00                        	unimp	

000000008020216e _ZN2os9interrupt11super_timer17h5eca038da013a4efE:
8020216e: 31 71                        	addi	sp, sp, -192
80202170: 06 fd                        	sd	ra, 184(sp)
80202172: 97 e0 ff ff                  	auipc	ra, 1048574
80202176: e7 80 20 f8                  	jalr	-126(ra)
8020217a: 09 a0                        	j	2

000000008020217c .LBB4_11:
8020217c: 17 75 00 00                  	auipc	a0, 7
80202180: 13 05 45 e8                  	addi	a0, a0, -380
80202184: 08 61                        	ld	a0, 0(a0)
80202186: 93 05 15 00                  	addi	a1, a0, 1
8020218a: 2e f4                        	sd	a1, 40(sp)
8020218c: 63 e7 a5 0a                  	bltu	a1, a0, 174
80202190: 09 a0                        	j	2

0000000080202192 .LBB4_12:
80202192: 17 75 00 00                  	auipc	a0, 7
80202196: 13 05 e5 e6                  	addi	a0, a0, -402
8020219a: a2 75                        	ld	a1, 40(sp)
8020219c: 0c e1                        	sd	a1, 0(a0)
8020219e: 13 05 40 06                  	addi	a0, zero, 100
802021a2: 63 84 a5 00                  	beq	a1, a0, 8
802021a6: 09 a0                        	j	2
802021a8: 71 a0                        	j	140

00000000802021aa .LBB4_13:
802021aa: 17 75 00 00                  	auipc	a0, 7
802021ae: 13 05 65 e5                  	addi	a0, a0, -426
802021b2: 81 45                        	mv	a1, zero
802021b4: 0c e1                        	sd	a1, 0(a0)

00000000802021b6 .LBB4_14:
802021b6: 17 15 00 00                  	auipc	a0, 1
802021ba: 13 05 a5 4c                  	addi	a0, a0, 1226
802021be: 08 61                        	ld	a0, 0(a0)

00000000802021c0 .LBB4_15:
802021c0: 17 16 00 00                  	auipc	a2, 1
802021c4: 13 06 86 64                  	addi	a2, a2, 1608
802021c8: 10 62                        	ld	a2, 0(a2)

00000000802021ca .LBB4_16:
802021ca: 97 16 00 00                  	auipc	a3, 1
802021ce: 93 86 66 4f                  	addi	a3, a3, 1270
802021d2: 94 62                        	ld	a3, 0(a3)
802021d4: 18 01                        	addi	a4, sp, 128
802021d6: 85 47                        	addi	a5, zero, 1
802021d8: 2a f0                        	sd	a0, 32(sp)
802021da: 3a 85                        	add	a0, zero, a4
802021dc: 2e ec                        	sd	a1, 24(sp)
802021de: b2 85                        	add	a1, zero, a2
802021e0: 3e 86                        	add	a2, zero, a5
802021e2: 62 67                        	ld	a4, 24(sp)
802021e4: 97 f0 ff ff                  	auipc	ra, 1048575
802021e8: e7 80 a0 fe                  	jalr	-22(ra)
802021ec: 09 a0                        	j	2
802021ee: 08 01                        	addi	a0, sp, 128
802021f0: aa fc                        	sd	a0, 120(sp)
802021f2: 2a f9                        	sd	a0, 176(sp)

00000000802021f4 .LBB4_17:
802021f4: 97 e5 ff ff                  	auipc	a1, 1048574
802021f8: 93 85 05 3a                  	addi	a1, a1, 928
802021fc: 97 f0 ff ff                  	auipc	ra, 1048575
80202200: e7 80 40 f7                  	jalr	-140(ra)
80202204: 2a e8                        	sd	a0, 16(sp)
80202206: 2e e4                        	sd	a1, 8(sp)
80202208: 09 a0                        	j	2
8020220a: 42 65                        	ld	a0, 16(sp)
8020220c: aa f4                        	sd	a0, 104(sp)
8020220e: a2 65                        	ld	a1, 8(sp)
80202210: ae f8                        	sd	a1, 112(sp)
80202212: 28 18                        	addi	a0, sp, 56
80202214: 09 46                        	addi	a2, zero, 2
80202216: b4 10                        	addi	a3, sp, 104
80202218: 05 47                        	addi	a4, zero, 1
8020221a: 82 75                        	ld	a1, 32(sp)
8020221c: 97 f0 ff ff                  	auipc	ra, 1048575
80202220: e7 80 20 fb                  	jalr	-78(ra)
80202224: 09 a0                        	j	2
80202226: 28 18                        	addi	a0, sp, 56
80202228: 97 e0 ff ff                  	auipc	ra, 1048574
8020222c: e7 80 c0 fe                  	jalr	-20(ra)
80202230: 09 a0                        	j	2
80202232: 09 a0                        	j	2
80202234: ea 70                        	ld	ra, 184(sp)
80202236: 29 61                        	addi	sp, sp, 192
80202238: 82 80                        	ret

000000008020223a .LBB4_18:
8020223a: 17 15 00 00                  	auipc	a0, 1
8020223e: 13 05 65 53                  	addi	a0, a0, 1334

0000000080202242 .LBB4_19:
80202242: 17 16 00 00                  	auipc	a2, 1
80202246: 13 06 e6 58                  	addi	a2, a2, 1422
8020224a: f1 45                        	addi	a1, zero, 28
8020224c: 97 e0 ff ff                  	auipc	ra, 1048574
80202250: e7 80 40 2b                  	jalr	692(ra)
80202254: 00 00                        	unimp	

0000000080202256 _ZN5riscv8register5stvec5write17h938eed133b2008a0E:
80202256: 01 11                        	addi	sp, sp, -32
80202258: 06 ec                        	sd	ra, 24(sp)
8020225a: 2e 86                        	add	a2, zero, a1
8020225c: 2a e4                        	sd	a0, 8(sp)
8020225e: a3 0b b1 00                  	sb	a1, 23(sp)
80202262: aa 95                        	add	a1, a1, a0
80202264: 2e e0                        	sd	a1, 0(sp)
80202266: 63 ec a5 00                  	bltu	a1, a0, 24
8020226a: 09 a0                        	j	2
8020226c: 02 65                        	ld	a0, 0(sp)
8020226e: 97 00 00 00                  	auipc	ra, 0
80202272: e7 80 c0 02                  	jalr	44(ra)
80202276: 09 a0                        	j	2
80202278: e2 60                        	ld	ra, 24(sp)
8020227a: 05 61                        	addi	sp, sp, 32
8020227c: 82 80                        	ret

000000008020227e .LBB0_4:
8020227e: 17 15 00 00                  	auipc	a0, 1
80202282: 13 05 25 60                  	addi	a0, a0, 1538

0000000080202286 .LBB0_5:
80202286: 17 16 00 00                  	auipc	a2, 1
8020228a: 13 06 a6 5d                  	addi	a2, a2, 1498
8020228e: f1 45                        	addi	a1, zero, 28
80202290: 97 e0 ff ff                  	auipc	ra, 1048574
80202294: e7 80 00 27                  	jalr	624(ra)
80202298: 00 00                        	unimp	

000000008020229a _ZN5riscv8register5stvec6_write17h3bc85e8aa65109f9E:
8020229a: 41 11                        	addi	sp, sp, -16
8020229c: 2a e4                        	sd	a0, 8(sp)
8020229e: 73 10 55 10                  	csrw	stvec, a0
802022a2: 41 01                        	addi	sp, sp, 16
802022a4: 82 80                        	ret

00000000802022a6 _ZN5riscv8register6scause6Scause12is_interrupt17h3b13a35ff3893259E:
802022a6: 39 71                        	addi	sp, sp, -64
802022a8: 06 fc                        	sd	ra, 56(sp)
802022aa: 2a f4                        	sd	a0, 40(sp)
802022ac: a1 45                        	addi	a1, zero, 8
802022ae: 2e f8                        	sd	a1, 48(sp)
802022b0: 2a f0                        	sd	a0, 32(sp)
802022b2: 2e ec                        	sd	a1, 24(sp)
802022b4: 09 a0                        	j	2
802022b6: 62 65                        	ld	a0, 24(sp)
802022b8: 93 15 35 00                  	slli	a1, a0, 3
802022bc: 01 46                        	mv	a2, zero
802022be: 2e e8                        	sd	a1, 16(sp)
802022c0: 0d e6                        	bnez	a2, 42
802022c2: 09 a0                        	j	2
802022c4: 42 65                        	ld	a0, 16(sp)
802022c6: 93 05 f5 ff                  	addi	a1, a0, -1
802022ca: 2e e4                        	sd	a1, 8(sp)
802022cc: 63 6e b5 02                  	bltu	a0, a1, 60
802022d0: 09 a0                        	j	2
802022d2: 02 75                        	ld	a0, 32(sp)
802022d4: a2 65                        	ld	a1, 8(sp)
802022d6: 97 00 00 00                  	auipc	ra, 0
802022da: e7 80 40 0d                  	jalr	212(ra)
802022de: 2a e0                        	sd	a0, 0(sp)
802022e0: 09 a0                        	j	2
802022e2: 02 65                        	ld	a0, 0(sp)
802022e4: e2 70                        	ld	ra, 56(sp)
802022e6: 21 61                        	addi	sp, sp, 64
802022e8: 82 80                        	ret

00000000802022ea .LBB0_7:
802022ea: 17 15 00 00                  	auipc	a0, 1
802022ee: 13 05 65 62                  	addi	a0, a0, 1574

00000000802022f2 .LBB0_8:
802022f2: 17 16 00 00                  	auipc	a2, 1
802022f6: 13 06 e6 5f                  	addi	a2, a2, 1534
802022fa: 93 05 10 02                  	addi	a1, zero, 33
802022fe: 97 e0 ff ff                  	auipc	ra, 1048574
80202302: e7 80 20 20                  	jalr	514(ra)
80202306: 00 00                        	unimp	

0000000080202308 .LBB0_9:
80202308: 17 15 00 00                  	auipc	a0, 1
8020230c: 13 05 85 63                  	addi	a0, a0, 1592

0000000080202310 .LBB0_10:
80202310: 17 16 00 00                  	auipc	a2, 1
80202314: 13 06 06 5e                  	addi	a2, a2, 1504
80202318: 93 05 10 02                  	addi	a1, zero, 33
8020231c: 97 e0 ff ff                  	auipc	ra, 1048574
80202320: e7 80 40 1e                  	jalr	484(ra)
80202324: 00 00                        	unimp	

0000000080202326 _ZN5riscv8register6scause6Scause5cause17h5ba3eb7389dd99b5E:
80202326: 5d 71                        	addi	sp, sp, -80
80202328: 86 e4                        	sd	ra, 72(sp)
8020232a: aa e0                        	sd	a0, 64(sp)
8020232c: 2a f8                        	sd	a0, 48(sp)
8020232e: 97 00 00 00                  	auipc	ra, 0
80202332: e7 80 80 f7                  	jalr	-136(ra)
80202336: 2a f4                        	sd	a0, 40(sp)
80202338: 09 a0                        	j	2
8020233a: 22 75                        	ld	a0, 40(sp)
8020233c: 09 e9                        	bnez	a0, 18
8020233e: 09 a0                        	j	2
80202340: 42 75                        	ld	a0, 48(sp)
80202342: 97 00 00 00                  	auipc	ra, 0
80202346: e7 80 e0 23                  	jalr	574(ra)
8020234a: 2a f0                        	sd	a0, 32(sp)
8020234c: 05 a8                        	j	48
8020234e: 42 75                        	ld	a0, 48(sp)
80202350: 97 00 00 00                  	auipc	ra, 0
80202354: e7 80 00 23                  	jalr	560(ra)
80202358: 2a ec                        	sd	a0, 24(sp)
8020235a: 09 a0                        	j	2
8020235c: 62 65                        	ld	a0, 24(sp)
8020235e: 97 00 00 00                  	auipc	ra, 0
80202362: e7 80 80 0c                  	jalr	200(ra)
80202366: 13 75 f5 0f                  	andi	a0, a0, 255
8020236a: 2a e8                        	sd	a0, 16(sp)
8020236c: 09 a0                        	j	2
8020236e: 42 65                        	ld	a0, 16(sp)
80202370: a3 0c a1 02                  	sb	a0, 57(sp)
80202374: 81 45                        	mv	a1, zero
80202376: 23 0c b1 02                  	sb	a1, 56(sp)
8020237a: 0d a0                        	j	34
8020237c: 02 75                        	ld	a0, 32(sp)
8020237e: 97 00 00 00                  	auipc	ra, 0
80202382: e7 80 80 12                  	jalr	296(ra)
80202386: 13 75 f5 0f                  	andi	a0, a0, 255
8020238a: 2a e4                        	sd	a0, 8(sp)
8020238c: 09 a0                        	j	2
8020238e: 22 65                        	ld	a0, 8(sp)
80202390: a3 0c a1 02                  	sb	a0, 57(sp)
80202394: 85 45                        	addi	a1, zero, 1
80202396: 23 0c b1 02                  	sb	a1, 56(sp)
8020239a: 09 a0                        	j	2
8020239c: 03 45 81 03                  	lbu	a0, 56(sp)
802023a0: 83 05 91 03                  	lb	a1, 57(sp)
802023a4: a6 60                        	ld	ra, 72(sp)
802023a6: 61 61                        	addi	sp, sp, 80
802023a8: 82 80                        	ret

00000000802023aa _ZN45_$LT$usize$u20$as$u20$bit_field..BitField$GT$7get_bit17h1cbe1ad554a714f7E:
802023aa: 79 71                        	addi	sp, sp, -48
802023ac: 2a f0                        	sd	a0, 32(sp)
802023ae: 2e f4                        	sd	a1, 40(sp)
802023b0: 13 06 f0 03                  	addi	a2, zero, 63
802023b4: 2e ec                        	sd	a1, 24(sp)
802023b6: 2a e8                        	sd	a0, 16(sp)
802023b8: 63 61 b6 02                  	bltu	a2, a1, 34
802023bc: 09 a0                        	j	2
802023be: 42 65                        	ld	a0, 16(sp)
802023c0: 0c 61                        	ld	a1, 0(a0)
802023c2: 62 66                        	ld	a2, 24(sp)
802023c4: 93 76 06 fc                  	andi	a3, a2, -64
802023c8: 05 47                        	addi	a4, zero, 1
802023ca: 33 17 c7 00                  	sll	a4, a4, a2
802023ce: 81 47                        	mv	a5, zero
802023d0: 2e e4                        	sd	a1, 8(sp)
802023d2: 3a e0                        	sd	a4, 0(sp)
802023d4: 63 9a f6 02                  	bne	a3, a5, 52
802023d8: 05 a0                        	j	32

00000000802023da .LBB0_5:
802023da: 17 15 00 00                  	auipc	a0, 1
802023de: 13 05 75 58                  	addi	a0, a0, 1415

00000000802023e2 .LBB0_6:
802023e2: 17 16 00 00                  	auipc	a2, 1
802023e6: 13 06 66 61                  	addi	a2, a2, 1558
802023ea: 93 05 80 02                  	addi	a1, zero, 40
802023ee: 97 e0 ff ff                  	auipc	ra, 1048574
802023f2: e7 80 20 11                  	jalr	274(ra)
802023f6: 00 00                        	unimp	
802023f8: 22 65                        	ld	a0, 8(sp)
802023fa: 82 65                        	ld	a1, 0(sp)
802023fc: 33 76 b5 00                  	and	a2, a0, a1
80202400: 33 35 c0 00                  	snez	a0, a2
80202404: 45 61                        	addi	sp, sp, 48
80202406: 82 80                        	ret

0000000080202408 .LBB0_7:
80202408: 17 15 00 00                  	auipc	a0, 1
8020240c: 13 05 85 67                  	addi	a0, a0, 1656

0000000080202410 .LBB0_8:
80202410: 17 16 00 00                  	auipc	a2, 1
80202414: 13 06 86 65                  	addi	a2, a2, 1624
80202418: 93 05 30 02                  	addi	a1, zero, 35
8020241c: 97 e0 ff ff                  	auipc	ra, 1048574
80202420: e7 80 40 0e                  	jalr	228(ra)
80202424: 00 00                        	unimp	

0000000080202426 _ZN5riscv8register6scause9Interrupt4from17h9dc503e4aa5c90e9E:
80202426: 01 11                        	addi	sp, sp, -32
80202428: 2a ec                        	sd	a0, 24(sp)
8020242a: 81 45                        	mv	a1, zero
8020242c: 2a e4                        	sd	a0, 8(sp)
8020242e: 63 00 b5 04                  	beq	a0, a1, 64
80202432: 09 a0                        	j	2
80202434: 05 45                        	addi	a0, zero, 1
80202436: a2 65                        	ld	a1, 8(sp)
80202438: 63 8f a5 02                  	beq	a1, a0, 62
8020243c: 09 a0                        	j	2
8020243e: 11 45                        	addi	a0, zero, 4
80202440: a2 65                        	ld	a1, 8(sp)
80202442: 63 8e a5 02                  	beq	a1, a0, 60
80202446: 09 a0                        	j	2
80202448: 15 45                        	addi	a0, zero, 5
8020244a: a2 65                        	ld	a1, 8(sp)
8020244c: 63 8d a5 02                  	beq	a1, a0, 58
80202450: 09 a0                        	j	2
80202452: 21 45                        	addi	a0, zero, 8
80202454: a2 65                        	ld	a1, 8(sp)
80202456: 63 8c a5 02                  	beq	a1, a0, 56
8020245a: 09 a0                        	j	2
8020245c: 25 45                        	addi	a0, zero, 9
8020245e: a2 65                        	ld	a1, 8(sp)
80202460: 63 8b a5 02                  	beq	a1, a0, 54
80202464: 09 a0                        	j	2
80202466: 19 45                        	addi	a0, zero, 6
80202468: a3 0b a1 00                  	sb	a0, 23(sp)
8020246c: 0d a8                        	j	50
8020246e: 01 45                        	mv	a0, zero
80202470: a3 0b a1 00                  	sb	a0, 23(sp)
80202474: 2d a0                        	j	42
80202476: 05 45                        	addi	a0, zero, 1
80202478: a3 0b a1 00                  	sb	a0, 23(sp)
8020247c: 0d a0                        	j	34
8020247e: 09 45                        	addi	a0, zero, 2
80202480: a3 0b a1 00                  	sb	a0, 23(sp)
80202484: 29 a8                        	j	26
80202486: 0d 45                        	addi	a0, zero, 3
80202488: a3 0b a1 00                  	sb	a0, 23(sp)
8020248c: 09 a8                        	j	18
8020248e: 11 45                        	addi	a0, zero, 4
80202490: a3 0b a1 00                  	sb	a0, 23(sp)
80202494: 29 a0                        	j	10
80202496: 15 45                        	addi	a0, zero, 5
80202498: a3 0b a1 00                  	sb	a0, 23(sp)
8020249c: 09 a0                        	j	2
8020249e: 03 05 71 01                  	lb	a0, 23(sp)
802024a2: 05 61                        	addi	sp, sp, 32
802024a4: 82 80                        	ret

00000000802024a6 _ZN5riscv8register6scause9Exception4from17h0003af8bc6e30b76E:
802024a6: 01 11                        	addi	sp, sp, -32
802024a8: 2a ec                        	sd	a0, 24(sp)
802024aa: 81 45                        	mv	a1, zero
802024ac: 2a e4                        	sd	a0, 8(sp)
802024ae: 63 09 b5 06                  	beq	a0, a1, 114
802024b2: 09 a0                        	j	2
802024b4: 05 45                        	addi	a0, zero, 1
802024b6: a2 65                        	ld	a1, 8(sp)
802024b8: 63 88 a5 06                  	beq	a1, a0, 112
802024bc: 09 a0                        	j	2
802024be: 09 45                        	addi	a0, zero, 2
802024c0: a2 65                        	ld	a1, 8(sp)
802024c2: 63 87 a5 06                  	beq	a1, a0, 110
802024c6: 09 a0                        	j	2
802024c8: 0d 45                        	addi	a0, zero, 3
802024ca: a2 65                        	ld	a1, 8(sp)
802024cc: 63 86 a5 06                  	beq	a1, a0, 108
802024d0: 09 a0                        	j	2
802024d2: 15 45                        	addi	a0, zero, 5
802024d4: a2 65                        	ld	a1, 8(sp)
802024d6: 63 85 a5 06                  	beq	a1, a0, 106
802024da: 09 a0                        	j	2
802024dc: 19 45                        	addi	a0, zero, 6
802024de: a2 65                        	ld	a1, 8(sp)
802024e0: 63 84 a5 06                  	beq	a1, a0, 104
802024e4: 09 a0                        	j	2
802024e6: 1d 45                        	addi	a0, zero, 7
802024e8: a2 65                        	ld	a1, 8(sp)
802024ea: 63 83 a5 06                  	beq	a1, a0, 102
802024ee: 09 a0                        	j	2
802024f0: 21 45                        	addi	a0, zero, 8
802024f2: a2 65                        	ld	a1, 8(sp)
802024f4: 63 82 a5 06                  	beq	a1, a0, 100
802024f8: 09 a0                        	j	2
802024fa: 31 45                        	addi	a0, zero, 12
802024fc: a2 65                        	ld	a1, 8(sp)
802024fe: 63 81 a5 06                  	beq	a1, a0, 98
80202502: 09 a0                        	j	2
80202504: 35 45                        	addi	a0, zero, 13
80202506: a2 65                        	ld	a1, 8(sp)
80202508: 63 80 a5 06                  	beq	a1, a0, 96
8020250c: 09 a0                        	j	2
8020250e: 3d 45                        	addi	a0, zero, 15
80202510: a2 65                        	ld	a1, 8(sp)
80202512: 63 8f a5 04                  	beq	a1, a0, 94
80202516: 09 a0                        	j	2
80202518: 2d 45                        	addi	a0, zero, 11
8020251a: a3 0b a1 00                  	sb	a0, 23(sp)
8020251e: a9 a8                        	j	90
80202520: 01 45                        	mv	a0, zero
80202522: a3 0b a1 00                  	sb	a0, 23(sp)
80202526: 89 a8                        	j	82
80202528: 05 45                        	addi	a0, zero, 1
8020252a: a3 0b a1 00                  	sb	a0, 23(sp)
8020252e: a9 a0                        	j	74
80202530: 09 45                        	addi	a0, zero, 2
80202532: a3 0b a1 00                  	sb	a0, 23(sp)
80202536: 89 a0                        	j	66
80202538: 0d 45                        	addi	a0, zero, 3
8020253a: a3 0b a1 00                  	sb	a0, 23(sp)
8020253e: 2d a8                        	j	58
80202540: 11 45                        	addi	a0, zero, 4
80202542: a3 0b a1 00                  	sb	a0, 23(sp)
80202546: 0d a8                        	j	50
80202548: 15 45                        	addi	a0, zero, 5
8020254a: a3 0b a1 00                  	sb	a0, 23(sp)
8020254e: 2d a0                        	j	42
80202550: 19 45                        	addi	a0, zero, 6
80202552: a3 0b a1 00                  	sb	a0, 23(sp)
80202556: 0d a0                        	j	34
80202558: 1d 45                        	addi	a0, zero, 7
8020255a: a3 0b a1 00                  	sb	a0, 23(sp)
8020255e: 29 a8                        	j	26
80202560: 21 45                        	addi	a0, zero, 8
80202562: a3 0b a1 00                  	sb	a0, 23(sp)
80202566: 09 a8                        	j	18
80202568: 25 45                        	addi	a0, zero, 9
8020256a: a3 0b a1 00                  	sb	a0, 23(sp)
8020256e: 29 a0                        	j	10
80202570: 29 45                        	addi	a0, zero, 10
80202572: a3 0b a1 00                  	sb	a0, 23(sp)
80202576: 09 a0                        	j	2
80202578: 03 05 71 01                  	lb	a0, 23(sp)
8020257c: 05 61                        	addi	sp, sp, 32
8020257e: 82 80                        	ret

0000000080202580 _ZN5riscv8register6scause6Scause4code17h1b20b48e0c8f2f34E:
80202580: 39 71                        	addi	sp, sp, -64
80202582: 2a f4                        	sd	a0, 40(sp)
80202584: a1 45                        	addi	a1, zero, 8
80202586: 2e fc                        	sd	a1, 56(sp)
80202588: 2a f0                        	sd	a0, 32(sp)
8020258a: 2e ec                        	sd	a1, 24(sp)
8020258c: 09 a0                        	j	2
8020258e: 62 65                        	ld	a0, 24(sp)
80202590: 93 15 35 00                  	slli	a1, a0, 3
80202594: 01 46                        	mv	a2, zero
80202596: 2e e8                        	sd	a1, 16(sp)
80202598: 15 ee                        	bnez	a2, 60
8020259a: 09 a0                        	j	2
8020259c: 42 65                        	ld	a0, 16(sp)
8020259e: 93 05 f5 ff                  	addi	a1, a0, -1
802025a2: 2e e4                        	sd	a1, 8(sp)
802025a4: 63 67 b5 04                  	bltu	a0, a1, 78
802025a8: 09 a0                        	j	2
802025aa: 22 65                        	ld	a0, 8(sp)
802025ac: 93 75 05 fc                  	andi	a1, a0, -64
802025b0: 05 46                        	addi	a2, zero, 1
802025b2: 33 16 a6 00                  	sll	a2, a2, a0
802025b6: 81 46                        	mv	a3, zero
802025b8: 32 e0                        	sd	a2, 0(sp)
802025ba: 63 9b d5 04                  	bne	a1, a3, 86
802025be: 09 a0                        	j	2
802025c0: 02 65                        	ld	a0, 0(sp)
802025c2: 2a f8                        	sd	a0, 48(sp)
802025c4: 82 75                        	ld	a1, 32(sp)
802025c6: 90 61                        	ld	a2, 0(a1)
802025c8: 93 46 f5 ff                  	not	a3, a0
802025cc: 33 75 d6 00                  	and	a0, a2, a3
802025d0: 21 61                        	addi	sp, sp, 64
802025d2: 82 80                        	ret

00000000802025d4 .LBB4_8:
802025d4: 17 15 00 00                  	auipc	a0, 1
802025d8: 13 05 c5 53                  	addi	a0, a0, 1340

00000000802025dc .LBB4_9:
802025dc: 17 16 00 00                  	auipc	a2, 1
802025e0: 13 06 c6 51                  	addi	a2, a2, 1308
802025e4: 93 05 10 02                  	addi	a1, zero, 33
802025e8: 97 e0 ff ff                  	auipc	ra, 1048574
802025ec: e7 80 80 f1                  	jalr	-232(ra)
802025f0: 00 00                        	unimp	

00000000802025f2 .LBB4_10:
802025f2: 17 15 00 00                  	auipc	a0, 1
802025f6: 13 05 e5 55                  	addi	a0, a0, 1374

00000000802025fa .LBB4_11:
802025fa: 17 16 00 00                  	auipc	a2, 1
802025fe: 13 06 e6 53                  	addi	a2, a2, 1342
80202602: 93 05 10 02                  	addi	a1, zero, 33
80202606: 97 e0 ff ff                  	auipc	ra, 1048574
8020260a: e7 80 a0 ef                  	jalr	-262(ra)
8020260e: 00 00                        	unimp	

0000000080202610 .LBB4_12:
80202610: 17 15 00 00                  	auipc	a0, 1
80202614: 13 05 05 58                  	addi	a0, a0, 1408

0000000080202618 .LBB4_13:
80202618: 17 16 00 00                  	auipc	a2, 1
8020261c: 13 06 06 56                  	addi	a2, a2, 1376
80202620: 93 05 30 02                  	addi	a1, zero, 35
80202624: 97 e0 ff ff                  	auipc	ra, 1048574
80202628: e7 80 c0 ed                  	jalr	-292(ra)
8020262c: 00 00                        	unimp	

000000008020262e _ZN5riscv8register7sstatus4_set17he98db55626c770ebE:
8020262e: 41 11                        	addi	sp, sp, -16
80202630: 2a e4                        	sd	a0, 8(sp)
80202632: 73 20 05 10                  	csrs	sstatus, a0
80202636: 41 01                        	addi	sp, sp, 16
80202638: 82 80                        	ret

000000008020263a _ZN5riscv8register7sstatus7set_sie17h5cca5e0cd0731c68E:
8020263a: 41 11                        	addi	sp, sp, -16
8020263c: 06 e4                        	sd	ra, 8(sp)
8020263e: 09 45                        	addi	a0, zero, 2
80202640: 97 00 00 00                  	auipc	ra, 0
80202644: e7 80 e0 fe                  	jalr	-18(ra)
80202648: 09 a0                        	j	2
8020264a: a2 60                        	ld	ra, 8(sp)
8020264c: 41 01                        	addi	sp, sp, 16
8020264e: 82 80                        	ret

0000000080202650 _ZN5riscv8register8sscratch5write17he601096111577ed2E:
80202650: 41 11                        	addi	sp, sp, -16
80202652: 06 e4                        	sd	ra, 8(sp)
80202654: 2a e0                        	sd	a0, 0(sp)
80202656: 97 00 00 00                  	auipc	ra, 0
8020265a: e7 80 00 01                  	jalr	16(ra)
8020265e: 09 a0                        	j	2
80202660: a2 60                        	ld	ra, 8(sp)
80202662: 41 01                        	addi	sp, sp, 16
80202664: 82 80                        	ret

0000000080202666 _ZN5riscv8register8sscratch6_write17hfc0939d9191612feE:
80202666: 41 11                        	addi	sp, sp, -16
80202668: 2a e4                        	sd	a0, 8(sp)
8020266a: 73 10 05 14                  	csrw	sscratch, a0
8020266e: 41 01                        	addi	sp, sp, 16
80202670: 82 80                        	ret
		...
80202ffe: 00 00                        	unimp	
