/*
 * EX4.c

 *
 *  Created on: May 21, 2021
 *      Author: Ahmed
 */

#include "stdio.h"
int power_of_num(int num, int power)
{
	if(power==1)
		return num;
	else
	if(power==0)
		return 1;

	else
		return num*power_of_num(num,power-1);

}

void main(void)
{
	int x=	power_of_num(3,0);
	printf("%d",x);
}
