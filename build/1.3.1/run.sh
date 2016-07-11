#! /bin/sh

VERSION="${PWD##*/}"

docker run -it --rm \
  -h elixir-build \
  --name elixir-build \
  -v ~/.gitconfig:/root/.gitconfig \
  -v ~/.ssh:/root/.ssh \
  -v $(pwd):/src \
  -w /src \
  -p 4000:4000 \
  aweiker/elixir-build:$VERSION
