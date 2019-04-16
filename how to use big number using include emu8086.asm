.MODEL SMALL
.STACK 100H

.CODE 
MAIN PROC 
    include 'emu8086.inc'
    
    ;for user input
    define_scan_num
    define_print_num
    define_print_num_uns
    
    call scan_num   ;It stores the value in CX
    mov ax,cx       ;AX
    
    putc 0ah        ;Newline
    putc 0dh    
    
    call scan_num
    sub ax,cx       ;AX = AX + CX

    printn''
    
    call print_num