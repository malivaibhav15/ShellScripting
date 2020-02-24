#!/bin/bash -x
sum=1
read -p "Enter the value of power=" power
#Calculation of the power
for (( counter=0;counter<power;counter++ ))
do
	sum=$(($sum*2))
done
echo "Result="$sum
