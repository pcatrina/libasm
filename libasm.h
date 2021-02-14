#ifndef LIBASM_H

# define LIBASM_H

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <errno.h>
# include <fcntl.h>

# define LONG_TEXT	"x64 extends x86's 8 general-purpose registers to be 64-bit, "\
	"and adds 8 new 64-bit registers. The 64-bit registers have names beginning with R, "\
	"so for example the 64-bit extension of eax is called rax. The new registers are named "\
	"r8 through r15. The lower 32 bits, 16 bits, and 8 bits of each register are directly "\
	"addressable in operands. This includes registers, like esi, whose lower 8 bits were "\
	"not previously addressable. The following table specifies the assembly-language "\
	"names for the lower portions of 64-bit registers.\n"

# define COLGREEN	"\x1b[35m"
# define COLRESET	"\x1b[0m"

size_t	ft_strlen(const char *str);
char	*ft_strcpy(char *dst, const char *str);
int		ft_strcmp(const char *str1, const char *str2);
ssize_t	ft_write(int fd, const void *str, size_t len);
ssize_t	ft_read(int fd, void *buf, size_t len);
char	*ft_strdup(const char *str);

#endif
