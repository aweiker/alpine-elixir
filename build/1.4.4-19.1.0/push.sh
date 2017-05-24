#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker tag "aweiker/elixir-build:$VERSION" "aweiker/elixir-build:latest"
docker push aweiker/elixir-build
