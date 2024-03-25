#!/bin/bash

if [ -z "$1" ]; then
    echo "redhat|fedora"
else
    option=$(echo "$1" | tr '[:upper:]' '[:lower:]')
    
    case "$option" in
        "fedora")
            echo "redhat"
            ;;
        "redhat")
            echo "fedora"
            ;;
        *)
            echo "Invalid optionument. Please provide 'fedora' or 'redhat'."
            ;;
    esac
fi

