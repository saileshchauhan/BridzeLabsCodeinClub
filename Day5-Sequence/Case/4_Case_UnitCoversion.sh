#!/bin/bash -x

multiply(){
        mul=`echo $1 $2 | awk '{mul=$1*$2;printf "%f",mul}'`;
}

echo "Enter Your Choice:"
echo "	1. Feet to Inch"
echo "	2. Feet to Meter"
echo "	3. Inch to Feet"
echo "	4. Meter to Feet"

read choice
case $choice in
	1)
		echo "Enter length in Feet: "
		read l_feet
		multiply $l_feet 12
		l_inch=$mul
		echo "Length in Inch: "$l_inch
		;;
	2)
		echo "Enter length in Feet: "
      read l_feet
		multiply $l_feet 0.3048
		l_meter=$mul
      echo "Length in Meter: "$l_meter
      ;;
	3)
		echo "Enter length in Inch: "
      read l_inch
		multiply $l_inch 0.08333
		l_feet=$mul
      echo "Length in Feet: "$l_feet
      ;;
	4)
		echo "Enter length in Meter: "
      read l_meter;
		multiply $l_meter 3.28084
		l_feet=$mul
      echo "Length in feet: "$l_feet
      ;;
	*)
		echo "Invalid Input"
		;;
esac
