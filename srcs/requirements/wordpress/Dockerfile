FROM debian:11


RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y wget\
    php7.3\
    php-fpm\
    php-mysql\
    mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www

RUN cd /var/www && tar -xvf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz