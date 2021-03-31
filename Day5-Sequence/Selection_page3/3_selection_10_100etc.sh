#!/bin/bash -x
echo "Enter a no. like 1,10,100etc."
read num
if [ $num -eq 1 ]
then
echo "Unit "$a
elif [ $num -eq 10 ]
then
echo "Tens "$num
elif [ $num -eq 100 ]
then
echo "Hunderds"
else
echo "Invalid Input"
fi


