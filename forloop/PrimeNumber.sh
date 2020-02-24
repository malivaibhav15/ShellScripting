#!/bin/bash -x
#CONSTANTS
flag=0
read -p "Enter the number=" number
for (( counter=2;counter<=$(( $number/2 ));counter++  ))
do
	if (( $(( $number%$counter ))==0 ))
	then
		flag=1
	fi
done
if [[ $flag -eq 0 ]]
then
	echo "Is is prime number"
else
	echo "It is not prime number"
fi
