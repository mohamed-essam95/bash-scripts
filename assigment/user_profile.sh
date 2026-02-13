#!/usr/bin/bash
read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name
read -p "Enter your age: " age
curt_year=$(date +%Y)
birth_year=$((curt_year - age))
echo "Hello, $first_name $last_name ,You were born in $birth_year."