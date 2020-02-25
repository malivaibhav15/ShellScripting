#!/bin/bash -x
#CONSTANTS
flag=0
#User input
read -p "Enter the number=" num
reverse=0
function pallindrome()
{
	number=$1
   while [[ $number -ne 0 ]]
   do
      temp=$(( $number%10 ))
      reverse=$(( $(($reverse*10))+$temp ))
      number=$(( $number/10 ))
   done
   if [ $num -eq $reverse ]
   then
      echo " and is palllindrome too"
   else
      echo "Given number is not palllindrome"
   fi
}
#Function to check number is prime or not
function primeCheck(){
	temp=$1
	for (( counter=2;counter<=$(( $temp/2 ));counter++  ))
	do
		if (( $(( $temp%$counter ))==0 ))
      then
			flag=1
      fi
	done
	if [[ $flag -eq 0 ]]
	then
		echo "Is is prime number"
		sum="$( pallindrome $num )"
		echo $sum
	else
		echo "It is not prime number"
	fi
}
result="$( primeCheck $num )"
echo $result
