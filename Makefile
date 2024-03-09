# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chaguer <chaguer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/01 12:00:33 by chaguer           #+#    #+#              #
#    Updated: 2024/03/09 21:07:30 by chaguer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	sudo docker compose -f /home/chaguer/Desktop/inception/srcs/docker-compose.yml up -d

down:
	sudo docker compose -f /home/chaguer/Desktop/inception/srcs/docker-compose.yml down -d