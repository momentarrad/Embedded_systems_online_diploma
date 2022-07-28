/* LINKER SCRIPT BY MOMEN TARRAD */



ENTRY (_reset)


MEMORY
{

	FLASH(RX) : ORIGIN = 0X00000000, LENGTH = 512M
	SRAM(RWX) : ORIGIN = 0X20000000, LENGTH = 512M

}

SECTIONS
{   START = . ; /*here . = 0x00 */
	.text : { 
	STEXT = . ; /*here . = 0X08000000 */
	
		*(.vectors*)
		*(.text*)
	ETEXT = . ;	
		
		} > FLASH
	START2 = . ;
	
	.data : {
	
	SDATA = . ;
	*(.data*)
	. = ALIGN(4) ;
	EDATA = . ;

	}>SRAM AT >FLASH
	
	.bss : {
	
	SBSS = . ;
        *(.bss*)
     	*(COMMON*)
        

	EBSS = . ;
	
	
		} > SRAM
		
	EBSS_out = . ;	


	
	


}