#!/bin/bash -x
read -p "Enter the year" year
if [[ $(($year % 4)) -eq 0 ]]
then
	if [[ $(($year % 100)) -eq 0 ]]
	then
 		if [[ $(($year % 400)) -eq 0 ]]
		then
			 echo "It is leap year"
		else
			  echo "It is not a leap year"
		fi
	else
		 echo "It is a leap year"
	fi
else
	  echo "It is not a leap year"
fi
