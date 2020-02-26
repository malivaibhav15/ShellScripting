#!/bin/bash -x
#Generating an array
read -p "Enter the array size=" size
for (( counter=0;counter<size;counter++ ))
do
	Array[counter]=$(((RANDOM%20)-10))
done
	echo "Array={${Array[@]}}"
function check()
{
	for (( counter1=0;counter1<$size-2;counter1++ ))
	do
		for (( counter2=$counter1+1;counter2<$size-1;counter2++ ))
		do
			for (( counter3=$counter2+1;counter3<$size;counter3++ ))
			do
				if (( $(( (${Array[$counter1]}+${Array[$counter2]}) + ${Array[$counter3]} )) == 0 ))
				then
					echo "Addition of three numbers which gives sum to zero="
					echo ${Array[$counter1]}" "${Array[$counter2]}" "${Array[$counter3]}
				fi
			done
		done
	done
}
check
