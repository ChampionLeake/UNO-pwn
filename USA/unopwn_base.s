.global _start
.section .init

/* bootcode is appended at the offset 0x2EB0 in the UNOMatch.sav archive */
/* Payload jumps to the WRAM address at 0x023C6E50 */
/* Real-code (ofc) loaded at 0x02200000*/

_start:
.space (_start + 0x2DB7) - .
.byte 0x7C, 0xC0, 0x1D, 0x02, 0x80, 0xC0, 0x1D, 0x02, 0x84, 0xC0, 0x1D, 0x02, 0x88, 0xC0, 0x1D, 0x02	@ Match Header for profile slot 1
.org 0x2EB0
.incbin "./assets/generictwlpayload.bin"

.space (_start + 0xFF9B) - .
.word 0 @ crc32