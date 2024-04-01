
FROM debian:11

RUN apt-get update \
    && apt-get install -y wget\
    php7.4\
    php7.4-fpm\
    php7.4-mysql

RUN apt update && apt install vim -y

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

ENTRYPOINT ["sh", "/bin/script.sh"]