.model small
.stack 100h

.data
    line1 db "hello world!",0Dh,0Ah,'$'              ;0Ah--newline , 0Dh--carraige return(shurute niye ashbe line)
    line2 db "hi!",0Dh,0Ah,'$'
    line3 db "kaman acan!",0Dh,0Ah,'$'
    
.code
    mov ax,@data
    mov ds,ax
    
    mov ah,09h
    lea dx,line1
    int 21h
    
    mov ah,09h
    lea dx,line2
    int 21h 
    
    mov ah,09h
    lea dx,line3
    int 21h
    ret