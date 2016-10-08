##
## Makefile for  in /home/belfio_u/rendu/PSU_2014_my_printf/lib
## 
## Made by ugo belfiore
## Login   <belfio_u@epitech.net>
## 
## Started on  Wed Nov 12 16:01:10 2014 ugo belfiore
## Last update Sun Nov 16 13:23:10 2014 ugo belfiore
##

SRC	=	my_printf.c			\
		lib/my_putchar.c		\
		lib/my_strlen.c			\
		lib/my_putchar_return.c		\
		lib/my_putnbr_base_printf.c	\
		lib/my_putnbr_base_printf2.c	\
		lib/my_putstr_return.c		\

OBJ	= $(SRC:.c=.o)

NAME	= libmy.a

LIB	= $(NAME) $(OBJ)

CFLAGS  +=      -W -Wall -Wextra -ggdb3 -g3 -gstabs

all: $(NAME)

$(NAME) : $(OBJ)
	ar -rc $(LIB) $(NAME) $(OBJ)

clean:
	@rm -f $(OBJ)

fclean:		clean
	@rm -f $(NAME)

re: fclean all
