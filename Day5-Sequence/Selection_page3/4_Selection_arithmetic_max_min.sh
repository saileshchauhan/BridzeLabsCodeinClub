#!/bin/bash -x
echo "enter number 1 "
read num1
echo "enter number 2 "
read num2
echo "enter number 3 "
read num3

cal1=$(($g+$h*$i))
cal2=$(($g%$h+$i))
cal3=$(($g+$h/$i))
cal4=$(($g*$h+$i))

if [ $cal1 -lt $cal2 -a $cal1 -lt $cal3 -a $cal1 -lt $cal4 ]
then
    min=$cal1
elif [ $cal2 -lt $cal1 -a $cal2 -lt $cal3 -a $cal2 -lt $cal4 ]
then
   min=$cal2
elif [ $cal3 -lt $cal1 -a $cal3 -lt $cal2 -a $cal3 -lt $cal4 ]
then
    min=$cal3
else
	min=$cal4
fi
echo "Minimum of 4 arithmetic problems "$min


if [ $cal1 -gt $cal2 -a $cal1 -gt $cal3 -a $cal1 -gt $cal4 ]
then
    max=$cal1
elif [ $cal2 -gt $cal1 -a $cal2 -gt $cal3 -a $cal2 -gt $cal4 ]
then
   max=$cal2
elif [ $cal3 -gt $cal1 -a $cal3 -gt $cal2 -a $cal3 -gt $cal4 ]
then
    max=$cal3
else
	max=$cal4
fi
echo "Maximum of 4 arithmetic problems "$max


