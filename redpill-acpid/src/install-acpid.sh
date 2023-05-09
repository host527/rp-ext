#!/bin/sh

# download files
#curl -L https://cdn.jsdelivr.net/gh/jumkey/redpill-load@develop/redpill-acpid/acpid.tar.gz -o /tmp/acpid.tar.gz
curl -L https://raw.githubusercontent.com/pocopico/rp-ext/master/redpill-acpid/recipes/acpid_v6.tar.gz -o /tmp/acpid.tar.gz

# copy file
#tar -zxvf /tmp/acpid.tar.gz -C /
tar -zxvf acpid.tar.gz -C /tmpRoot/

# enable
#systemctl enable acpid.service
ln -s /usr/lib/systemd/system/acpid.service /tmpRoot/etc/systemd/system/multi-user.target.wants/acpid.service

# start
#systemctl start acpid.service
