NAME = Quine
NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

FLAGS = -Wall -Wextra -Werror

ASM = nasm -f macho64
CC = gcc

A1 = Colleen.s
A2 = Grace.s
A3 = Sully.s

OBJ1 = Colleen.o
OBJ2 = Grace.o
OBJ3 = Sully.o

all : $(NAME)

$(NAME) : $(A1) $(A2)
	$(ASM) $(A1) -o $(OBJ1)
	$(ASM) $(A2) -o $(OBJ2)
	$(ASM) $(A3) -o $(OBJ3)
	$(CC) $(FLAGS) $(OBJ1) -o $(NAME1)
	$(CC) $(FLAGS) $(OBJ2) -o $(NAME2)
	$(CC) $(FLAGS) $(OBJ3) -o $(NAME3)

clean :
	rm -f *.o

fclean : clean
	rm -f $(NAME1)
	rm -f $(NAME2)
	rm -f $(NAME3)
	rm -f Sully_*
	rm -f Grace_kid.s

re: fclean all