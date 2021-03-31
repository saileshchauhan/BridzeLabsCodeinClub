#!/bin/bash -x

a=12
echo "Enter measure in inch "
read Ino
fno=$(($Ino/$a))
echo "measurement is" $fno "feet"
