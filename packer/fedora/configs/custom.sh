dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo

dnf check-update && dnf update -y

dnf install -y \
    git \
    iperf3 \
    wireguard-tools \
    tmux \
    neovim \
    stow \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

curl -k -o /etc/pki/ca-trust/source/anchors/roots.pem https://10.15.0.6/roots.pem
chmod 644 /etc/pki/ca-trust/source/anchors/roots.pem
update-ca-trust

cat > /var/tmp/acme-update.key <<EOF
key "acme-update-key" {
        algorithm hmac-sha512;
        secret "bKH+G04LzyI6jnV1gPr0uRAGBIOrQw5ZSeaFJDdlN8/wnrgXHF6xrfWayn20V1Ei5wOGQ2BNbZ+YBDEtAkNTSQ==";
};
EOF
