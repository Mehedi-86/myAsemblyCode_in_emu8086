
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov si, 0            ; SI = low index = 0
mov di, len - 1      ; DI = high index = array length - 1
mov al, key          ; AL = search key

binary_search:
    cmp si, di       ; If low > high, element not found
    jg not_found

    mov bx, si       ; BX = low
    add bx, di       ; BX = low + high
    shr bx, 1        ; BX = (low + high) / 2 -> mid index

    mov ah, arr[bx]  ; AH = arr[mid]
    cmp ah, al       ; Compare arr[mid] with key
    je found         ; If equal, element is found

    jl search_right  ; If arr[mid] < key, search right half
    mov di, bx       ; high = mid - 1
    dec di
    jmp binary_search

search_right:
    mov si, bx       ; low = mid + 1
    inc si
    jmp binary_search

not_found:
    mov dx, 0FFh     ; Store -1 (element not found)
    jmp exit

found:
    mov dx, bx       ; DX stores the index of the found element

exit:
ret

.data
arr db 1, 3, 5, 7, 9, 11, 13, 15   ; Sorted array
len equ ($ - arr)                  ; Array length
key db 7                            ; Element to search





