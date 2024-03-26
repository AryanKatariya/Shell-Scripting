#!/bin/bash


addUser(){
	read -p "Enter user:" username
	echo "ashu" | sudo useradd ${username}
}

delUser(){
        read -p "Enter user:" username
        echo "ashu" | sudo userdel -r ${username}
}

infoUser(){
        read -p "Enter user:" username
        id ${username}
}

checkPermission() {
    read -p "Enter file or directory path: " filepath
    stat -c "%a" $filepath
}


while true;do

read -p "1: user addition
2: user deletion
3: user info
4: check numeric permission of a file or directory
5. exit
Enter your choice:" option


	case $option in
   	 1)
       		 addUser
       		 ;;
   	 2)
       		 delUser
        	 ;;
    	 3)
        	infoUser
       		 ;;
   	 4)
 		checkPermission      		 
       		 ;;
	 5)
		exit 0
	         ;;
   	 *)
        	echo "Invalid option"
       		 ;;
	esac
done
