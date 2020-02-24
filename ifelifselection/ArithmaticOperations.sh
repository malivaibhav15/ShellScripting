#!/bin/bash -x
read -p "Enter the number" a
read -p "Enter the number" b
read -p "Enter the number" c
operation1=$((a+b*c))
echo "operation a+b*c="$operation1
operation2=$((a%b+c))
echo "operation a%b+c="$operation2
operation3=$((a+b/c))
echo "operation a+b/c="$operation3
operation4=$((a*b+c))
echo "operation a*b+c="$operation4
#For minimum number
if [ $operation1 -le $operation2 -a $operation1 -le $operation3 -a $operation1 -le $operation4 ]
then
	echo "Operation 1 has minimun value"
elif [ $operation2 -le $operation1 -a $operation2 -le $operation3 -a $operation2 -le $operation4 ]
then
   echo "Operation 2 has minimun value"
elif [ $operation3 -le $operation1 -a $operation3 -le $operation2 -a $operation3 -le $operation4 ]
then
   echo "Operation 3 has minimun value"
elif [ $operation4 -le $operation1 -a $operation4 -le $operation2 -a $operation4 -le $operation3 ]
then
   echo "Operation 4 has minimun value"
fi
#For maximum number
if [ $operation1 -ge $operation2 -a $operation1 -ge $operation3 -a $operation1 -ge $operation4 ]
then
   echo "Operation 1 has maximun value"
elif [ $operation2 -ge $operation1 -a $operation2 -ge $operation3 -a $operation2 -ge $operation4 ]
then
   echo "Operation 2 has maximun value"
elif [ $operation3 -ge $operation1 -a $operation3 -ge $operation2 -a $operation3 -ge $operation4 ]
then
   echo "Operation 3 has maximun value"
elif [ $oper4 -ge $operation1 -a $operation4 -ge $operation2 -a $operation4 -ge $operation3 ]
then
   echo "Operation 4 has maximun value"
fi
