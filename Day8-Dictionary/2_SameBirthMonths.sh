#!/bin/bash

declare -A people

for ((count=1; count<=50; count++))
do
	month=$((RANDOM % 12 + 1))
	people[$count]=$month
done

for i in ${!people[@]}
do
	num=${people[$i]}
	case $num in
		1)
                        monthJan[ct1++]=$i
                        ;;
                2)
                        monthFeb[ct2++]=$i
                        ;;
                3)
                        monthMar[ct3++]=$i
                        ;;
                4)
                        monthApr[ct4++]=$i
                        ;;
                5)
                        monthMay[ct5++]=$i
                        ;;
                6)
                        monthJun[ct6++]=$i
                        ;;
                7)
                        monthJul[ct7++]=$i
                        ;;
                8)
                        monthAug[ct8++]=$i
                        ;;
                9)
                        monthSep[ct9++]=$i
                        ;;
                10)
                        monthOct[ct10++]=$i
                        ;;
                11)
                        monthNov[ct11++]=$i
                        ;;
                12)
                        monthDec[ct12++]=$i
                        ;;
	esac
done

echo -e "People born in January are "${monthJan[@]}"\n"
echo -e "People born in February are "${monthFeb[@]}"\n"
echo -e "People born in March are "${monthMar[@]}"\n"
echo -e "People born in April are "${monthApr[@]}"\n"
echo -e "People born in May are "${monthMay[@]}"\n"
echo -e "People born in June are "${monthJun[@]}"\n"
echo -e "People born in July are "${monthJul[@]}"\n"
echo -e "People born in August are "${monthAug[@]}"\n"
echo -e "People born in September are "${monthSep[@]}"\n"
echo -e "People born in October are "${monthOct[@]}"\n"
echo -e "People born in November are "${monthNov[@]}"\n"
echo -e "People born in December are "${monthDec[@]}"\n"
