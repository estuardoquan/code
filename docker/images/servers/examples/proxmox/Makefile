all: docker-run

docker-run:
	docker run --rm -v ./proxmox.yaml:/d.yaml dqio/servers:latest camarero --yaml /d.yaml
