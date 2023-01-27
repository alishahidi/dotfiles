#!/bin/bash

# Remove TUN interface
ip link delete tun0

# Remove routing table entries
ip route del default dev tun0

# Remove iptables rules
iptables -t nat -D POSTROUTING -o tun0 -j MASQUERADE

# Stop and disable SOCKS proxy
pkill socat

# Stop and disable dnsmasq and remove the config file
systemctl start dnsmasq
rm /etc/dnsmasq.conf

# Restore the original resolv.conf
mv /etc/resolv.conf.original /etc/resolv.conf
