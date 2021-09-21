;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      memmove                 ; début du programme 

memmove:
    CMP RDX, 0                      ; vérifie si rdx = 0
    JE _end

_mid:
    MOV r8b, byte [RSI]
    MOV byte [RDI], r8b
    INC RDI                         ; incrémentation de la destination
    INC RSI                         ; incrémentation de la source
    DEC RDX                         ; décrémentation du nombre de byte
    JMP memmove                     ; nouvelle boucle

_end:
    MOV RAX, RDI                    ; replace la destination dans la pile (rax)
    RET