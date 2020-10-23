#!/bin/bash

echo "1. Feet to Inch"
echo "2. Inch to feet "
echo "3. Feet into Meter"
echo "4. Meter into feet "
echo "Enter the choice : "
read num;
case $num in
	1)
		read -p "Enter length in feet : " a
		inch=$(($a * 12 ))
		echo $inch "inches"
		;;
	2)
		read -p "Enter length in inch : " a
		feet=$(($a / 12 ))
		echo $feet "feet"
		;;
	3)
		read -p "Enter length in feet : " a
		meter=$(($a / 3 ))
		echo $meter "meter"
		;;
	4)
		read -p "Enter length in meter : " a
		feet=$(($a * 3 ))
		echo $feet "feet"
		;;
	*)
		echo "Enter valid number : "
		;;
esac
