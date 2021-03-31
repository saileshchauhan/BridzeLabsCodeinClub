#!/bin/bash -x

length=60
breadth=40
conversion_Factor=0.3
length=$(($length*$conversion_Factor))
breadth=$(($breadth*$conversion_Factor))
echo "Rectangular plot of 60feet*40feet in meters:-"$length" meters"*$breadth" meters"
