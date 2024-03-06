# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chaguer <chaguer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/01 12:00:33 by chaguer           #+#    #+#              #
#    Updated: 2024/03/06 00:59:39 by chaguer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	sudo docker compose -f /home/chaguer/Desktop/inception/srcs/docker-compose.yml up -d

down:
	docker compose -f /home/chaguer/Desktop/inception/srcs/docker-compose.yml down -d