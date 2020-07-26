%TITLE 'nesPar'
       IDEAL 
       MODEL small
       STACK 256

STRUC  Date
 day   db 1
 month db ?
 year  dw 1999
ENDS   Date

STRUC  Citys
city   db '##################', 0
state  db '##',0
ENDS   Citys

       DATASEG

;exCode db 0
today  Date  <> ;queda por default
birday Date  <7,8,>; estos datos se llenan y en el ?o queda el por defalt

addres citys <'mexico','cp'>

       CODESEG

Main:  
       mov ax,@data
       mov ds,ax
      
Finish:
       mov ax, 04c00h
       int 21h
      
       END Main
;Jorge Daniel Gutierrez Sanchez
;Lenguaje ensamblador