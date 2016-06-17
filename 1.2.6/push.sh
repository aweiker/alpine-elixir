#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
VERSION="${PWD##*/}"

docker tag -f aweiker/alpine-elixir:$VERSION-$COMMIT aweiker/alpine-elixir:$VERSION
docker push aweiker/alpine-elixir

