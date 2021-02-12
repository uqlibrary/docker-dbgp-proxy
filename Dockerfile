FROM uqlibrary/alpine:3.13.1

RUN apk add --update --no-cache libc6-compat \
    && wget -O /usr/bin/dbgpProxy https://xdebug.org/files/binaries/dbgpProxy \
    && chmod 755 /usr/bin/dbgpProxy

CMD /usr/bin/dbgpProxy --server 0.0.0.0:9000 --client 0.0.0.0:9001

EXPOSE 9000 9001
