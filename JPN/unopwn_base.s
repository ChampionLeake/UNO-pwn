.global _start
.section .init

/* bootcode is pasted in this file at offset 0xC800 */
/* This was the payload dest to the WRAM offset 0x023D4320 at bootime. */
/* Our loader.bin helps point to the bootcoode here */

_start:
.space (_start + 0x2DB7) - .
.incbin "./assets/match_headers.bin"	@ general base data for each profile slot from "Tournament" mode


.space (_start + 0xC714) - .
.byte 0x58, 0x97, 0x1E, 0x02, 0x5C, 0x97, 0x1E, 0x02, 0x60, 0x97, 0x1E, 0x02, 0x64, 0x97, 0x1E, 0x02	@ UNO Match Header for Profile 4
.org 0xC800	@ bootcode (minitwlpayload) gets placed here; the payload jumps to the bootcodes WRAM(offset 0x023D07A0)
.incbin "./assets/minitwlpayload.bin"		@ UNO Match Profile 5 gets overwritten with our bootcode

.space (_start + 0xFA33) - .
.byte 0x10, 0xCB, 0x1E, 0x02, 0x14, 0xCB, 0x1E, 0x02, 0x18, 0xCB, 0x1E, 0x02, 0x1C, 0xCB, 0x1E, 0x02	@ UNO Math Header Profile 6, but the game only holds 5 profiles
.org 0xFDB0
.byte 0x01
.org 0xFF7C
.byte 0x01

.space (_start + 0xFF9B) - .
.word 0 @ crc32
