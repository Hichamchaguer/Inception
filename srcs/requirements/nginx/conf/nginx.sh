# ssl certificate
openssl req -x509 -nodes -out $pub_key -keyout $pv_key \
    -subj "/C=MA/ST=Ben Guerir/L=Morroco/O=42/OU=42/CN=hchaguer.42.fr/UID=hchaguer"

echo " server {

    listen 443 ssl;

    server_name $domain_name localhost;

    ssl_certificate $pub_key;
    ssl_certificate_key $pv_key;" > /etc/nginx/conf.d/nginx.conf

    echo ' ssl_protocols TLSv1.3 TLSv1.2;

    root /var/www/html;

    index index.php index.html index.htm;

    location ~ [^/]\.php(/|$) {

            try_files $uri =404;
            fastcgi_pass wordpress:9000;
            include fastcgi_params;
            fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        }
} ' >> /etc/nginx/conf.d/nginx.conf

exec nginx -g "daemon off;"