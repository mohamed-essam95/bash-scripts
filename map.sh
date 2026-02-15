#!/usr/bin/bash

declare -A person=(
    [name]="Mohamed"
    [role]="DevOps Engineer"
    [city]="Cairo"
)
# Or single line
declare -A colors=([red]="#FF0000" [green]="#00FF00" [blue]="#0000FF")

echo "${person[name]}" # Output: Mohamed
echo "${colors[green]}" # Output: #00FF00

person[age]="25" # Adding a new key-value pair to the associative array
person[role]="Cloud Engineer" # Modifying an existing key-value pair in the associative array

echo "${!person[@]}" # print all keys
echo "${person[@]}" # print all values

for key in "${!person[@]}"; do
    echo "$key => ${person[$key]}"
done

echo ${#person[@]} # Number of key-value pairs
unset person[city] # Removing a key-value pair from the associative array

echo "${person[city]}" # Output: (empty, since the key 'city' has been removed)