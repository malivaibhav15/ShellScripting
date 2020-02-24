#!/bin/bash -x
number1=$((($RANDOM % 90)+10))
echo "First Random Number="$number1
number2=$((($RANDOM % 90)+10))
echo "Second Random Number="$number2
number3=$((($RANDOM % 90)+10))
echo "Third Random Number="$number3
number4=$((($RANDOM % 90)+10))
echo "Fourth Random Number="$num4
number5=$((($RANDOM % 90)+10))
echo "Fifth Random Number="$number5
#Add five random numbers in sum variable
sum=$(($number1+$number2+$number3+$number4+$number5))
echo "Sum of Five Number="$sum
#Find the average of five numbers
average=`expr "$sum/5" | bc -l`
echo "Average of five numbers=$average"

