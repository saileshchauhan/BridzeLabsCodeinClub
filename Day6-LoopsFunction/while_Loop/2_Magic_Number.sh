#!/bin/bash

echo "Enter Number between 1 to 100:"
read number
var=1
min=0
max=100
mid=$(($(($max+$min))/2))
while [ $min -le $max ]
do
	if [ $mid -eq $number ]
	then
		echo "Number Found !!!"
		break
	fi
	echo "What is it than $mid 1. Greater 2. Lesser"
	read choice
	case $choice in
		1)
			min=$(($mid+1))
			;;
		2)
			max=$(($mid-1))
			;;
		*)
			echo "Invalid"
			;;
	esac
	mid=$(($(($max+$min))/2));
done
