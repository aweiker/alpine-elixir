#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

docker build -t aweiker/elixir-build:$VERSION .
