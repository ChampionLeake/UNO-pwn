# UNO*pwn
UNO*pwn is a DSiWare savegame exploit for the game, UNO, that will allow a user to launch into [nds-hb-menu](https://github.com/devkitPro/nds-hb-menu). This github repo, within the region specific folders, contains the source code for building the exploit. With the region specific folders, the exploitable savefiles are included. 

###
###
## Requirements:
* A DSi on any system firmware
* A copy of the digitial DSiWare title, `"UNO"`.
* You'll need Homebrew Access in order to install the exploit.
	- If you have Flipnote Studio DSi, you can use [Flipnote ( ͡° ͜ʖ ͡°)](https://davejmurphy.com/%CD%A1-%CD%9C%CA%96-%CD%A1/)
###
###

## Installing UNO*pwn:
__NOTE:__ This will overwrite your savedata and will make some areas of the game inoperable. Backup your savedata if possible before installing the exploit.
* Download the [DSiWareHax archive]() and place all of the contents on the root of your SD card
* Use an exisiting DSiWare exploit to launch the `DSiWareHax.nds` application
* If things went well, the application should install all of the existing DSiWare exploits on your NAND including the UNO*pwn exploit.

## Triggering the exploit
1. Select the rainbow settings wheel at the bottom-right of your touch screen
2. Tap the `PROFILE` menubar 
3. Tap the `Edit Profile` menubar
4. Watch the magic happen :D
###
###
## Support:
* USA, EUR, and JPN versions of the game are supported
* Every DSi system firmware is supported
###
###
## FAQ:
1. __Q:__ I'm getting stuck on a magenta/lime/UNO Screen when I trigger the exploit. What do I do?
	- __A:__ Simply reboot the system and try triggering the exploit again.
	
2. __Q:__ I'm stuck on a White Screen after launching the exploit. What's the workaround for this issue?
	- __A:__ Make sure there's a `BOOT.NDS` file on the root of your SD Card. You can get the latest release [here](https://github.com/devkitPro/nds-hb-menu/releases/)

3. __Q:__ What can I do with this exploit?
	- __A:__ Launch and run DSi Homebrew Applications and to install other exploits.

4. __Q:__ Does this work if I use this exploit on the 3DS?
	- __A:__ If you have UNO DSiWare on your 3DS, you can use this exploit


## Special thanks to:
* [zoogie](https://github.com/zoogie): WRAM Loader code, EUR UNO*pwn port, assisting me throughout the exploitation
* [stuckpixel](https://github.com/pixel-stuck): Concept and code of the SDLoader, assisting me throughout the exploitation, assisting me realted to memory dumps, encouraging me not to quit, and basically teaching me a lot of things I put into practice today :D
* [shutterbug2000](https://github.com/shutterbug2000): Assisting me realted to memory dumps
* [ihaveamac](https://github.com/ihaveamac): CRC32 Python Scripts
* [nocash](https://problemkaputt.de/gba.htm): Suggestions for improving the SDLoader, creating no$gba for debugging (WHICH HELPED A LOT)
* [Normmatt](https://github.com/Normmatt): Helping me fix the masterbright settings for the PoC splash payload
* [fincs](https://github.com/fincs): Giving very helpful advice about RAM allocating
* [WinterMute](https://github.com/WinterMute): bootloader(minitwlpayload), NDS-HB-Menu, DEVKITPRO, porting UNO*pwn to his DSiWareHax installer
* [yellows8](https://github.com/yellows8): the inspiration that got me to doing stuff for the DSi.
* All of the thankful and helpful testers :D
###
## Video Demonstration:
<a href="http://www.youtube.com/watch?feature=player_embedded&v=XN4YDSVuPwQ
" target="_blank"><img src="http://img.youtube.com/vi/XN4YDSVuPwQ/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
