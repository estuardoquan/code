dnf config-manager addrepo --from-repofile https://download.docker.com/linux/fedora/docker-ce.repo

dnf check-update && dnf update -y

dnf install -y \
    git \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

systemctl enable docker
