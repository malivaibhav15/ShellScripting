#!?bin/bash -x
#CONSTANTS
sum=1
read -p "Enter the number=" number
if [[ $number -gt 0 ]]
then
	for (( counter=$number;counter>=1;counter-- ))
	do
		sum=$(( $sum*$counter ))
	done
echo "Factorial of  given number="$sum
else
	echo "Enter valid number"
fi
