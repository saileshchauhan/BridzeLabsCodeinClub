#!/bin/bash -x

function secondLargest() {
	n=${#array[@]}
	local first=0
	local second=0
	for ((count=0; count<10; count++))
	do
		local temp=${array[count]}
		if [ $temp -gt $first ]
		then
			second=$first
			first=$temp
		elif [ $temp -gt $second -a $temp -ne $first ]
		then
			second=$temp
		fi
	done
	echo $second
}

function secondSmallest() {
	n=${#array[@]}
	local first=1000
	local second=1000
	for ((count=0; count<10; count++))
	do
		local temp=${array[count]}
		if [ $temp -lt $first ]
		then
			second=$first
			first=$temp
		elif [ $temp -lt $second -a $temp -ne $first ]
		then
			second=$temp
		fi
	done
	echo $second
}

for ((count=0; count<10; count++))
do
	array[count]=$((RANDOM % 900 + 100))
done
secondMax="$( secondLargest ${array[@]} )"
secondMin="$( secondSmallest ${array[@]})"
echo "Second Smallest: "$secondMin
echo "Second Largest: "$secondMax
