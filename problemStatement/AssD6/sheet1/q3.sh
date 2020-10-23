#!/bin/bash

echo "Enter number : " 
read n
m=$(( $n / 2 ))
count=0
for(( i=2;i<=$m;i++ ))
do
	if [ `echo $n $i | awk '{print $1%$2}'` == 0 ]
	then
		echo "Not a prime number "
		count=1
		break;
	fi
done
	if [ $count -eq 0 ]
	then
	echo "It is a prime number "
	fi

