#!/bin/bash

for (( i = 1; i <= 10; i++))
do
echo $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 1000 ; echo '') > /root/playtika/$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10 ; echo '')_$i.txt
done

exit 0
