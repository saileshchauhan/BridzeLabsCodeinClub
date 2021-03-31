#!/bin/bash/ -x
echo "Enter a power n for 2"
read n
product=1
for (( i=1; i<=n; i++ ))
do
   product=$(($product*2))
   echo "Product  "$product
done
