# GFWList for Smartdns
## Usage:
1. Download Conf: 
```
curl https://cdn.jsdelivr.net/gh/Apocalypsor/Smartdns-GFWList/smartdns_gfw_domain.conf > /etc/smartdns/smartdns_gfw_domain.conf
```

2. Add it to your smartdns configuration:
```
conf-file /etc/smartdns/smartdns_gfw_domain.conf
```

## Source:
+ gfwlist: https://github.com/gfwlist/gfwlist
+ Koolshare: https://github.com/hq450/fancyss

# Docker for [Overture](https://github.com/shawn1m/overture)

GFW List and China IP List as well as overture wil; be automatically updated!

## Usage:
1. Download `docker-compose.yaml`
+ For Chinese users:
```
curl https://cdn.jsdelivr.net/gh/Apocalypsor/Smartdns-GFWList/overture/docker-compose-cn.yaml > docker-compose.yaml
```
+ For overseas users:
```
curl https://cdn.jsdelivr.net/gh/Apocalypsor/Smartdns-GFWList/overture/docker-compose.yaml > docker-compose.yaml
```

2. Modify `docker-compose.yaml`: referring to the file comment

3. Run Docker (Running at `:53535` by default)
```
docker-compose up -d
```

## Upstream
1. Download `docker-compose.yaml`
```
curl https://cdn.jsdelivr.net/gh/Apocalypsor/Smartdns-GFWList/overture/upstream.yaml > docker-compose.yaml
```
2. Run Docker (Running at `:53535` by default)
```
docker-compose up -d
```

## (Recommend) Automatically update Docker images
```
docker run -d \
    --name watchtower \
    --restart unless-stopped \
    -e TZ=Asia/Shanghai \
    -v /var/run/docker.sock:/var/run/docker.sock \
    containrrr/watchtower -c \
    --schedule "0 0 2 * * *"
```

## Source:
+ China IP: [gaoyifan/china-operator-ip](https://github.com/gaoyifan/china-operator-ip)
