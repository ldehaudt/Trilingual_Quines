NAME = Quine
NAME1 = Colleen
NAME2 = Grace
NAME3 = Sully

FLAGS = -Wall -Wextra -Werror

CC = gcc

SRC1 = Colleen.c
SRC2 = Grace.c
SRC3 = Sully.c

all : $(NAME)

$(NAME) : $(SRC1) $(SRC2) $(SRC3)
	$(CC) $(FLAGS) $(SRC1) -o $(NAME1)
	$(CC) $(FLAGS) $(SRC2) -o $(NAME2)
	$(CC) $(FLAGS) $(SRC3) -o $(NAME3)

clean :
	rm -f *.o

fclean : clean
	rm -f $(NAME1)
	rm -f $(NAME2)
	rm -f $(NAME3)
	rm -f Sully_*
	rm -f Grace_kid.c

re: fclean all