#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker push aweiker/elixir-build
