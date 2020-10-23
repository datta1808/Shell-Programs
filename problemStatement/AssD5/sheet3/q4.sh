#!/bin/bash
read -p "A = " a
read -p "B = " b
read -p "C = " c

val1=$(( a+b*c ))
val2=$(( c+a/b ))
val3=$(( a%b+c ))
val4=$(( a*b+c ))

if[$val1 -gt $val2] && [$val1 -gt $val3] && [$val1 -gt $val4]
then
	echo "$val1 is max"
elif[$val2 -gt $val1] && [$val1 -gt $val3] && [$val1 -gt $val4]
then
	echo "$val2 is max"
elif[$val3 -gt $val1] && [$val3 -gt $val2] && [$val3 -gt $val4]
then
	echo "$val3 is max"
elif[$val4 -gt $val1] && [$val4 -gt $val2] && [$val4 -gt $val3]
then
        echo "$val4 is max"
fi 


