FROM fedora:latest

USER root

COPY ./entrypoint.sh /entrypoint.sh

ARG SSH_PASSWD=secret

RUN dnf install -y \
        corosync-qnetd \
        corosync-qdevice \
        openssh-server \
        passwd \
    && ssh-keygen -A \
    && mkdir -p /var/run/sshd /var/run/corosync-qnetd \
    && echo "root:${SSH_PASSWD}" | chpasswd \
    && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
    && chmod +x /entrypoint.sh 
    
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/corosync-qnetd", "-f"]

