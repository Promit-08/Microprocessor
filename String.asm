org 100h

mov dx,offset message
mov ah,09h
int 21h

ret

message db "Hello world$"