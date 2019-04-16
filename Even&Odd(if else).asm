 .MODEL SMALL
 .STACK 100H
 
 .DATA
 A DB "ODD$" 
 B DB "EVEN$"
 
 .CODE 
 MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'1'
    JE ODD
    CMP BL,'3'
    JE ODD
    CMP BL, '2'
    JE EVEN 
    CMP BL,'4'
    JE EVEN
    
    ODD:
    MOV AH,9
    MOV DL, OFFSET A
    INT 21H
    JMP EXIT
    
    EVEN:
    MOV AH,9
    MOV DL,OFFSET B
    INT 21H
    JMP EXIT
    
    EXIT: 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN