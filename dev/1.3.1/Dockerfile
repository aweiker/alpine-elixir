FROM alpine:edge
MAINTAINER Aaron Weiker <aaron@weiker.org>
LABEL Description="Developer image with Erlang 18.3.2 | Elixir 1.3.1"

ENV LANG=en_US.UTF-8 ELIXIR_VERSION=1.2.6-r0 ERLANG_VERSION=18.3.2-r0 ZSH_THEME=agnoster

COPY elixir /usr/lib/elixir
RUN apk add --no-cache --update erlang-dev=${ERLANG_VERSION} erlang-kernel=${ERLANG_VERSION} \
                     erlang-hipe=${ERLANG_VERSION} erlang-compiler=${ERLANG_VERSION} \
                     erlang-stdlib=${ERLANG_VERSION} erlang-erts=${ERLANG_VERSION} erlang-tools=${ERLANG_VERSION} \
                     erlang-syntax-tools=${ERLANG_VERSION} erlang-sasl=${ERLANG_VERSION} \
                     erlang-crypto=${ERLANG_VERSION} erlang-public-key=${ERLANG_VERSION} \
                     erlang-ssl=${ERLANG_VERSION} erlang-ssh=${ERLANG_VERSION} erlang-asn1=${ERLANG_VERSION}\
                     erlang-inets=${ERLANG_VERSION} erlang-inets=${ERLANG_VERSION} erlang-mnesia=${ERLANG_VERSION}\
                     erlang-odbc=${ERLANG_VERSION} \
                     erlang-erl-interface=${ERLANG_VERSION} erlang-parsetools=${ERLANG_VERSION} erlang-eunit=${ERLANG_VERSION} \
                     git make g++ wget curl zsh nodejs vim openssh-client && \
    rm -rf /tmp/* /var/cache/apk/* && \
    npm install npm -g --no-progress && \
    npm install brunch -g --no-progress && \
    addgroup -S -g 1000 elixir && \
    adduser -S -u 1000 elixir elixir && \
    ln -s /usr/lib/elixir/bin/elixir /usr/bin/elixir && \
    ln -s /usr/lib/elixir/bin/mix /usr/bin/mix && \
    ln -s /usr/lib/elixir/bin/elixirc /usr/bin/elixirc && \
    ln -s /usr/lib/elixir/bin/iex /usr/bin/iex

USER elixir

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix hex.info && \
    git clone --depth=1 https://github.com/robbyrussell/oh-my-zsh.git /home/elixir/.oh-my-zsh && \
    git clone https://github.com/gusaiani/elixir-oh-my-zsh.git /home/elixir/.oh-my-zsh/custom/plugins/elixir && \
    cp /home/elixir/.oh-my-zsh/templates/zshrc.zsh-template /home/elixir/.zshrc && \
    awk '{gsub(/ZSH_THEME="robbyrussell"/, "# ZSH_THEME=\"agnoster\""); print}' /home/elixir/.zshrc > /home/elixir/.zshrc.new && \
    mv /home/elixir/.zshrc.new /home/elixir/.zshrc && \
    awk '{gsub(/plugins=\(git\)/, "plugins=(git elixir)"); print}' /home/elixir/.zshrc > /home/elixir/.zshrc.new && \
    mv /home/elixir/.zshrc.new /home/elixir/.zshrc

CMD [ "/bin/zsh" ]
