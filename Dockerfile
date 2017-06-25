FROM alpine:latest
MAINTAINER Antonio Masucci <eng.masucci@gmail.com>

ADD https://github.com/gohugoio/hugo/releases/download/v0.24.1/hugo_0.24.1_Linux-64bit.tar.gz /tmp/hugo.tar.gz

RUN apk update && apk upgrade && \
    apk add --no-cache git openssh

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 80
