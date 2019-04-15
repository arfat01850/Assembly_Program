.MODEL SMALL
.STACK 100H

.DATA
A DB ? ; A = 6
B DB ? ; B = 1
C DB ? ; C = 1

.CODE 
MAIN PROC 
    MOV AX, @DATA 
    MOV DS, AX
    
    MOV AH,1
    INT 21H 
    MOV A,AL
    INT 21H
    MOV B,AL
    INT 21H
    MOV C,AL
    
    MOV BL,B   ; The value of B will be stored in BL
    MOV BH,C   ; The value of C will be stored ib BH  
    
    ADD BL,BL  ; BL = BL+BL = 1 + 1 = 2
    SUB A,BL    ; A = A - BL = 6 - 2 = 4
    ADD A,BH    ; A = A - BH = 4 + 1 = 5
    
    ADD A, 48
   
    MOV AH,2 
    MOV AL,A
    INT 21H
    
    MOV AH,4CH  
    INT 21H
    MAIN ENDP 
END MAIN 