FROM debian:buster

RUN apt-get update
RUN apt-get install -y prometheus

COPY conf/prometheus.yml /etc/prometheus/prometheus.yml

WORKDIR /etc/prometheus/

EXPOSE 9090

CMD prometheus --config.file=prometheus.yml --web.listen-address=:9090