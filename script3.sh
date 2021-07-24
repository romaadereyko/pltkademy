#!/bin/bash

total_memory=$(free | grep Mem | awk {'print $2'})
echo "Total memory = $total_memory" > /root/playtika/SRV_info.txt

total_disk=$(fdisk -l | head -n 1 | awk {'print $3 $4'})
echo "Total disk = $total_disk" >> /root/playtika/SRV_info.txt

total_cpu_cores=$(cat /proc/cpuinfo | grep processor | wc | awk {'print $1'})
echo "Total cpu cores = $total_cpu_cores" >> /root/playtika/SRV_info.txt

name=$(hostname)
echo "Server name is $name" >> /root/playtika/SRV_info.txt


exit 0
