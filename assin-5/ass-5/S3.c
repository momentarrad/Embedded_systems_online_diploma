/*
 * S3.c
 *
 *  Created on: Apr 17, 2021
 *      Author: Ahmed
 */


void main()
{
char arr[30]="momen",arr2[30],i=0,string_size=0;

while(arr[i]!=0)
{
	i++;
}
i--;
string_size=i;

while(i>=0)
{
	arr2[string_size-i]=arr[i];
	i--;
}

for(i=0;i<=string_size;i++)
{
	printf("%c",arr2[i]);
}






}
