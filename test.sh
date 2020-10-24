#!/bin/bash
read -p "Enter a number " n
if [ $n -gt 99 ] && [ $n -lt 1000 ]
then
        a=0
        sum=0
        temp=$n
while [ $temp -gt 0 ]
do
        a=$(($temp%10))
        sum=$(($sum*10+$a))
        temp=$(($temp/10))
done

if [ $sum -eq $n ]
then
        echo "palindrome"
else
        echo "not palidrome"
	fi
fi
even=0
odd=0
count1=0
count2=0

for (( i=2; i<=$n*$n; i++ ))
do
        while [ $(($n%i)) -eq 0 ]
        do
                if [ $((i%2)) -eq 0 ]
                then
                        arr1[even]=$i
                        ((even++))
			((count1++))
                fi
                if [ $(($i%2)) -ne 0 ]
                then
                        arr2[odd]=$i
                        ((odd++))
			((count2++))
                fi
                n=$((n/$i))
done
done
echo "array of even factors : " ${arr1[@]}
echo "array of odd factors : " ${arr2[@]}

