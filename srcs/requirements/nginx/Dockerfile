FROM debian:buster

RUN apt-get update && apt-get install -y nginx

EXPOSE 443

RUN apt-get install -y openssl && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt -subj "/C=RU/ST=Tatarstan/L=Kazan/O=wordpress/CN=nfarfetc.42.fr"

COPY ./conf/default /etc/nginx/sites-enabled/

RUN service nginx start

CMD bash