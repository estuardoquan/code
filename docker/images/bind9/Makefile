AUTHOR=dqio
IMAGE=bind9

TAG=${AUTHOR}/${IMAGE}

all: docker-build

docker-build: docker-build-bind9

docker-build-bind9:
	docker build -t ${TAG}:latest ./
