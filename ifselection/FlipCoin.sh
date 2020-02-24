#!/bin/bash -x
coin=$((RANDOM%2))
if [ $coin -eq 1 ]
then
	echo "Its a Head"
else
	echo "Its a Tail"
fi
