#!/bin/bash

read -p "Enter the directory name:" dir

if [ ! -d "$dir" ]; then
	echo "Directory '$dir' does not exist"
	echo "Creating ${dir} directory"
	mkdir -p ${dir}
else
	echo "Directory ${dir} already exists"
	exit
fi
