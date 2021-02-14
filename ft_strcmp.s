; int ft_strcmp(char *str1, char *str2);

global	_ft_strcmp
; rdi = str1
; rsi = str2
section	.text

_ft_strcmp:
	xor rax, rax
	push rbx
	push rcx
	.compare:
		movzx rbx, byte	[rax + rdi]
		movzx rcx, byte [rax + rsi]
		cmp rbx, byte 0
		je .firstexit
		cmp rcx, byte 0
		je .firstexit
		inc rax
		cmp rbx, rcx
		je .compare
		jne .secexit
	.firstexit:
		cmp rbx, rcx
		je .exit
		jne .secexit
	.secexit:
		mov rax, rbx
		sub rax, rcx
		pop rbx
		pop rcx
		ret
	.exit:
		xor rax, rax
		pop rbx
		pop	rcx
		ret
