#! /bin/sh

set -e pipefail
VERSION="${PWD##*/}"

rm Precompiled.zip*
wget https://github.com/elixir-lang/elixir/releases/download/v$VERSION/Precompiled.zip
unzip -d elixir Precompiled.zip

docker build -t aweiker/elixir-dev:$VERSION .
rm -Rf elixir
rm Precompiled.zip*
