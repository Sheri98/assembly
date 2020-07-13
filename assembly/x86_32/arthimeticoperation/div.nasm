global _start



section .text

_start:

	mov al, 0x10
	mov bl, 0x2
	mul bl



	mov ax, 0xffff
	mov bl, 0x2
	mul bl
	
	
	mov eax, 0xffffffff
	mov bl, 0x2
	mul bl




section .data





