#!/bin/bash
read -p "Enter a number " num
num2=$(($num%3))
num3=$(($num%5))
num4=$(($num%7))
if [[ $num2 = 0 ]]; then
	echo "Divisible"
elif [[ $num3 = 0 ]]; then
	echo "Divisible"
elif [[ $num4 = 0 ]]; then
	echo "Divisible"
	else echo "Not Divisible"
fi




