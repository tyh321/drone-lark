#!/bin/zsh
export GOOS=linux
export GOARCH=amd64
go build -o lark main.go
IMAGE=${IMAGE:-"johntian321/drone-lark"}
tag=${tag:-"latest"}
echo "Building: $IMAGE:$tag"
docker build -f dockerfile -t $IMAGE:$tag .
docker push $IMAGE:$tag
docker image prune -f