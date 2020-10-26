#!/bin/bash -x

is_Full_Time=1
emp_Rate_Per_Hour=20
randomCheck=$(( RANDOM%2 ))
if [[ $is_Full_Time -eq $randomCheck ]]
then
        emphrs=8
fi
        salary=$(( $emphrs * $emp_Rate_Per_Hour ))
        echo $salary

