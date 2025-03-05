
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
lea si,str
lea di,str1
mov cx,len-1
here:
inc si
loop here

mov cx,len

here1:                                      ;string reverse

mov dl,[si] 
mov [di],dl

inc di
dec si

loop here1


ret


.data

str db 'hello what are you doing'
len equ ($-str)
str1 db ?

