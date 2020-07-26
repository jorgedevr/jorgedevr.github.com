%TITLE 'nesPar'
IDEAL 
MODEL small
STACK 256
DATASEG

equa db 'Es par$'
may db 'Es impar$'
comp db 0h

CODESEG

   Main: mov ax,@data
      mov ds,ax
      
      mov al, 8h;Numero-
      ;- a definir como par o impar
      mov bl, 2h ;Constante par
      div bl
      cmp ah,comp
      ja Impar;Comparacion es diferente
      je Par;Comparacion es igual
      
      Impar:
      mov dx,OFFSET may
      call Imprimir 
      jmp Finalizar 
 
      Par:
      mov dx,OFFSET equa
      call Imprimir 
      jmp Finalizar     
      
   Imprimir:    
      mov ah,09
      int 21h
      ret
   Finalizar:
      mov ax, 04c00h
      int 21h
      
END Main
;Jorge Daniel Gutierrez Sanchez
;Lenguaje ensamblador