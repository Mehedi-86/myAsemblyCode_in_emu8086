
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h

.code
mov si, offset arr
mov cx, len           ; Outer loop counter

outer_loop:
    mov di, si        ; Store current minimum index
    mov bx, si
    add bx, 1         ; Move to next element

inner_loop:
    cmp bx, offset arr + len  ; Check if end of array
    jge swap_min

    mov al, [bx]
    cmp al, [di]      ; Compare current element with minimum
    jge no_update
    mov di, bx        ; Update minimum index

no_update:
    inc bx
    jmp inner_loop

swap_min:
    cmp si, di        ; If min index != current index, swap
    je next_iteration
    mov al, [si]
    mov ah, [di]
    mov [si], ah
    mov [di], al

next_iteration:
    inc si
    loop outer_loop

ret

.data
arr db 9, 5, 2, 8, 3, 1  ; Unsorted array
len equ $ - arr          ; Array length


ret




