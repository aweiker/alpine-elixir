#! /bin/sh

set -e pipefail
VERSION="${PWD##*/}"

wget https://github.com/elixir-lang/elixir/releases/download/v$VERSION/Precompiled.zip
unzip -o -d elixir Precompiled.zip

docker build -t aweiker/elixir-build:$VERSION .
rm -Rf elixir
rm Precompiled.zip*
