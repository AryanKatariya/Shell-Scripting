#!/bin/bash

# Source directory to backup
source_dir="/home/aryan/data"

# Destination directory for backup
backup_dir="/backup"

# Create backup filename with timestamp
backup_file="${backup_dir}/data_backup_$(date +'%Y%m%d_%H%M%S').tar.gz"

# Check if source directory exists
if [ ! -d "$source_dir" ]; then
    echo "Source directory '$source_dir' does not exist."
    exit 1
fi

# Check if destination directory exists, else create it
if [ ! -d "$backup_dir" ]; then
    echo "Creating backup directory..."
    sudo mkdir -p "$backup_dir"
    sudo chown "$(whoami)" "$backup_dir"
fi

# Check if destination directory is writable
if [ ! -w "$backup_dir" ]; then
    echo "Destination directory '$backup_dir' is not writable."
    exit 1
fi

# Create tar.gz archive of source directory
tar czf "$backup_file" -C "$(dirname "$source_dir")" "$(basename "$source_dir")"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup created successfully: $backup_file"
else
    echo "Backup failed."
fi

