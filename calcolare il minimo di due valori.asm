.Data
a DB 0ah
b DB 21h
minimo DB ?
.Code

mov al, a   
; salto condizionato se a<b
cmp al, b
jl then
; se la condizione e' falsa esgui questo 
mov minimo,ah
jmp endif
then:
mov ah, b
mov minimo,al
endif:
hlt