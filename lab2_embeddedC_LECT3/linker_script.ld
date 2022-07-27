/* LINKER SCRIPT BY MOMEN TARRAD */



ENTRY (_reset)


MEMORY
{

	FLASH(RX) : ORIGIN = 0X08000000, LENGTH = 128K
	SRAM(RWX) : ORIGIN = 0X20000000, LENGTH = 20K

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
	
	EDATA = . ;

	}>SRAM AT >FLASH
	
	.bss : {
	
	SBSS = . ;
		*(.bss*)
     	*(COMMON*)

	EBSS = . ;
	
	
		} > SRAM
		
	EBSS_out = . ;	
		

		
	. = . +1000 ;	
	SP_Top = . ;	

	
	


}