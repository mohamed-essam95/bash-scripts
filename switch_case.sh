#!/bin/bash
read -p "Enter a fruit: " fruit
case $fruit in
    apple)
        echo "Apple is red"
    ;;
    banana)
        echo "Banana is yellow"
    ;;
    orange|mandarin)
        echo "Citrus fruit"
    ;;
    *)
        echo "Unknown fruit"
    ;;
esac