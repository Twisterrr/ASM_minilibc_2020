;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      strncmp                  ; début du programme 

strncmp:
        PUSH RBP                    ; empile RBP sur la pile
        MOV RBP, RSP                ; copie RSP dans RBP
        XOR RCX, RCX                ; initialisation de rcx
        XOR r10b, r10b
        XOR r11b, r11b 

_mid:
        CMP RCX, RDX
        JGE _end                    ; si c'est supérieur ou égal (CMP : RCX, RDX)
	MOV r10b, [RDI + RCX]       ; met RDI et RCX dans r10b
        MOV r11b, [RSI + RCX]       ; met RSI et RCX dans r11b
        CMP r10b, r11b              ; compare les 2 strings
        JNE _end                    ; si ce n'est pas égal à 0
        CMP r10b, 0                 ; compare la première avec 0
        JE _end                     ; passe à la fonction fin
        INC RCX                     ; incrémentation de rcx
        JMP _mid                    ; nouvelle boucle

_end:
        SUB r10b, r11b              ; soustrait la valeur à une opérande (opérande ciblé et opérande source)
        MOVSX RAX, r10b             ; copie le registre inférieur dans un registre de plus grande taille
        MOV RSP, RBP                
        POP RBP
	RET