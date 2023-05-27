.model small
.stack 100h
.data
	a db 09h
	b db 02h
	c db ?
.code
 start:
	mov ax,@data
	mov ds,ax
 	mov al,a
 	mov bl,b
	add al,bl
	mov c,al
	
	mov ah,4ch
	int 21h
end start