#!/usr/bin/bash

current_year=$(date +%Y)

read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name
read -p "Enter your age: " age

current_time=$(date)

birth_year=$((current_year - age))
echo "Hello, $first_name $last_name ,You were born in $birth_year."
echo "Current date and time: $current_time"