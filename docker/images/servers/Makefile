AUTHOR=dqio
IMAGE=servers

TAG=${AUTHOR}/${IMAGE}

all: docker-build

docker-build: docker-build-camarero docker-build-server

docker-build-camarero:
	docker build -t ${TAG}:build  --target camarero ./

docker-build-server:
	docker build -t ${TAG}:latest  --target server ./
