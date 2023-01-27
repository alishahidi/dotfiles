#!/bin/bash

# Create TUN interface
ip tuntap add dev tun0 mode tun user $USER
ip addr add 10.0.0.1/24 dev tun0
ip link set dev tun0 up

# Redirect all traffic through TUN interface
ip route add default dev tun0
iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE

# Start SOCKS proxy over TUN interface
socat TCP4-LISTEN:1080,fork,reuseaddr SOCKS4A:localhost:10.0.0.1:1080,socksport=2080 &

# Start dnsmasq and configure to use TUN interface and proxy server
systemctl start dnsmasq
echo "server=10.0.0.1#1080" | tee -a /etc/dnsmasq.conf
systemctl restart dnsmasq

# Update system's DNS settings to use dnsmasq
echo "nameserver 127.0.0.1" | tee /etc/resolv.conf

