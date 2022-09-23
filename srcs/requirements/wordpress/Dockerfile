FROM debian:buster

RUN apt-get update
RUN apt-get install -y php7.3 php-mysqli mariadb-client php-fpm curl

EXPOSE 9000

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod -R 775 /var/www/html/wordpress && chown -R www-data /var/www/html/wordpress

RUN mkdir -p /run/php/ && touch /run/php/php7.3-fpm.pid

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp
