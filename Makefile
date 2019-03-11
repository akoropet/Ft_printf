# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akoropet <akoropet@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/09/14 19:20:08 by akoropet          #+#    #+#              #
#    Updated: 2019/02/28 15:13:09 by akoropet         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


OBJ = $(SRC:.c=.o)

SRC =	libft/ft_atoi.c libft/ft_bzero.c libft/ft_isalnum.c libft/ft_isalpha.c \
		libft/ft_isascii.c libft/ft_isdigit.c libft/ft_isprint.c libft/ft_itoa.c \
		libft/ft_lstadd.c libft/ft_lstdel.c libft/ft_lstdelone.c libft/ft_lstiter.c \
		libft/ft_lstmap.c libft/ft_lstnew.c libft/ft_memalloc.c libft/ft_memccpy.c \
		libft/ft_memchr.c libft/ft_memcmp.c libft/ft_memcpy.c libft/ft_memdel.c \
		libft/ft_memmove.c libft/ft_memset.c libft/ft_putchar_fd.c libft/ft_putchar.c \
		libft/ft_putendl_fd.c libft/ft_putendl.c libft/ft_putnbr_fd.c libft/ft_putnbr.c \
		libft/ft_putstr_fd.c libft/ft_putstr.c libft/ft_strcat.c libft/ft_strchr.c \
		libft/ft_strclr.c libft/ft_strcmp.c libft/ft_strcpy.c libft/ft_strdel.c \
		libft/ft_strdup.c libft/ft_strequ.c libft/ft_striter.c libft/ft_striteri.c \
		libft/ft_strjoin.c libft/ft_strlcat.c libft/ft_strlen.c libft/ft_strmap.c \
		libft/ft_strmapi.c libft/ft_strncat.c libft/ft_strncmp.c libft/ft_strncpy.c \
		libft/ft_strnequ.c libft/ft_strnew.c libft/ft_strnstr.c libft/ft_strrchr.c \
		libft/ft_strsplit.c libft/ft_strstr.c libft/ft_strsub.c libft/ft_strtrim.c \
		libft/ft_tolower.c libft/ft_toupper.c libft/ft_strndup.c libft/ft_strprint.c \
		libft/ft_itoa_base.c libft/ft_modfl.c libft/ft_pow.c libft/ft_uitoa_base.c\
		libft/ft_powl.c\
		ft_printf.c \
		width_and_precision.c \
		ap.c \
		modifier.c \
		flags.c \
		print_type.c \
		print_s.c \
		print_p.c \
		print_c.c \
		print_d.c \
		print_i.c \
		print_o.c \
		print_u.c \
		print_x.c \
		print_big_x.c \
		print_unicode.c \
		print_f.c \
		print_perc.c \
		correct_f.c

NAME = libftprintf.a

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)

%.o : %.c
	@gcc $(FLAGS) -c -o  $@ $<

clean:
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME)

re: fclean all
