#! /bin/sh

VERSION="${PWD##*/}"

docker run -it --rm \
  -h elixir-dev \
  --name elixir-dev \
  -v ~/.gitconfig:/root/.gitconfig \
  -v ~/.ssh:/root/.ssh \
  -v $(pwd):/src \
  -w /src \
  -p 4000:4000 \
  aweiker/elixir-dev:$VERSION
