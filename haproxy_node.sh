#!/bin/bash
set -e -x
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get upgrade -y

apt-get install -y wget

sudo apt-get install -y haproxy

# get & update the proxy config file
wget "https://github.com/7erry/openstack_haproxy/raw/master/haproxy.cfg"

# backup the existing config file
cp /etc/haproxy/haproxy.cfg /etc/haproxy/haproxy.cfg_orig

# insert list of ip addresses to proxy

# insert rule to test ip addresses (check.txt)

# start haproxy

# done
