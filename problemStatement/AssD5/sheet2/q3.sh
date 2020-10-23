#!/bin/bash
read -p "Enter year to check" year
if [ $(( year % 400 )) -eq 0 ];
then 
	echo "Leap Year";
elif [ $(( year % 100 )) -eq 0 ];
then
	echo "not a leap year";
elif [ $(( year % 4 )) -eq 0 ];
then
	echo "leap year";
else
echo "not a leap year";
fi
