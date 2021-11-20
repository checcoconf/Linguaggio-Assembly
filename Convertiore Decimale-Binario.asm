;Da decimale a binario da (0,9)
.model small
.stack 100h
.data
      
     msg   db   'Inserisci un numero decimale ---> $'
     msg1  db   0dh,0ah,'ERRORE! ## Inserisci un numero. $'
     msg2  db   0dh,0ah,'Il numero in binario ---> $' 
.code

main proc
   mov   ax,@data
   mov   ds,ax

   lea   dx,msg
   mov   ah,9     
   int   21h

   mov   ah,1
   int   21h      

   cmp   al,30h   ;controllo se l'utente inserisce un numero o un carattere.
   jnge  invalid  ;salto se l'utente inserisce un carattere.
   
   cmp   al,39h
   jnle  invalid 

   lea   dx,msg2  
   mov   ah,9
   int   21h

   and   al,0fh   ;cancello i quattro bit superiori del registro al.
   mov   cl,3     ;utilizzo cl come contatore di bit di spostamento. 

   mov   bl,al    ;salvo il valore nel registro bl.
   mov   bh,bl    ;sposto il valore di bl in bh.

   shr   bh,cl    
   add   bh,30h   

   xor   bh,bh    ;pulisco il registro bh. 
   mov   bh,bl    

   mov   cl,2     ;rendo il valore del contatore cl uguale a due.
   and   bh,04h   

   shr   bh,cl
   add   bh,30h

   mov   ah,2     ;stampo il primo bit in binario. 
   mov   dl,bh
   int   21h

   xor   bh,bh
   mov   bh,bl

   and   bh,02h   
   shr   bh,1

   add   bh,30h

   mov   ah,2     ;stampo il secondo bit in binario.
   mov   dl,bh
   int   21h

   xor   bh,bh
   mov   bh,bl     

   and   bh,01h   ;cancello tutti i bit tranne l'ultimo.
   add   bh,30h

   mov   ah,2     ;stampo il terzo bit in binario.
   mov   dl,bh
   int   21h

   jmp   exit

invalid:

   lea   dx,msg1   ;stampa del messaggio di errore.
   mov   ah,9
   int   21h

exit:

   mov   ah,4ch
   int   21h

main endp
         end main


