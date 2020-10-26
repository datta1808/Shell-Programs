#!/bin/bash

isPartTime=2
isFullTime=1
emp_Rate_Per_Hour=20
totalSalary=0
no_Of_Working_Days=20


for (( day=1; day<=$no_Of_Working_Days; day++ ))
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

        salary=$(( $emphrs * $emp_Rate_Per_Hour ))
        echo $salary
        totalSalary=$(( $totalSalary + $salary ))
done
        echo "Total Salary = $totalSalary"
