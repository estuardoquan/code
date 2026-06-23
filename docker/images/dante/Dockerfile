FROM alpine 

COPY ./sockd.conf /etc/sockd.conf
COPY ./entrypoint.sh /entrypoint.sh

RUN apk update && \
    apk add --no-cache \
        dante-server && \
    chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "/usr/sbin/sockd"]
