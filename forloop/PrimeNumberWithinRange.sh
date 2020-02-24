#!/bin/bash -x
#CONSTANTS
flag=1
read -p "Enter the starting number of the given range=" start
read -p "Enter the ending number of the given range=" end
echo "Prime Numbers are"
for (( counter=$start;counter<=$end;counter++ ))
do
	for (( index=2;index<=$(( $counter/2 ));index++ ))
	do
		flag=1
		if [[ $(($counter%$index)) -eq 0 ]]
		then
			flag=0
			break
		fi
	done
		if [[ $flag -eq 1 ]]
		then
			echo $counter
		fi
done
