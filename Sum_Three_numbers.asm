.MODEL SMALL
.STACK 100H

.DATA
A DB 10 
B DB 12 
C DB 14

.CODE
MAIN PROC
    MOV AX,@DATA ;Initiatlization of Data Segment
    MOV DS,AX
    
    MOV AL,A
    MOV BL,B
    MOV CL,C
    
    ADD AL,BL   ;AL = AL+BL
    ADD AL,CL 
    ADD AL,48
    
    MOV AH,2
    MOV DL,AL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN