.PHONY: build run push

NAME = sample-go:cli
TAG = bellwood4486/$(NAME)

build:
	docker build -t $(TAG) .

run:
	docker run -it --rm --name $(NAME) $(TAG)

push:
	docker push $(TAG)
