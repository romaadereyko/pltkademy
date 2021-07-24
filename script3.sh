#!/bin/bash

echo "Total memory = $(free | grep Mem | awk {'print $2'})" > /root/playtika/SRV_info.txt

echo "Total disk = $(fdisk -l | head -n 1 | awk {'print $3 $4'})" >> /root/playtika/SRV_info.txt

echo "Total cpu cores = $(cat /proc/cpuinfo | grep processor | wc | awk {'print $1'})" >> /root/playtika/SRV_info.txt

echo "Server name is $(hostname)" >> /root/playtika/SRV_info.txt

exit 0
