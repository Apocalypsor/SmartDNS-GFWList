# GFWList for Smartdns

## Usage:
1. Download Conf: 
```
curl https://raw.dov.moe/Apocalypsor/Smartdns-GFWList/master/smartdns_gfw_domain.conf > /etc/smartdns/smartdns_gfw_domain.conf
```

2. Add it to your smartdns configuration:
```
conf-file /etc/smartdns/smartdns_gfw_domain.conf
```

---



# Docker for [Overture](https://github.com/shawn1m/overture)

GFW List and China IP List as well as Overture will be automatically updated!

## Usage:
1. Download `docker-compose.yaml`
+ For Chinese users:
```
curl https://raw.dov.moe/Apocalypsor/SmartDNS-GFWList/master/docker/docker-compose-cn.yaml > docker-compose.yaml
```
+ For overseas users:
```
curl https://raw.githubusercontent.com/Apocalypsor/SmartDNS-GFWList/master/docker/docker-compose.yaml > docker-compose.yaml
```

2. Modify `docker-compose.yaml`: referring to the file comment

3. Run Docker (Running at `:53535` by default)
```
docker-compose up -d
```

## Upstream
1. Download `docker-compose.yaml`
```
curl https://raw.githubusercontent.com/Apocalypsor/SmartDNS-GFWList/master/docker/upstream.yaml > docker-compose.yaml
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
    --schedule "0 0 5 * * *"
```

---

## Source:
+ GFW List:
   + [gfwlist](https://github.com/gfwlist/gfwlist)
   + [Koolshare](https://github.com/hq450/fancyss)
   + [v2ray-rules-dat](https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt)
   
+ China IP

   * China IPv4: [IPIP](https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt)

   * China IPv6: [bgp.space](https://bgp.space/)
