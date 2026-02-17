#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

file=$1

if [ ! -e "$file" ]; then
    echo "File '$file' does not exist."
    exit 1
fi

echo "File Name: $(basename "$file")"
echo "File Type: $(file -b "$file")"
echo "File Size: $(stat -c%s "$file") bytes"
echo "Last Modified: $(stat -c%y "$file")"

[ -r "$file" ] && echo "Readable: Yes" || echo "Readable: No"
[ -w "$file" ] && echo "Writable: Yes" || echo "Writable: No"
[ -x "$file" ] && echo "Executable: Yes" || echo "Executable: No"

echo "total arguments: $#"
