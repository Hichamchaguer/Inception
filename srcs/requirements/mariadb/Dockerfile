FROM debian:11

EXPOSE 3306

ENV MYSQL_USER=hchaguer
ENV MYSQL_PASSWORD=pass
ENV MYSQL_DATABASE=MYDB


RUN apt-get update \
    && apt-get upgrade -y  \
    && apt-get install -y mariadb-server

COPY tools/script.sh script.sh
RUN chmod +x script.sh

CMD ["script.sh"]