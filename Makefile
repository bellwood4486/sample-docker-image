.PHONY: build run

build:
	docker build -t sample-docker-image-go .

run:
	docker run -it --rm --name sample-docker-image-go sample-docker-image-go
