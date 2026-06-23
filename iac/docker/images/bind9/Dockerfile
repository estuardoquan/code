FROM alpine:latest

COPY bind/                      /etc/bind
COPY entrypoint.sh              /entrypoint.sh

RUN apk add --no-cache \
        bind \
        bind-tools \
        tzdata \
    && mkdir -p /etc/bind /nsupdate-keys /var/cache/bind /var/lib/bind /var/run/named \
    && chown -R named:named \
        /etc/bind \
        /nsupdate-keys \
        /var/cache/bind \
        /var/lib/bind \
        /var/run/named \
    && chmod +x /entrypoint.sh
 
USER named
 
ENTRYPOINT ["/entrypoint.sh"]

CMD ["named", "-c /etc/bind/named.conf", "-u named" ,"-g" ]
