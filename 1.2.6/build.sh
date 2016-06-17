#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"
COMMIT="$(git rev-parse --short HEAD)"

docker build -t aweiker/alpine-elixir:$VERSION-$COMMIT .

