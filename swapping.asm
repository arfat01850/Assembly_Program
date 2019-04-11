.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC 
    MOV BL,2
    MOV BH,4
    
    ADD BL,48
    ADD BH,48
    
    XCHG BL,BH
    
    ; BL=4
    ; BH=2
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    MOV DL,BH
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN