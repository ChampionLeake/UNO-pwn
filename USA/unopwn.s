.global _start
.section .init

#define JUMP_ADR 0x021E9730

_start:
.incbin "./assets/profile_header.bin" @ PROFILE garbage

@ Appends 0x32 bytes of the value "0x20" to the profile name; Using an excessively large username causes the game to crash, stack-smash vuln!
.fill 0x32, 1, 0x20

.word JUMP_ADR @ Jumps to our appropriate WRAM address which will execute our payload
.space (_start + 0x260) - .

.align 2
.incbin "./assets/loader.bin" @ initially used to jump to an address for WRAM to execute the generictwlpayload via savefile (UNOMatch.sav).

/* rest of the save is just profile garbage (Holds data like avatars, records, etc.) */
.org 0x39C
.byte 0x01

.org 0x3A4
.byte 0x01

.org 0x3B0
.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01

.org 0x3C1
.byte 0x01, 0x01

.space (_start + 0x79C) - .			@ Each profile slot is 0x79C bytes long
.incbin "./assets/profile_slots.bin"	@ profile 2
.incbin "./assets/profile_slots.bin"	@ profile 3
.incbin "./assets/profile_slots.bin"	@ profile 4
.incbin "./assets/profile_slots.bin"	@ profile 5

.word 0
.byte 0x01

.space (_start + 0x2614) - .
.word 0 @ crc32
