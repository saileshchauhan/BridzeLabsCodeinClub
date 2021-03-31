#!/bin/bash -x
a=$(($RANDOM%899+100))
b=$(($RANDOM%899+100))
c=$(($RANDOM%899+100))
d=$(($RANDOM%899+100))
e=$(($RANDOM%899+100))
if [ $a -gt $b -a $a -gt $c -a $a -gt $d -a $a -gt $e ]
then
    max=$a
elif [ $b -gt $a -a $b -gt $c -a $b -gt $d -a $b -gt $e ]
then
   max=$b
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d -a $c -gt $e ]
then
    max=$c
elif [ $d -gt $a -a $d -gt $b -a $d -gt $c -a $d -gt $e ]
then
    max=$d
else
    max=$e
fi
echo "Maximum of 5 Random 3 Digits "$max

if [ $a -lt $b -a $a -lt $c -a $a -lt $d -a $a -lt $e ]
then
    min=$a
elif [ $b -lt $a -a $b -lt $c -a $b -lt $d -a $b -lt $e ]
then
   min=$b
elif [ $c -lt $a -a $c -lt $b -a $c -lt $d -a $c -lt $e ]
then
    min=$c
elif [ $d -lt $a -a $d -lt $b -a $d -lt $c -a $d -lt $e ]
then
    min=$d
else
    min=$e
fi
echo "Maximum of 5 Random 3 Digits "$min
