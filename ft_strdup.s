; char	*ft_strdup(const char *str);

extern _malloc
extern ___error
extern _ft_strlen
extern _ft_strcpy

global _ft_strdup
; rdi = str
section .text
_ft_strdup:
	xor rax, rax
	call _ft_strlen
	push rdi
	mov rdi, rax
	inc rdi
	call _malloc
	cmp rax, byte 0
	je .error
	mov rdi, rax
	pop rsi
	call _ft_strcpy
	ret
	.error:
		ret