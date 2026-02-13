#!/bin/bash

num=5

echo "Initial num = $num"
((num++)) # Increment by 1 → 6
((num += 4)) # Add 4 → 10
((num *= 3)) # Multiply by 3 → 30
((num--)) # Decrement by 1 → 29
((num /= 2)) # Divide by 2 → 14
((num %= 5)) # Modulus by 5 → 4

echo "Final num = $num"