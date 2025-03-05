
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.code
 
 
 
lea si,arr
lea di,arr
mov cx,len
mov bx,0h
loop1:


  cmp [si],' '
  je jump 
 
  push [si]
  inc bx
   
  continue:
  pop cx
  inc si
  
  loop loop1
  
  mov dx,con
  
  
  
  ret
  
  
  jump: 
  
  mov it,cx
  mov cx,bx
  mov it2,bx
  mov dx,0h
  
  loop2:
  pop ax
  mov bl,[di]
  cmp al,bl 
  je count
  contin: 
  inc di
  
  loop loop2
  mov cx,it
  cmp it2,dx
  je count2
  
  cont2:
  
  mov bx,0h
  jmp continue 
  
  count:
  inc dx
  jmp contin
  
  count2:
  
  mov ax,con
  inc ax
  mov con,ax
  jmp cont2

.data    
it dw 0h 

arr db "nan"
dummy db " "
len equ $-arr
it2 dw 0h 
con dw 0h