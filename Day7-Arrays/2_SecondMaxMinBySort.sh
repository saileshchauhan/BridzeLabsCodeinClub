#!/bin/bash -x

for ((count=0; count<10; count++))
do
	arr[count]=$((RANDOM % 900 + 100))
done

secondLargest=$(printf '%s\n' "${arr[@]}" | sort -n | tail -2 | head -1)
secondSmallest=$(printf '%s\n' "${arr[@]}" | sort -nr | tail -2 | head -1)

echo "Second Largest: "$secondLargest
echo "Second Smallest: "$secondSmallest
