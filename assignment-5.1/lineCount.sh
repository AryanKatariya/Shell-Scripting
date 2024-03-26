#!/bin/bash

read -p "Enter the file to count lines:" file

if [[ -f $file ]] && [[ -r $file ]];then
	count=$(wc -l $file)
	echo "Total Number of line in $file:$count"
else
	echo "$file does not exist"
fi
