#!/bin/bash -x
read -p "Enter the choice #1.feet to inch #2.inch to feet #3.feet to meter #4.meter to feet=" choice
case $choice in
	1)
		read -p "Enter the value in feet=" feet
		echo inch=$((12*$feet));;
	2)
		read -p "Enter the value in inches=" inch
      echo feet=$((12*$inch));;
	3)
		read -p "Enter the value in feet=" feet
      echo meter=`expr "0.3048*$ft" | bc -l`;;
	4)
      read -p "Enter the value in meters=" meter
      echo feet=`expr "0.3048*$meter" | bc -l`;;
   *)
		echo "Enter valid choice"

esac
