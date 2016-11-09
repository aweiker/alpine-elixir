#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker tag aweiker/elixir:$VERSION aweiker/elixir:latest
docker push aweiker/elixir
