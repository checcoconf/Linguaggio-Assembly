;Cicli in assembly

org 100h

mov al,00h
inizio_ciclo:
    cmp AL,07
    jnl fine_while
    inc AL
    jmp inizio_ciclo
    fine_while:
hlt    
