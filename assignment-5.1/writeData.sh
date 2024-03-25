#!/bin/bash

read -p "Enter the file:" fname
read -p "Enter the content to be added:" string


if [[ -w $fname ]];then
	echo "${string}" >> ${fname}
	echo "Content appended in the file ${fname}"
else
	echo "${string}" > ${fname}
	echo "Content added after creating a new file ${fname}"
fi
