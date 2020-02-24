#!/bin/bash -x
read -p "Enter the day" d
read -p "Enter the month" m
read -p "Enter the year" y
#calculation to find day of the week
a=$(($y-(14-m)/12))
x=$(($a+$a/4-$a/100+$a/400))
b=$(($m+12*((14-$m)/12)-2))
day=$((($d+$x+(31*$b)/12)%7))
echo $day
echo "0.Sunday 1.Monday 2.Tuesday 3.Wednesday 4.Thursday 5.Friday 6.Saturday"
