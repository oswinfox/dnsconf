## dnsconf.sh

An attempt to solve the DNS issue with Ubuntu 18.04. 

I had some issue with DNS masq and the file _/etc/resolv.conf_. After follow lot of discussion and fix that works @ half. I decided
to make this script to solve my issue. 

## run 

sudo dnsconf.sh work

or 

sudo dnsconf.sh home

or 

sudo dnsconf.sh outside


**NOTE:** It need to get sudo rights because it writes the file _/etc/resolv.conf_ and this file depends of **root** user. 

## customize

###  DNS

Here you can change to customize the script as you need it to work. DNS1 is for work, DNS2 for home and DNS 3 & 4 for outside. 

<pre>
DNS1="nameserver X.X.X.X"
DNS2="nameserver X.X.X.X"
DNS3="nameserver 208.67.222.222"
DNS4="nameserver 208.67.220.220"
</pre>

### SEARCH

Here add custom domain for resolving purpose.

<pre>
SEA1="search your_domain"
SEA2="search your.domain"
</pre>
