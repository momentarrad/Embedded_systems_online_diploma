/*
 * ex3.c
 *
 *  Created on: Jul 2, 2021
 *      Author: Ahmed
 */

struct complex
{
	float real;
	float imaginary;
};


struct complex add_complex(struct complex* num1,struct complex * num2)
{
   struct complex result ;
   result.real= (num1->real) + (num2->real) ;
   result.imaginary= (num1->imaginary) + (num2->imaginary) ;

   return result ;
}
void main ()
{
	struct complex num1= {1,5};
	struct complex num2= {2,10} ;
	struct complex res ;

	res=  add_complex(&num1,&num2);

	printf("%f + %f i", res.real , res.imaginary);


}
