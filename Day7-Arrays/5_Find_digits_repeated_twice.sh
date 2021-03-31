#!/bin/bash -x

echo "Enter range between 0-100"
read -p "Start: " min
read -p "End: " max
elementCount=0
for ((count=min; count<=max; count++))
do
	temp=$count
	unitPlace=$((temp % 10))
	tensPlace=$((temp / 10))
	if [ $unitPlace -eq $tensPlace ]
	then
		arr[elementCount++]=$count
	fi
done
echo ${arr[@]}
