# 'openssl' package as a Docker image.
#
# Check the source repository:
# https://github.com/MGBI/docker-openssl-certs

FROM alpine

RUN apk --no-cache add --update bash openssl

WORKDIR /certs

COPY generate-certs /usr/local/bin/generate-certs

CMD generate-certs

VOLUME /certs