
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov si, offset arr
mov di, offset arr + len - 1
call merge_sort
ret

merge_sort:
    cmp si, di
    jge ms_return

    mov cx, si
    add cx, di
    shr cx, 1  ; Midpoint = (low + high) / 2

    push si
    push cx
    call merge_sort
    pop cx
    pop si

    push cx
    push di
    call merge_sort
    pop di
    pop cx

    call merge_arrays
ms_return:
    ret

merge_arrays:
    ; Merging logic goes here
    ret

.data
arr db 9, 5, 2, 8, 3, 1  ; Unsorted array
len equ $ - arr          ; Array length



