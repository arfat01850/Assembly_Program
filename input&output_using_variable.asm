.MODEL SMALL
.STACK 100H
.DATA
A DB ?   
B DB ?
.CODE
MAIN PROC 
    MOV AH,@DATA ;Initialization fo Data Segment
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV A,AL
    MOV B,AL
  
    
    MOV AH,2
    MOV DL,A
    INT 21H 
    
    MOV DL,B
    INT 21H
    
    MOV AH,4CH
    INT 21H
     MAIN ENDP
END MAIN