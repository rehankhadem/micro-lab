.MODEL SMALL
.STACK 100H
.DATA
    firstname_char db 'R'
    lastname_char db 'K'

.CODE
MAIN PROC
    ; Initialize data segment
    MOV AX, @DATA
    MOV DS, AX

    ;print first name character
    MOV AH, 2       ; DOS function to display character
    MOV DL, firstname_char     ; Load first character
    INT 21H         ; Call DOS interrupt

    ;print new line
    MOV AH, 2       ; DOS function to display character
    MOV DL, 0dh     ; Carriage return
    INT 21H         ; Call DOS interrupt
    MOV DL, 0ah     ; Line feed
    INT 21H         ; Call DOS interrupt

    ;print last name character
    MOV AH, 2                  ; DOS function to display character
    MOV DL, lastname_char      ; Load last character
    INT 21H                    ; Call DOS interrupt

    ; Exit program
    MOV AH, 4CH     ; DOS function to exit
    INT 21H         ; Call DOS interrupt
MAIN ENDP
END MAIN