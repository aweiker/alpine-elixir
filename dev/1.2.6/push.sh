#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
VERSION="${PWD##*/}"

docker tag -f aweiker/alpine-elixir-dev:$VERSION aweiker/alpine-elixir-dev:latest
docker push aweiker/alpine-elixir-dev

