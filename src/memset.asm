;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      memset                  ; début du programme 

memset:
        XOR RAX, RAX                ; initialisation de rax à 0

_mid:
        CMP RDX, RAX                ; comparaison de rdx et rax si c'est égal
        JE _end                     ; fin du programme
	MOV byte [RDI + RAX], sil   ; ajout d'un int à la mémoire
        INC RAX                     ; incrementation de rax
	JMP _mid                    ; nouvelle boucle

_end:
        MOV RAX, RDI
	RET