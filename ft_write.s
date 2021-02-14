; void	ft_write_test(void)

extern ___error

global	_ft_write
; rdi = fd
; rsi = str
; rdx = len
section .text

_ft_write:
	mov rax, 0x02000004
	syscall
	jc .error
	ret
	.error:
		push rbx
		mov rbx, rax
		call ___error
		mov	[rax], rbx
		mov rax, -1
		pop rbx
		ret