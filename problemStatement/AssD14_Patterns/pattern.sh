#!/bin/bash
shopt -s extglob
read -p "Enter first name : " fname
pat1=^[A-Z]{1}[a-z]{2,}$
if [[ $fname =~ $pat1 ]]
then
        echo "Valid First name"
else
        echo "Invalid first name "
fi

read -p "Enter Last name : " lname
if [[ $lname =~ $pat1 ]]
then
        echo "Valid Last name"
else
        echo "Invalid last name"
fi

read -p "Enter Email id " email
pat2="^[a-zA-Z0-9]+([._+#][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})?$"
if [[ $email =~ $pat2 ]]
then
        echo "VALID email id : "
else
        echo "Invalid email "
fi

read -p "Enter mobile number : " mob
pat3="^[9][1][ ][7-9]{1}[0-9]{9}$"
if [[ $mob =~ $pat3 ]]
then
        echo " Valid mobile number "
else
        echo " invalid mobile number "
fi

read -p "Enter Password " passwd
pat4="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"
if [[ $passwd =~ $pat4 ]]
then
        echo " Valid Password "
else
        echo " invalid Password "
fi
