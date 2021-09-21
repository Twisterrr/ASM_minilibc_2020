;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      strlen                  ; début du programme 

strlen:
        MOV RCX, 0                  ; initialisation de RCX à 0

_mid:
        CMP byte [RDI], 0       
        JE _end                     ; retourne à la fin 
        INC RDI                     ; enregistre le premier argument
        INC RCX                     ; compteur
        JMP _mid                    ; loop

_end:
        MOV RAX, RCX
        RET