#!/bin/bash -x
function palindrome() {
	num=$1
	temp=0
	rev=0
	while [ $num -ne 0 ]
	do
		temp=$((num % 10))
		rev=$((rev * 10 + $temp))
		num=$((num/10))
	done
	echo $rev
}

function checkPrime() {
	num=$1
	flag=0
	for ((count=2; count<=$((num/2)); count++))
	do
		if [ $((num % count)) -eq 0 ]
		then
			echo 0
			break
		else
			flag=1
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo 1
	fi
}

echo "Enter a number: "
read num
palNum=0
if [ "$( checkPrime $num )" -eq 1 ]
then
	palNum="$( palindrome $num )"
	if [ "$( checkPrime $palNum )" -eq 1 ]
	then
		echo "$num and its palindrome $palNum both are prime !"
	else
		echo "$num is prime but its palindrome $palNum is not prime !"
	fi
else
	echo "$num is not prime !"
fi




