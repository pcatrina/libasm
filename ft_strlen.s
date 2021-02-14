; int	ft_strlen(char *str)

global	_ft_strlen

section .text

_ft_strlen:
	xor rax, rax					; зануление 
	.count:							; метка цикла 
		cmp [rax + rdi], byte 0		; проверка на 0
		je .exit					; в случае равенства -> exit
		inc rax						; rdi++
		jmp .count					; прожок на метку -> без условий
	.exit:
		ret							; выход из подпрограммы