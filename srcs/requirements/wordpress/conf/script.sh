sleep 6

sed -i -e 's/.*listen = .*/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf

wp core download --allow-root

wp config create --allow-root \
                 --dbname=$MYSQL_DATABASE \
				 --dbuser=$MYSQL_USER \
				 --dbpass=$MYSQL_PASSWORD \
				 --dbhost=mariadb:3306 --path='/var/www/html'

wp core install --allow-root --url=hchaguer.42.fr --title=inception --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL

wp user create --allow-root $USER $USER_EMAIL --user_pass=$USER_PASS --user_url=hchaguer.42.fr

exec /usr/sbin/php-fpm7.4 -F