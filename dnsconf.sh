#!/bin/sh
#dnsconf.sh
#IP=$(ip a s | grep -E -o "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)")
DNS1="nameserver x.x.x.x"
DNS2="nameserver x.x.x.x"
DNS3="nameserver 208.67.222.222"
DNS4="nameserver 208.67.220.220"
SEA1="search your_domain"
SEA2="search your.domain"

if [ $1 = work ]; then

  echo "$DNS1" > /etc/resolv.conf
  echo "$SEA1" >> /etc/resolv.conf

elif [ $1 = home ]; then

  echo "$DNS2" > /etc/resolv.conf  
  echo "$SEA2" >> /etc/resolv.conf

else [ $1 = outside ];

  echo "$DNS3" > /etc/resolv.conf
  echo "$DNS4" >> /etc/resolv.conf

fi 

### Documentation
## https://stackoverflow.com/questions/427979/how-do-you-extract-ip-addresses-from-files-using-a-regex-in-a-linux-shell#427989

