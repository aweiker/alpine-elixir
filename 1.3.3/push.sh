#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
VERSION="${PWD##*/}"

docker tag aweiker/elixir:$VERSION aweiker/elixir:latest
docker push aweiker/elixir
