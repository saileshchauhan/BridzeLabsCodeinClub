#!/bin/bash -x
Digit1=$((10+$RANDOM%89))
Digit2=$((10+$RANDOM%89))
Digit3=$((10+$RANDOM%89))
Digit4=$((10+$RANDOM%89))
Digit5=$((10+$RANDOM%89))

sum=$(($Digit1+$Digit2+$Digit3+$Digit4+$Digit5))
avg=$(($sum/5))

echo "sum   "$sum
echo "avg   "$avg
