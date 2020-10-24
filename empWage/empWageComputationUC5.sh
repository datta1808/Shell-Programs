#!/bin/bash

isPartTime=2
isFullTime=1
emp_Rate_Per_Hour=20
total_empwage=0
total_emphrs=0
no_Of_Working_Days=20
max_Hrs_In_Month=100

while [ $total_emphrs -le $max_Hrs_In_Month ]
do
        randomCheck=$((( RANDOM%3 ) +1))

case $randomCheck in

        $isFullTime)
                emphrs=8
                ;;

        $isPartTime)
                emphrs=4
                ;;
        *)
                emphrs=0
                ;;
esac

        empwage=$(( $emphrs * $emp_Rate_Per_Hour ))
	total_emphrs=$(( $total_emphrs + $emphrs ))
        total_empwage=$(( $total_empwage + $empwage ))
done
        echo "Total Employee Wage = $total_empwage"
