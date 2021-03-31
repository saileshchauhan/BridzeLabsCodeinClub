#!/bin/bash -x
declare -A NUMBER1 NUMBER2 NUMBER3 NUMBER4 NUMBER5 NUMBER6
i=1
while [ ${#NUMBER1[@]} -ne 10 -a ${#NUMBER2[@]} -ne 10 -a ${#NUMBER3[@]} -ne 10 -a ${#NUMBER4[@]} -ne 10 -a ${#NUMBER5[@]} -ne 10 -a ${#NUMBER6[@]} -ne 10 ]
do
	diceRoll=$(($RANDOM%6+1))
	if [ $diceRoll -eq 1 ]
	then
		NUMBER1[(($i))]=$diceRoll
	i=$(($i+1))
	elif [ $diceRoll -eq 2 ]
	then
      NUMBER2[(($i))]=$diceRoll
   i=$(($i+1))
	elif [ $diceRoll -eq 3 ]
	then
		NUMBER3[(($i))]=$diceRoll
	i=$(($i+1))
	 elif [ $diceRoll -eq 4 ]
   then
      NUMBER4[(($i))]=$diceRoll
   i=$(($i+1))
	 elif [ $diceRoll -eq 5 ]
   then
      NUMBER5[(($i))]=$diceRoll
   i=$(($i+1))
	 elif [ $diceRoll -eq 6 ]
   then
      NUMBER6[(($i))]=$diceRoll
   i=$(($i+1))
	fi
done


if [ ${#NUMBER1[@]} -eq 10 ]
then
	echo "Maximum "${#NUMBER1[@]}" times 1 is appearing on DiceRoll"
elif [ ${#NUMBER2[@]} -eq 10 ]
then
   echo "Maximum "${#NUMBER2[@]}" times 2 is appearing on DiceRoll"
elif [ ${#NUMBER3[@]} -eq 10 ]
then
   echo "Maximum "${#NUMBER3[@]}" times 3 is appearing on DiceRoll"
elif [ ${#NUMBER4[@]} -eq 10 ]
then
   echo "Maximum "${#NUMBER4[@]}" times 4 is appearing on DiceRoll"
elif [ ${#NUMBER5[@]} -eq 10 ]
then
   echo "Maximum "${#NUMBER5[@]}" times 5 is appearing on DiceRoll"
elif [ ${#NUMBER6[@]} -eq 10 ]
then
   echo "Maximum "${#NUMBER6[@]}" times 6 is appearing on DiceRoll"
fi

if [ ${#NUMBER1[@]} -lt ${#NUMBER2[@]} -a ${#NUMBER1[@]} -lt ${#NUMBER3[@]} -a ${#NUMBER1[@]} -lt ${#NUMBER4} -a ${#NUMBER1[@]} -lt ${#NUMBER5} ]
then
    min=${#NUMBER1[@]}
elif [ ${#NUMBER2[@]} -lt ${#NUMBER1[@]} -a ${#NUMBER2[@]} -lt ${#NUMBER3[@]} -a ${#NUMBER2[@]} -lt ${#NUMBER4[@]} -a ${#NUMBER2[@]} -lt ${#NUMBER5[@]} ]
then
   min=${#NUMBER2[@]}
elif [ ${#NUMBER3[@]} -lt ${#NUMBER1[@]} -a ${#NUMBER3[@]} -lt ${#NUMBER2[@]} -a ${#NUMBER3[@]} -lt ${#NUMBER4[@]} -a ${#NUMBER3[@]} -lt ${#NUMBER5[@]} ]
then
    min=${#NUMBER3[@]}
elif [ ${#NUMBER4[@]} -lt ${#NUMBER1[@]} -a ${#NUMBER4[@]} -lt ${#NUMBER2[@]} -a ${#NUMBER4[@]} -lt ${#NUMBER3[@]} -a ${#NUMBER4[@]} -lt ${#NUMBER5[@]} ]
then
    min=${#NUMBER4[@]}
else
    min=${#NUMBER5[@]}
fi

if [ $min -eq ${#NUMBER1[@]} ]
then
	echo "Minimum "${#NUMBER1[@]}" times 1 is appearing on DiceRoll"
elif [ $min -eq ${#NUMBER2[@]} ]
then
	echo "Minimum "${#NUMBER3[@]}" times 2 is appearing on DiceRoll"
elif [ $min -eq ${#NUMBER3[@]} ]
then
	echo "Minimum "${#NUMBER3[@]}" times 3 is appearing on DiceRoll"
elif [ $min -eq ${#NUMBER4[@]} ]
then
	echo "Minimum "${#NUMBER4[@]}" times 4 is appearing on DiceRoll"
elif [ $min -eq ${#NUMBER5[@]} ]
then
	echo "Minimum "${#NUMBER5[@]}" times 5 is appearing on DiceRoll"
fi
