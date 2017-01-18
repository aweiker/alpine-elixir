#! /bin/sh

set -e pipefail
VERSION=$(echo "${PWD##*/}" | sed -E 's/(-[0-9\.]*)//g')

if [ -d "elixir" ]; then
  rm -Rf elixir
fi

if [ -a "Precompiled.zip" ]; then
  rm Precompiled.zip*
fi

curl -OL --compressed https://github.com/elixir-lang/elixir/releases/download/v$VERSION/Precompiled.zip
unzip -o -d elixir Precompiled.zip
rm Precompiled.zip*

docker build -t aweiker/elixir-build:"${PWD##*/}" .
rm -Rf elixir
