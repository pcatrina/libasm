; char *ft_strcpy(char *dst, char *str)

global _ft_strcpy

section .text
; | input
; rdi = dst
; rsi = str
_ft_strcpy:
	xor rax, rax
	push rbx
	.copy:
		cmp [rax+rsi], byte 0
		je .exit
		mov rbx, [rax+rsi]
		mov [rax+rdi], rbx
		inc rax
		jmp .copy
	.exit:
		inc rax
		mov [rax+rdi], byte 0
		mov rax, rdi
		pop rbx
		ret