#!/usr/bin/bash

while true; do
    echo "====System Menu===="
    echo "1. Show system date and time"
    echo "2. Display current user"
    echo "3. Show current directory"
    echo "4. List files"
    echo "5. Display disk usage"
    echo "6. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1) date;;
        2) whoami;;
        3) pwd;;
        4) ls;;
        5) df -h;;
        6) echo "Goodbye!"; exit 0;;
        *) echo "Invalid option, please try again.";;
    esac

    echo ""
done