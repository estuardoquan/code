#!/bin/sh

echo "resolv_conf_passthrough=/etc/resolv.conf" >> /etc/resolvconf.conf

exec "$@"
