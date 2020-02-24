#!/bin/bash -x
echo "Enter #3 for march #4 for april #5 for may #6 for june"
read -p "Enter the month=" month
read -p "Enter the day=" day
if [ $month -eq 3 -a $day -ge 20 -a $day -le 31 ]
then
	echo "True"
elif [ $month -eq 4 -a $day -ge 1 -a $day -le 30 ]
then
   echo "True"
elif [ $month -eq 5 -a $day -ge 1 -a $day -le 31 ]
then
   echo "True"
elif [ $month -eq 6 -a $day -ge 1 -a $day -le 20 ]
then
   echo "True"
else
	echo "False"
fi
