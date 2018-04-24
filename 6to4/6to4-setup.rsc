/interface 6to4
add name=6to4-tunnel1 local-address=123.45.67.89 remote-address=192.88.99.1 disabled=no
######     Check ipv6 address 		#######
#https://debian6to4.gielen.name/index.php #
###### 								#######
/ipv6 address
add address=2002:xxxx:xxxx::1/48 interface=6to4-tunnel1 advertise=no
add address=2002:xxxx:xxxx:1::1/64 interface=bridge-local

/ipv6 route
add distance=1 dst-address=2000::/3 gateway=6to4-tunnel1

/routing ospf-v3 instance
set [ find default=yes ] redistribute-connected=as-type-1 redistribute-static=as-type-1
/routing ospf-v3 interface
add area=backbone


# windows renew address
ipconfig /release
ipconfig /renew 
ipconfig /flushdns

# fast dns https://1.1.1.1/

For IPv4: 1.1.1.1 and 1.0.0.1
For IPv6: 2606:4700:4700::1111 and 2606:4700:4700::1001

# Test sites http://ipv6-test.com/