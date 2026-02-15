#!/usr/bin/bash

arr=("a" "b" "c" "d" "e")
echo "${arr[@]:3:2}" # Output: d e

unset arr[2] # Remove element at index 2
echo "${arr[2]}" # Output: (empty)