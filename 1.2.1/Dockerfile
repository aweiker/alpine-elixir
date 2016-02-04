FROM alpine:3.3
MAINTAINER Aaron Weiker <aaron@weiker.org>
LABEL Description="Erlang 18.2 | Elixir 1.2.1"

ENV LANG=en_US.UTF-8 ELIXIR_VERSION=1.2.1-r0 ERLANG_VERSION=18.2.2-r0

RUN echo 'http://dl-4.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
    echo 'http://dl-4.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
    apk add --update erlang-dev=${ERLANG_VERSION} erlang-kernel=${ERLANG_VERSION} \
                     erlang-hipe=${ERLANG_VERSION} erlang-compiler=${ERLANG_VERSION} \
                     erlang-stdlib=${ERLANG_VERSION} erlang-erts=${ERLANG_VERSION} erlang-tools=${ERLANG_VERSION} \
                     erlang-syntax-tools=${ERLANG_VERSION} erlang-sasl=${ERLANG_VERSION} \
                     erlang-crypto=${ERLANG_VERSION} erlang-public-key=${ERLANG_VERSION} \
                     erlang-ssl=${ERLANG_VERSION} erlang-ssh=${ERLANG_VERSION} erlang-asn1=${ERLANG_VERSION}\
                     erlang-inets=${ERLANG_VERSION} erlang-inets=${ERLANG_VERSION} erlang-mnesia=${ERLANG_VERSION}\
                     erlang-odbc=${ERLANG_VERSION} elixir=${ELIXIR_VERSION} \
                     erlang-erl-interface=${ERLANG_VERSION} erlang-parsetools=${ERLANG_VERSION} erlang-eunit=${ERLANG_VERSION} && \
    rm -rf /usr/include /usr/share/man /tmp/* /var/cache/apk/* && \
    mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info

CMD [ "/bin/sh" ]
