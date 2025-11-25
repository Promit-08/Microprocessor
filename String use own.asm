org 100h

mov dx,offset message
mov ah,09h
int 21h

mov ah,01h
int 21h
sub al,'0'
mov bl,al   

mov dl,bl
add dl,'0'
mov ah,02h
int 21h
ret  

message db "Enter first number:$"