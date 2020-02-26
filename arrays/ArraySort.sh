#!/bin/bash -x
declare -a Array
#Generating the array
#Variables
temp=0
size=10
while [[ $temp -lt $size ]]
do
	number=$(((RANDOM%900)+100))
	Array[temp]=$number
	number=0
	((temp++))
done
echo "Array before sorting={${Array[@]}}"
#Sorting an array
for (( counter=0;counter<$size;counter++ ))
do
	for (( index=$counter+1;index<$size;index++ ))
	do
		if [[ Array[$counter] -gt Array[$index] ]]
		then
			num=${Array[$counter]}
			Array[$counter]=${Array[$index]}
			Array[$index]=$num
		fi
	done
done
echo "After sorting array={${Array[@]}}"
echo "Second smallest number in an array="${Array[1]}
echo "Second largest number in an array="${Array[8]}
