.PHONY: build run

NAME = sample-docker-image-go
TAG = bellwood4486/$(NAME)

build:
	docker build -t $(TAG) .

run:
	docker run -it --rm --name $(NAME) $(TAG)
