#!/bin/sh

INIT_ACME_UPDATE_KEY=${INIT_ACME_UPDATE_KEY:-0}
INIT_HOSTNAME_UPDATE_KEY=${INIT_HOSTNAME_UPDATE_KEY:-0}

if [ -n "${TZ}" ]; then
    ln -snf "/usr/share/zoneinfo/${TZ}" /etc/localtime
    echo "${TZ}" > /etc/timezone
fi

if [ ! -f /etc/bind/rndc.key ]; then
    rndc-confgen -a -u named
fi

if [[ ${INIT_ACME_UPDATE_KEY} == 1 && ! -f /nsupdate-keys/acme-update.key ]]; then
    tsig-keygen acme-update > /nsupdate-keys/acme-update.key
    chown named:named /nsupdate-keys/acme-update.key
fi

if [[ ${INIT_HOSTNAME_UPDATE_KEY} == 1 && ! -f /nsupdate-keys/hostname-update.key ]]; then
    tsig-keygen hostname-update > /nsupdate-keys/hostname-update.key
    chown named:named /nsupdate-keys/hostname-update.key
fi

exec $@
