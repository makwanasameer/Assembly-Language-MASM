
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3

 */



data segment
ar db 19h,15h,30h

data ends

code segment

assume ds:data,cs:code

start:
       
mov ax,data
mov ds,ax
lea si,ar
lea di,ar
mov dx,02h ;initialize dx register with count 04       
mov bx,si    ;mov intial address of si to bx 

lp1:mov cx,dx
    mov si,bx
    mov al,[si] 
lp2:inc si
    cmp al,[si]
    jc labl
    xchg al,[si]
    
labl:loop lp2
mov [di],al
inc di    
mov bx,di
mov si,bx
dec dx
loop lp1


  
mov ah,4ch
int 21h

end start
code ends      

        
