global _start

section .text

_start

	mov eax,0x4
	mov ebx,0x1
	mov ecx,message
	movedx,mlen
	int 0x80	
	
	mov eax,0x1
	mov eax,0x0
	int 0x80

section .data

	Var1: db 0xAA
	Var2: db 0xBB,0xCC,0xDD
	Var3: dw 0xEE
	Var4: dd 0xAABBCCDD
	Var5: dd 0x112233
	Var6: TIMES 6 db 0xFF
	message: db "Hello World!"
	mlen	equ $-message



section .bss

	Var7: resb 100
	Var7: resw 20
