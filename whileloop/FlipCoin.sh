#!/bin/bash -x
#CONTANTS
count=0
index=0
while [ $count -le 11 -o $index -le 11 ]
do
	if [ $count -eq 11 -o $index -eq 11 ]
	then
		break
	else
		number=$((RANDOM%2))
		if [ $number -eq 1 ]
		then
			((count++))
			echo "Head wins $count times"
		else
			((index++))
			echo "Tail wins $index times"
		fi
	fi
done
