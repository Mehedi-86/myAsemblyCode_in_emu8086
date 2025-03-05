
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code 

lea si,str
lea di,str1
mov cx,len
;mov var,0

level1:                        ; separate number and character from a string
 
cmp [si],'0'
jne here

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level

here:
cmp [si],'1'
jne here1

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level


here1:
cmp [si],'2'
jne here2

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level


here2:
cmp [si],'3'
jne here3

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level



here3:
cmp [si],'4'
jne here4 

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level


here4:
cmp [si],'5'
jne here5

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level



here5:
cmp [si],'6'
jne here6


mov dl,[si]
mov [di],dl
mov [si],' '
jmp level

here6:
cmp [si],'7'
jne here7

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level

here7:
cmp [si],'8'
jne here8

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level

here8:
cmp [si],'9'
jne here9

mov dl,[si]
mov [di],dl
mov [si],' '
jmp level

here9:
inc si
jmp level2
 

level:
inc si
inc di
;inc var

level2: 

loop level1 


lea si,str
mov bx,si
mov cx,len


hi:
cmp [bx],' '
je hi1

mov dh,[bx]
mov [si],dh
inc si
;inc var1

hi1:
inc bx

                      
loop hi

                ;work properly

lea si,str
add si,15
mov [si],' '
inc si 
mov cx,8
lea di,str1

how:

mov ax,[di]
mov [si],ax
inc si
inc di

loop how

 

ret


.data
str db 'hell02o ho34w 8are9 yo16u?'
len equ ($-str)
str1 db ?

 
                                        
