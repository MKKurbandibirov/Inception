#!/bin/bash
apt-get update
apt install wget -y
wget https://golang.org/dl/go1.17.linux-amd64.tar.gz
tar -zxvf go1.17.linux-amd64.tar.gz -C /usr/local/
echo "export PATH=/usr/local/go/bin:${PATH}" | tee /etc/profile.d/go.sh && . /etc/profile.d/go.sh
echo "export PATH=/usr/local/go/bin:${PATH}" | tee -a $HOME/.profile && . $HOME/.profile

go run /var/main.go