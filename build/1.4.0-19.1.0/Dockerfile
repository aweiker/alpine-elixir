FROM alpine:3.5
MAINTAINER Aaron Weiker <aaron@weiker.org>
LABEL Description="Build image with Erlang 19.1.0 | Elixir 1.4.0"

ENV LANG=en_US.UTF-8 ELIXIR_VERSION=1.4.0 ERLANG_VERSION=19.1.0-r0

COPY elixir /usr/lib/elixir
RUN apk add --no-cache --update erlang-dev=${ERLANG_VERSION} erlang-kernel=${ERLANG_VERSION} \
                     erlang-hipe=${ERLANG_VERSION} erlang-compiler=${ERLANG_VERSION} \
                     erlang-stdlib=${ERLANG_VERSION} erlang-erts=${ERLANG_VERSION} erlang-tools=${ERLANG_VERSION} \
                     erlang-syntax-tools=${ERLANG_VERSION} erlang-sasl=${ERLANG_VERSION} \
                     erlang-crypto=${ERLANG_VERSION} erlang-public-key=${ERLANG_VERSION} \
                     erlang-ssl=${ERLANG_VERSION} erlang-ssh=${ERLANG_VERSION} erlang-asn1=${ERLANG_VERSION}\
                     erlang-inets=${ERLANG_VERSION} erlang-inets=${ERLANG_VERSION} erlang-mnesia=${ERLANG_VERSION}\
                     erlang-odbc=${ERLANG_VERSION} erlang-xmerl=${ERLANG_VERSION} \
                     erlang-erl-interface=${ERLANG_VERSION} erlang-parsetools=${ERLANG_VERSION} erlang-eunit=${ERLANG_VERSION} \
                     git make g++ wget curl nodejs && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install -g npm --no-progress && \
    npm install -g coffee-script --no-progress && \
    npm install -g brunch --no-progress && \
    addgroup -S -g 1000 elixir && \
    adduser -S -u 1000 elixir elixir && \
    ln -s /usr/lib/elixir/bin/elixir /usr/bin/elixir && \
    ln -s /usr/lib/elixir/bin/mix /usr/bin/mix && \
    ln -s /usr/lib/elixir/bin/elixirc /usr/bin/elixirc && \
    ln -s /usr/lib/elixir/bin/iex /usr/bin/iex && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

CMD [ "/bin/sh" ]
