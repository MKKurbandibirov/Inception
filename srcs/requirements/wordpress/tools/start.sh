#!/bin/bash

chmod -R 775 /var/www/html/wordpress;
chown -R www-data /var/www/html/wordpress;

mkdir -p /run/php/;
touch /run/php/php7.3-fpm.pid;

