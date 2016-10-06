#! /bin/sh

set -e pipefail

VERSION="${PWD##*/}"

wget https://github.com/elixir-lang/elixir/releases/download/v$VERSION/Precompiled.zip
unzip -d elixir Precompiled.zip


docker build -t aweiker/elixir:$VERSION .
rm -Rf elixir
rm Precompiled.zip*
