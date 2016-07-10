#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
VERSION="${PWD##*/}"

docker tag aweiker/alpine-elixir:$VERSION aweiker/alpine-elixir:latest
docker push aweiker/alpine-elixir
