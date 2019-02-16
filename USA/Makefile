include $(DEVKITARM)/ds_rules
#---------------------------------------------------------------------------------
# path to tools
#---------------------------------------------------------------------------------
export PATH  :=    $(DEVKITARM)/bin:$(PATH)
export CC    :=    gcc
#---------------------------------------------------------------------------------
# the prefix on the compiler executables
#---------------------------------------------------------------------------------
PREFIX        :=    arm-none-eabi-
#---------------------------------------------------------------------------------


all: build/UNOSetting.sav build/UNOMatch.sav

### STAGE 0 (COMPILE EXPLOITABLE SAVE) ###########################################		
build/UNOSetting.elf: unopwn.s
	mkdir -p $(dir $@) 
	$(PREFIX)gcc -x assembler-with-cpp -nostartfiles -nostdlib -g -o $@ $< $(DEFINES)

build/UNOSetting.sav: build/UNOSetting.elf
	arm-none-eabi-objcopy -O binary $< $@

### STAGE 1 (COMPILE WRAM SAVEFILE FOR BOOTCODE) #################################
build/UNOMatch.elf: unopwn_base.s
	mkdir -p $(dir $@) 
	$(PREFIX)gcc -x assembler-with-cpp -nostartfiles -nostdlib -g -o $@ $< $(DEFINES)
 
build/UNOMatch.sav: build/UNOMatch.elf
	arm-none-eabi-objcopy -O binary $< $@

clean:
	rm -rf build/