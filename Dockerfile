# 'openssl' package as a Docker image.
#
# Check the source repository:
# https://github.com/MGBI/docker-openssl-certs

FROM alpine

RUN apk --update add openssl

WORKDIR /certs

COPY generate-certs /usr/local/bin/generate-certs

CMD /usr/local/bin/generate-certs

VOLUME /certs