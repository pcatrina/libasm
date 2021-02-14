NAME = libasm.a

CC = gcc
ASM_CC = nasm
FORMAT = macho64
FLAGS = -Werror -Wextra -Wall

SRCS = ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s

OBJ_FILES = $(SRCS:.s=.o)

all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar rc $(NAME) $(OBJ_FILES)
	ranlib $(NAME)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)
	rm -f test_asm
	rm -f test_bonus

re: fclean all

test: test.c $(OBJ_FILES)
	$(CC) $(FLAGS) -c test.c
	$(CC) $(FLAGS) test.o $(OBJ_FILES) -o test_asm
	./test_asm

%.o: %.s
	$(ASM_CC) -f $(FORMAT) $^