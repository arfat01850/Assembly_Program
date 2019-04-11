.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    MOV BL,5
    ADD BL,48
    
    DEC BL
    
    MOV AH,2
    MOV DL,BL
    INT 21H     
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    
    