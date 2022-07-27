.global reset_handler 

reset_handler : 
ldr sp, =STACK_TOP 

bl main 


stop :

b stop 