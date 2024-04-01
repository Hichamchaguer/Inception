FROM debian:11

EXPOSE 443

RUN apt-get update

RUN apt-get -y install nginx

RUN apt-get -y install openssl

#path to store ssl certificate 
RUN mkdir -p /etc/nginx/ssl

RUN touch /etc/nginx/conf.d/nginx.conf

#install vim in the VM
RUN apt update && apt install vim -y

RUN chmod 777 /var/www/html && chown -R www-data:www-data /var/www/html

COPY  ./conf/nginx.sh nginx.sh

RUN chmod +x nginx.sh
 
ENTRYPOINT ["sh","nginx.sh"]
