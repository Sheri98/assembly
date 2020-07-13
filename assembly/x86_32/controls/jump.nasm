global _start 



section .text

_start:
	
	jmp begin
NeverExecute: 
		mov eax,0x10

begin:
	mov eax,0x5

printHw:
	push eax
	
	mov eax,0x4
	mov ebx,1
	mov ecx,message
	mov edx,mlen
	int 0x80

	pop eax
	dec eax
	jnz printHw


	mov eax,0x1
	mov ebx,0x0
	int 0x80


section .data
	
	message: db "Hello World!"
	mlen 	equ $-message
