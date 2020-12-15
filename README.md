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

3. Run Docker:
```
docker-compose up -d
```

## Source:
+ China IP: https://github.com/gaoyifan/china-operator-ipt
