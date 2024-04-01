FROM debian:11

EXPOSE 3306

RUN apt-get update \
    && apt-get install -y mariadb-server

RUN apt update && apt install vim -y

RUN mkdir -p /var/lib/mysql/

COPY ./tools/script.sh /

RUN chmod +x script.sh

COPY ./conf/my_cnf.conf /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT ["bash","./script.sh"]