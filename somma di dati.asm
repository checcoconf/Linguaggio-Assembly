.data
somma DB ?
dato DB 13 h
.code
mov somma,0d
mov cl,1d
inizio_ciclo:
    cmp cl,dato
    jnbe fine_while
    add somma,cl 
    inc cl
    jmp inizio_ciclo
fine_while:
hlt    


