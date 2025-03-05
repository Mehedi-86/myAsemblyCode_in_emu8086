
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

ORG 100h    ; Set origin for .COM program

MOV SI, 0   ; SI as array index (starting from 0)
MOV CX, 5   ; Number of elements in the array
MOV AL, 7   ; Element to search (modify this for different searches)

LEA DI, ARRAY  ; Load address of the array into DI

SEARCH_LOOP:
    CMP AL, [DI + SI]  ; Compare AL (search element) with array element
    JE FOUND           ; If match, jump to FOUND label
    INC SI             ; Move to next element
    LOOP SEARCH_LOOP   ; Repeat until CX becomes 0

NOT_FOUND:
    MOV DX, OFFSET MSG_NOT_FOUND  
    JMP DISPLAY_MSG

FOUND:
    MOV DX, OFFSET MSG_FOUND  

DISPLAY_MSG:
    MOV AH, 09h
    INT 21h           ; Display message
    MOV AX, 4C00h     ; Exit program
    INT 21h

ARRAY DB 2, 4, 7, 1, 5  ; Define array of 5 elements
MSG_FOUND DB 'Element found!$'
MSG_NOT_FOUND DB 'Element not found!$'

RET


ret




