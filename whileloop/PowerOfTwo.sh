#!/bin/bash -x
#CONSTNTS
power=1
count=1
read -p "Enter the number=" number
while [ $count -le $number ]
do
	power=$(($power*2))
	if [ $power -le 256 ]
	then
		echo $power
	else
		break
	fi
	((count++))
done
