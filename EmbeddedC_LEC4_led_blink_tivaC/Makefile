# makefile by momen tarrad

CC=arm-none-eabi-
CFLAG=-gdwarf-2 -g -mcpu=cortex-m4
INCS=-I .
LIB=
Project_Name=led_blink_tivaC
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

SRCAS = $(wildcard *.s)
OBJAS = $(SRCAS:.s=.o)


build_project: $(Project_Name).bin
	@echo "build completed successfully"
		
$(Project_Name).bin: $(Project_Name).elf
	$(CC)objcopy.exe -O binary $< $@
	
$(Project_Name).elf: $(OBJ) $(OBJAS)
	$(CC)ld.exe -T linker_script.ld  $(LIB) $(OBJ) $(OBJAS) -o $@ -Map=output.map
	cp $(Project_Name).elf $(Project_Name).axf

%.o: %.s
	$(CC)as.exe $(CFLAG) $< -o $@

%.o: %.c
	$(CC)gcc.exe -c $(CFLAG) $(INCS) $< -o $@
	

clean_all:
	rm *.o *.elf *.bin


		