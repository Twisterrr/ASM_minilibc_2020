;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                             ; 64-bit mode 
section     .text                   ; excutable instruction
global      strchr                  ; début du programme 

strchr:
        XOR RDX, 0					; initialisation de rdx à 0

_mid:
	    CMP byte [RDI], SIL			; if rdx == char
	    CMOVE RDX, RDI				
	    CMP byte [RDI], 0
	    JE _end						; fin du programme
	    INC RDI						; incrementation de rdi
	    JMP _mid					; nouvelle boucle

_end:
	    MOV RAX, RDX
	    RET
		