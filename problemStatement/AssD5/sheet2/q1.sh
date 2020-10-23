#!/bin/bash 
max=0
min=1000
for (( i=1 ; $i<=5 ; i++ ))
do
	n=$(( $RANDOM%1000 ))
	echo $n
	if [[ $n -gt $max ]]
	then
		max=$(($n))
	fi
	if [[ $n -lt $min ]]
	then
		min=$(($n))
	fi
done
echo "Maximum :" $max
echo "Minimum :" $min
