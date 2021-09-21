;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      memcpy                  ; début du programme 

memcpy:
        XOR RCX, RCX                ; initialisation de RCX à 0
        XOR RAX, RAX                ; initialisation de RAX à 0

_mid:
        CMP RCX, RDX                ; comparaison de RCX et RDX si c'est égal
        JE _end                     ; fin du programme
        MOV R8B, byte [RSI + RCX]
        MOV byte [RDI + RCX], R8B
        INC RCX                     ; Incrémentation de RCX
        JMP _mid                    ; nouvelle boucle

_end:
        MOV RAX, RDI
        RET