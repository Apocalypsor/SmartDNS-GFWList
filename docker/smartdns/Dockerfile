FROM alpine

LABEL maintainer="https://github.com/Apocalypsor/Smartdns-GFWList"

ARG VERSION=Release33

COPY docker/smartdns/smartdns.conf /conf/

RUN apk add --no-cache curl \
    && curl -sSL https://apix.vercel.app/github/pymumu/smartdns/%5esmartdns.*.x86_64-linux-all.tar.gz -o smartdns.tar.gz \
    && tar zxvf smartdns.tar.gz \
    && mv smartdns/usr/sbin/smartdns /bin/smartdns \
    && chmod +x /bin/smartdns \
    && rm -rf smartdns* \
    && chmod 755 /conf/smartdns.conf

EXPOSE 53535

ENTRYPOINT /bin/smartdns -xf -c /conf/smartdns.conf