#!/bin/bash/
echo "Enter First no. to check for prime no."
read first
echo "Enter Last no. of series              "
read second
a=3
for (( j=$first; j<=$second; j++ ))
do
numberToCheck=$j
if [ $numberToCheck -gt 3 ]
then
numberHalf=$((($numberToCheck)/(2)))
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

elif [ $numberToCheck -eq 2 ]
then
echo "Entered no. is a even Prime no. "$numberToCheck
elif [ $numberToCheck -eq 3 ]
then
echo "Entered no. is a odd Prime no.  "$numberToCheck
fi

if [ $a -eq 0 ]
then
echo "Entered no. is not a prime no.  "$numberToCheck
elif [ $a -eq 1 ]
then
echo "Entered no. is a prime no.      "$numberToCheck
fi
done
