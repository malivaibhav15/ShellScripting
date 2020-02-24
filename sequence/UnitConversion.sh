#!/bin/bash -x
#CONSTANTS
feet=12
meter=3.28
acer=0.000247105
echo "Unit Conversion of inch to feet="`expr "42/$feet" | bc -l`
echo "Area of 60*40ft Plot in meter="`expr "(60*40)/$meter" | bc -l`
echo "Area of 25 Plots in acer="`expr "((((60*40)*25)/$meter)*$acer)" | bc -l`

