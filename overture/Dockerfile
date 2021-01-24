FROM --platform=$BUILDPLATFORM alpine

ARG TARGETOS
ARG TARGETARCH

LABEL maintainer="https://github.com/Apocalypsor/Smartdns-GFWList"
ARG VERSION=v1.7-rc4
ARG DOWNLOAD_URL=https://github.com/shawn1m/overture/releases/download/${VERSION}/overture-${TARGETOS}-${TARGETARCH}.zip

ENV TZ="Asia/Shanghai"

COPY overture/* /tmp/

RUN apk add --no-cache ca-certificates \
    && wget ${DOWNLOAD_URL} -O overture.zip \
    && mkdir /overture \
    && unzip overture.zip -d /overture \
    && rm -f overture.zip \
    && mv /overture/overture-${TARGETOS}-${TARGETARCH} /overture/overture \
    && mv -f /tmp/china_ip.list /overture/ip_network_primary_sample \
    && mv -f /tmp/overture_gfw_domain.list /overture/domain_alternative_sample \
    && mv -f /tmp/config.json /overture/config.json

EXPOSE 53535

CMD /overture/overture -v -c /overture/config.json
