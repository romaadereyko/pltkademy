#!/bin/bash

name=nginx
domain=com

for (( i = 1; i <= 100; i++))
do
echo "$name-$i.#domain" > /root/playtika/$name-$i.$domain
done

exit 0
