ENTRY( reset_handler )



MEMORY
{
        Mem (rxw) : ORIGIN = 0X00000000, LENGTH = 64M

}

SECTIONS
{        
         . = 0x10000 ;    

        .reset . :
         {
             startup.o(.text)
         } > Mem

        .text :
         {
            *(.text) 
         } > Mem


         .data :
          {
             *(.data)
          } >Mem
          
          .bss :
          {
             *(.bss)  *(.rodata )
          }>Mem




         . = . + 0x1000 ;
         STACK_TOP = . ;
}