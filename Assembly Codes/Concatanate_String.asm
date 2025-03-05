
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code  

lea si,str
lea di,str1

mov ax,len
add si,ax                  ; concatanate 2 string
mov [si],' '
inc si 
mov cx,len1 

level1:

mov dl,[di]
mov [si],dl
inc si
inc di

loop level1


ret

.data

str db 'how are you flyin?'
len equ ($-str)
str2 db 'ghjkl'
str1 db 'i am fine and you?'
len1 equ ($-str1)


