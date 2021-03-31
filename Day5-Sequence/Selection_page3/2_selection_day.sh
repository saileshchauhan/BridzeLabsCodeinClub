#!/bin/bash -x

echo "Enter a day no. between 1 to 7 "
read dayNum
if [ $dayNum -eq 1 ]
then
echo "Monday "$dayNum
elif [ $dayNum -eq 2 ]
then
echo "Tuesday "$dayNum
elif [ $dayNum -eq 3 ]
then
echo "Wednesday "$dayNum
elif [ $dayNum -eq 4 ]
then
echo "Thrusday "$dayNum
elif [ $dayNum -eq 5 ]
then
echo "Friday "$dayNum
elif [ $dayNum -eq 6 ]
then
echo "Saturday "$dayNum
elif [ $dayNum -eq 7 ]
then
echo "Sunday "$dayNum
fi

