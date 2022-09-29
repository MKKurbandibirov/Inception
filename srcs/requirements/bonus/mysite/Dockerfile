FROM debian:buster

COPY ./conf/main.go /var/
COPY ./conf/start.sh /var/
EXPOSE 8080

WORKDIR /var

CMD bash start.sh