#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker build -t aweiker/alpine-elixir-dev:$VERSION .

