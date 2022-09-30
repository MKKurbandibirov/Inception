FROM debian:buster

RUN apt-get update
RUN apt-get install -y vsftpd vim

COPY tools/start.sh /var/
COPY conf/vsftpd.conf /etc/vsftpd.conf

EXPOSE 2121

CMD bash /var/start.sh