; ssize_t	ft_read(int fd, void *buf, size_t len)

extern ___error

global _ft_read
; rdi = fd
; rsi = str
; rdx = len
section .text

_ft_read:
	mov rax, 0x02000003
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