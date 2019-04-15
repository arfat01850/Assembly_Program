.MODEL SMALL
.STACK 100H

.DATA 
 A DB 'EQUAL$'
 B DB 'NOT EQUAL$'
 
 .CODE 
 MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
   
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,049
    JE EQUAL    ; JE means Jump if Equal
    JNE NEQUAL  ; JNE means Jump not Equal
    
    EQUAL:
    LEA DX,A 
    MOV AH,9
    INT 21H
    JMP EXIT
    
    NEQUAL:
    MOV AH,9 
    MOV DL,OFFSET B
    INT 21H
    JMP EXIT 
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
 END MAIN