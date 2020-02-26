#!/bin/bash -x
#Variable
i=0
#Generating the array
while [[ i -lt 10 ]]
do
	temp=$(((RANDOM%900)+100))
	Arr[i]=$temp
	temp=0
	((i++))
done
#print array
echo "Array={${Arr[@]}}"
#Function for second largest and second smallest in an array
function check()
{
	largest=${Arr[0]}
	secondlargest=${Arr[0]}
	smallest=${Arr[0]}
	secondsmallest=${Arr[0]}
	for (( counter=0;counter<10;counter++ ))
	do
		if [[ ${Arr[$counter]} -gt $largest ]]
		then
			secondlargest=$largest
			largest=$((${Arr[$counter]}))
		elif [[ ${Arr[$counter]} -gt $secondlargest ]]
		then
			secondlargest=${Arr[$counter]}
		fi
	done

	for (( index=0;index<10;index++ ))
	do
		if [[ ${Arr[$index]} -lt $smallest ]]
      then
         secondsmallest=$smallest
         smallest=$((${Arr[$index]}))
		elif [[ ${Arr[$index]} -lt $secondsmallest ]]
      then
         secondsmallest=${Arr[$index]}
      fi
   done
}
check
echo "Second largest in an array is="$secondlargest
echo "Second smallest in an array is="$secondsmallest

