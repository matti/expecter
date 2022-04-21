FROM alpine:3.15
ARG BUILDKIT_INLINE_CACHE=1

LABEL org.opencontainers.image.source https://github.com/matti/expecter

RUN apk add --no-cache bash curl

COPY expecter /usr/bin

ENTRYPOINT [ "/usr/bin/expecter" ]