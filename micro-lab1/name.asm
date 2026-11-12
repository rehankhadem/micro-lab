.MODEL SMALL
.STACK 100H
.DATA
    firstname db 'Rehan $'
    lastname db 0dh, 0ah, 'Khadem $'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX
    
    ; Display the first name
    MOV AH, 9       ; DOS function to display string
    LEA DX, firstname   ; Load address of first name
    INT 21H         ; Call DOS interrupt
    
    ; Display the last name
    LEA DX, lastname   ; Load address of last name
    INT 21H         ; Call DOS interrupt
    
    ; Exit program
    MOV AH, 4CH     ; DOS function to exit
    INT 21H         ; Call DOS interrupt
    
MAIN ENDP
END MAIN