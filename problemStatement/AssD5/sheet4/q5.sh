#!/bin/bash
echo "1.Inches to feet" 
echo "2.Area of rectangular plot"
echo "Enter the choice : "
read num

case $num in
	1)
		echo "Enter number of inches : "
		read a
		f2i=$(($a / 12))
		echo "length in feet : $f2i ft"
		;;
	2)
		echo "Enter width and height in feet : "
		read w
		read h
		rect_area=$(($w * $h))
		echo "Area of rectangular plot is : $rect_area ft"
		plot=$(($rect_area * 25))
		echo "Area of 25 plots is : $plot ft"
		;;
esac
