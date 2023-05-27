.model small
.stack 100h
.data
msg db 10,13,"enter the number$"
msg1 db 10,13," the number$"
.code 
start:
mov ax,@data
mov ds,ax
 
 lea dx,msg
 mov ah,09h
 int  21h
 
 mov ah,01h ?reading the no 
 int 21h
 
 mov bl,al
 
 lea dx,msg1
 mov ah,09h
 int  21h
 
 mov ah,02h ?printing the no
 mov dl,bl
 int 21h
 
 mov ah,4ch
 int 21h
 end start