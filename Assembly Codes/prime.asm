
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

.code

mov bl,15
cmp bl,2
je  here3
mov dl,bl
sub dl,2
mov cl,dl
mov dl,2

here:

mov al,bl
mov ah,0
div dl
cmp ah,0
je here1

jmp here2


here1:
mov var,0
ret

here2:
inc dl

loop here

here3:
ret

.data
    

var db 1 
 






