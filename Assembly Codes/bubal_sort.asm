; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
.data

array db 3,4,1,6,8
len equ ($-array)
temp db ?

     
     
.code

mov cx, len 
dec cx
cmp cx, 0
je return



outL:
lea si, array
mov dx, cx
    inL:
    mov al, [si]
    mov di, si 
    inc di
    mov bl, [di]
    cmp al, bl
    ja swap
    bToinL:
        inc si
        inc di
        loop inL
    mov cx, dx
    loop outL
jmp return


 
swap:
mov temp, al
mov al, bl
mov bl,temp
mov [si], al
mov [di], bl
jmp bToinL
     
     
     
return:
ret