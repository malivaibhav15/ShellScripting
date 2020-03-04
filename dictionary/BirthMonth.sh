#!bin/bash -x
declare -A month
people=1
	month=( ["Jan"]=0 ["feb"]=0 ["march"]=0 ["april"]=0 ["may"]=0  ["Jun"]=0  ["July"]=0  ["aug"]=0  ["sept"]=0  ["oct"]=0  ["nov"]=0  ["dec"]=0  ) 
	while [[ $people -le 50 ]]
	do
		number=$((RANDOM%12 + 1))
		if [[ $number -eq 1 ]]
		then
			month[Jan]=$((${month[Jan]}+1))
		elif [[ $number -eq 2 ]]
   	then
      	month[feb]=$((${month[feb]}+1))
		elif [[ $number -eq 3 ]]
   	then
      	month[march]=$((${month[march]}+1))
		elif [[ $number -eq 4 ]]
   	then
      	month[april]=$((${month[april]}+1))
		elif [[ $number -eq 5 ]]
   	then
      	month[may]=$((${month[may]}+1))
		elif [[ $number -eq 6 ]]
   	then
      	month[Jun]=$((${month[Jun]}+1))
		elif [[ $number -eq 7 ]]
   	then
      	month[July]=$((${month[July]}+1))
		elif [[ $number -eq 8 ]]
   	then
      	month[aug]=$((${month[aug]}+1))
		elif [[ $number -eq 9 ]]
   	then
     	 	month[sept]=$((${month[sept]}+1))
		elif [[ $number -eq 10 ]]
   	then
      	month[oct]=$((${month[oct]}+1))
		elif [[ $number -eq 11 ]]
   	then
      	month[nov]=$((${month[nov]}+1))
		else [[ $number -eq 12 ]]
      	month[dec]=$((${month[dec]}+1))
		fi
		((people++))
	done
	echo ${month[@]}
	echo ${!month[@]}

