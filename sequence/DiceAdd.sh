#!/bin/bash -x
number1=$((($RANDOM%6)+1))
echo "First Random Dice Number="$number1
number2=$((($RANDOM%6)+1))
echo "Second Random Dice Number="$number2
#Added first and second random number
sum=$(($number1+$number2))
echo "Addition of two numbers="$sum
