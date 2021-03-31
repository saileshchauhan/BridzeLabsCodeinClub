#!/bin/bash/
echo "Enter a no. n"
read n
i=0
product=1
for (( i=1; i<=n; i++ ))
do
	while [ $product -lt 256 ]
	do
	product=$(($product*2))
	echo "Product  "$product
	break
	done
done
