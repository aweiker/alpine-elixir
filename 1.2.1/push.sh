#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"

docker tag -f aweiker/alpine-elixir:1.2.1-$COMMIT aweiker/alpine-elixir:1.2.1
docker push aweiker/alpine-elixir

