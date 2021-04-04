/*
 * HW2_8.c
 *
 *  Created on: Apr 4, 2021
 *      Author: Ahmed
 */
#include <stdio.h>
void main()
{

char operator;
float num1,num2, result;

printf("please enter the two numbers");
fflush(stdin);
fflush(stdout);
scanf("%f %f",&num1,&num2);

printf("please enter operation");
fflush(stdin);
fflush(stdout);
scanf("%c",&operator);



    switch (operator) {
    case '+':
        result= num1+num2;
        break;
    case '-':
         result= num1-num2;
         break;
    case '*':
    	result= num1*num2;
        break;
    case '/':
    	result= num1/num2;
        break;
        // operator doesn't match any case constant
    default:
        printf("Error! operator is not correct");
                      }

printf(" result is %f", result );
}
