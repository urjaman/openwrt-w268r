#!/bin/sh
# You will need dropbear installed on your host to use this
mkdir -p files/etc/dropbear files/root/.ssh
echo "Host key:"
dropbearkey -t rsa -f package/network/services/dropbear/files/dropbear_rsa_host_key | grep Fingerprint
echo "Client key:"
echo $(dropbearkey -t rsa -f files/root/.ssh/id_dropbear | grep ssh-rsa | cut -f 1,2 -d ' ') root@w268r > files/root/.ssh/id_rsa.pub
cat files/root/.ssh/id_rsa.pub
echo "Authorized keys:"
cat ~/.ssh/id_rsa.pub > files/etc/dropbear/authorized_keys
cat files/etc/dropbear/authorized_keys
