FROM alpine:3.15
RUN apk add --no-cache bash curl

COPY expecter /usr/bin

ENTRYPOINT [ "/usr/bin/expecter" ]