/*
project: app.c
auther: momen
*/


#include <stdint.h>



#define SYSCTL_RCGC2_R      *((volatile uint32_t * const)(0X400FE108))
#define GPIO_PORTF_DATA_R    *((volatile uint32_t * const)(0X400253FC))
#define GPIO_PORTF_DIR_R    *((volatile uint32_t * const)(0X40025400))
#define GPIO_PORTF_DEN_R    *((volatile uint32_t * const)(0X4002551C))

volatile uint32_t i =10 ;
volatile uint8_t y =10 ;

void main(void)
{
volatile uint16_t delay_PortF_CLK =0 ;


/* enable clock for portF */
SYSCTL_RCGC2_R = 0x20 ;

/* delay for at least 3 CLKs in order to give suitable time for the portF clock to be enabled */
for(delay_PortF_CLK=0; delay_PortF_CLK<200; delay_PortF_CLK++);

/* portF pin3 is output */
GPIO_PORTF_DIR_R  |= (1<<3);

/* enable digital pin */
GPIO_PORTF_DEN_R |= (1<<3);

while(1)
{
GPIO_PORTF_DATA_R |= (1<<3);
for(i=0;i<50000;i++);

GPIO_PORTF_DATA_R &= ~(1<<3);
for(i=0;i<50000;i++);


}
 





}