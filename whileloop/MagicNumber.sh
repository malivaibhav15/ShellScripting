#!/bin/bash -x
#CONSTANTS
first=0
last=100
read -p "Enter the number=" number
mid=$(( $(($first+$last))/2 ))
while [ $first -lt $last ]
do
	if [ $number -lt $mid ]
	then
		last=$(( $mid-1 ))
	elif [ $number -gt $mid ]
	then
		first=$(( $mid+1 ))
	else
		echo "Your magic number=$number"
		break
	fi
mid=$(( $(($first+$last))/2 ))
done
