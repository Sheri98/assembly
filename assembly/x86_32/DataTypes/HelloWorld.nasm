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
		
	var1: db 0xAA
	var2: db 0xBB,0xCC,0xDD
	var3: dw 0xEE
	var4: dd 0xAABBCC
	var5: dd 0x112233
	var6: TIMES 6 db 0xFF	
	message: db "Hello World!"
	mlen 	 equ $-message ; to get len
section .bss
	
	var7 resb 100
	var8 resw 20 
