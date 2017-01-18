#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker tag "aweiker/elixir-dev:$VERSION" "aweiker/elixir-dev:latest"
docker push aweiker/elixir-dev
