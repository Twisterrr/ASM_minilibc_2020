##
## EPITECH PROJECT, 2021
## B-ASM-400-NCE-4-1-asmminilibc-clement1.berard
## File description:
## Makefile of the LibC
##

## nasm -f elf64 file.asm -> créer le fichier file.o -> utilise les .o pour en faire une shared librairie
##													 -> utilise les .o pour en faire un executable


NAME	=	libasm.so

ASM 	= 	nasm
ASMFLAGS =	-f elf64

CC	=	ld
CFLAGS	=	-fPIC  -shared
LDFLAGS =	-shared

SRC	=	src/strlen.asm 		\
		src/strchr.asm 		\
		src/memset.asm 		\
		src/memcpy.asm 		\
		src/strcmp.asm 		\
		src/strncmp.asm 	\
		src/memmove.asm 	\
		src/strpbrk.asm		\
		src/strstr.asm 		\

OBJS	=	$(SRC:.asm=.o)

all 	: 	$(NAME)

$(NAME) :	$(OBJS)
		$(CC) $(CFLAGS) -o $(NAME) $(OBJS)
		rm -f *.o

%.o: %.asm
		$(ASM) $(ASMFLAGS) $< -o $@

clean :
		rm -f $(OBJS)
		rm -f *.o
		rm -f $(NAME)

fclean 	: 	clean
		rm -f $(NAME)

re 	: 	fclean all
