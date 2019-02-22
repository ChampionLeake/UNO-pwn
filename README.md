# UNO*pwn
UNO*pwn is a DSiWare savegame exploit for the game, UNO. The exploit will allow users to launch into the [nds-hb-menu](https://github.com/devkitPro/nds-hb-menu). This github repo contains the source code and the exploitable savefiles which are divided amongst their appropriate regions. 

###
###
## Requirements:
* A DSi on any system firmware.
* A copy of the digitial DSiWare title, `"UNO"`.
* You'll need Homebrew Access in order to install the exploit.
	- If you have Flipnote Studio on your DSi, you can use the [Flipnote ( ͡° ͜ʖ ͡°)](https://davejmurphy.com/%CD%A1-%CD%9C%CA%96-%CD%A1/) exploit.
###
###

## Installing UNO*pwn:
__NOTE:__ This will overwrite your current savedata and will make some areas of the game inoperable. Please backup your savedata (if possible) before installing the exploit.
* Download the [DSiWareHax archive]() and place all of the contents onto the root of your SD card.
* Use an exisiting DSiWare exploit to launch into the nds-hbmenu, and navigate to where the `DSiWareHax.nds` application is stored.
* If all things went well, the application should install all of the existing DSiWare exploits onto your NAND and should install the UNO*pwn exploit as well.

## Triggering the exploit
1. Select the rainbow settings wheel from the bottom-right of your touch screen
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
1. __Q:__ I'm getting stuck on a magenta, light green, or the UNO Screen when I trigger the exploit. What do I do?
	- __A:__ Simply reboot the system and try launching the exploit again.
	
2. __Q:__ I'm stuck on a White Screen after launching the exploit. What's the workaround for this issue?
	- __A:__ Make sure there's a `BOOT.NDS` file on the root of your SD Card. You can get the latest release [here](https://github.com/devkitPro/nds-hb-menu/releases/)

3. __Q:__ What can I do with this exploit?
	- __A:__ You can run and play DSi Homebrew Applications to your pleasing.

4. __Q:__ Will installing the exploit work if I have the DSiWare title, UNO, on my 3DS?
	- __A:__ Yes


## Special thanks to:
* [zoogie](https://github.com/zoogie): WRAM Loader code, EUR UNO*pwn port, and assisting me throughout the exploitation
* [stuckpixel](https://github.com/pixel-stuck): Concept and code of the SDLoader, assisting me throughout the exploitation, assisting me through memory dumping, encouraging me not to quit, and basically teaching me a lot of tricks here or there I put into practice today :D
* [WinterMute](https://github.com/WinterMute): bootloader(minitwlpayload), NDS-HB-Menu, DEVKITPRO, porting UNO*pwn to the DSiWareHax installer(HUGE THANKS FOR THAT :D)
* [shutterbug2000](https://github.com/shutterbug2000): Assisting me with things related to memory dumps
* [ihaveamac](https://github.com/ihaveamac): CRC32 Python Scripts
* [nocash](https://problemkaputt.de/gba.htm): Providing ideas to make the SDLoader work, creating no$gba which I used for debugging (WHICH HELPED A LOT)
* [Normmatt](https://github.com/Normmatt): Helping me fix the masterbright settings for the initial PoC splash payload
* [fincs](https://github.com/fincs): Giving me helpful advice about RAM allocating
* [yellows8](https://github.com/yellows8): His exploits got me interested in doing DSi work.
* All of the thankful and helpful testers :D
###
## Video Demonstration:
<a href="http://www.youtube.com/watch?feature=player_embedded&v=XN4YDSVuPwQ
" target="_blank"><img src="http://img.youtube.com/vi/XN4YDSVuPwQ/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
