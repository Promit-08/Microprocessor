org 100h

mov cx,5                 ;for loop
mov dl,'1'

start_loop:
    mov ah,02h
    int 21h
    
    inc dl               ;increasing the value of dl
    loop start_loop
    
mov ah,0                 ;terminate the output interface when user gives an input
int 16h
ret




