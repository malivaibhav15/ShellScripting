#!/bin/bash -x
#Taking user input
read -p "Enter the number=" number
counter=0
#Finding prime factors and storing it into an array
while [[ $(($number%2)) -eq 0 ]]
do
	factor[((counter++))]=2
	number=$(($number/2))
done
for (( index=3;index<=$number;index=$(($index+2)) ))
do
	while (( $number%$index==0 ))
	do
		factor[((counter++))]=$index
		number=$(($number/$index))
	done
done
#printing of an array
echo "Prime factors are={${factor[@]}}"
