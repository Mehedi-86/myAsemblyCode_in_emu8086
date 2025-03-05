
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code
lea si,str
mov cx,len


front:

lea di,str1
mov bx,cx
mov cx,len1

front1:                         ;replacing a sub-string from a main string
mov dl,[di]
cmp [si],dl
je here

inc di
jmp continue



here:
mov [si],' ' 

continue:
 


loop front1

inc si

mov cx,bx

loop front


ret

.data

str db 'assembly is the best thing i ever seen' 
len equ ($-str)
str1 db 'aeiou'  
len1 equ ($-str1)

