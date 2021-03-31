#!/bin/bash -x

echo "Enter size of array greater than 3: "
read n

for((count=0; count<n; count++))
do
echo "Enter $count th element: "
read arr[count]
done

flag=0
for ((i=0; i<n-2; i++))
do
	for ((j=i+1; j<n-1; j++))
	do
		for ((k=j+1; k<n; k++))
		do
			if [ $((${arr[i]} + ${arr[j]} + ${arr[k]})) -eq 0 ]
			then
				echo "Tripletes with sum 0: "${arr[i]}" "${arr[j]}" "${arr[k]}
				flag=1
			fi
		done
	done
done

if [ $flag -eq 0 ]
then
	echo "No Elements Found !"
fi
