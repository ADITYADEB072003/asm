.model small
.stack 100h
.data
a db 10,13,"enter the number 1:$"
b db 10,13,"enter the number 2:$"
c db 10,13,"the result:$"
.code
start:
mov ax,@data
mov ds,ax

lea dx,a
mov ah,09h
int 21h

mov ah,01h
int 21h

mov bl,al

lea dx,b
mov ah,09h
int 21h

mov ah,01h
int 21h


sub al,30h

sub bl,30h

lea dx,c
mov ah,09h
int 21h

mul bl

add al,30h

mov dl,al

mov ah,02h
int 21h

mov ah,4ch
int 21h

end start