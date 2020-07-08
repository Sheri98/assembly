global _start

section .text

_start:
	
	mov eax, 0xaabbccdd
	mov ebx, 0x00000000
	mov ecx, 0x00000000
	
	push ax
	pop  bx

	;push eax
	;pop  ecx

	;push word [sample]
	;pop ecx
	
	;push dword [sample]
	;pop ecx
	
	mov eax,1
	mov ebx,0
	int 0x80

section .data

	sample: db 0xaa,0xbb,0xcc,0xdd 


