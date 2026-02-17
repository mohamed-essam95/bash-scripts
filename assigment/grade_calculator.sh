#!/usr/bin/bash
read -p "Enter your score (0-100): " score

if ! [[ "$score" =~ ^[0-9]+$ ]] || [ "$score" -lt 0 ] || [ "$score" -gt 100 ]; then
    echo "Invalid input. Please enter a number between 0 and 100."
    exit 1
fi

if [ $score -ge 90 ]; then
    echo "Your grade is: A"
    echo "Excellent work!"
elif [ $score -ge 80 ]; then
    echo "Your grade is: B"
    echo "Good job!"
elif [ $score -ge 70 ]; then
    echo "Your grade is: C"
    echo "You can do better!"
elif [ $score -ge 60 ]; then
    echo "Your grade is: D"
    echo "You need to improve!"
else
    echo "Your grade is F"
    echo "Better luck next time!"
fi