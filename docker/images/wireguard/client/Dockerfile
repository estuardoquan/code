FROM alpine:latest

USER root

COPY entrypoint.sh /entrypoint.sh
COPY resolvconf.sh /usr/local/bin/resolvconf

RUN apk update && \
    apk add --no-cache \
        openssh \
        iptables \
        wireguard-tools && \
    chmod +x /entrypoint.sh /usr/local/bin/resolvconf

ENTRYPOINT ["/entrypoint.sh"]

CMD ["sleep", "infinity"]
