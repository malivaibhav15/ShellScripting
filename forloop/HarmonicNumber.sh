#!/bin/bash -x
read -p "Enter tne number" number
echo -n  "Harmonic numbers = "
for (( counter=1;counter<number;counter++ ))
do
	echo -n "1/$counter+"
done
echo -n "1/$counter"
