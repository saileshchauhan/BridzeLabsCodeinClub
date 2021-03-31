#!/bin/bash/ -x

echo "Enter a no. to check for prime no."
read numberToCheck
if [ $numberToCheck -ne 2 -a $numberToCheck -ne 3 ]
then
numberHalf=$((($numberToCheck)/(2)))
echo $numberHalf
for (( i=2; i<=$numberHalf; i++ ))
do
	a=$((($numberToCheck)%($i)))
	if [ $a -eq 1 ]
	then
	continue
	elif [ $a -eq 0 ]
	then
	break
	fi
done

if [ $a -eq 0 ]
then
echo "Entered no. is not a prime no. "$numberToCheck
elif [ $a -eq 1 ]
then
echo "Entered no. is a prime no.     "$numberToCheck
fi
elif [ $numberToCheck -eq 2 ]
then
echo "Entered no. is a even Prime no. "$numberToCheck
else
echo "Entered no. is a odd Prime no.  "$numberToCheck
fi
