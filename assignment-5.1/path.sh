#!/bin/bash

#read -p "Enter the p: " p

if [ -e "$1" ]; then
    if [ -f "$1" ] || [ -L "$1" ] || [ -b "$1" ] || [ -c "$1" ] || [ -p "$1" ] || [ -S "$1" ]; then
        echo "$1 is a file."
        echo "Numeric permissions: $(stat -c '%a' "$1")"
    elif [ -d "$1" ]; then
        echo "$1 is a directory."
        echo "Numeric permissions: $(stat -c '%a' "$1")"
    else
        echo "$1 exists but is neither a file nor a directory."
    fi
else
    echo "$1 does not exist."
fi

