#!/bin/bash

num=0
#while [[ $num -le 5 ]]
while [[ $(( num % 2)) == 0 && $num -le 10 ]]
do
	echo $num
	num=$((num+1))	
done
