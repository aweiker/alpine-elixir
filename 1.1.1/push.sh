#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"

docker tag -f aweiker/alpine-elixir:1.1.1-$COMMIT aweiker/alpine-elixir:1.1.1
docker push aweiker/alpine-elixir

