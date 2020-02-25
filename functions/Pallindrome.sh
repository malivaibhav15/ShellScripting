#!/bin/bash -x
function pallindrome()
{
	reverse=0
	while [ $number -gt 0 ]
	do
   	temp=$(( $number%10 ))
   	reverse=$(( $(($reverse*10))+$temp ))
		number=$(( $number/10 ))
	done
	if [ $num -eq $reverse ]
	then
		echo "Given number is palllindrome"
	else
		echo "Given number is not palllindrome"
	fi
}
read -p "Enter the number=" number
num=$number
pallindrome
