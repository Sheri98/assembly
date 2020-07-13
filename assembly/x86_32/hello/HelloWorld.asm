;Text Section
global _start

section .text
;to say nasm entry point

_start:

	mov eax, 0x4 ;system call always in eax
	mov ebx, 0x1 ; argument 1 write to file which stdout
	mov ecx, message ; argument 2 here pointer to hello world string
	mov edx, mlen ; argument 3 here message length
	int 0x80 ; interupt call
	
	mov eax, 0x1
	mov ebx, 0x5
	int 0x80
	
;Data Section
section .data
;idetified: defined byte "string"

	message: db "Hello World!"
	mlen 	 equ $-message ; to get len

