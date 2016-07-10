#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
VERSION="${PWD##*/}"

docker tag -f aweiker/elixir-dev:$VERSION aweiker/elixir-dev:latest
docker push aweiker/elixir-dev
