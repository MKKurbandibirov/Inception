FROM debian:buster

RUN apt-get update
RUN apt-get install -y php7.3 php-mysqli wget

RUN wget "https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php"

RUN mv adminer-4.8.1.php index.php

CMD php -S 0.0.0.0:7077