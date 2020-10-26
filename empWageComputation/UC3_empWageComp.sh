#!/bin/bash -x

isPartTime=2
isFullTime=1
emp_Rate_Per_Hour=20
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
