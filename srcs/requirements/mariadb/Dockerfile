FROM debian:buster



RUN apt-get update && apt-get install -y mariadb-server

COPY tools ./tools
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN service mysql start




# RUN mysql < ./tools/schema.sql

EXPOSE 3306

CMD /usr/bin/mysqld_safe