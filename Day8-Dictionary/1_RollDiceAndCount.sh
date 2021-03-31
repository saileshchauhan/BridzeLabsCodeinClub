#!/bin/bash -x

declare -A diceRoll

#DECLARATION
for ((count=1; count<=6; count++))
do
	diceRoll[$count]=0
done
maxVar=0
minVar=0

#ROLLING AND INCREMENT
while [ $maxVar -ne 10 ]
do
	result=$((RANDOM % 6 + 1))
	diceRoll[$result]=$((${diceRoll[${result}]} + 1))
	maxVar=`printf '%s\n' "${diceRoll[@]}" | sort -nr | head -1`
	minVar=`printf '%s\n' "${diceRoll[@]}" | sort -n | head -1`
done

#DISPLAY
for i in ${!diceRoll[@]}
do
	if [ "${diceRoll[$i]}" -eq $maxVar ]
	then
		echo "Max rolls are of "$i
	elif [ "${diceRoll[$i]}" -eq $minVar ]
	then
		echo "Min rolls are of "$i
	fi
done
echo ${diceRoll[@]}
echo ${!diceRoll[@]}
