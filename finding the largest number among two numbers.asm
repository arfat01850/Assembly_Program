.MODEL SMALL 
.STACK 100H

.CODE 
MAIN PROC 
    include 'emu8086.inc'
        
        MOV AH,1
        INT 21H
        MOV BL,AL  ;BL will store the value     
        INT 21H
        MOV BH, AL ; BH will sote the value
        
        CMP BL,BH
        JG L1
        
        printn ''                       
        
        L2:
        MOV AH,2
        MOV DL,BH
        INT 21H
        JMP EXIT
        
        L1:
        MOV AH,2
        MOV DL,BL
        JMP EXIT
        
        EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN