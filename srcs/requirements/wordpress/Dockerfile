# ****************************************************************************** #
#                                                                                #
#                                                         :::      ::::::::      #
#    Dockerfile                                         :+:      :+:    :+:      #
#                                                     +:+ +:+         +:+        #
#    By: hchaguer <hchaguer@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+              #
#    Created: 2024/03/12 15:06:28 by hchaguer           #+#    #+#               #
#    Updated: 2024/03/12 15:06:30 by hchaguer          ###   ########.fr         #
#                                                                                #
# ****************************************************************************** #

FROM debian:11

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y wget\
    php7.4\
    php7.4-fpm\
    php7.4-mysql

# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

# RUN cd /var/www && tar -xvf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

ENV MYSQL_USER=hchaguer
ENV MYSQL_PASSWORD=pass
ENV MYSQL_DATABASE=MYDB

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp


WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html

RUN mkdir -p /run/php && \
    chmod 755 /run/php && \
    chown www-data:www-data /run/php

COPY conf/script.sh /bin/script.sh

RUN chmod +x /bin/script.sh

CMD ["sh", "/bin/script.sh"]