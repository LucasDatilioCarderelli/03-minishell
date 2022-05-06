# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ldatilio <ldatilio@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/06 01:22:28 by ldatilio          #+#    #+#              #
#    Updated: 2022/05/06 02:25:21 by ldatilio         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	minishell
HEADER		=	minishell.h

INCLUDES	=	-I ./includes

CC			=	gcc -g
RM			=	rm -rf
CFLAGS		=	-Wall -Wextra -Werror

SRC_PATH	=	./src/
OBJ_PATH	=	./obj/

SRC_FILES	=	minishell.c

SRC			=	$(addprefix $(SRC_PATH),$(SRC_FILES))
OBJ			=	$(addprefix $(OBJ_PATH),$(subst .c,.o,$(SRC_FILES)))

$(OBJ_PATH)%.o:	$(SRC_PATH)%.c
				mkdir -p $(OBJ_PATH)
				$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

all:			$(NAME)

run:			$(NAME)
				./$(NAME)

$(NAME):		$(OBJ)
				$(CC) $(CFLAGS) $(OBJ) -o $(NAME) -lreadline
				
clean:
				$(RM) $(OBJ)

fclean:			clean
				$(RM) $(NAME)

re:				fclean all

.PHONY:			all, clean, fclean, re
