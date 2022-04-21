FROM alpine:3.15
LABEL org.opencontainers.image.source https://github.com/matti/expecter

RUN apk add --no-cache bash curl

COPY expecter /usr/bin

ENTRYPOINT [ "/usr/bin/expecter" ]