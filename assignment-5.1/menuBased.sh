#!/bin/bash

while true; do
read -p "1. Make a file. 
2. Display contents
3. Copy the file
4. Rename the file
5. Delete the file
6. Exit
Enter your option:" option

case "$option" in
        1)
		read -p "Enter the file name to be created:" fname
	  	if [[ -e ${fname} ]];then
			echo "$fname file already exists"
		else
			echo "Enter data to add to the file"
			cat > $fname
			echo "File ${fname} created."
		fi
		ls
           	 ;;
        2)
		read -p "Enter the file name:" fname
               	if [[ -e ${fname} ]];then
			cat ${fname}
                else
                        echo "File ${ifname} does not exists."
                fi
		ls
                 ;;


        3)	read -p "Enter the file name:" fname
		 if [ -f "$fname" ]; then
               		read -p "Enter target file name:" target
                	if [ -e "$target" ]; then
                    	echo "Error: Target file '$target' already exists."
               		else
                    		cp "$fname" "$target"
                    		echo "File copied from '$fname' to '$target'."
               		fi
                else
               		 echo "Error: Source file '$fname' not found."
           	 fi
		ls
            	;;

        4)	read -p "Enter the file name:" fname
                 if [ -f "$fname" ]; then
                        read -p "Enter new name:" newName
                        if [ -e "$newName" ]; then 
                        echo "Error'$newName' already exists."
                        else
                                mv "$fname" "$newName"
                                echo "File renamed from '$fname' to '$newName'."
                        fi
                else
                         echo "Error: File '$fname' not found."
                 fi
		ls
                ;;		
        5)	read -p "Enter the file name:" fname
                 if [ -f "$fname" ]; then
			read -p "Do you want to remove this file(y|n):" confirm
			if [ "$confirm" = "y" ]; then
                   		 rm "$fname"
 	                   echo "File '$fname' deleted."
               		else
                    	   echo "File deletion cancelled."
                	fi
		else
                	echo "Error: File '$fname' not found."
		fi
		ls
		 ;;
        6)	echo "Exiting..."
		exit 0
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
done
