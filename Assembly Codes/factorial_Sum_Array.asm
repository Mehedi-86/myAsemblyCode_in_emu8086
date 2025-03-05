
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
mov cl,5
lea si,arr
lea di,var   ;mov di,offset var
mov [di],0

here:
mov bl,cl
mov al,1
mov cl,[si]

here1:
mul cl 
loop here1

mov cx,bx
add [di] ,al
inc si


loop here


; add your code here

ret

.data


var db ?
arr db 1,2,3,4,5
ret


