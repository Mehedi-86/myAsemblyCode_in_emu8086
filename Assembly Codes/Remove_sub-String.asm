
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.code

lea si,str2
lea bx,si
lea si,str
lea di,str1 
mov cx,len

level1:

mov dh,[di]
cmp [si],dh
je here

jmp level2

here:
mov dh,[di+1]
cmp [si+1],dh
je here1

jmp level2

here1:  
mov dh,[di+2] 
cmp [si+2],dh 
je here2

jmp level2


here2:
mov dh,[di+3]
cmp [si+3],dh    

je here3

jmp level2

here3:  
mov dh,[di+4]                     ; remove a sub-string from a main string
cmp [si+4],dh
je here4:

level2:

mov dl,[si]
mov [bx],dl
inc si
inc bx
jmp level

here4:
mov ax,len1+1
add si,ax
jmp level2

level:
loop level1





ret

.data
str db 'jews is the misterious tribe ever'
len equ ($-str)
str1 db 'tribe'
len1 equ ($-str1)
str2 db ?


