#! /bin/sh

set -e pipefail

COMMIT="$(git rev-parse --short HEAD)"
docker build -t aweiker/alpine-elixir:1.2.1-$COMMIT .

