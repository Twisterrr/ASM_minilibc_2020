;;;
;;; Created by Clément Bérard
;;; Minilibc Assembly
;;;

BITS 64                            ; 64-bit mode 
section     .text                  ; excutable instruction
global      strstr                 ; début du programme 

strstr:
	PUSH RBP                       ; empile le mot dans la pile
	MOV RBP, RSP                   ; met rsp dans l'index rbp
	JMP _new_count                 ; va dans la fonction new_count

_init:
	CMP al, 0                      ; compare si al est égale à 0
	JE _error                      ; si oui va dans la fonction erreur
	INC RDI                        ; incrémentation de rdi

_new_count:
	MOV al, [RDI]                  ; met rdi dans dl
	MOV al, [RSI]                  ; met rsi dans dl
	XOR RCX, RCX                   ; initialisation de rcx à 0
	
_mid:
	MOV al, [RDI + RCX]            ; met str1[rcx] dans al
	MOV r8b, [RSI + RCX]           ; met str2[rcx] dans r8b
	CMP r8b, 0                     ; compare si r8b est égale à 0
	JZ _win                        ; si c'est 0 va dans la condition de win
	CMP al, r8b                    ; compare al et r8b
	JNE _init                      ; si c'est pas égal à 0 va dans la fonction init
	INC RCX                        ; incrémentation de rcx
	JMP _mid                       ; fait une boucle

_win:
	MOV RAX, RDI                   ; met la destination dans le registre rax
	JMP _end                       ; va dans la fonction end pour finir

_error:
	XOR RAX, RAX                   ; met rax à 0 
	
_end:	
	MOV RSP, RBP                   ; met rbp dans rsp
	POP RBP                        ; décompile la pile
	RET