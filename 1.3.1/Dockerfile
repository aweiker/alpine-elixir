FROM alpine:edge
MAINTAINER Aaron Weiker <aaron@weiker.org>
LABEL Description="Erlang 18.3.2 | Elixir 1.3.1"

ENV LANG=en_US.UTF-8 ELIXIR_VERSION=1.3.1 ERLANG_VERSION=18.3.2-r0

COPY elixir /usr/lib/elixir
RUN apk add --update erlang-dev=${ERLANG_VERSION} erlang-kernel=${ERLANG_VERSION} \
                     erlang-hipe=${ERLANG_VERSION} erlang-compiler=${ERLANG_VERSION} \
                     erlang-stdlib=${ERLANG_VERSION} erlang-erts=${ERLANG_VERSION} erlang-tools=${ERLANG_VERSION} \
                     erlang-syntax-tools=${ERLANG_VERSION} erlang-sasl=${ERLANG_VERSION} \
                     erlang-crypto=${ERLANG_VERSION} erlang-public-key=${ERLANG_VERSION} \
                     erlang-ssl=${ERLANG_VERSION} erlang-ssh=${ERLANG_VERSION} erlang-asn1=${ERLANG_VERSION} \
                     erlang-inets=${ERLANG_VERSION} erlang-inets=${ERLANG_VERSION} erlang-mnesia=${ERLANG_VERSION} \
                     erlang-odbc=${ERLANG_VERSION} erlang-xmerl=${ERLANG_VERSION} \
                     erlang-erl-interface=${ERLANG_VERSION} erlang-parsetools=${ERLANG_VERSION} erlang-eunit=${ERLANG_VERSION} && \
    rm -rf /tmp/* /var/cache/apk/* && \
    ln -s /usr/lib/elixir/bin/elixir /usr/bin/elixir && \
    ln -s /usr/lib/elixir/bin/mix /usr/bin/mix && \
    ln -s /usr/lib/elixir/bin/elixirc /usr/bin/elixirc && \
    ln -s /usr/lib/elixir/bin/iex /usr/bin/iex
CMD [ "/bin/sh" ]
