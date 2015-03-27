GLOBAL main
EXTERN afficherInt32
EXTERN lireInt32
extern afficherRegistres
extern afficherFlags
EXTERN test

SECTION .data

	n1 DD 0x11111111
	n2 DD 0x55555559

SECTION .text

main:
	;; RDI gives the first argument to the functions

	;; call cleans the register, so push and pop need to be
	;; done in order to save the value in rdi


	mov eax, 0xBBBBBBBC
	mov esi, 0x00000003

	;; sub esi, [n2]
	;; sbb eax, [n1]


	;; mul, result goes to EDX:EAX. always??


	;; mov eax, 0xAAAAAAAA
	;; mov esi, 0xAAAAAAAA
	;; mov ebx, 0x11111111
	;; mov edi, 0x55555559
	;; add esi, edi

	;; pusha
	;; call	afficherRegistres
	;; popa

	;; pusha
	;; pushf
	;; call	afficherFlags
	;; popf
	;; popa

	;; adc eax, ebx
	;; jmp show_registers_flags

	;; mov	EDI, [n]
	;; mov	ECX, 32
	;; NOP
	;; push	ECX
	;; call	afficherInt32
	;; jmp	show_registers
	;; jmp	show_flags

	;; JMP 	exit

	;; push 	n
	;; pop	RDI
        ;; CALL  	lireInt32
	;; POP 	RDI

	;; MOV 	RDI, [n]
	;; PUSH 	RDI
	;; CALL 	afficherInt32
	;; POP 	RDI
	;; JMP	exit



;; Some useful functions

show_registers_flags:
	pusha
	call	afficherRegistres
	popa

	pusha
	pushf
	call	afficherFlags
	popf
	popa

exit:
	mov	eax, 1
	mov	ebx, 0
	int	0x80
