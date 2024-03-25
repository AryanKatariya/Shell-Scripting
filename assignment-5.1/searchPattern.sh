#!/bin/bash

read -p "Enter the file name:" fname
read -p "Enter the string to search:" string

if [[ -f ${fname} ]] && [[ -r ${fname} ]]; then
	if grep "${string}" ${fname} >/dev/null;then
		grep -n "${string}" ${fname} 
	else
		echo "No line found containing the string:{$string}"
	fi
else 
	echo "File not found or permission denied."
fi
