#!/usr/bin/bash
# Basic input
read -p "Please enter your name: " name
# Secret input (hidden, e.g., passwords)
read -sp "Please enter your password: " password
# Array input
read -p "Please enter your array: " -a array

echo "Your name is: $name"
echo "Your password is: $password"
echo "Your array is: ${array[@]}"