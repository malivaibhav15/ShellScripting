#!/bin/bash -x
read -p "Enter the number=" number
case $number in
	1)
		echo "Unit";;
	10)
      echo "Ten";;
	100)
      echo "Hundred";;
	1000)
      echo "Thousand";;
	10000)
      echo "Ten Thousand";;
	100000)
      echo "Lac";;
	1000000)
      echo "Ten lacs";;
	10000000)
      echo "Crore";;
	100000000)
      echo "Ten crore";;
	 *)
      echo "Enter valid number";;
esac
