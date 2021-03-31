#!/bin/bash -x

function checkPalindrome() {
	local number1=$1
	local number2=$2
	while [ $number1 -ne 0 ]
	do
		temp2=$(($number1 % 10))
		local rev=$((rev * 10 + $temp2))
		number1=$((number1/10))
	done
	if [ $rev -eq $number2 ]
	then
		echo "Palindrome Numbers !!!"
	else
		

echo "Not Palindrome Numbers !!!"
	fi
}

echo "Enter two numbers: "
read num1
read num2
result="$( checkPalindrome $num1 $num2 )"
echo $result
