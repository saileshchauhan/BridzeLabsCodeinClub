#!/bin/bash/ -x

echo "Enter a number for Factorial"
read num

y=1

for (( i=2; i<=num; i++ ))
do
	y=$((y*i));
done
echo "Factorial "$y
