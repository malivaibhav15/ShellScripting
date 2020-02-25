#!/bin/bash -x
#Function body
fahrenheitToCelsius()
{
	read -p "Enter the temperature from 0°C to 100°C=" celsius
   fahrenheit=`expr "($celsius*9/5)+32" | bc -l`
	echo "Temperature in fahrenheit=$fahrenheit°F"
}
celsiusToFahrenheit()
{
	read -p "Enter the temperature from 32°F to 212°F=" fahrenheit
   celsius=`expr "($fahrenheit-32)*5/9" | bc -l`
   echo "Temperature in celsius=$celsius°C"
}
echo "1.Converting fahrenheit to celsius"
echo "2.Converting celsius to fahrenheit"
read -p "Enter the choice=" choice
if [ $choice -eq 1 ]
then
#Function call
	fahrenheitToCelsius
elif [ $choice -eq 2 ]
then
	celsiusToFahrenheit
fi
