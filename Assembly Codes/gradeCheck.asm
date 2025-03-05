
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h 

.code
mov ax,67

cmp ax,80
jge here 

cmp ax,70
jge here1


cmp ax,60
jge here2 

cmp ax,50
jge here3

here3:
mov bx,'B+'
ret

here2:
mov bx,'A-'
ret


here1:
mov bx,'A'
ret



here:
mov bx,'A+'
ret



 

; add your code here

ret




