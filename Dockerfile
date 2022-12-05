FROM alpine:latest

LABEL maintainer="Ming <ming@gmail.com>" \
  org.label-schema.name="Drone Workshop" \
  org.label-schema.vendor="Ming" \
  org.label-schema.schema-version="1.0"

RUN apk add --no-cache ca-certificates && \
  rm -rf /var/cache/apk/*

ADD release/linux/i386/helloworld /bin/

ENTRYPOINT ["/bin/helloworld"]