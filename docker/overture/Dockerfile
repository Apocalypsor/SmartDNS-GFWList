FROM --platform=$BUILDPLATFORM alpine

LABEL maintainer="https://github.com/Apocalypsor/Smartdns-GFWList"

ARG TARGETOS
ARG TARGETARCH
ARG VERSION=v1.8
ARG DOWNLOAD_URL=https://github.com/shawn1m/overture/releases/download/${VERSION}/overture-${TARGETOS}-${TARGETARCH}.zip

ENV TZ="Asia/Shanghai"

COPY docker/overture/* /tmp/

RUN apk add --no-cache ca-certificates \
    && wget ${DOWNLOAD_URL} -O overture.zip \
    && mkdir /overture \
    && unzip overture.zip -d /overture \
    && rm -f overture.zip \
    && mv /overture/overture-${TARGETOS}-${TARGETARCH} /overture/overture \
    && mv -f /tmp/china_ip.list /overture/ip_network_primary_sample \
    && mv -f /tmp/overture_gfw_domain.list /overture/domain_alternative_sample \
    && mv -f /tmp/config.yaml /overture/config.yaml

EXPOSE 53535

CMD /overture/overture -v -c /overture/config.yaml
