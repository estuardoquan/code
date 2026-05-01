#!/bin/sh

/usr/sbin/sshd

if [[ ! -d "/etc/corosync/qnetd/nssdb" ]]; then
    corosync-qnetd-certutil -i
fi

exec ${@}
