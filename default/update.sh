# GFW List
curl -sS https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt | \
    base64 -d | sort -u | sed '/^$\|@@/d'| sed 's#!.\+##; s#|##g; s#@##g; s#http:\/\/##; s#https:\/\/##;' | \
    sed '/apple\.com/d; /sina\.cn/d; /sina\.com\.cn/d; /baidu\.com/d; /qq\.com/d' | \
    sed '/^[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+$/d' | grep '^[0-9a-zA-Z\.-]\+$' | \
    grep '\.' | sed 's#^\.\+##' | sort -u > /tmp/temp_gfwlist1

curl -sS https://raw.githubusercontent.com/hq450/fancyss/master/rules/gfwlist.conf | \
    sed 's/ipset=\/\.//g; s/\/gfwlist//g; /^server/d' > /tmp/temp_gfwlist2

curl -sS https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt > /tmp/temp_gfwlist3

cat /tmp/temp_gfwlist1 /tmp/temp_gfwlist2 /tmp/temp_gfwlist3 default/extra.conf | \
    sort -u | sed 's/^\.*//g' > /tmp/temp_gfwlist

# Update SmartDNS GFW List

cat /tmp/temp_gfwlist | sed 's/^/\./g' > /tmp/smartdns_gfw_domain.conf

sed -i 's/^/nameserver \//' /tmp/smartdns_gfw_domain.conf
sed -i 's/$/\/GFW/' /tmp/smartdns_gfw_domain.conf
cat default/gfw_group.conf /tmp/smartdns_gfw_domain.conf > smartdns_gfw_domain.conf

# Update Overture GFW List

cp -f /tmp/temp_gfwlist docker/overture/overture_gfw_domain.list

# Update China List

curl -sSL https://raw.githubusercontent.com/17mon/china_ip_list/master/china_ip_list.txt > /tmp/china_ipv4.list
curl -sSL https://bgp.space/china6.html | grep "^[0-9a-z:\/]*<br>" | sed "s/<br>//g" > /tmp/china_ipv6.list
echo > /tmp/line
cat /tmp/china_ipv4.list /tmp/line /tmp/china_ipv6.list > docker/overture/china_ip.list
