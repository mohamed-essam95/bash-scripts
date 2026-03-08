#!/usr/bin/bash

# Empty array
arr=()

# With initial values
arr=("apple" "banana" "cherry")

# Explicit indices
arr=([0]="apple" [1]="banana" [2]="cherry")

# print elements
echo "${arr[0]}" # Output: apple
echo "${arr[2]}" # Output: cherry

arr[3]="grape" # Adding an element
arr[1]="orange" # Modifying an element

 echo "${#arr[@]}" # Number of elements in the array
 echo "${arr[@]}" # All elements in the array
 echo "${!arr[@]}" # Indices of the array

 for item in "${arr[@]}"; do
     echo "$item"
 done