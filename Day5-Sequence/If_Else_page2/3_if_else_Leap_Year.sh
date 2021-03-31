#!/bin/bash/ -x

echo "Enter Year in YYYY format"
read Year

if [ $(($Year%4)) -eq 0 ] && [ $(($Year%100)) -eq 0 ]
then
	if [ $(($Year%400)) -eq 0 ]
	then
	echo "Entered year is a leap year "$Year
	else
	echo "Entered year is not a leap year "$Year
	fi
elif [ $(($Year%4)) -eq 0 ]
then
echo "Entered year is a leap year "$Year
else
echo "Entered year is a not a leap year "$Year
fi
