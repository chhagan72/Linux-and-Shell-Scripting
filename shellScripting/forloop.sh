#!/bin/bash

# This is a for loop 


for (( num=1; num<=5; num++ ))
do
#	touch "Demo.html$num"
	rm -rf "Demo.html$num"
done

