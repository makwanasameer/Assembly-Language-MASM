
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3
*/


data segment                      
ar db 19h,15h,30h               
max db ?                           
min db  ?                          
data ends                           


code segment                    
start:
          assume cs:code,ds:data
          mov ax,data           
          mov ds,ax
          mov cx,02h               
          lea si,ar                    
          mov al,[si]                  
          mov bl,al                  
          mov bh,al                

lp1:    inc si                      
         cmp bl,[si]                 
         jc lp2                    
         mov bl,[si]                 
lp2:   cmp bh,[si]                  
         jnc lp3                     
         mov bh,[si]
lp3:   loop lp1                       
         mov max,bh                  
         mov min,bl                  
         mov ah,4ch
         int 21h
        
code ends
end start                




