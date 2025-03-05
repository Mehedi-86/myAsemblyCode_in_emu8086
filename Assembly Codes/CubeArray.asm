
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

.code
mov cx,6
lea si,arr 


here: 
mov al,1
mov bl,cl
mov cl,3
mov dl,[si]
here1:

mul dl

loop here1

mov [si],al
mov cl,bl
inc si


loop here



; add your code here

ret

.data

arr db 1,2,3,4,5,6





