#!/bin/sh

INIT_IFNAME=${INIT_IFNAME:-wg0}

while [ ! -e /sys/class/net/${INIT_IFNAME} ]; do
    sleep 5
done 

sed -i'' -e "s/__replace_me_ifname__/${INIT_IFNAME}/" /etc/sockd.conf

exec "$@"
