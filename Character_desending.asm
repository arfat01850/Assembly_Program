.model small
.stack
.code
.main proc
    mov ah,1 ;input
    int 21h
    mov bl, al
    mov ah,2 
    mov dl,0ah
    int 21h 
    mov dl,0dh
    int 21h
    mov ah,2 ;output
    mov dl,bl
    int 21h