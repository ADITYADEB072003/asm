.model small
.stack 100h
.data 
num db 12h,37h,02h,36h,50h
len equ($-num)
c db ?
.code 
start :
mov ax,@data
mov ds,ax
mov bx ,len
dec bx
nxt_p:
mov cx,bx
lea si,num
nxt_cmp:
mov al,[si]
cmp al,[si]
jc nxt
xchg al,[si+1]
mov [si],al
nxt:
inc si
loop nxt_cmp
dec bx
jnz nxt_p
mov ah,4ch
int 21h
end start