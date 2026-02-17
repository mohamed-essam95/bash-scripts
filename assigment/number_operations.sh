#!/usr/bin/bash

echo "=== For Loop ==="
for i in {1..10}; do
    echo -n "$i "
done
echo ""
echo ""

echo "=== While Loop ==="
sum=0
num=1

while [ $num -le 100 ]; do
    ((sum += num))
    ((num++))
done

echo "Sum of 1 to 100: $sum"
echo ""

echo "=== Until Loop ==="
even=2

echo -n "Even numbers: "
until [ $even -gt 20 ]; do
    echo -n "$even "
    ((even += 2))
done
echo ""