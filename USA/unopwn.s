.global _start
.section .init

#define JUMPADR 0x021E9730

_start:
.incbin "./assets/profile_header.bin" @ some type of PROFILE garbage

@ Fills the profile name with the value 0x20; counted as the initial string-buffer-overflow for the profile name.
.fill 0x32, 1, 0x20

.word JUMPADR @ Jumps to a WRAM offset where the payload will run code from RAM 
.space (_start + 0x260) - .

.align 2
.incbin "./assets/loader.bin" @ initial used to jump to a section of WRAM to boot the minitwlpayload from another savefile (UNOMatch.sav). Notes can be found in "zoogie_notes.txt".

/* rest of the save is just profile garbage (Holding information like the avatars, records, etc.) */
.org 0x39C
.byte 0x01

.org 0x3A4
.byte 0x01

.org 0x3B0
.byte 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01

.org 0x3C1
.byte 0x01, 0x01

.space (_start + 0x79C) - .			@ UNO stores 5 profiles in this preticular save; each slot is 0x79C bytes long
.incbin "./assets/profile_slots.bin"	@ profile 2
.incbin "./assets/profile_slots.bin"	@ profile 3
.incbin "./assets/profile_slots.bin"	@ profile 4
.incbin "./assets/profile_slots.bin"	@ profile 5

.word 0
.byte 0x01

.space (_start + 0x2614) - .
.word 0 @ crc32
