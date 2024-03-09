FROM debian:11

EXPOSE 443

RUN apt-get update \
    && apt-get -y install nginx openssl \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.hey \
    -subj "/C=MA/ST=Ben Guerir/L=Morroco/O=42/OU=42/CN=hchaguer.42.fr/UID=hchaguer"
RUN mkdir -p /var/run/nginx

COPY  conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
