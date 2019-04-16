.MODEL SMALL
.STACK 100H

.CODE 
MAIN PROC
    INCLUDE 'EMU8086.INC'
    
    MOV CX,5
    
    STAR:
    MOV AH,2
    MOV DL,"*"
    INT 21H
    PRINTN ""
    LOOP STAR