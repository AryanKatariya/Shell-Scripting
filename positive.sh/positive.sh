#!/bin/bash

read -p "Enter a number:" num

if (( num>0 ));then
	if (( num >= 30 && num <= 50 ));then
		echo "Provided Number is positive and in between 30-50"
	else
		echo "Provided number is positive but not in between 30-50"
	fi
else
	echo "Provided Number is negative"
fi
