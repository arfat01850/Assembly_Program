;A-B+C
.MODEL SMALL
.STACK 100H

.DATA
A DB ?
B DB ?
C DB ?

.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV A,AL
    INT 21H
    MOV B,AL 
    INT 21H
    MOV C,AL
    
    MOV AL,B   ; The content of B will be stored in  AL
    MOV AH,C   ; The content of C will be stored in AH
    
    SUB A,AL  
    ADD A, AH 
    ADD A,48 
    
    MOV AH,2 
    MOV DL,A 
    INT 21H 
    
    MOV AH,4CH 
    INT 21H 
    MAIN ENDP
END MAIN