# sleep 10
sed -i -e 's/.*listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root

/usr/sbin/php-fpm7.4 -F