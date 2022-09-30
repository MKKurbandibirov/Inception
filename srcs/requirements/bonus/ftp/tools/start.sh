#!/bin/bash

adduser $USER << EOF
$MYSQL_PASSWORD
$MYSQL_PASSWORD
EOF

mkdir -p /home/$USER/ftp

mkdir -p /home/$USER/ftp/files

chown $USER:$USER /home/$USER/ftp/files/

echo $USER | tee -a /etc/vsftpd.userlist

cd /home/nfarfetc/ftp/files

vsftpd /etc/vsftpd.conf