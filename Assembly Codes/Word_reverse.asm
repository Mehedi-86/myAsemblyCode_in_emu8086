
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code 

lea si,str
lea di,str1
mov cx,4
hi:
here1:
cmp [si+1],' '
jne here
                                       ; each word reverse in a string
mov bx,si
jmp here2

here:
inc si
jmp here1 

here2: 
here4:
cmp [bx],' '
jne here3

inc si
mov [di],' '
inc di

loop hi
ret

here3:
mov al,[bx]
mov [di],al
inc di
dec bx
jmp here4 



ret


.data
str db ' hello how are you '
len equ ($-str)
str1 db ?

