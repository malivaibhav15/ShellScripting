#!/bin/bash -x
read -p "Enter the number=" number
if [ $number -gt 0 -a $number -le 9 ]
then
	echo "Unit's place"
elif [ $number -ge 10 -a $number -le 99 ]
then
	echo "Tenth's place"
elif [ $number -ge 100 -a $number -le 999 ]
then
   echo "Hundred's place"
elif [ $number -ge 1000 -a $number -le 9999 ]
then
   echo "Thousand's place"
elif [ $number -ge 10000 -a $number -le 99999 ]
then
   echo "Ten thoudsand's place"
elif [ $number -ge 100000 -a $number -le 999999 ]
then
   echo "Lac's place"
elif [ $number -ge 1000000 -a $number -le 9999999 ]
then
   echo "Ten lacs' place"
elif [ $number -ge 10000000 -a $number -le 99999999 ]
then
   echo "Crore's place"
fi
