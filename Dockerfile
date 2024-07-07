FROM golang:1.22-alpine AS builder
WORKDIR /usr/src/app
# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY go.mod ./
RUN go mod download && go mod verify
COPY . .
RUN go build -v -o /usr/local/bin/myapp ./...

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /usr/local/bin/myapp /usr/local/bin/myapp
CMD ["myapp"]
