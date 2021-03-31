#!/bin/bash -x
Dice1=$(($RANDOM%6+1))
	echo "Dice 1 output       "$Dice1
Dice2=$(($RANDOM%6+1))
	echo "Dice 2 output       "$Dice2
sum=$(($Dice1+$Dice2))
	echo "Sum of dice output  "$sum

