#!/bin/bash
#Refer: http://www.linuxfoundation.org/collaborate/workgroups/networking/netem#Delaying_only_some_traffic
#Refer: http://www.bomisofmab.com/blog/?p=100
#Refer: http://drija.com/linux/41983/simulating-a-low-bandwidth-high-latency-network-connection-on-linux/
#Setup the rate control and delay
sudo tc qdisc add dev $1 root handle 1: htb default 12
sudo tc class add dev $1 parent 1:1 classid 1:12 htb rate 56kbps ceil 128kbps
sudo tc qdisc add dev $1 parent 1:12 netem delay 4200ms