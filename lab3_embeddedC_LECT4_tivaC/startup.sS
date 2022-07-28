/* start up assembly code for stm32 
by : Momen tarrad 
*/

.global _reset

.section .vectors

.word SP_Top
.word _reset
.word Vector_handler /* NMI */
.word Vector_handler /* HARD FAULT */
.word Vector_handler /* NM HANDLER*/
.word Vector_handler /* BUS FAULT */
.word Vector_handler /* USAGE FAULT */
.word Vector_handler /* RESERVED*/
.word Vector_handler /* RESERVED*/
.word Vector_handler /* RESERVED*/
.word Vector_handler /* SV CALL*/
.word Vector_handler /* DEBUG RESERVED*/
.word Vector_handler /* RESERVED*/
.word Vector_handler /* PendSV*/
.word Vector_handler /* SYSTICK*/
.word Vector_handler /* IRQ0*/
.word Vector_handler /* IRQ1*/
.word Vector_handler /* IQR2  */
		/* IQR UP TO 67  */

.section .text
_reset :
	bl main
	b .
	
.thumb_func
Vector_handler:
	b _reset