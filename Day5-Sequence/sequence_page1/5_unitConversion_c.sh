#!/bin/bash -x

length=60
breadth=40
conversion_Factor=0.3
length=$(($length*$conversion_Factor))
breadth=$(($breadth*$conversion_Factor))
echo "Rectangular plot of 60feet*40feet in meters:-"$length" meters"*$breadth" meters"
conversion_Factor_metersq_to_Acre=0.000247
No_of_Plot=25
echo "Area of 25 Plot"$(($length*$breadth*$conversion_Factor_metersq_to_Acre))
