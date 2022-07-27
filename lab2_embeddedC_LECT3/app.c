/*
project: app.c
auther: momen
*/


#include <stdint.h>





#define RCC_BASE_ADDRESS 0X40021000
#define GPIO_PA_BASE_ADDRESS 0X40010800

#define RCC_APB2ENR *((volatile uint32_t * const)(0X18+RCC_BASE_ADDRESS))
#define GPIO_PA_CRH *((volatile uint32_t * const)(0X04+GPIO_PA_BASE_ADDRESS))
#define GPIO_PA_ODR *((volatile uint32_t * const)(0X0C+GPIO_PA_BASE_ADDRESS))

typedef union{

 uint32_t PortA;

struct{
 uint32_t Reserved_Bits:13 ;
 uint32_t pin13:1 ;

}pin; 

}PA_ODR;

volatile PA_ODR * g_portA = (volatile PA_ODR *) &GPIO_PA_ODR;

volatile uint32_t i =0 ;
volatile uint8_t y =10 ;

void main(void)
{


RCC_APB2ENR|=(1<<2);
GPIO_PA_CRH=(GPIO_PA_CRH&0xFF0FFFFF)|(2<<20);

while(1)
{
// GPIO_PA_ODR =0;   
g_portA->pin.pin13=1;
for(i=0;i<50000;i++);

//GPIO_PA_ODR=1<<13 ;
g_portA->pin.pin13=0;
for(i=0;i<50000;i++);


}
 





}