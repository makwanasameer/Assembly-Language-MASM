
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3
*/

data segment
var1 db 02h
var2 db 01h
ans db ?
data ends

code segment
start:
Assume cs:code,ds:data
mov ax,data
mov ds,ax
mov ah,var1
mov bh,var2
add ah,bh
mov ans,ah

mov ah,4ch
int 21h

code ends
end start 
