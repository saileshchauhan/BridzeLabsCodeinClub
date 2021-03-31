#!/bin/bash -x

echo "Enter number: "
read num
case $num in
	1)
		echo "Unit";
		;;
        10)
                echo "Ten";
                ;;
        100)
                echo "Hundred";
                ;;
        1000)
                echo "Thousand";
                ;;
        10000)
                echo "Ten Thousand";
                ;;
        1000000)
                echo "Lakh";
                ;;
        10000000)
             	 echo "Ten Lakh";
					 ;;
	*)
		echo "Invalid";
		;;
esac
