#!/bin/bash -x
read -p "Enter the first number " a
read -p "Enter the Second number " b
read -p "Enter the Third numner " c
equation1=$(($a+$b*$c))
echo "Equation a+b*c =" $equation1
equation2=$(($a%$b+$c))
echo "Equation a%b+c =" $equation2
equation3=$(($c+$a/$b))
echo "Equation c+a/b =" $equation3
equation4=$(($a*$b+$c))
echo "Equation a*b+c =" $equation4
