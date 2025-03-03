FROM alpine

LABEL maintainer="https://github.com/Apocalypsor/Smartdns-GFWList"

ARG VERSION=Release46.1

COPY docker/smartdns/smartdns.conf /conf/

RUN apk add --no-cache curl \
    && curl -sSL https://github.com/pymumu/smartdns/releases/download/$VERSION/smartdns-x86_64 -o /bin/smartdns \
    && chmod +x /bin/smartdns \
    && rm -rf smartdns* \
    && chmod 755 /conf/smartdns.conf

EXPOSE 53535

ENTRYPOINT /bin/smartdns -xf -c /conf/smartdns.conf
