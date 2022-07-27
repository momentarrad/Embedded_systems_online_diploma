/* C startup Code for STM32 */

#include <stdint.h>

void main(void); 
void _reset(void );
void default_handler (void);

void NMI_handler(void) __attribute__((weak,alias("default_handler")));
void H_fault_handler(void) __attribute__((weak,alias("default_handler")));
void MM_fault_handler(void) __attribute__((weak,alias("default_handler")));
void bus_fault_handler(void) __attribute__((weak,alias("default_handler")));
void usage_fault_handler(void) __attribute__((weak,alias("default_handler")));


extern uint32_t SP_Top ;
extern uint32_t EBSS ;
extern uint32_t SBSS ;
extern uint32_t ETEXT ;
extern uint32_t SDATA ;
extern uint32_t EDATA ;


uint32_t vector_table [] __attribute__((section(".vectors"))) =
{
(uint32_t)&SP_Top,
(uint32_t) _reset,
(uint32_t)NMI_handler,
(uint32_t)H_fault_handler,
(uint32_t)MM_fault_handler,
(uint32_t)bus_fault_handler,
(uint32_t)usage_fault_handler
};

uint8_t g_vector_table  __attribute__((section(".vectors"))) = 10;

void default_handler (void)
{
    _reset();


}

void _reset(void )
{
uint32_t counter =0;
uint32_t BSS_size =0;
uint32_t DATA_size =0;

 uint8_t * BSS_SRAM = (uint8_t *)&SBSS ;
 uint8_t * DATA_SRAM =(uint8_t *)&SDATA ;
 uint8_t * DATA_SFlash =(uint8_t *)&ETEXT ;


/* size of bss */
BSS_size = (uint8_t *)&EBSS-(uint8_t *)&SBSS ; 

/* initialize BSS BY ZERO  */
for(counter=0 ; counter < BSS_size ; counter++)
{
*((uint8_t *)BSS_SRAM) = (uint8_t)0x00 ;
BSS_SRAM++;

}

/* .data size  */
DATA_size = (uint8_t *)&EDATA - (uint8_t *)&SDATA ; 

/* COPY .data from flash  to RAM */
for(counter=0 ; counter < DATA_size ; counter++)
{
*((uint8_t *)DATA_SRAM) = *((uint8_t *)DATA_SFlash) ;
DATA_SRAM++;
DATA_SFlash++;

}


main();

}




