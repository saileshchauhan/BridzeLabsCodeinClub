#!/bin/bash -x

#FUNCTIONS
function degcToDegf() {
	local degC=$1
	local degF=0
	if [ $degC -ge 0 -a $degC -le 100 ]
	then
		degF=`echo $degC | awk '{outP=($1*(9/5))+32; printf "%f",outP}'`
		echo $degF
	else
		echo "Invalid Input"
	fi
}

function degfToDegc() {
	local degF=$1
	local degC=0
	if [ $degF -ge 32 -a $degF -le 212 ]
	then
		temp=$(($degF - 32))
		degC=`echo $temp | awk '{outP=$1*(5/9); printf "%f",outP}'`
		echo $degC
	else
		echo "Invalid Input"
	fi
}

#MAIN EXECUTION
echo -e "Enter Your Choice\n1. Celcieus to Farenhieat\n2. Farenhieat to Celcieus"
read choice
case $choice in
	1)
		echo "Enter temp in Celcieus: "
		read degC
		degF=$( degcToDegf $degC )
		echo $degF
		;;
	2)
		echo "Enter temp in Farenhieat: "
      read degF
      degC=$( degfToDegc $degF )
      echo $degC
                ;;
	*)
		echo "Invalid Input !"
		;;
esac
