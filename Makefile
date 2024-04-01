# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chaguer <chaguer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/01 12:00:33 by chaguer           #+#    #+#              #
#    Updated: 2024/03/29 15:54:02 by chaguer          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

up:
	docker compose -f srcs/docker-compose.yml up --build -d 
	docker compose -f srcs/docker-compose.yml up -d

down:
	docker compose -f srcs/docker-compose.yml down
	
# mariadb:
# 	docker image rm -f mariadb
# 	docker build -t mariadb srcs/requirements/mariadb
# 	docker run --rm --name mariadb -itd -p3306:3306 mariadb

# wordpress:
# 	docker image rm -f wordpress
# 	docker build -t wordpress srcs/requirements/wordpress
# 	docker run --rm --name wordpress -itd --network inc -v data:/var/www/html -p9000:9000 wordpress

# nginx: 
# 	docker image rm -f nginx
# 	docker build -t nginx srcs/requirements/nginx
# 	docker run --rm --name nginx -itd --network inc -v data:/var/www/html -p443:433 nginx