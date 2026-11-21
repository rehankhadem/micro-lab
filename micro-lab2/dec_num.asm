.MODEL SMALL
.STACK 100h
.DATA
    num db 5           ; Declare a variable with initial value 5
.CODE

MAIN PROC
    MOV AX, @DATA      ; Load data segment address into AX
    MOV DS, AX         ; Initialize data segment
    MOV AL, num        ; Load num into AL

    DEC AL             ; Decrement AL by 1
    MOV num, AL        ; Store updated value in num
    ADD AL, 30h        ; Convert number to ASCII

    MOV DL, AL         ; Move character to DL
    MOV AH, 2          ; DOS character output function
    INT 21h            ; Display the character

    MOV AH, 4Ch        ; DOS program termination function
    INT 21h            ; Exit program

MAIN ENDP
END MAIN