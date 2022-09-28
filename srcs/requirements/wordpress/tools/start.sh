#!/bin/bash

chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;


if [ ! -f /var/www/html/wordpress/wp-config.php ]; then

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
chmod +x wp-cli.phar;
mv wp-cli.phar /usr/local/bin/wp;
cd /var/www/html/wordpress;

wp core download --allow-root;

wp config create --dbname=${WORDPRESS_DB_NAME} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_PASSWORD} --dbhost=${WORDPRESS_DB_HOST} --allow-root;

wp core install --url=${DOMAIN_NAME} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ROOT_NAME} --admin_password=${MYSQL_ROOT_PASSWORD} --admin_email=${WORDPRESS_ROOT_EMAIL} --allow-root

wp user create ${MYSQL_USER} ${WORDPRESS_USER_EMAIL} --allow-root --role=subscriber --user_pass=${MYSQL_PASSWORD}

fi

/usr/sbin/php-fpm7.3 --nodaemonize