#!/bin/bash/ -x
declare -A store
count=0
for (( i=1; i<=50; i++ ))
do
	month=$(($RANDOM%12+1))
	store[(($i))]=$month
done
echo ${store[@]}

for (( j=1; j<=50; j++ ))
do
	for j in ${!store[@]}
	do
	temp1=${store[${j}]}
	for (( k=j+1; k<=50; k++ ))
	do
	for k in ${!store[@]}
	do
	temp2=${store[${k}]}
	if [ $temp1 -eq $temp2 ]
	then
		arr[count++]=$k
	fi
	done
	done
	done
echo "Total Person born in Month-> "$temp1=${arr[@]}
done

