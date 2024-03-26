#!/bin/bash

checkStatus() {
    seStatus=$(sestatus | grep "SELinux status" | tr -d " " | cut -d ":" -f 2)
    echo "SELinux status: $seStatus"
}

changeStatus() {
    echo "Changing SELinux to permissive..."
    sudo setenforce 0
    echo "SELinux status changed to permissive."
    checkStatus
}

checkStatus

if [ "$seStatus" == "enabled" ] && [ "$(getenforce)" == "Enforcing" ]; then
    read -p "Do you want to change it to permissive? (y|n)): " choice
    case $choice in
        y|Y)
            changeStatus
		 ;;
        n|N)
            echo "SELinux status unchanged." 
		;;
        *)
            echo "Invalid choice."
		 ;;
    esac
else
    echo "SELinux is already permissive."
fi
