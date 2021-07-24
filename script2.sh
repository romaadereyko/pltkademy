#!/bin/bash

for (( i = 1; i <= 10; i++))
do
touch /root/playtika/$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 1000 ; echo '').txt
done

exit 0
