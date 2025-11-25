org 100h

mov al,3
mov bl,5

cmp al,bl
jg greater

mov dl,'B'
mov ah,02h
int 21h

ret 

greater:
    mov dl,'A'
    mov ah,02h
    int 21h  
    
ret




