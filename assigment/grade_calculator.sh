#!/usr/bin/bash
read -p "Enter your score: " grade

if [ $grade -ge 90 ]; then
    echo "Your grade is: A"
    echo "Great job!"
elif [ $grade -ge 80 ]; then
    echo "Your grade is: B"
    echo "Great job!"
elif [ $grade -ge 70 ]; then
    echo "Your grade is: C"
    echo "Great job!"
elif [ $grade -ge 60 ]; then
    echo "Your grade is: D"
    echo "Great job!"
else
    echo "Your grade is F"
    echo "Better luck next time!"
fi