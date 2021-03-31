#!/bin/bash/
cash=100
goal=200
countLoose=0
countWin=0
bet=1
while [ $cash -lt 200 -a $cash -ge $bet ]
do
	check=$(($RANDOM%2))
	if [ $check -eq 0 ]
	then
		cash=$(($cash-$bet))
		countLoose=$(($countLoose+1))
	else
		cash=$(($cash+$bet))
		countWin=$(($countWin+1))
	fi
done
echo "No of times won "$countWin
echo "No of times bet made "$(($countWin+$countLoose))
echo "cash "$cash

