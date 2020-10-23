#!/bin/bash -x

D1=$((( RANDOM%6) +1))
D2=$((( RANDOM%6) +1))
Result=$(( $D1 + $D2 ))
echo $Result

