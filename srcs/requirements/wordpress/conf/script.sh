sleep 10
sed -i -e 's/.*listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root

# wp core install --url=hchaguer.42.fr --title=inception --admin_user=hchaguer --admin_password=pass --admin_email=hchaguer@student.1337.ma

wp config create --allow-root \
                 --dbname=$MYSQL_DATABASE \
				 --dbuser=$MYSQL_USER \
				 --dbpass=$MYSQL_PASSWORD \
				 --dbhost=mariadb:3306 --path='/var/www/html'

/usr/sbin/php-fpm7.4 -F