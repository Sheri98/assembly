
global _start 

section .text

_start:
	

	mov eax,0
	add al,0x22
	add al,0x11

	mov ax,0x1122
	mov ax,0x3344
	
	mov eax,0xffffffff
	add eax, 0x10

	mov eax,0
	add byte [pranathi],0x22
	add byte [pranathi],0x11






section .data

	pranathi: db 0x0

