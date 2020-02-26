#!/bin/bash -x
diceroll[1]=0
diceroll[2]=0
diceroll[3]=0
diceroll[4]=0
diceroll[5]=0
diceroll[6]=0





count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
declare -A diceroll
while ((1))
do
	rollingDice=$(((RANDOM%6)+1))
	case $rollingDice in
	1)
		count1=$(($count1+1))
		diceroll[1]=$count1
		;;
	2)
      ((count2++))
      diceroll[2]=$count2
      ;;
	3)
      ((count3++))
      diceroll[3]=$count3
      ;;
	4)
      ((count4++))
      diceroll[4]=$count4
      ;;
	5)
      ((count5++))
      diceroll[5]=$count5
      ;;

	6)
      ((count6++))
      diceroll[6]=$count6
      ;;
	esac
	if (( $count1==10 || $count2==10 || $count3==10 || $count4==10 || $count5==10 || $count6==10 ))
	then
		break
	fi
done
#Print dictionary
for (( index=1;index<=${#diceroll[@]};index++ ))
do
	echo "$index=${diceroll[$index]}"
done
#Print the number occures maximum and minimun times
minimum=${diceroll[1]}
maximum=${diceroll[1]}
for (( index=1;index<=${#diceroll[@]};index++ ))
do
	temp="${diceroll[$index]}"
	if [[ $maximum -le $temp ]]
	then
		maximum=$temp
		maxIndex=$index
	fi
	if [[ $minimum -ge $temp ]]
   then
      minimum=$temp
      minIndex=$index
   fi
done
echo "$maxIndex=$maximum"
echo "$minIndex=$minimum"
