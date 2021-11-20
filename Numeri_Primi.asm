.model small
;con n==2 il valore di n cambia
.data 
n db 131

.code
;salto incondizionato per inizio del codice
jmp inizioC

stop:
hlt
 
inizioC:
mov cx,0
mov ax,0
mov bx,0 
mov al,n
mov bl,2
cmp al,1
jb stop

;Passi "base"  
cmp al,2
je primo    

cmp al,3
je primo

cmp al,5
je primo

cmp al,7
je primo


div bl
cmp ah,0
je stop 
mov al,n
;ripulisco ah per sicurezza
mov ah,0
mov bl,3 
;do-while
inizio_while:
div bl
cmp ah,0
je stop
mov al,n
mov ah,0
add bl,2
cmp bl,n
jl inizio_while

primo:
mov cx,1
hlt


  
 



