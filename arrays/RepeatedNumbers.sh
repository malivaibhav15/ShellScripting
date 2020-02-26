#!/bin/bash -x
declare -a Array
#Variables
number=11
counter=0
#Generating numbers from 1 to 100
while [[ $number -lt 100 ]]
do
	num=$number
	first=$(($num%10))
	num=$(($num/10))
#Checking reprated numbers
	if [[ $num -eq $first ]]
	then
#Storing the number in an array
		Array[counter]=$number
		((counter++))
	fi
	((number++))
done
#Dislpay an array
echo "Repeated numbers in an array={${Array[@]}}"
