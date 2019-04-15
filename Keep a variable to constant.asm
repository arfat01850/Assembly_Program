.MODEL SMALL 
.STACK 100H

.DATA 
A EQU 'Abdur Rahim$'

.CODE 
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,B 
    MOV AH,9
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN