FROM alpine:edge
MAINTAINER Aaron Weiker <aaron@weiker.org>
LABEL Description="Developer image with Erlang 18.3.2 | Elixir 1.2.6"

ENV LANG=en_US.UTF-8 ELIXIR_VERSION=1.2.6-r0 ERLANG_VERSION=18.3.2-r0 ZSH_THEME=agnoster

RUN apk add --no-cache --update erlang-dev=${ERLANG_VERSION} erlang-kernel=${ERLANG_VERSION} \
                     erlang-hipe=${ERLANG_VERSION} erlang-compiler=${ERLANG_VERSION} \
                     erlang-stdlib=${ERLANG_VERSION} erlang-erts=${ERLANG_VERSION} erlang-tools=${ERLANG_VERSION} \
                     erlang-syntax-tools=${ERLANG_VERSION} erlang-sasl=${ERLANG_VERSION} \
                     erlang-crypto=${ERLANG_VERSION} erlang-public-key=${ERLANG_VERSION} \
                     erlang-ssl=${ERLANG_VERSION} erlang-ssh=${ERLANG_VERSION} erlang-asn1=${ERLANG_VERSION}\
                     erlang-inets=${ERLANG_VERSION} erlang-inets=${ERLANG_VERSION} erlang-mnesia=${ERLANG_VERSION}\
                     erlang-odbc=${ERLANG_VERSION} elixir=${ELIXIR_VERSION} erlang-xmerl=${ERLANG_VERSION} \
                     erlang-erl-interface=${ERLANG_VERSION} erlang-parsetools=${ERLANG_VERSION} erlang-eunit=${ERLANG_VERSION} \
                     git make g++ wget curl nodejs vim openssh-client && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install -g npm --no-progress && \
    npm install -g coffee-script --no-progress && \
    npm install -g brunch --no-progress && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

CMD [ "/bin/sh" ]
