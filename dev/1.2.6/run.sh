#! /bin/sh

docker run -it --rm \
  -h orchestration \
  --name orchestration \
  -v ~/.gitconfig:/root/.gitconfig \
  -v ~/.ssh:/root/.ssh \
  -v $(pwd):/src \
  -w /src \
  -p 4000:4000 \
  --net "host" \
aweiker/alpine-elixir-dev:1.2.6
