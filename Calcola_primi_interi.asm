.model small
.data
n dw 0h
n1 dw 07h
n2 dw 0h
.code 
mov ax,@data
mov ds,ax
 
mov ax,n1
ritorna:
cmp ax,n 

jnb ciclo1 
jmp fine

ciclo1:
add n2,bx
push n2 
inc bx
inc n
jmp ritorna

  
  fine: