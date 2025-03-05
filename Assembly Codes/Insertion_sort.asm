
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov si, offset arr + 1  ; Start from second element
mov cx, len - 1         ; Number of elements to insert

outer_loop:
    mov al, [si]        ; Current element to insert
    mov di, si
    dec di              ; Compare with previous elements

inner_loop:
    cmp di, offset arr  ; Check if we reached start of array
    jl insert_done
    cmp [di], al        ; Compare current with previous element
    jle insert_done
    mov ah, [di]        ; Shift element to the right
    mov [di+1], ah
    dec di
    jmp inner_loop

insert_done:
    mov [di+1], al      ; Insert element at correct position
    inc si
    loop outer_loop

ret

.data
arr db 9, 5, 2, 8, 3, 1  ; Unsorted array
len equ $ - arr          ; Array length




