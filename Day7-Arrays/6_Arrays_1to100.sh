#!/bin/bash -x
echo "Enter num1"
read i
echo "Enter num2"
read n
store=0
for (( i; i<=n; i++ ))
do
	N1=$i
	rev=0
	while [ $N1 -ne 0 ]
	do
		temp=$(($N1%10))
		rev=$(($(($rev*10))+$temp))
	N1=$(($N1/10))
	done
if [ $rev -eq $i ]
then
	if [ $rev -ge 11 ]
	then
	arr[store++]=$rev
	fi
fi
done

echo ${arr[@]}
