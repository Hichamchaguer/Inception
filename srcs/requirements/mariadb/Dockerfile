FROM debian:11

EXPOSE 3306

ENV MYSQL_USER=hchaguer
ENV MYSQL_PASSWORD=pass
ENV MYSQL_DATABASE=MYDB


RUN apt-get update \
    && apt-get upgrade -y  \
    && apt-get install -y mariadb-server

RUN mkdir -p /var/lib/mysql/

COPY ./tools/script.sh /

RUN chmod +x script.sh

COPY ./conf/my_cnf.conf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD ["bash","./script.sh"]