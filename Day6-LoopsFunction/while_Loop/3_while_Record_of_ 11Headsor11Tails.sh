#!/bin/bash/ -x
tail=0
head=0
while [ $tail -le 10 -a $head -le 10 ]
do
a=$(($RANDOM%2))
if [ $a -eq 1 ]
then
tail=$(($tail+1))
else
head=$(($head+1))
fi
done
echo "NO, of heads"$head
echo "NO, of tails"$tail
