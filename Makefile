.PHONY: build run push

NAME = sample-go
TAG = bellwood4486/$(NAME):cli

build:
	docker build -t $(TAG) .

run:
	docker run -it --rm --name $(NAME) $(TAG)

push:
	docker push $(TAG)
