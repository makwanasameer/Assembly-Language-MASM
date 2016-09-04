
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3

*/

data segment
var1 db 5h
var2 db 6h
ans db ?
data ends

code segment
start:
Assume cs:code,ds:data
mov ax,data
mov ds,ax

mov ax,0600h
mov bh,71h
mov cx,0000h
mov dx,5090h
int 10h

mov ah,4ch
int 21h

code ends
end start 
