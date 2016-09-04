
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3
*/

data segment
num1 db 23h,12h,30h,40h
min db ?
max db ?
data ends

code segment
start:
assume cs:code,ds:data
mov ax,data
mov ds,ax

lea si,num1
mov al,[si]
mov min,al
mov max,al
inc si
mov cx,0003h
lp1:
mov al,[si]
cmp al,min
jnc next
mov min,al
next:
cmp al,max
jc next2
mov max,al

next2:
inc si
loop lp1

mov ah,max
mov al,min
mov ah,4ch
int 21h

code ends
end start

