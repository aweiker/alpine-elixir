#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker build -t aweiker/elixir-dev:$VERSION .
