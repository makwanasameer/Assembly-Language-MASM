
/*
Roll no:09bce026
Author: Sameer Makwana
Licence: GPLv3
*/


read macro num
        mov ah,01h
        int 21h
        sub al,'0'
        mov bh,0ah
        mul bh
        mov num,al
        mov ah,01h
        int 21h
        sub al,'0'
        add num,al
endm
print macro kaka
        mov ah,09h
        mov dx,offset kaka
        int 21h
endm

data segment
        msg1 db "Enter the numbers$"
        newline db 0dh,0ah,'$'
        no db ?
        ans db ?

data ends
code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax
        mov cx,0004h
        lea si,no
        print msg1
        print newline
    lp1:    read [si]
        inc si
        print newline
        loop lp1

        lea di,no
        mov al,[di]
        mov cx,0004h
     lp2:     inc di
        mov bh,[di]
        add al,bh
        loop lp2

        print newline
        mov ah,00h
        mov bh,04h
        div bh
        add al,'0'
        mov dl,al
        mov ah,02h
        int 21h



        mov ah,4ch
        int 21h
        
code ends
        end start
