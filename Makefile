build-ubuntu-image:
	docker build -t cs1193/docker-ubuntu -f ./images/ubuntu-base/ubuntu-base.Dockerfile .
