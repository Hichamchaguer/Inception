FROM debian:12

EXPOSE 3306
ENV MYSQL_USER=hchaguer
ENV MYSQL_PASSWORD=pass
ENV MYSQL_DATABASE=MYDB


RUN apt-get update \
    && apt-get install -y mariadb-server \
    && rm -rf /var/lib/apt/lists/*


CMD ["mysqld"]