#! /bin/sh

docker run -it --rm \
  -v ~/.gitconfig:/root/.gitconfig \
  -v ~/.ssh:/root/.ssh \
  -v $(pwd):/src \
  -w /src \
  -p 4000:4000 \
  --net "host" \
aweiker/elixir-build:1.2.6
