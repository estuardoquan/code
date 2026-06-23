#!/bin/sh

printf "%s\n""nameserver $@" > /etc/resolv.conf
