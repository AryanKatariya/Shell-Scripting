#!/bin/bash

for (( i=1;i<=5;i++ )); do
	username="cdac_test_$i"
	useradd -s /bin/bash  ${username}
	echo -e "$username\n$username" | passwd $username
	
	if [[ $((i% 2)) -eq  0 ]]; then
		echo "$username:CDAC" > "/tmp/${username}_flag.txt"
	fi
done

