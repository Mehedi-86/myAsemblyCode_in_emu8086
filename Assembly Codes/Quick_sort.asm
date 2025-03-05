
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov bp, sp        ; Store stack pointer
mov si, offset arr
mov di, offset arr + len - 1
call quick_sort
ret

quick_sort:
    cmp si, di    ; Base case: if left >= right, return
    jge qs_return

    mov al, [di]  ; Pivot element
    mov bx, si
    mov cx, di

partition:
    cmp [bx], al
    jg swap_high
    inc bx
    jmp partition

swap_high:
    cmp [cx], al
    jl swap_low
    dec cx
    jmp partition

swap_low:
    cmp bx, cx
    jge pivot_done
    mov ah, [bx]
    mov al, [cx]
    mov [bx], al
    mov [cx], ah
    jmp partition

pivot_done:
    mov al, [cx]
    mov [di], al
    mov [cx], [di]

    push si
    push cx
    call quick_sort
    pop cx
    pop si

    push cx
    push di
    call quick_sort
    pop di
    pop cx

qs_return:
    ret

.data
arr db 9, 5, 2, 8, 3, 1  ; Unsorted array
len equ $ - arr          ; Array length




