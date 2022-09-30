FROM debian:buster

COPY ./tools/main.go /var/
COPY ./tools/start.sh /var/
EXPOSE 8080

WORKDIR /var

CMD bash start.sh