.model small
.stack 100h
.data   
    a dw 0009h
    b dw 0002h
    c dw   ?

.code
start:
    mov ax,@data
    mov ds,ax
    mov ax,a
    mov bx,b
    mul bx
    mov c,ax
     mov ah,4ch
     int 21h

    end start