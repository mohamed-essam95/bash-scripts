#!/bin/bash

read -p "Enter first number: " a
read -p "Enter second number: " b

echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Modulus"

read -p "Choose an operation [1-5]: " choice

case $choice in
    1) echo "Result: $((a + b))" ;;
    2) echo "Result: $((a - b)) " ;;
    3) echo "Result: $((a * b)) " ;;
    4)
        if [ "$b" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$((a / b))
            echo "Result: $a / $b = $result"
        fi
        ;;
    5)
        if [ "$b" -eq 0 ]; then
            echo "Error: Modulus by zero is not allowed."
        else
            result=$((a % b))
            echo "Result: $a % $b = $result"
        fi
        ;;
    *)
        echo "Invalid choice."
        ;;
esac
