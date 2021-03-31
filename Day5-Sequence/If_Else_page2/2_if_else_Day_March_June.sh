#!/bin/bash -x

echo "enter day in DD format"
read a
echo "enter month in MM format"
read b

if [ $a -ge 20 ] && [ $a -le 31 ] && [ $b -ge 3 ] && [ $b -le 6 ]
then
	echo "True"
else
	echo "False"
fi
