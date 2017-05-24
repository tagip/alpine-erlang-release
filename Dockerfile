FROM bitwalker/alpine-erlang:6.1

RUN apk update && \
    apk --no-cache --update add libgcc libstdc++ && \
    rm -rf /var/cache/apk/*
