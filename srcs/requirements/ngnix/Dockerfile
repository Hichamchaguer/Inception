FROM debian:12

EXPOSE 80

RUN apt-get update \
    && apt-get -y install nginx \
    && rm -rf /var/lib/apt/lists/*


# COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
