# UNO CRC32 Patcher tool #
# scripted by ihaveahax  #
# CRC32 solved by ChampionLeake #
# sanity-checks added by ChampionLeake #

#!/usr/bin/env python3

import glob
import os
import zlib

for i in glob.iglob('../build/UNOMatch.sav', recursive=True):
    if os.path.getsize(i) == 0xFF9F:	#size of the overall UNOMatch.sav file
        with open(i, 'rb+') as f:
            data = f.read(0xFF9B)	#reads the offset of the CRC-bytes
            if data[0x2DC0:0x2DC7] == b'\xc0\x1d\x02\x88\xc0\x1d\x02':	#sanity-check for a specific string to be found in the save (specifically offset 0x160) ; string is 8 bytes long
                print('UNOMATCH CRC32 Patcher 1.0\nBy ihaveahax and ChampionLeake\n\n')
                print('FAMILIAR BYTES FOUND: ', data[0x2DC0:0x2DC7])
                print('FIXING', i, '\n')
                cc = zlib.crc32(data) & 0xFFFFFFFF
                f.write(cc.to_bytes(4, 'big'))	#UNO uses big endian for it's CRC
                print('CRC successfully patched!\nhave a good day')
            else:
                print('This is not a compatible save for this tool')
				
