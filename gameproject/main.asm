;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _set_sprite_data
	.globl _delay
	.globl _mainchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_mainchar::
	.ds 256
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;mainchar.c:26: unsigned char mainchar[] =
	ld	hl, #_mainchar
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0001)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0003)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0004)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0005)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0007)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0008)
	ld	(hl), #0x1a
	ld	hl, #(_mainchar + 0x0009)
	ld	(hl), #0x12
	ld	hl, #(_mainchar + 0x000a)
	ld	(hl), #0x12
	ld	hl, #(_mainchar + 0x000b)
	ld	(hl), #0x12
	ld	hl, #(_mainchar + 0x000c)
	ld	(hl), #0x0c
	ld	hl, #(_mainchar + 0x000d)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x000e)
	ld	(hl), #0x05
	ld	hl, #(_mainchar + 0x000f)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x0010)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0011)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0012)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x0013)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x0014)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x0015)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0016)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x0017)
	ld	(hl), #0x17
	ld	hl, #(_mainchar + 0x0018)
	ld	(hl), #0x18
	ld	hl, #(_mainchar + 0x0019)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x001a)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x001b)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x001c)
	ld	(hl), #0x06
	ld	hl, #(_mainchar + 0x001d)
	ld	(hl), #0x06
	ld	hl, #(_mainchar + 0x001e)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x001f)
	ld	(hl), #0x0e
	ld	hl, #(_mainchar + 0x0020)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0021)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0023)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x0024)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x0025)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0027)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x0028)
	ld	(hl), #0x58
	ld	hl, #(_mainchar + 0x0029)
	ld	(hl), #0x48
	ld	hl, #(_mainchar + 0x002a)
	ld	(hl), #0x48
	ld	hl, #(_mainchar + 0x002b)
	ld	(hl), #0x48
	ld	hl, #(_mainchar + 0x002c)
	ld	(hl), #0x30
	ld	hl, #(_mainchar + 0x002d)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x002e)
	ld	(hl), #0xa0
	ld	hl, #(_mainchar + 0x002f)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x0030)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0031)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0032)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x0033)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x0034)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x0035)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0036)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x0037)
	ld	(hl), #0xe8
	ld	hl, #(_mainchar + 0x0038)
	ld	(hl), #0x18
	ld	hl, #(_mainchar + 0x0039)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x003a)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x003b)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x003c)
	ld	(hl), #0x60
	ld	hl, #(_mainchar + 0x003d)
	ld	(hl), #0x60
	ld	hl, #(_mainchar + 0x003e)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x003f)
	ld	(hl), #0x70
	ld	hl, #(_mainchar + 0x0040)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0041)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0042)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0043)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0044)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0045)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0046)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0047)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x0048)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x0049)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x004a)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x004b)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x004c)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x004d)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x004e)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x004f)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x0050)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0051)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0052)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x0053)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x0054)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x0055)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0056)
	ld	(hl), #0x0a
	ld	hl, #(_mainchar + 0x0057)
	ld	(hl), #0x0b
	ld	hl, #(_mainchar + 0x0058)
	ld	(hl), #0x0e
	ld	hl, #(_mainchar + 0x0059)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x005a)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x005b)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x005c)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x005d)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x005e)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x005f)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0060)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x0061)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x0062)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0063)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0064)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0065)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0066)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0067)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x0068)
	ld	(hl), #0x50
	ld	hl, #(_mainchar + 0x0069)
	ld	(hl), #0x50
	ld	hl, #(_mainchar + 0x006a)
	ld	(hl), #0x50
	ld	hl, #(_mainchar + 0x006b)
	ld	(hl), #0x50
	ld	hl, #(_mainchar + 0x006c)
	ld	(hl), #0xa0
	ld	hl, #(_mainchar + 0x006d)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x006e)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x006f)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x0070)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x0071)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x0072)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x0073)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0074)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x0075)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0076)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x0077)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0078)
	ld	(hl), #0x40
	ld	hl, #(_mainchar + 0x0079)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x007a)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x007b)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x007c)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x007d)
	ld	(hl), #0x80
	ld	hl, #(_mainchar + 0x007e)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x007f)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x0080)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x0081)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x0082)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0083)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0084)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0085)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0086)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x0087)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x0088)
	ld	(hl), #0x0a
	ld	hl, #(_mainchar + 0x0089)
	ld	(hl), #0x0a
	ld	hl, #(_mainchar + 0x008a)
	ld	(hl), #0x0a
	ld	hl, #(_mainchar + 0x008b)
	ld	(hl), #0x0a
	ld	hl, #(_mainchar + 0x008c)
	ld	(hl), #0x05
	ld	hl, #(_mainchar + 0x008d)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x008e)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x008f)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x0090)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x0091)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x0092)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x0093)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0094)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x0095)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0096)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x0097)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x0098)
	ld	(hl), #0x02
	ld	hl, #(_mainchar + 0x0099)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x009a)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x009b)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x009c)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x009d)
	ld	(hl), #0x01
	ld	hl, #(_mainchar + 0x009e)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x009f)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x00a0)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00a1)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00a2)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00a3)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00a4)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00a5)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00a6)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00a7)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00a8)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00a9)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00aa)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00ab)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00ac)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00ad)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00ae)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00af)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00b0)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00b1)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00b2)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00b3)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x00b4)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00b5)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00b6)
	ld	(hl), #0x50
	ld	hl, #(_mainchar + 0x00b7)
	ld	(hl), #0xd0
	ld	hl, #(_mainchar + 0x00b8)
	ld	(hl), #0x70
	ld	hl, #(_mainchar + 0x00b9)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00ba)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00bb)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00bc)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00bd)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00be)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00bf)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00c0)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x00c1)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x00c2)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00c3)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x00c4)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x00c5)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x00c6)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00c7)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x00c8)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00c9)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00ca)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00cb)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00cc)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00cd)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00ce)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x00cf)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x00d0)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x00d1)
	ld	(hl), #0x03
	ld	hl, #(_mainchar + 0x00d2)
	ld	(hl), #0x04
	ld	hl, #(_mainchar + 0x00d3)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x00d4)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00d5)
	ld	(hl), #0x0f
	ld	hl, #(_mainchar + 0x00d6)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00d7)
	ld	(hl), #0x17
	ld	hl, #(_mainchar + 0x00d8)
	ld	(hl), #0x18
	ld	hl, #(_mainchar + 0x00d9)
	ld	(hl), #0x1f
	ld	hl, #(_mainchar + 0x00da)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x00db)
	ld	(hl), #0x07
	ld	hl, #(_mainchar + 0x00dc)
	ld	(hl), #0x06
	ld	hl, #(_mainchar + 0x00dd)
	ld	(hl), #0x06
	ld	hl, #(_mainchar + 0x00de)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00df)
	ld	(hl), #0x06
	ld	hl, #(_mainchar + 0x00e0)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00e1)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00e2)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00e3)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00e4)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00e5)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00e6)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00e7)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00e8)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00e9)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00ea)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00eb)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00ec)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00ed)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00ee)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00ef)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00f0)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00f1)
	ld	(hl), #0xc0
	ld	hl, #(_mainchar + 0x00f2)
	ld	(hl), #0x20
	ld	hl, #(_mainchar + 0x00f3)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x00f4)
	ld	(hl), #0x10
	ld	hl, #(_mainchar + 0x00f5)
	ld	(hl), #0xf0
	ld	hl, #(_mainchar + 0x00f6)
	ld	(hl), #0x08
	ld	hl, #(_mainchar + 0x00f7)
	ld	(hl), #0xe8
	ld	hl, #(_mainchar + 0x00f8)
	ld	(hl), #0x18
	ld	hl, #(_mainchar + 0x00f9)
	ld	(hl), #0xf8
	ld	hl, #(_mainchar + 0x00fa)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x00fb)
	ld	(hl), #0xe0
	ld	hl, #(_mainchar + 0x00fc)
	ld	(hl), #0x60
	ld	hl, #(_mainchar + 0x00fd)
	ld	(hl), #0x60
	ld	hl, #(_mainchar + 0x00fe)
	ld	(hl), #0x00
	ld	hl, #(_mainchar + 0x00ff)
	ld	(hl), #0x60
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:4: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:5: UINT8 currentspriteindex = 0;
	ld	c, #0x00
;main.c:7: set_sprite_data(0, 2, mainchar);
	ld	hl, #_mainchar
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), #0x00
;c:/gbdk/include/gb/gb.h:1077: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;c:/gbdk/include/gb/gb.h:1078: itm->y=y, itm->x=x;
	ld	a, #0x4e
	ld	(hl+), a
	ld	(hl), #0x58
;main.c:10: SHOW_SPRITES;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x02
	ldh	(_LCDC_REG+0),a
;main.c:12: while(1) {
00105$:
;main.c:13: if (currentspriteindex == 0) {
	ld	a, c
	or	a, a
;main.c:14: currentspriteindex = 1;
;main.c:17: currentspriteindex = 0;
	ld	c, #0x01
	jr	Z, 00103$
	ld	c, #0x00
00103$:
;c:/gbdk/include/gb/gb.h:1004: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 0x0002)
	ld	(hl), c
;main.c:21: delay(1000);
	push	bc
	ld	hl, #0x03e8
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
;main.c:24: }
	jr	00105$
	.area _CODE
	.area _CABS (ABS)
