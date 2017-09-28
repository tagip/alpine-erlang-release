FROM bitwalker/alpine-erlang:19.3

RUN echo "
http://dl-1.alpinelinux.org/alpine/v3.6/main
http://dl-2.alpinelinux.org/alpine/v3.6/main
http://dl-3.alpinelinux.org/alpine/v3.6/main
http://dl-4.alpinelinux.org/alpine/v3.6/main
http://dl-5.alpinelinux.org/alpine/v3.6/main" >> /etc/apk/repositories && \
    apk update && \
    apk --no-cache --update add libgcc libstdc++ bash && \
    rm -rf /var/cache/apk/*
