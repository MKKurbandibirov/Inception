FROM debian:buster

RUN apt-get update
RUN apt-get install -y redis

EXPOSE 6379

CMD redis-server --protected-mode no