FROM debian:buster

RUN apt-get update
RUN apt-get install -y php7.3 php-mysqli mariadb-client php-fpm curl

EXPOSE 9000

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN mkdir -p /var/www/html \
		&& mkdir -p /var/www/html/wordpress

RUN chmod -R 775 /var/www/html/wordpress \
		&& chown -R www-data /var/www/html/wordpress

RUN mkdir -p /run/php/ \
		&& touch /run/php/php7.3-fpm.pid

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
		&& mv wp-cli.phar /usr/local/bin/wp

RUN cd /var/www/html/wordpress

RUN wp core download --allow-root && \
		wp config create --dbname=${WORDPRESS_DB_NAME} \
						 --dbuser=${MYSQL_USER} \
						 --dbpass=${MYSQL_PASSWORD} \
						 --dbhost=${WORDPRESS_DB_HOST} \
						 --dbcharset=${utf8} \
						 --allow-root 
						 	# && wp core install --allow-root --url=${DOMAIN_NAME} \ 
							#  					 			--title=${WORDPRESS_TITLE} \
							# 					 			--admin_user=${WORDPRESS_ROOT_NAME} \ 
							# 					 			--admin_password=${MYSQL_ROOT_PASSWORD} \
							# 					 			--skip-email

RUN  wp user create ${MYSQL_USER} \
					${WORDPRESS_USER_EMAIL} \
					--user_pass=${MYSQL_PASSWORD} \
					--role=author \
					--allow-root;

CMD /usr/sbin/php-fpm7.3 -F