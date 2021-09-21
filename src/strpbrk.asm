;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      strpbrk                 ; début du programme 

strpbrk:
    XOR RAX, RAX                      ; initialisation de l'output à 0
    XOR RDX, RDX                      ; initialisation de la destination à 0
    XOR r8, r8                       ; initialisation de r8 à 0

argument:
    CMP byte [RSI + RDX], 0         ; if accept[it] == 0
    JZ _end                         ; si la condition correspond = va à la fin
    MOV r8b, [RSI + RDX]            ; sinon prend le prochain argument
    XOR RCX, RCX                      ; reinitialisation de rcx à 0

_mid:
    CMP byte [RDI + RCX], 0         ; if s[it] = 0
    JZ prochain_argument            ; si la condition correspond = va dans le prochain argument
    CMP byte [RDI + RCX], r8b       ; if s[it] == accept[it2]
    JE _good_end                    ; si la lettre est trouvé
    INC RCX                         ; incrémentation de rcx it++
    JMP _mid                        ; nouvelle boucle

prochain_argument:
    INC RDX                         ; incrémentation de rdx it2++
    JMP argument                    ; retourne à la fonction argument

_good_end:
    MOV RAX, RDI                    ; initialisation de l'output
    ADD RAX, RCX                    ; additionne deux opérandes pour return rax 
    RET

_end:
    XOR RAX, RAX                    ; initialisation de l'output à null
    RET