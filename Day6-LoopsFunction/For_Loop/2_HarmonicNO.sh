#!/bin/bash -x

echo "Enter range :"
read range
harmonicNum=0
for ((denominator=1; denominator<=$range; denominator++))
do
	harmonicNum=`echo 1 $denominator $harmonicNum | awk '{div=$1/$2; newN=$3+div; printf "%f",newN}'`;
done
echo "Harmonic Number till $range is $harmonicNum";
