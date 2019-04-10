.MODEL COMPACT
.STACK 100H
.DATA
A DB ?
b DB ?
.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1 
    INT 21H
    MOV A,AL
    INT 21H
    MOV B,AL
    
    MOV BL,A
    MOV CL,B
    
    ADD BL,CL
    SUB BL,48
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN 