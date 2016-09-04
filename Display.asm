
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3

 */

data segment
var1 db "                          hello world$"
nl db 0dh,0ah,'$'
data ends

code segment
start:
Assume cs:code,ds:data
mov ax,data
mov ds,ax

mov cx,12h
l1:
mov ah,09h
mov dx,offset nl
int 21h
loop l1

mov ah,09h
mov dx,offset var1
int 21h


mov ah,4ch
int 21h

code ends
end start 
