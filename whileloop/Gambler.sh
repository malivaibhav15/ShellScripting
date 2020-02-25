#!/bin/bash -x
#CONSTANTS
money=100
win=0
bets=0
goal=200
while [[ $money -gt 0 && $money -le $goal ]]
do
	if [[ $((RANDOM%2)) -eq 1 ]]
	then
		((win++))
		((bets++))
	else
      ((money--))
		((bets++))
	fi
done
echo "Number of times he/she wins=$win"
echo "Number of bets=$bets"
