# Elixir on Alpine Linux

This dockerfile is meant to provide a container to run your application in 
production. There are other examples out there that put the entire code
base in the container and run it. This container is instead designed to take
the compiled output of just the _exrm_ release and run that. This will allow
for a smaller container that is being run in production.

## Getting Started
Please refer to my excellent getting 
[starter guide](https://github.com/drone-demos/drone-with-elixir) that I 
wrote as a part of my drone-with-elixir starter kit. If you run into any 
issues, please file an issue or get ahold of me on twitter @a\_weiker.

## Example Dockerfile
Please set `APP_NAME` to the correct name of your application and make sure
that `APP_VERSION` has the correct value.

```
FROM aweiker/alpine-elixir:latest
ENV PORT=4000 MIX_ENV=prod

ENV APP_NAME=hello_phoenix APP_VERSION="0.0.1"

WORKDIR /$APP_NAME
ADD rel/$APP_NAME .

EXPOSE $PORT

CMD trap exit TERM; /$APP_NAME/bin/$APP_NAME foreground & wait
```

## Inspirations and Acknowledgements

* [bitwalker/alpine-elixir-phoenix](http://github.com/bitwalker/alpine-elixir-phoenix)
* [msaraiva/alpine-erlang](http://github.com/msaraiva/alpine-erlang)
* [Dale Ragan](https://github.com/dragan/)

