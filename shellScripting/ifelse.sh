#!/bin/bash


read -p " Mere name " name
read -p " Check Loyalty" loyal

if [[ $name == "Chhagan" ]];
then
	echo " It is correct"
elif [[ $loyal -gt 75 ]]
then
	echo " $name is loyal"
else
	echo "It is not correct"
fi
