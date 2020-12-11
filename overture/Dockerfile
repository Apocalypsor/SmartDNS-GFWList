FROM alpine

LABEL maintainer="https://github.com/Apocalypsor/Smartdns-GFWList"
ARG VERSION=v1.7-rc3
ARG DOWNLOAD_URL=https://github.com/shawn1m/overture/releases/download/${VERSION}/overture-linux-amd64.zip

ENV TZ="Asia/Shanghai"

COPY overture/* /tmp/

RUN apk add --no-cache ca-certificates \
    && wget ${DOWNLOAD_URL} \
    && mkdir /overture \
    && unzip overture-linux-amd64.zip -d /overture \
    && rm -f overture-linux-amd64.zip \
    && mv -f /tmp/china_ip.list /overture/ip_network_primary_sample \
    && mv -f /tmp/overture_gfw_domain.list /overture/domain_alternative_sample \
    && mv -f /tmp/config.json /overture/config.json

EXPOSE 53535

CMD /overture/overture-linux-amd64 -c /overture/config.json

