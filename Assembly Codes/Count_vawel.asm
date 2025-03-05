
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code 
lea si,str
mov bx,0
mov cx,len 

front:

cmp [si],'a'
je here 
                              ;vowel counting

cmp [si],'e'
je here




cmp [si],'i'
je here  




cmp [si],'o'
je here 




cmp [si],'u'
je here

jmp continue

here:
inc bx
continue: 
inc si 



loop front

ret


.data

str db 'May you go now.'
len equ ($-str)



