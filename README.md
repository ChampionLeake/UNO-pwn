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
__NOTE:__ This will overwrite your current savedata and will make some areas of the game inoperable. Please backup your savedata (if possible) before installing the exploit. Also, WinterMute's DSiWareHax Installer will soon include this exploit along with other new features to come. Stay tune and keep an eye out on this repo as WinterMute's installer will be linked here once he releases.
* Be sure to download the latest [nds-hbmenu](https://github.com/devkitPro/nds-hb-menu/releases/) and place the `BOOT.NDS` file onto the root of your SD Card.

### For 3DS - CFW USERS:
1. Copy the `gm9` folder from the `3DS - CFW USERS` directory onto the root of your SD Card.
2. Assuming that you have Luma3DS and you have the GodMode9 luma payload, hold the `START` button when powering on the console.
3. Press the home button on your 3DS and navigate to the `Scripts...` option.
4. Search for the `UNOpwn_injector (YOUR UNO-GAME REGION)` script and select the `Backup Options` and press A to confirm.
5. Since you have your previous UNO save backed up, navigate to the `Install UNO*pwn` option and proceed with the instructions.
	- Things should succeed at this point and you should have the exploit installed onto your 3DS.

### For DSi - HiyaCFW USERS:
* (Please backup your saves first by navigating to `sd:/title/00030004/4B554EXX/data/public.sav`)
	- `4B554E45 = USA`, `4B554E4A = JPN`, and `4B554E56 = EUR`

1. Copy the `title` folder from the `DSi - HiyaCFW USERS` directory onto the root of your SD Card (Overwrite the files if needed)
	- Things should succeed at this point and you should have `UNO*pwn` installed onto your DSi.
###
###
## Triggering the exploit
1. Select the rainbow settings wheel from the bottom-right of your touch screen
2. Tap the `PROFILE` menubar 
3. Tap the `Erase Profile` or `Edit Profile` menubar
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
* [nocash](https://problemkaputt.de/gba.htm): Providing ideas to make the SDLoader work, creating no$gba which I used for debugging (WHICH HELPED A LOT)
* [WinterMute](https://github.com/WinterMute): bootloader(minitwlpayload), NDS-HB-Menu, DEVKITPRO, porting UNO*pwn to the DSiWareHax installer(HUGE THANKS FOR THAT :D)
* [shutterbug2000](https://github.com/shutterbug2000): Assisting me with things related to memory dumps
* [ihaveamac](https://github.com/ihaveamac): CRC32 Python Scripts
* [Normmatt](https://github.com/Normmatt): Helping me fix the masterbright settings for the initial PoC splash payload
* [fincs](https://github.com/fincs): Giving me helpful advice about RAM allocating
* [yellows8](https://github.com/yellows8): His exploits got me interested in doing DSi work.
* All of the thankful and helpful testers :D
###
## Video Demonstration:
<a href="http://www.youtube.com/watch?feature=player_embedded&v=XN4YDSVuPwQ
" target="_blank"><img src="http://img.youtube.com/vi/XN4YDSVuPwQ/0.jpg" 
alt="IMAGE ALT TEXT HERE" width="240" height="180" border="10" /></a>
