#!/bin/bash -x
number1=$(((RANDOM%900)+100))
echo "First Random Number="$number1
number2=$(((RANDOM%900)+100))
echo "Second Random Number="$number2
number3=$(((RANDOM%900)+100))
echo "Third Random Number="$number3
number4=$(((RANDOM%900)+100))
echo "Fourth Random Number="$number4
number5=$(((RANDOM%900)+100))
echo "Fifth Random Number="$number5
#Finds minimum number
if [ $number1 -lt $number2 -a $number1 -lt $number3 -a $number1 -lt $number4 -a $number1 -lt $number5 ]
then
	echo "Minimum number is="$number1
elif [ $number2 -lt $number1 -a $number2 -lt $number3 -a $number2 -lt $number4 -a $number2 -lt $number5 ]
then
   echo "Minimum number is="$number2
elif [ $number3 -lt $number1 -a $number3 -lt $number2 -a $number3 -lt $number4 -a $number3 -lt $number5 ]
then
   echo "Minimum number is="$number3
elif [ $number4 -lt $number1 -a $number4 -lt $number2 -a $number4 -lt $number3 -a $number4 -lt $number5 ]
then
   echo "Minimum number is="$number4
else [ $number5 -lt $number1 -a $number5 -lt $number2 -a $number5 -lt $number3 -a $number5 -lt $number5 ]
   echo "Minimum number is="$number5
fi
#Finds maximum number
if [ $number1 -gt $number2 -a $number1 -gt $number3 -a $number1 -gt $number4 -a $number1 -gt $number5 ]
then
   echo "Maximum number is="$number1
elif [ $number2 -gt $number1 -a $number2 -gt $number3 -a $number2 -gt $number4 -a $number2 -gt $number5 ]
then
   echo "Maximum number is="$number2
elif [ $number3 -gt $number1 -a $number3 -gt $number2 -a $number3 -gt $number4 -a $number3 -gt $number5 ]
then
   echo "Maximum number is="$number3
elif [ $number4 -gt $number1 -a $number4 -gt $number2 -a $number4 -gt $number3 -a $number4 -gt $number5 ]
then
   echo "Maximum number is="$number4
else [ $number5 -gt $number1 -a $number5 -gt $number2 -a $number5 -gt $number3 -a $number5 -gt $number5 ]
   echo "Maximum number is="$number5
fi


